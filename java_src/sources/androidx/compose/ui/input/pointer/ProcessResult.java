package androidx.compose.ui.input.pointer;

/* JADX INFO: loaded from: classes9.dex */
public final class ProcessResult {
    private final int value;

    public static int a(int i10) {
        return i10;
    }

    public static boolean b(int i10, Object obj) {
        return (obj instanceof ProcessResult) && i10 == ((ProcessResult) obj).g();
    }

    public static final boolean c(int i10) {
        return (i10 & 2) != 0;
    }

    public static final boolean d(int i10) {
        return (i10 & 1) != 0;
    }

    public static int e(int i10) {
        return i10;
    }

    public static String f(int i10) {
        return "ProcessResult(value=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return b(this.value, obj);
    }

    public final /* synthetic */ int g() {
        return this.value;
    }

    public int hashCode() {
        return e(this.value);
    }

    public String toString() {
        return f(this.value);
    }
}
