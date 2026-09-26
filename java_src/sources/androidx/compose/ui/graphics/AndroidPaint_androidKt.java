package androidx.compose.ui.graphics;

import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.os.Build;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class AndroidPaint_androidKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[android.graphics.Paint.Style.values().length];
            iArr[android.graphics.Paint.Style.STROKE.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[android.graphics.Paint.Cap.values().length];
            iArr2[android.graphics.Paint.Cap.BUTT.ordinal()] = 1;
            iArr2[android.graphics.Paint.Cap.ROUND.ordinal()] = 2;
            iArr2[android.graphics.Paint.Cap.SQUARE.ordinal()] = 3;
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[android.graphics.Paint.Join.values().length];
            iArr3[android.graphics.Paint.Join.MITER.ordinal()] = 1;
            iArr3[android.graphics.Paint.Join.BEVEL.ordinal()] = 2;
            iArr3[android.graphics.Paint.Join.ROUND.ordinal()] = 3;
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    @NotNull
    public static final Paint a() {
        return new AndroidPaint();
    }

    public static final float b(@NotNull android.graphics.Paint paint) {
        kotlin.jvm.internal.t.j(paint, "<this>");
        return paint.getAlpha() / 255.0f;
    }

    public static final long c(@NotNull android.graphics.Paint paint) {
        kotlin.jvm.internal.t.j(paint, "<this>");
        return ColorKt.b(paint.getColor());
    }

    public static final int d(@NotNull android.graphics.Paint paint) {
        kotlin.jvm.internal.t.j(paint, "<this>");
        return !paint.isFilterBitmap() ? FilterQuality.Companion.b() : FilterQuality.Companion.a();
    }

    public static final int e(@NotNull android.graphics.Paint paint) {
        kotlin.jvm.internal.t.j(paint, "<this>");
        android.graphics.Paint.Cap strokeCap = paint.getStrokeCap();
        int i10 = strokeCap == null ? -1 : WhenMappings.$EnumSwitchMapping$1[strokeCap.ordinal()];
        if (i10 == 1) {
            return StrokeCap.Companion.a();
        }
        if (i10 != 2) {
            return i10 != 3 ? StrokeCap.Companion.a() : StrokeCap.Companion.c();
        }
        return StrokeCap.Companion.b();
    }

    public static final int f(@NotNull android.graphics.Paint paint) {
        kotlin.jvm.internal.t.j(paint, "<this>");
        android.graphics.Paint.Join strokeJoin = paint.getStrokeJoin();
        int i10 = strokeJoin == null ? -1 : WhenMappings.$EnumSwitchMapping$2[strokeJoin.ordinal()];
        if (i10 == 1) {
            return StrokeJoin.Companion.b();
        }
        if (i10 != 2) {
            return i10 != 3 ? StrokeJoin.Companion.b() : StrokeJoin.Companion.c();
        }
        return StrokeJoin.Companion.a();
    }

    public static final float g(@NotNull android.graphics.Paint paint) {
        kotlin.jvm.internal.t.j(paint, "<this>");
        return paint.getStrokeMiter();
    }

    public static final float h(@NotNull android.graphics.Paint paint) {
        kotlin.jvm.internal.t.j(paint, "<this>");
        return paint.getStrokeWidth();
    }

    @NotNull
    public static final android.graphics.Paint i() {
        return new android.graphics.Paint(7);
    }

    public static final void j(@NotNull android.graphics.Paint paint, float f) {
        kotlin.jvm.internal.t.j(paint, "<this>");
        paint.setAlpha((int) Math.rint(f * 255.0f));
    }

    public static final void k(@NotNull android.graphics.Paint setNativeBlendMode, int i10) {
        kotlin.jvm.internal.t.j(setNativeBlendMode, "$this$setNativeBlendMode");
        if (Build.VERSION.SDK_INT >= 29) {
            WrapperVerificationHelperMethods.INSTANCE.a(setNativeBlendMode, i10);
        } else {
            setNativeBlendMode.setXfermode(new PorterDuffXfermode(AndroidBlendMode_androidKt.b(i10)));
        }
    }

    public static final void l(@NotNull android.graphics.Paint setNativeColor, long j6) {
        kotlin.jvm.internal.t.j(setNativeColor, "$this$setNativeColor");
        setNativeColor.setColor(ColorKt.l(j6));
    }

    public static final void m(@NotNull android.graphics.Paint paint, @Nullable ColorFilter colorFilter) {
        kotlin.jvm.internal.t.j(paint, "<this>");
        paint.setColorFilter(colorFilter != null ? AndroidColorFilter_androidKt.b(colorFilter) : null);
    }

    public static final void n(@NotNull android.graphics.Paint setNativeFilterQuality, int i10) {
        kotlin.jvm.internal.t.j(setNativeFilterQuality, "$this$setNativeFilterQuality");
        setNativeFilterQuality.setFilterBitmap(!FilterQuality.e(i10, FilterQuality.Companion.b()));
    }

    public static final void o(@NotNull android.graphics.Paint paint, @Nullable PathEffect pathEffect) {
        kotlin.jvm.internal.t.j(paint, "<this>");
        AndroidPathEffect androidPathEffect = (AndroidPathEffect) pathEffect;
        paint.setPathEffect(androidPathEffect != null ? androidPathEffect.a() : null);
    }

    public static final void p(@NotNull android.graphics.Paint paint, @Nullable Shader shader) {
        kotlin.jvm.internal.t.j(paint, "<this>");
        paint.setShader(shader);
    }

    public static final void q(@NotNull android.graphics.Paint setNativeStrokeCap, int i10) {
        android.graphics.Paint.Cap cap;
        kotlin.jvm.internal.t.j(setNativeStrokeCap, "$this$setNativeStrokeCap");
        StrokeCap.Companion companion = StrokeCap.Companion;
        if (StrokeCap.g(i10, companion.c())) {
            cap = android.graphics.Paint.Cap.SQUARE;
        } else if (StrokeCap.g(i10, companion.b())) {
            cap = android.graphics.Paint.Cap.ROUND;
        } else {
            cap = StrokeCap.g(i10, companion.a()) ? android.graphics.Paint.Cap.BUTT : android.graphics.Paint.Cap.BUTT;
        }
        setNativeStrokeCap.setStrokeCap(cap);
    }

    public static final void r(@NotNull android.graphics.Paint setNativeStrokeJoin, int i10) {
        android.graphics.Paint.Join join;
        kotlin.jvm.internal.t.j(setNativeStrokeJoin, "$this$setNativeStrokeJoin");
        StrokeJoin.Companion companion = StrokeJoin.Companion;
        if (StrokeJoin.g(i10, companion.b())) {
            join = android.graphics.Paint.Join.MITER;
        } else if (StrokeJoin.g(i10, companion.a())) {
            join = android.graphics.Paint.Join.BEVEL;
        } else {
            join = StrokeJoin.g(i10, companion.c()) ? android.graphics.Paint.Join.ROUND : android.graphics.Paint.Join.MITER;
        }
        setNativeStrokeJoin.setStrokeJoin(join);
    }

    public static final void s(@NotNull android.graphics.Paint paint, float f) {
        kotlin.jvm.internal.t.j(paint, "<this>");
        paint.setStrokeMiter(f);
    }

    public static final void t(@NotNull android.graphics.Paint paint, float f) {
        kotlin.jvm.internal.t.j(paint, "<this>");
        paint.setStrokeWidth(f);
    }

    public static final void u(@NotNull android.graphics.Paint setNativeStyle, int i10) {
        kotlin.jvm.internal.t.j(setNativeStyle, "$this$setNativeStyle");
        setNativeStyle.setStyle(PaintingStyle.e(i10, PaintingStyle.Companion.b()) ? android.graphics.Paint.Style.STROKE : android.graphics.Paint.Style.FILL);
    }
}
