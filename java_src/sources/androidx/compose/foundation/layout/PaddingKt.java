package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class PaddingKt {
    @Stable
    @NotNull
    public static final PaddingValues a(float f) {
        return new PaddingValuesImpl(f, f, f, f, null);
    }

    @Stable
    @NotNull
    public static final PaddingValues b(float f, float f6) {
        return new PaddingValuesImpl(f, f6, f, f6, null);
    }

    public static /* synthetic */ PaddingValues c(float f, float f6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = Dp.f(0);
        }
        if ((i10 & 2) != 0) {
            f6 = Dp.f(0);
        }
        return b(f, f6);
    }

    @Stable
    @NotNull
    public static final PaddingValues d(float f, float f6, float f7, float f10) {
        return new PaddingValuesImpl(f, f6, f7, f10, null);
    }

    public static /* synthetic */ PaddingValues e(float f, float f6, float f7, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = Dp.f(0);
        }
        if ((i10 & 2) != 0) {
            f6 = Dp.f(0);
        }
        if ((i10 & 4) != 0) {
            f7 = Dp.f(0);
        }
        if ((i10 & 8) != 0) {
            f10 = Dp.f(0);
        }
        return d(f, f6, f7, f10);
    }

    @Stable
    public static final float f(@NotNull PaddingValues paddingValues, @NotNull LayoutDirection layoutDirection) {
        t.j(paddingValues, "<this>");
        t.j(layoutDirection, "layoutDirection");
        return layoutDirection == LayoutDirection.Ltr ? paddingValues.c(layoutDirection) : paddingValues.b(layoutDirection);
    }

    @Stable
    public static final float g(@NotNull PaddingValues paddingValues, @NotNull LayoutDirection layoutDirection) {
        t.j(paddingValues, "<this>");
        t.j(layoutDirection, "layoutDirection");
        return layoutDirection == LayoutDirection.Ltr ? paddingValues.b(layoutDirection) : paddingValues.c(layoutDirection);
    }

    @Stable
    @NotNull
    public static final Modifier h(@NotNull Modifier modifier, @NotNull PaddingValues paddingValues) {
        t.j(modifier, "<this>");
        t.j(paddingValues, "paddingValues");
        return modifier.B(new PaddingValuesModifier(paddingValues, InspectableValueKt.c() ? new PaddingKt$padding$$inlined$debugInspectorInfo$1(paddingValues) : InspectableValueKt.a()));
    }

    @Stable
    @NotNull
    public static final Modifier i(@NotNull Modifier padding, float f) {
        t.j(padding, "$this$padding");
        return padding.B(new PaddingModifier(f, f, f, f, true, InspectableValueKt.c() ? new PaddingKt$padding3ABfNKs$$inlined$debugInspectorInfo$1(f) : InspectableValueKt.a(), null));
    }

    @Stable
    @NotNull
    public static final Modifier j(@NotNull Modifier padding, float f, float f6) {
        t.j(padding, "$this$padding");
        return padding.B(new PaddingModifier(f, f6, f, f6, true, InspectableValueKt.c() ? new PaddingKt$paddingVpY3zN4$$inlined$debugInspectorInfo$1(f, f6) : InspectableValueKt.a(), null));
    }

    public static /* synthetic */ Modifier k(Modifier modifier, float f, float f6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = Dp.f(0);
        }
        if ((i10 & 2) != 0) {
            f6 = Dp.f(0);
        }
        return j(modifier, f, f6);
    }

    @Stable
    @NotNull
    public static final Modifier l(@NotNull Modifier padding, float f, float f6, float f7, float f10) {
        t.j(padding, "$this$padding");
        return padding.B(new PaddingModifier(f, f6, f7, f10, true, InspectableValueKt.c() ? new PaddingKt$paddingqDBjuR0$$inlined$debugInspectorInfo$1(f, f6, f7, f10) : InspectableValueKt.a(), null));
    }

    public static /* synthetic */ Modifier m(Modifier modifier, float f, float f6, float f7, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = Dp.f(0);
        }
        if ((i10 & 2) != 0) {
            f6 = Dp.f(0);
        }
        if ((i10 & 4) != 0) {
            f7 = Dp.f(0);
        }
        if ((i10 & 8) != 0) {
            f10 = Dp.f(0);
        }
        return l(modifier, f, f6, f7, f10);
    }
}
