#include <stdio.h>
int main()
{
	int n, r, i, j, k;
	printf("Enter no. of processes: ");
    scanf("%d",&n);
	printf("Enter no. of resources: ");
	scanf("%d",&r);
	int alloc[n][r], max[n][r], avail[r];
	for(i=0;i<n;i++){
        for(j=0;j<r;j++){
            printf("Enter allocated resources %d of processes %d: ", j+1, i+1);
            scanf("%d",&alloc[i][j]);
		}
	}
	for(i=0;i<n;i++){
        for(j=0;j<r;j++){
            printf("Enter maximum resources %d needed for processes %d: ", j+1, i+1);
            scanf("%d",&max[i][j]);
		}
	}
	for(i=0;i<r;i++){
	    printf("Enter available resources of %d: ", i+1);
        scanf("%d", &avail[i]);
	}

	int f[n], ans[n], ind = 0;
	for (k = 0; k < n; k++) {
		f[k] = 0;
	}
	int need[n][r];
	for (i = 0; i < n; i++) {
		for (j = 0; j < r; j++)
			need[i][j] = max[i][j] - alloc[i][j];
	}
	int y = 0;
	for (k = 0; k < n; k++) {
		for (i = 0; i < n; i++) {
			if (f[i] == 0) {

				int flag = 0;
				for (j = 0; j < r; j++) {
					if (need[i][j] > avail[j]){
						flag = 1;
						break;
					}
				}

				if (flag == 0) {
					ans[ind++] = i;
					for (y = 0; y < r; y++)
						avail[y] += alloc[i][y];
					f[i] = 1;
				}
			}
		}
	}
	printf("The safe Sequence is as follows\t");
	for (i = 0; i < n - 1; i++)
		printf(" P%d ->", ans[i]);
	printf(" P%d", ans[n - 1]);
	return 0;

}
