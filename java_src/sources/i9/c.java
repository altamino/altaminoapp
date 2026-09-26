package i9;

/* JADX INFO: loaded from: classes3.dex */
public class c {
    private final int[] DEFAULT_VI;
    private int[] vi;

    public c() {
        int[] iArr = {6, 12, 17, 22, 33};
        this.DEFAULT_VI = iArr;
        this.vi = iArr;
    }

    private void a() {
        int[] iArr;
        int i10;
        int[] iArr2 = this.vi;
        if (iArr2 == null) {
            throw new IllegalArgumentException("no layers defined.");
        }
        if (iArr2.length <= 1) {
            throw new IllegalArgumentException("Rainbow needs at least 1 layer, such that v1 < v2.");
        }
        int i11 = 0;
        do {
            iArr = this.vi;
            if (i11 >= iArr.length - 1) {
                return;
            }
            i10 = iArr[i11];
            i11++;
        } while (i10 < iArr[i11]);
        throw new IllegalArgumentException("v[i] has to be smaller than v[i+1]");
    }

    public c(int[] iArr) {
        this.DEFAULT_VI = new int[]{6, 12, 17, 22, 33};
        this.vi = iArr;
        a();
    }
}
