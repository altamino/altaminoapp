package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import androidx.exifinterface.media.ExifInterface;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@Immutable
public final class BlendMode {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Clear = E(0);
    private static final int Src = E(1);
    private static final int Dst = E(2);
    private static final int SrcOver = E(3);
    private static final int DstOver = E(4);
    private static final int SrcIn = E(5);
    private static final int DstIn = E(6);
    private static final int SrcOut = E(7);
    private static final int DstOut = E(8);
    private static final int SrcAtop = E(9);
    private static final int DstAtop = E(10);
    private static final int Xor = E(11);
    private static final int Plus = E(12);
    private static final int Modulate = E(13);
    private static final int Screen = E(14);
    private static final int Overlay = E(15);
    private static final int Darken = E(16);
    private static final int Lighten = E(17);
    private static final int ColorDodge = E(18);
    private static final int ColorBurn = E(19);
    private static final int Hardlight = E(20);
    private static final int Softlight = E(21);
    private static final int Difference = E(22);
    private static final int Exclusion = E(23);
    private static final int Multiply = E(24);
    private static final int Hue = E(25);
    private static final int Saturation = E(26);
    private static final int Color = E(27);
    private static final int Luminosity = E(28);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final int A() {
            return BlendMode.SrcOut;
        }

        public final int B() {
            return BlendMode.SrcOver;
        }

        public final int C() {
            return BlendMode.Xor;
        }

        public final int a() {
            return BlendMode.Clear;
        }

        public final int b() {
            return BlendMode.Color;
        }

        public final int c() {
            return BlendMode.ColorBurn;
        }

        public final int d() {
            return BlendMode.ColorDodge;
        }

        public final int e() {
            return BlendMode.Darken;
        }

        public final int f() {
            return BlendMode.Difference;
        }

        public final int g() {
            return BlendMode.Dst;
        }

        public final int h() {
            return BlendMode.DstAtop;
        }

        public final int i() {
            return BlendMode.DstIn;
        }

        public final int j() {
            return BlendMode.DstOut;
        }

        public final int k() {
            return BlendMode.DstOver;
        }

        public final int l() {
            return BlendMode.Exclusion;
        }

        public final int m() {
            return BlendMode.Hardlight;
        }

        public final int n() {
            return BlendMode.Hue;
        }

        public final int o() {
            return BlendMode.Lighten;
        }

        public final int p() {
            return BlendMode.Luminosity;
        }

        public final int q() {
            return BlendMode.Modulate;
        }

        public final int r() {
            return BlendMode.Multiply;
        }

        public final int s() {
            return BlendMode.Overlay;
        }

        public final int t() {
            return BlendMode.Plus;
        }

        public final int u() {
            return BlendMode.Saturation;
        }

        public final int v() {
            return BlendMode.Screen;
        }

        public final int w() {
            return BlendMode.Softlight;
        }

        public final int x() {
            return BlendMode.Src;
        }

        public final int y() {
            return BlendMode.SrcAtop;
        }

        public final int z() {
            return BlendMode.SrcIn;
        }
    }

    public static final /* synthetic */ BlendMode D(int i10) {
        return new BlendMode(i10);
    }

    public static int E(int i10) {
        return i10;
    }

    public static boolean F(int i10, Object obj) {
        return (obj instanceof BlendMode) && i10 == ((BlendMode) obj).J();
    }

    public static final boolean G(int i10, int i11) {
        return i10 == i11;
    }

    public static int H(int i10) {
        return i10;
    }

    public final /* synthetic */ int J() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return F(this.value, obj);
    }

    public int hashCode() {
        return H(this.value);
    }

    @NotNull
    public static String I(int i10) {
        if (G(i10, Clear)) {
            return "Clear";
        }
        if (G(i10, Src)) {
            return "Src";
        }
        if (G(i10, Dst)) {
            return "Dst";
        }
        if (G(i10, SrcOver)) {
            return "SrcOver";
        }
        if (G(i10, DstOver)) {
            return "DstOver";
        }
        if (G(i10, SrcIn)) {
            return "SrcIn";
        }
        if (G(i10, DstIn)) {
            return "DstIn";
        }
        if (G(i10, SrcOut)) {
            return "SrcOut";
        }
        if (G(i10, DstOut)) {
            return "DstOut";
        }
        if (G(i10, SrcAtop)) {
            return "SrcAtop";
        }
        if (G(i10, DstAtop)) {
            return "DstAtop";
        }
        if (G(i10, Xor)) {
            return "Xor";
        }
        if (G(i10, Plus)) {
            return "Plus";
        }
        if (G(i10, Modulate)) {
            return "Modulate";
        }
        if (G(i10, Screen)) {
            return "Screen";
        }
        if (G(i10, Overlay)) {
            return "Overlay";
        }
        if (G(i10, Darken)) {
            return "Darken";
        }
        if (G(i10, Lighten)) {
            return "Lighten";
        }
        if (G(i10, ColorDodge)) {
            return "ColorDodge";
        }
        if (G(i10, ColorBurn)) {
            return "ColorBurn";
        }
        if (G(i10, Hardlight)) {
            return "HardLight";
        }
        if (G(i10, Softlight)) {
            return "Softlight";
        }
        if (G(i10, Difference)) {
            return "Difference";
        }
        if (G(i10, Exclusion)) {
            return "Exclusion";
        }
        if (G(i10, Multiply)) {
            return "Multiply";
        }
        if (G(i10, Hue)) {
            return "Hue";
        }
        if (G(i10, Saturation)) {
            return ExifInterface.TAG_SATURATION;
        }
        if (G(i10, Color)) {
            return "Color";
        }
        return G(i10, Luminosity) ? "Luminosity" : "Unknown";
    }

    @NotNull
    public String toString() {
        return I(this.value);
    }

    private /* synthetic */ BlendMode(int i10) {
        this.value = i10;
    }
}
