package androidx.compose.foundation.lazy.grid;

/* JADX INFO: loaded from: classes9.dex */
public final class LineIndex {
    private final int value;

    public static final /* synthetic */ LineIndex a(int i10) {
        return new LineIndex(i10);
    }

    public static int b(int i10) {
        return i10;
    }

    public static boolean c(int i10, Object obj) {
        return (obj instanceof LineIndex) && i10 == ((LineIndex) obj).g();
    }

    public static final boolean d(int i10, int i11) {
        return i10 == i11;
    }

    public static int e(int i10) {
        return i10;
    }

    public static String f(int i10) {
        return "LineIndex(value=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return c(this.value, obj);
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

    private /* synthetic */ LineIndex(int i10) {
        this.value = i10;
    }
}
