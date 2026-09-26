package androidx.compose.ui.input.pointer;

/* JADX INFO: loaded from: classes11.dex */
public final class PointerButtons {
    private final int packedValue;

    public static int a(int i10) {
        return i10;
    }

    public static boolean b(int i10, Object obj) {
        return (obj instanceof PointerButtons) && i10 == ((PointerButtons) obj).e();
    }

    public static int c(int i10) {
        return i10;
    }

    public static String d(int i10) {
        return "PointerButtons(packedValue=" + i10 + ')';
    }

    public final /* synthetic */ int e() {
        return this.packedValue;
    }

    public boolean equals(Object obj) {
        return b(this.packedValue, obj);
    }

    public int hashCode() {
        return c(this.packedValue);
    }

    public String toString() {
        return d(this.packedValue);
    }
}
