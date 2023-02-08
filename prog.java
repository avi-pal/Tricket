import java.util.*;

class prog {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        prog obj = new prog();
        System.out.println("Enter the size of the array");
        int n = sc.nextInt();
        int arr[] = new int[n];
        System.out.println("Enter the elements of the array");
        for (int i = 0; i < n; i++)
            arr[i] = sc.nextInt();
        ArrayList<Integer> a = obj.removeduplicate(arr, n);
        System.out.println("After removing duplicates: ");
        int l = a.size();
        for (int i = 0; i < l; i++)
            System.out.println(a.get(i) + " ");
    }

    public ArrayList<Integer> removeduplicate(int arr[], int n) {

        Arrays.sort(arr);
        ArrayList<Integer> a = new ArrayList<Integer>();
        a.add(arr[0]);
        for (int i = 0; i < n - 1; i++) {
            if (arr[i] == arr[i + 1])
                continue;
            else {
                a.add(arr[i + 1]);
            }

        }
        return a;
    }
}