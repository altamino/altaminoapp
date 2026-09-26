package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaceKt;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Connector;
import okhttp3.internal.ws.WebSocketProtocol;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public final class Color {
    private final long value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Black = ColorKt.d(4278190080L);
    private static final long DarkGray = ColorKt.d(4282664004L);
    private static final long Gray = ColorKt.d(4287137928L);
    private static final long LightGray = ColorKt.d(4291611852L);
    private static final long White = ColorKt.d(4294967295L);
    private static final long Red = ColorKt.d(4294901760L);
    private static final long Green = ColorKt.d(4278255360L);
    private static final long Blue = ColorKt.d(4278190335L);
    private static final long Yellow = ColorKt.d(4294967040L);
    private static final long Cyan = ColorKt.d(4278255615L);
    private static final long Magenta = ColorKt.d(4294902015L);
    private static final long Transparent = ColorKt.b(0);
    private static final long Unspecified = ColorKt.a(0.0f, 0.0f, 0.0f, 0.0f, ColorSpaces.INSTANCE.u());

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final long a() {
            return Color.Black;
        }

        public final long b() {
            return Color.Blue;
        }

        public final long c() {
            return Color.Gray;
        }

        public final long d() {
            return Color.Red;
        }

        public final long e() {
            return Color.Transparent;
        }

        public final long f() {
            return Color.Unspecified;
        }

        public final long g() {
            return Color.White;
        }
    }

    public static final /* synthetic */ Color h(long j6) {
        return new Color(j6);
    }

    public static long i(long j6) {
        return j6;
    }

    public static boolean m(long j6, Object obj) {
        return (obj instanceof Color) && j6 == ((Color) obj).v();
    }

    public static final boolean n(long j6, long j10) {
        return j6 == j10;
    }

    public static int t(long j6) {
        return w7.f0.d(j6);
    }

    public boolean equals(Object obj) {
        return m(this.value, obj);
    }

    public int hashCode() {
        return t(this.value);
    }

    public final /* synthetic */ long v() {
        return this.value;
    }

    public static final long j(long j6, @NotNull ColorSpace colorSpace) {
        kotlin.jvm.internal.t.j(colorSpace, "colorSpace");
        if (kotlin.jvm.internal.t.e(colorSpace, q(j6))) {
            return j6;
        }
        Connector connectorI = ColorSpaceKt.i(q(j6), colorSpace, 0, 2, null);
        float[] fArrH = ColorKt.h(j6);
        connectorI.a(fArrH);
        return ColorKt.a(fArrH[0], fArrH[1], fArrH[2], fArrH[3], colorSpace);
    }

    public static /* synthetic */ long l(long j6, float f, float f6, float f7, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = o(j6);
        }
        float f11 = f;
        if ((i10 & 2) != 0) {
            f6 = s(j6);
        }
        float f12 = f6;
        if ((i10 & 4) != 0) {
            f7 = r(j6);
        }
        float f13 = f7;
        if ((i10 & 8) != 0) {
            f10 = p(j6);
        }
        return k(j6, f11, f12, f13, f10);
    }

    public static final float o(long j6) {
        float fE;
        float f;
        if (w7.f0.b(63 & j6) == 0) {
            fE = (float) w7.n0.e(w7.f0.b(w7.f0.b(j6 >>> 56) & 255));
            f = 255.0f;
        } else {
            fE = (float) w7.n0.e(w7.f0.b(w7.f0.b(j6 >>> 6) & 1023));
            f = 1023.0f;
        }
        return fE / f;
    }

    public static final float p(long j6) {
        return w7.f0.b(63 & j6) == 0 ? ((float) w7.n0.e(w7.f0.b(w7.f0.b(j6 >>> 32) & 255))) / 255.0f : Float16.i(Float16.d((short) w7.f0.b(w7.f0.b(j6 >>> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX)));
    }

    @NotNull
    public static final ColorSpace q(long j6) {
        ColorSpaces colorSpaces = ColorSpaces.INSTANCE;
        return colorSpaces.h()[(int) w7.f0.b(j6 & 63)];
    }

    public static final float r(long j6) {
        return w7.f0.b(63 & j6) == 0 ? ((float) w7.n0.e(w7.f0.b(w7.f0.b(j6 >>> 40) & 255))) / 255.0f : Float16.i(Float16.d((short) w7.f0.b(w7.f0.b(j6 >>> 32) & WebSocketProtocol.PAYLOAD_SHORT_MAX)));
    }

    public static final float s(long j6) {
        return w7.f0.b(63 & j6) == 0 ? ((float) w7.n0.e(w7.f0.b(w7.f0.b(j6 >>> 48) & 255))) / 255.0f : Float16.i(Float16.d((short) w7.f0.b(w7.f0.b(j6 >>> 48) & WebSocketProtocol.PAYLOAD_SHORT_MAX)));
    }

    @NotNull
    public static String u(long j6) {
        return "Color(" + s(j6) + ", " + r(j6) + ", " + p(j6) + ", " + o(j6) + ", " + q(j6).g() + ')';
    }

    @NotNull
    public String toString() {
        return u(this.value);
    }

    private /* synthetic */ Color(long j6) {
        this.value = j6;
    }

    @Stable
    public static final long k(long j6, float f, float f6, float f7, float f10) {
        return ColorKt.a(f6, f7, f10, f, q(j6));
    }
}
