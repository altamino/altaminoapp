package androidx.compose.ui.text;

import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes8.dex */
public final class TextStyleKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            iArr[LayoutDirection.Ltr.ordinal()] = 1;
            iArr[LayoutDirection.Rtl.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlatformTextStyle b(PlatformSpanStyle platformSpanStyle, PlatformParagraphStyle platformParagraphStyle) {
        if (platformSpanStyle == null && platformParagraphStyle == null) {
            return null;
        }
        return AndroidTextStyle_androidKt.a(platformSpanStyle, platformParagraphStyle);
    }

    @NotNull
    public static final TextStyle c(@NotNull TextStyle start, @NotNull TextStyle stop, float f) {
        t.j(start, "start");
        t.j(stop, "stop");
        return new TextStyle(SpanStyleKt.b(start.E(), stop.E(), f), ParagraphStyleKt.a(start.D(), stop.D(), f));
    }

    @NotNull
    public static final TextStyle d(@NotNull TextStyle style, @NotNull LayoutDirection direction) {
        t.j(style, "style");
        t.j(direction, "direction");
        return new TextStyle(SpanStyleKt.f(style.u()), ParagraphStyleKt.c(style.r(), direction), style.s());
    }

    public static final int e(@NotNull LayoutDirection layoutDirection, @Nullable TextDirection textDirection) {
        t.j(layoutDirection, "layoutDirection");
        TextDirection.Companion companion = TextDirection.Companion;
        int iA = companion.a();
        if (textDirection != null && TextDirection.i(textDirection.l(), iA)) {
            int i10 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i10 == 1) {
                return companion.b();
            }
            if (i10 == 2) {
                return companion.c();
            }
            throw new s();
        }
        if (textDirection != null) {
            return textDirection.l();
        }
        int i11 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        if (i11 == 1) {
            return companion.d();
        }
        if (i11 == 2) {
            return companion.e();
        }
        throw new s();
    }
}
