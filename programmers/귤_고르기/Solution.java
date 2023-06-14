import java.util.*;

class Solution {
    public int solution(int k, int[] tangerine) {
        
        Arrays.sort(tangerine);
        
        int[] arr = new int[tangerine.length];
        
        int idx = 0;
        int numC = 1;
        for(int i = 1; i < tangerine.length; i++){
            if(i == tangerine.length-1){
                arr[idx] = numC+1;
            }
            
            if(tangerine[i] == tangerine[i-1]){
                numC++;
                continue;
            }
            
            arr[idx] = numC;
            numC = 1;
            idx++;
        }
        
        Integer[] arr2 = Arrays.stream(arr).boxed().toArray(Integer[]::new);
        
        Arrays.sort(arr2, Collections.reverseOrder());
        
        int answer = 0;
        
        for(int i = 0; i < tangerine.length; i++){
            if(k <= 0){
                break;
            }else{
                answer++;
                k -= arr2[i];
            }
        }
        
        return answer;
    }
}
