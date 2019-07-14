					//Two Pointers (books)279-B

#include <bits/stdc++.h>
using namespace std;
typedef long long int ll;
const int e=1e5+5;
int t,n,arr[e];

int twoPointers(){
    int left=0,right=0,bestScore=0,sum=0;

    while(right<n){
        sum+=arr[right];

        if(sum<=t)
            bestScore=max(bestScore,right-left+1);

        while(sum>t)
            sum-=arr[left++];

        right++;

    }
return bestScore;
}
int main()
{
    scanf("%d%d",&n,&t);
    for(int i=0;i<n;i++)    scanf("%d",arr+i);
    printf("%d\n",twoPointers());
    return 0;
}

