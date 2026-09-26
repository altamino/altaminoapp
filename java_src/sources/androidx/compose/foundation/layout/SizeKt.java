package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class SizeKt {

    @NotNull
    private static final WrapContentModifier WrapContentHeightCenter;

    @NotNull
    private static final WrapContentModifier WrapContentHeightTop;

    @NotNull
    private static final WrapContentModifier WrapContentSizeCenter;

    @NotNull
    private static final WrapContentModifier WrapContentSizeTopStart;

    @NotNull
    private static final WrapContentModifier WrapContentWidthCenter;

    @NotNull
    private static final WrapContentModifier WrapContentWidthStart;

    @NotNull
    private static final FillModifier FillWholeMaxWidth = c(1.0f);

    @NotNull
    private static final FillModifier FillWholeMaxHeight = a(1.0f);

    @NotNull
    private static final FillModifier FillWholeMaxSize = b(1.0f);

    static {
        Alignment.Companion companion = Alignment.Companion;
        WrapContentWidthCenter = f(companion.g(), false);
        WrapContentWidthStart = f(companion.k(), false);
        WrapContentHeightCenter = d(companion.i(), false);
        WrapContentHeightTop = d(companion.l(), false);
        WrapContentSizeCenter = e(companion.e(), false);
        WrapContentSizeTopStart = e(companion.o(), false);
    }

    @Stable
    @NotNull
    public static final Modifier A(@NotNull Modifier size, float f, float f6) {
        t.j(size, "$this$size");
        return size.B(new SizeModifier(f, f6, f, f6, true, InspectableValueKt.c() ? new SizeKt$sizeVpY3zN4$$inlined$debugInspectorInfo$1(f, f6) : InspectableValueKt.a(), null));
    }

    @Stable
    @NotNull
    public static final Modifier B(@NotNull Modifier sizeIn, float f, float f6, float f7, float f10) {
        t.j(sizeIn, "$this$sizeIn");
        return sizeIn.B(new SizeModifier(f, f6, f7, f10, true, InspectableValueKt.c() ? new SizeKt$sizeInqDBjuR0$$inlined$debugInspectorInfo$1(f, f6, f7, f10) : InspectableValueKt.a(), null));
    }

    public static /* synthetic */ Modifier C(Modifier modifier, float f, float f6, float f7, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = Dp.Companion.b();
        }
        if ((i10 & 2) != 0) {
            f6 = Dp.Companion.b();
        }
        if ((i10 & 4) != 0) {
            f7 = Dp.Companion.b();
        }
        if ((i10 & 8) != 0) {
            f10 = Dp.Companion.b();
        }
        return B(modifier, f, f6, f7, f10);
    }

    @Stable
    @NotNull
    public static final Modifier D(@NotNull Modifier width, float f) {
        t.j(width, "$this$width");
        return width.B(new SizeModifier(f, 0.0f, f, 0.0f, true, InspectableValueKt.c() ? new SizeKt$width3ABfNKs$$inlined$debugInspectorInfo$1(f) : InspectableValueKt.a(), 10, null));
    }

    @Stable
    @NotNull
    public static final Modifier E(@NotNull Modifier widthIn, float f, float f6) {
        t.j(widthIn, "$this$widthIn");
        return widthIn.B(new SizeModifier(f, 0.0f, f6, 0.0f, true, InspectableValueKt.c() ? new SizeKt$widthInVpY3zN4$$inlined$debugInspectorInfo$1(f, f6) : InspectableValueKt.a(), 10, null));
    }

    public static /* synthetic */ Modifier F(Modifier modifier, float f, float f6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = Dp.Companion.b();
        }
        if ((i10 & 2) != 0) {
            f6 = Dp.Companion.b();
        }
        return E(modifier, f, f6);
    }

    @Stable
    @NotNull
    public static final Modifier G(@NotNull Modifier modifier, @NotNull Alignment align, boolean z6) {
        WrapContentModifier wrapContentModifierE;
        t.j(modifier, "<this>");
        t.j(align, "align");
        Alignment.Companion companion = Alignment.Companion;
        if (!t.e(align, companion.e()) || z6) {
            wrapContentModifierE = (!t.e(align, companion.o()) || z6) ? e(align, z6) : WrapContentSizeTopStart;
        } else {
            wrapContentModifierE = WrapContentSizeCenter;
        }
        return modifier.B(wrapContentModifierE);
    }

    public static /* synthetic */ Modifier H(Modifier modifier, Alignment alignment, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            alignment = Alignment.Companion.e();
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return G(modifier, alignment, z6);
    }

    private static final FillModifier a(float f) {
        return new FillModifier(Direction.Vertical, f, new SizeKt$createFillHeightModifier$1(f));
    }

    private static final FillModifier b(float f) {
        return new FillModifier(Direction.Both, f, new SizeKt$createFillSizeModifier$1(f));
    }

    private static final FillModifier c(float f) {
        return new FillModifier(Direction.Horizontal, f, new SizeKt$createFillWidthModifier$1(f));
    }

    private static final WrapContentModifier d(Alignment.Vertical vertical, boolean z6) {
        return new WrapContentModifier(Direction.Vertical, z6, new SizeKt$createWrapContentHeightModifier$1(vertical), vertical, new SizeKt$createWrapContentHeightModifier$2(vertical, z6));
    }

    private static final WrapContentModifier e(Alignment alignment, boolean z6) {
        return new WrapContentModifier(Direction.Both, z6, new SizeKt$createWrapContentSizeModifier$1(alignment), alignment, new SizeKt$createWrapContentSizeModifier$2(alignment, z6));
    }

    private static final WrapContentModifier f(Alignment.Horizontal horizontal, boolean z6) {
        return new WrapContentModifier(Direction.Horizontal, z6, new SizeKt$createWrapContentWidthModifier$1(horizontal), horizontal, new SizeKt$createWrapContentWidthModifier$2(horizontal, z6));
    }

    @Stable
    @NotNull
    public static final Modifier g(@NotNull Modifier defaultMinSize, float f, float f6) {
        t.j(defaultMinSize, "$this$defaultMinSize");
        return defaultMinSize.B(new UnspecifiedConstraintsModifier(f, f6, InspectableValueKt.c() ? new SizeKt$defaultMinSizeVpY3zN4$$inlined$debugInspectorInfo$1(f, f6) : InspectableValueKt.a(), null));
    }

    public static /* synthetic */ Modifier h(Modifier modifier, float f, float f6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = Dp.Companion.b();
        }
        if ((i10 & 2) != 0) {
            f6 = Dp.Companion.b();
        }
        return g(modifier, f, f6);
    }

    @Stable
    @NotNull
    public static final Modifier i(@NotNull Modifier modifier, float f) {
        t.j(modifier, "<this>");
        return modifier.B(f == 1.0f ? FillWholeMaxHeight : a(f));
    }

    public static /* synthetic */ Modifier j(Modifier modifier, float f, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = 1.0f;
        }
        return i(modifier, f);
    }

    @Stable
    @NotNull
    public static final Modifier k(@NotNull Modifier modifier, float f) {
        t.j(modifier, "<this>");
        return modifier.B(f == 1.0f ? FillWholeMaxSize : b(f));
    }

    public static /* synthetic */ Modifier l(Modifier modifier, float f, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = 1.0f;
        }
        return k(modifier, f);
    }

    @Stable
    @NotNull
    public static final Modifier m(@NotNull Modifier modifier, float f) {
        t.j(modifier, "<this>");
        return modifier.B(f == 1.0f ? FillWholeMaxWidth : c(f));
    }

    public static /* synthetic */ Modifier n(Modifier modifier, float f, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = 1.0f;
        }
        return m(modifier, f);
    }

    @Stable
    @NotNull
    public static final Modifier o(@NotNull Modifier height, float f) {
        t.j(height, "$this$height");
        return height.B(new SizeModifier(0.0f, f, 0.0f, f, true, InspectableValueKt.c() ? new SizeKt$height3ABfNKs$$inlined$debugInspectorInfo$1(f) : InspectableValueKt.a(), 5, null));
    }

    @Stable
    @NotNull
    public static final Modifier p(@NotNull Modifier heightIn, float f, float f6) {
        t.j(heightIn, "$this$heightIn");
        return heightIn.B(new SizeModifier(0.0f, f, 0.0f, f6, true, InspectableValueKt.c() ? new SizeKt$heightInVpY3zN4$$inlined$debugInspectorInfo$1(f, f6) : InspectableValueKt.a(), 5, null));
    }

    public static /* synthetic */ Modifier q(Modifier modifier, float f, float f6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = Dp.Companion.b();
        }
        if ((i10 & 2) != 0) {
            f6 = Dp.Companion.b();
        }
        return p(modifier, f, f6);
    }

    @Stable
    @NotNull
    public static final Modifier r(@NotNull Modifier requiredHeightIn, float f, float f6) {
        t.j(requiredHeightIn, "$this$requiredHeightIn");
        return requiredHeightIn.B(new SizeModifier(0.0f, f, 0.0f, f6, false, InspectableValueKt.c() ? new SizeKt$requiredHeightInVpY3zN4$$inlined$debugInspectorInfo$1(f, f6) : InspectableValueKt.a(), 5, null));
    }

    public static /* synthetic */ Modifier s(Modifier modifier, float f, float f6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = Dp.Companion.b();
        }
        if ((i10 & 2) != 0) {
            f6 = Dp.Companion.b();
        }
        return r(modifier, f, f6);
    }

    @Stable
    @NotNull
    public static final Modifier t(@NotNull Modifier requiredSize, float f) {
        t.j(requiredSize, "$this$requiredSize");
        return requiredSize.B(new SizeModifier(f, f, f, f, false, InspectableValueKt.c() ? new SizeKt$requiredSize3ABfNKs$$inlined$debugInspectorInfo$1(f) : InspectableValueKt.a(), null));
    }

    @Stable
    @NotNull
    public static final Modifier u(@NotNull Modifier requiredSize, float f, float f6) {
        t.j(requiredSize, "$this$requiredSize");
        return requiredSize.B(new SizeModifier(f, f6, f, f6, false, InspectableValueKt.c() ? new SizeKt$requiredSizeVpY3zN4$$inlined$debugInspectorInfo$1(f, f6) : InspectableValueKt.a(), null));
    }

    @Stable
    @NotNull
    public static final Modifier v(@NotNull Modifier requiredSizeIn, float f, float f6, float f7, float f10) {
        t.j(requiredSizeIn, "$this$requiredSizeIn");
        return requiredSizeIn.B(new SizeModifier(f, f6, f7, f10, false, InspectableValueKt.c() ? new SizeKt$requiredSizeInqDBjuR0$$inlined$debugInspectorInfo$1(f, f6, f7, f10) : InspectableValueKt.a(), null));
    }

    public static /* synthetic */ Modifier w(Modifier modifier, float f, float f6, float f7, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = Dp.Companion.b();
        }
        if ((i10 & 2) != 0) {
            f6 = Dp.Companion.b();
        }
        if ((i10 & 4) != 0) {
            f7 = Dp.Companion.b();
        }
        if ((i10 & 8) != 0) {
            f10 = Dp.Companion.b();
        }
        return v(modifier, f, f6, f7, f10);
    }

    @Stable
    @NotNull
    public static final Modifier x(@NotNull Modifier requiredWidth, float f) {
        t.j(requiredWidth, "$this$requiredWidth");
        return requiredWidth.B(new SizeModifier(f, 0.0f, f, 0.0f, false, InspectableValueKt.c() ? new SizeKt$requiredWidth3ABfNKs$$inlined$debugInspectorInfo$1(f) : InspectableValueKt.a(), 10, null));
    }

    @Stable
    @NotNull
    public static final Modifier y(@NotNull Modifier size, float f) {
        t.j(size, "$this$size");
        return size.B(new SizeModifier(f, f, f, f, true, InspectableValueKt.c() ? new SizeKt$size3ABfNKs$$inlined$debugInspectorInfo$1(f) : InspectableValueKt.a(), null));
    }

    @Stable
    @NotNull
    public static final Modifier z(@NotNull Modifier size, long j6) {
        t.j(size, "$this$size");
        return A(size, DpSize.h(j6), DpSize.g(j6));
    }
}
