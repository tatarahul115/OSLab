#include <stdio.h>
int main()
{
    int i, small, count=0, time, n;
    double wait_time=0, turnaround_time=0, end;
    float average_wait_time, average_turnaround_time;
    printf("Enter the Total Number of Processes: ");
    scanf("%d", &n);
    int arrival_time[n], burst_time[n], temp[n+1], turnaround[n], wait[n];

    for(i = 0; i < n; i++)
    {
        printf("\nEnter Details of %d Processes", i+1);
        printf("\nEnter Arrival Time: ");
        scanf("%d", &arrival_time[i]);
        printf("Enter Burst Time: ");
        scanf("%d", &burst_time[i]);
        temp[i] = burst_time[i];
    }
    temp[n] = 9999;
    for(time = 0; count != n; time++)
    {
        small = n;
        for(i = 0; i < n; i++)
        {
            if(arrival_time[i] <= time && temp[i] < temp[small] && temp[i] > 0)
            {
                small = i;
            }
        }
        temp[small]--;
        if(temp[small] == 0)
        {
            count++;
            end = time + 1;
            wait[small] = end - arrival_time[small] - burst_time[small];
            turnaround[small] =   end - arrival_time[small];
            wait_time = wait_time + end - arrival_time[small] - burst_time[small];
            turnaround_time = turnaround_time + end - arrival_time[small];
        }
    }
    average_wait_time = wait_time / n;
    average_turnaround_time = turnaround_time / n;
    printf("Process \t Arrival Time \t Burst Time \t Waiting Time \t Turn Around Time");
    for(i = 0; i < n; i++)
    {
        printf("\nP%d \t\t %d \t\t %d \t\t %d \t\t %d \t\t %d", i, arrival_time[i], burst_time[i], wait[i], turnaround[i]);
    }
    printf("\n\nAverage Waiting Time: %lf\n", average_wait_time);
    printf("Average Turnaround Time: %lf\n", average_turnaround_time);
    return 0;
}
