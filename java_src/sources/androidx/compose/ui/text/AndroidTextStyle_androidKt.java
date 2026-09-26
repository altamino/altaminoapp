package androidx.compose.ui.text;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class AndroidTextStyle_androidKt {
    public static final boolean DefaultIncludeFontPadding = true;

    @ExperimentalTextApi
    @NotNull
    public static final PlatformSpanStyle c(@NotNull PlatformSpanStyle start, @NotNull PlatformSpanStyle stop, float f) {
        t.j(start, "start");
        t.j(stop, "stop");
        return start;
    }

    @NotNull
    public static final PlatformTextStyle a(@Nullable PlatformSpanStyle platformSpanStyle, @Nullable PlatformParagraphStyle platformParagraphStyle) {
        return new PlatformTextStyle(platformSpanStyle, platformParagraphStyle);
    }

    @ExperimentalTextApi
    @NotNull
    public static final PlatformParagraphStyle b(@NotNull PlatformParagraphStyle start, @NotNull PlatformParagraphStyle stop, float f) {
        t.j(start, "start");
        t.j(stop, "stop");
        return start.b() == stop.b() ? start : new PlatformParagraphStyle(((Boolean) SpanStyleKt.c(Boolean.valueOf(start.b()), Boolean.valueOf(stop.b()), f)).booleanValue());
    }
}
