#include<stdio.h>
int main()
{
    int i,j,n,t,p[100],sT[100],at[100],bt[100],wt[100],tat[100];
    float awt=0,atat=0;

    printf("Enter the number or process ");
    scanf("%d",&n);

    printf("Enter the process number ");
    for(i=0;i<n;i++)
    {
        scanf("%d",&p[i]);
    }

    printf("Enter the arrival time of the process");
    for(i=0;i<n;i++)
    {
        scanf("%d",&at[i]);
    }
    printf("Enter the burst time of the process");
    for(i=0;i<n;i++)
    {
        scanf("%d",&bt[i]);
    }
    for(i=0;i<n;i++)
    {
        for(j=0;j<n-i-1;j++)
        {
            if (bt[j]>bt[j+1])
            {
                t=bt[j];
                bt[j]=bt[j+1];
                bt[j+1]=t;

                t=p[j];
                p[j]=p[j+1];
                p[j+1]=t;

            }
        }
    }
    printf("process\t arrival time\t burst time\t service time\t waiting time \t turn around time\n");
    for (i=0;i<n;i++)
    {

        wt[i]=0;
        tat[i]=0;
        sT[i+1]= sT[i]+bt[i];
        for(j=0;j<i;j++)
        {

            wt[i]=wt[i]+bt[j];
        }
        tat[i]=wt[i]+bt[i];
        awt=awt+wt[i];
        atat=atat+tat[i];
        printf("\n%d\t\t%d\t\t%d\t\t%d\t\t%d\t\t%d",p[i],at[i],bt[i],sT[i],wt[i],tat[i]);
    }
    awt=awt/n;
    atat=atat/n;
    printf("\nAverage waiting time %lf",awt);
    printf("\nAverage turnaround time %lf",atat);

}


