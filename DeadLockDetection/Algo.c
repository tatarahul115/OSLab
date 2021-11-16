#include <stdio.h>

int main()
{
  int max[3][3] = {{3, 6, 8}, {4, 3, 3}, {3, 4, 4}};
  int allocation[3][3] = {{3, 3, 3}, {2, 0, 3}, {1, 2, 4}};
  int available[3] = {1, 2, 0};
  int need[3][3];

  int finish[3], temp, flag = 1, k, c1 = 0, r = 3;
  int dead[3];
  int safe[3];
  int i, j;
  int n = 3;

  for (i = 0; i < n; i++)
  {
    finish[i] = 0;
  }

  for (i = 0; i < n; i++)
  {
    for (j = 0; j < n; j++)
    {
      need[i][j] = max[i][j] - allocation[i][j];
    }
  }

  while (flag)
  {
    flag = 0;
    for (i = 0; i < n; i++)
    {
      int set = 0;
      for (j = 0; j < r; j++)
      {
        if ((finish[i] == 0) && (need[i][j] <= available[j]))
        {
          set++;
          if (set == r)
          {
            for (k = 0; k < r; k++)
            {
              available[k] += allocation[i][j];
              finish[i] = 1;
              flag = 1;
            }
            if (finish[i] == 1)
            {
              i = n;
            }
          }
        }
      }
    }
  }
  j = 0;
  flag = 0;
  for (i = 0; i < n; i++)
  {
    if (finish[i] == 0)
    {
      dead[j] = i;
      j++;
      flag = 1;
    }
  }
  if (flag == 1)
  {
    printf("System is in Deadlock and the Deadlock process are\n");
    for (i = 0; i < n; i++)
    {
      printf("P%d\t", dead[i]);
    }
  }
  else
  {
    printf("\nNo Deadlock Occur");
  }
}
