package androidx.compose.foundation;

import android.os.Build;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@Stable
@ExperimentalFoundationApi
public final class MagnifierStyle {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final MagnifierStyle Default;

    @NotNull
    private static final MagnifierStyle TextDefault;
    private final boolean clippingEnabled;
    private final float cornerRadius;
    private final float elevation;
    private final boolean fishEyeEnabled;
    private final long size;
    private final boolean useTextDefault;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ boolean d(Companion companion, MagnifierStyle magnifierStyle, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                i10 = Build.VERSION.SDK_INT;
            }
            return companion.c(magnifierStyle, i10);
        }

        public final boolean c(@NotNull MagnifierStyle style, int i10) {
            t.j(style, "style");
            if (MagnifierKt.b(i10) && !style.f()) {
                return style.h() || t.e(style, a()) || i10 >= 29;
            }
            return false;
        }

        @NotNull
        public final MagnifierStyle a() {
            return MagnifierStyle.Default;
        }

        @NotNull
        public final MagnifierStyle b() {
            return MagnifierStyle.TextDefault;
        }
    }

    @ExperimentalFoundationApi
    public /* synthetic */ MagnifierStyle(long j6, float f, float f6, boolean z6, boolean z10, k kVar) {
        this(j6, f, f6, z6, z10);
    }

    public final boolean c() {
        return this.clippingEnabled;
    }

    public final float d() {
        return this.cornerRadius;
    }

    public final float e() {
        return this.elevation;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MagnifierStyle)) {
            return false;
        }
        MagnifierStyle magnifierStyle = (MagnifierStyle) obj;
        return this.useTextDefault == magnifierStyle.useTextDefault && DpSize.f(this.size, magnifierStyle.size) && Dp.i(this.cornerRadius, magnifierStyle.cornerRadius) && Dp.i(this.elevation, magnifierStyle.elevation) && this.clippingEnabled == magnifierStyle.clippingEnabled && this.fishEyeEnabled == magnifierStyle.fishEyeEnabled;
    }

    public final boolean f() {
        return this.fishEyeEnabled;
    }

    public final long g() {
        return this.size;
    }

    public final boolean h() {
        return this.useTextDefault;
    }

    static {
        MagnifierStyle magnifierStyle = new MagnifierStyle(0L, 0.0f, 0.0f, false, false, 31, (k) null);
        Default = magnifierStyle;
        TextDefault = new MagnifierStyle(true, magnifierStyle.size, magnifierStyle.cornerRadius, magnifierStyle.elevation, magnifierStyle.clippingEnabled, magnifierStyle.fishEyeEnabled, (k) null);
    }

    public /* synthetic */ MagnifierStyle(boolean z6, long j6, float f, float f6, boolean z10, boolean z11, k kVar) {
        this(z6, j6, f, f6, z10, z11);
    }

    public int hashCode() {
        return (((((((((c.a(this.useTextDefault) * 31) + DpSize.i(this.size)) * 31) + Dp.j(this.cornerRadius)) * 31) + Dp.j(this.elevation)) * 31) + c.a(this.clippingEnabled)) * 31) + c.a(this.fishEyeEnabled);
    }

    public final boolean i() {
        return Companion.d(Companion, this, 0, 2, null);
    }

    @NotNull
    public String toString() {
        if (this.useTextDefault) {
            return "MagnifierStyle.TextDefault";
        }
        return "MagnifierStyle(size=" + ((Object) DpSize.k(this.size)) + ", cornerRadius=" + ((Object) Dp.k(this.cornerRadius)) + ", elevation=" + ((Object) Dp.k(this.elevation)) + ", clippingEnabled=" + this.clippingEnabled + ", fishEyeEnabled=" + this.fishEyeEnabled + ')';
    }

    private MagnifierStyle(boolean z6, long j6, float f, float f6, boolean z10, boolean z11) {
        this.useTextDefault = z6;
        this.size = j6;
        this.cornerRadius = f;
        this.elevation = f6;
        this.clippingEnabled = z10;
        this.fishEyeEnabled = z11;
    }

    public /* synthetic */ MagnifierStyle(long j6, float f, float f6, boolean z6, boolean z10, int i10, k kVar) {
        this((i10 & 1) != 0 ? DpSize.Companion.a() : j6, (i10 & 2) != 0 ? Dp.Companion.b() : f, (i10 & 4) != 0 ? Dp.Companion.b() : f6, (i10 & 8) != 0 ? true : z6, (i10 & 16) != 0 ? false : z10, (k) null);
    }

    private MagnifierStyle(long j6, float f, float f6, boolean z6, boolean z10) {
        this(false, j6, f, f6, z6, z10, (k) null);
    }
}
