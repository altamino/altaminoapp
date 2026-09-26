package f4;

/* JADX INFO: loaded from: classes7.dex */
public class a implements d {
    private final int maximumStackSize;
    private final b middleOutStrategy;
    private final d[] trimmingStrategies;

    @Override // f4.d
    public StackTraceElement[] a(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= this.maximumStackSize) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArrA = stackTraceElementArr;
        for (d dVar : this.trimmingStrategies) {
            if (stackTraceElementArrA.length <= this.maximumStackSize) {
                break;
            }
            stackTraceElementArrA = dVar.a(stackTraceElementArr);
        }
        return stackTraceElementArrA.length > this.maximumStackSize ? this.middleOutStrategy.a(stackTraceElementArrA) : stackTraceElementArrA;
    }

    public a(int i10, d... dVarArr) {
        this.maximumStackSize = i10;
        this.trimmingStrategies = dVarArr;
        this.middleOutStrategy = new b(i10);
    }
}
