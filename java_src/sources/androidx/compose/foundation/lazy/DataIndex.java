package androidx.compose.foundation.lazy;

/* JADX INFO: loaded from: classes5.dex */
public final class DataIndex {
    private final int value;

    public static final /* synthetic */ DataIndex a(int i10) {
        return new DataIndex(i10);
    }

    public static int b(int i10) {
        return i10;
    }

    public static boolean c(int i10, Object obj) {
        return (obj instanceof DataIndex) && i10 == ((DataIndex) obj).g();
    }

    public static final boolean d(int i10, int i11) {
        return i10 == i11;
    }

    public static int e(int i10) {
        return i10;
    }

    public static String f(int i10) {
        return "DataIndex(value=" + i10 + ')';
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

    private /* synthetic */ DataIndex(int i10) {
        this.value = i10;
    }
}
