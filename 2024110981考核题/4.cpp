#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>
#include <opencv2/core/base.hpp>
#include <opencv2/core/hal/interface.h>
#include <opencv2/core/matx.hpp>
#include <opencv2/core/types.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <iostream>
#include <fstream>

int main(){

    // 输入和输出视频文件路径
    std::string inputVideoPath =  "/home/wael/文档/2025赛季Helios视觉部招新试题/d/output_0.avi";  // 输入视频路径
    std::string outputVideoPath = "/home/wael/文档/2025赛季Helios视觉部招新试题/d/output_1.avi"; // 输出视频路径

    // 打开视频文件
    cv::VideoCapture cap(inputVideoPath);
    if (!cap.isOpened()) {
        std::cerr << "Error: Could not open video." << std::endl;
        return -1;
    }
    // 原始图像
    cv::Mat frame;
    //灰度图像
    cv::Mat grayImg;
    //二值化图像
    cv::Mat binaryImage;
    //轮廓图像
    cv::Mat contourImage;

    // 获取视频的一些基本信息
    double fps = cap.get(cv::CAP_PROP_FPS); // 帧率
    int frameWidth = static_cast<int>(cap.get(cv::CAP_PROP_FRAME_WIDTH)); // 帧宽
    int frameHeight = static_cast<int>(cap.get(cv::CAP_PROP_FRAME_HEIGHT)); // 帧高

    // 定义视频编码器和输出文件
    cv::VideoWriter out(outputVideoPath, cv::VideoWriter::fourcc('X', 'V', 'I', 'D'), fps, cv::Size(frameWidth, frameHeight));
    if (!out.isOpened()) {
        std::cerr << "Error: Could not open output video." << std::endl;
        return -1;
    }

    while (true) {
        // 逐帧读取视频
        cap >> frame; 
        if (frame.empty()) {
            break; // 如果没有更多帧，则退出循环
        }

        // 分离通道
        std::vector<cv::Mat> channels;
        split(frame, channels);

        // 访问分离后的通道
        cv::Mat blueChannel = channels[0];  // 蓝色通道
        cv::Mat greenChannel = channels[1]; // 绿色通道
        cv::Mat redChannel = channels[2];   // 红色通道
        // 显示分离后的通道
        // imshow("Blue Channel", blueChannel);
        // imshow("Green Channel", greenChannel);
        // imshow("Red Channel", redChannel);

        //彩色图转灰度图
        cv::cvtColor(frame, grayImg, cv::COLOR_BGR2GRAY); 

        // 设置二值化阈值，使用灰度图进行二值化操作
        int thresholdValue = 128;
        cv::threshold(grayImg, binaryImage, thresholdValue, 255, cv::THRESH_BINARY);

        // 查找轮廓：
        // 应用高斯模糊，减少噪声
        cv::GaussianBlur(binaryImage, binaryImage, cv::Size(7, 7), 0);

        // 边缘检测（Canny算法）
        cv::Mat edges;
        cv::Canny(binaryImage, edges, 100, 200);

        // 查找轮廓
        std::vector<std::vector<cv::Point>> contours;
        std::vector<cv::Vec4i> hierarchy;
        cv::findContours(edges, contours, hierarchy, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_SIMPLE);

        contourImage = cv::Mat::zeros(frame.size(), CV_8UC3);


        //
        std::vector<std::vector<cv::Point>> contours_filtered;
        for (const auto& contour : contours) {
            if (cv::contourArea(contour) > 50) {
                contours_filtered.push_back(contour);
            }
        }


        //绘制最小外接矩形
        cv::Mat img_rota = frame.clone();
        for (const auto& contour : contours_filtered) {
            cv::RotatedRect rota_rect = cv::minAreaRect(contour);  // 获取该轮廓的最小外接矩形
            cv::Point2f vertices[4];
            rota_rect.points(vertices);  // 将最小外接矩形转化为点
            for (int i = 0; i < 4; i++) {
                cv::line(img_rota, vertices[i], vertices[(i+1)%4], cv::Scalar(0, 255, 0), 2);
            }
        }


        //匹配装甲板
        cv::Mat img_point = frame.clone();
        for (size_t i = 0; i < contours_filtered.size(); i++) {
            for (size_t j = i + 1; j < contours_filtered.size(); j++) {  // 一个二重循环
                cv::RotatedRect rect_i = cv::minAreaRect(contours_filtered[i]);
                cv::RotatedRect rect_j = cv::minAreaRect(contours_filtered[j]);
                
                // 其中，center.x为x坐标，center.y为y坐标，size.width为宽，size.height为高
                float angle_diff = std::abs(rect_i.angle - rect_j.angle);
                float center_y_diff = std::abs(rect_i.center.y - rect_j.center.y);

                if (angle_diff < 8 && center_y_diff < 10) {
                    // 此时，我们已经找到了相匹配的两个灯条
                    cv::Point2f vertices_i[4], vertices_j[4];
                    rect_i.points(vertices_i);
                    rect_j.points(vertices_j);

                    std::vector<cv::Point2f> all_points;
                    // 简单一点可以用range-based for循环
                    for (int k = 0; k < 4; k++) {
                        all_points.push_back(vertices_i[k]);
                        all_points.push_back(vertices_j[k]);
                    }

                    // 找到对应的灯条后用他们的点再套一层外接矩形就得到的整个装甲板的外接矩形了
                    cv::RotatedRect rect_fin = cv::minAreaRect(all_points);
                    cv::Point2f vertices_fin[4];
                    rect_fin.points(vertices_fin);

                    for (int k = 0; k < 4; k++) {
                        cv::line(img_point, vertices_fin[k], vertices_fin[(k+1)%4], cv::Scalar(255, 255, 255), 3);
                    }
                }
            }
        }

        // 绘制查找到的轮廓
        cv::drawContours(contourImage, contours, -1, cv::Scalar(255, 0, 0), 2);

        frame=img_point;

        
        // 显示结果
        cv::imshow("Original Image", frame);
        cv::imshow("Gray Image", grayImg);
        cv::imshow("Binary Image", binaryImage);
        cv::imshow("Contour Image", contourImage);
        cv::imshow("旋转矩形", img_rota);
        cv::imshow("检测到的装甲板", img_point);
        cv::waitKey(0);
        //if (cv::waitKey(10) >= 0) break; //调整显示速度
        
        out << frame; //写入输出视频文件
    }

    // 释放资源
    cap.release();
    out.release();

    std::cout << "Video processing completed." << std::endl;
    return 0;
}