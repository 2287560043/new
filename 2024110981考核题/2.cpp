#include <iostream>
#include <vector>
#include <queue>
#include <cmath>
#include <iomanip>

using namespace std;

const int MAXN = 10;
const int INF = 1e9;

int grid[MAXN][MAXN];
double expandedGrid[MAXN][MAXN];
int dx[4] = { -1, 0, 1, 0 };
int dy[4] = { 0, 1, 0, -1 };

struct Node {
    int x, y;
    double cost;
    bool operator>(const Node& other) const {
        return cost > other.cost;
    }//从而将Node的大小与cost绑定，方便后续比较和排序
};
void calculateExpandedGrid(int n, int m, double t, int x1, int y1) {
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < m; ++j) {
            expandedGrid[i][j] = grid[i][j];
            expandedGrid[x1][y1] = 0;
            for (int k = 0; k < 4; ++k) {
                int nx = i + dx[k];
                int ny = j + dy[k];
                if (nx >= 0 && nx < n && ny >= 0 && ny < m) {
                    expandedGrid[i][j] += t * grid[nx][ny];
                }
            }
        }
    }
}


double dijkstra(int n, int m, int x1, int y1, int x2, int y2) {
    priority_queue<Node, vector<Node>, greater<Node>> pq;
    vector<vector<double>> dist(n, vector<double>(m, INF));
    vector<vector<bool>> visited(n, vector<bool>(m, false));

    pq.push({ x1, y1, expandedGrid[x1][y1] });
    dist[x1][y1] = expandedGrid[x1][y1];

    while (!pq.empty()) {
        Node current = pq.top();
        pq.pop();
        int cx = current.x;
        int cy = current.y;

        if (visited[cx][cy]) continue;
        visited[cx][cy] = true;

        if (cx == x2 && cy == y2) {
            return dist[cx][cy];
        }

        for (int i = 0; i < 4; ++i) {
            int nx = cx + dx[i];
            int ny = cy + dy[i];
            if (nx >= 0 && nx < n && ny >= 0 && ny < m && !visited[nx][ny]) {
                double newCost = dist[cx][cy] + expandedGrid[nx][ny];
                if (newCost < dist[nx][ny]) {
                    dist[nx][ny] = newCost;
                    pq.push({ nx, ny, newCost });
                }
            }
        }
    }

    return -1;
}

int main() {
    int n, m;
    cin >> n >> m;
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < m; ++j) {
            cin >> grid[i][j];
        }
    }
    double t;
    cin >> t;

    int x1, y1, x2, y2;
    cin >> x1 >> y1 >> x2 >> y2;
    cout << endl;
    calculateExpandedGrid(n, m, t, x1, y1);

    for (int i = 0;i < 4;i++) {
        for (int j = 0;j < 4;j++) {
            cout << expandedGrid[i][j] << " ";
        }
        cout << endl;
    }

    double cost_min = dijkstra(n, m, x1, y1, x2, y2);
    cout << fixed << setprecision(2) << cost_min << endl;

    return 0;
}
