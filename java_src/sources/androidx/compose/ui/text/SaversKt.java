package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class SaversKt {

    @NotNull
    private static final Saver<AnnotatedString, Object> AnnotatedStringSaver = SaverKt.a(SaversKt$AnnotatedStringSaver$1.INSTANCE, SaversKt$AnnotatedStringSaver$2.INSTANCE);

    @NotNull
    private static final Saver<List<AnnotatedString.Range<? extends Object>>, Object> AnnotationRangeListSaver = SaverKt.a(SaversKt$AnnotationRangeListSaver$1.INSTANCE, SaversKt$AnnotationRangeListSaver$2.INSTANCE);

    @NotNull
    private static final Saver<AnnotatedString.Range<? extends Object>, Object> AnnotationRangeSaver = SaverKt.a(SaversKt$AnnotationRangeSaver$1.INSTANCE, SaversKt$AnnotationRangeSaver$2.INSTANCE);

    @NotNull
    private static final Saver<VerbatimTtsAnnotation, Object> VerbatimTtsAnnotationSaver = SaverKt.a(SaversKt$VerbatimTtsAnnotationSaver$1.INSTANCE, SaversKt$VerbatimTtsAnnotationSaver$2.INSTANCE);

    @NotNull
    private static final Saver<ParagraphStyle, Object> ParagraphStyleSaver = SaverKt.a(SaversKt$ParagraphStyleSaver$1.INSTANCE, SaversKt$ParagraphStyleSaver$2.INSTANCE);

    @NotNull
    private static final Saver<SpanStyle, Object> SpanStyleSaver = SaverKt.a(SaversKt$SpanStyleSaver$1.INSTANCE, SaversKt$SpanStyleSaver$2.INSTANCE);

    @NotNull
    private static final Saver<TextDecoration, Object> TextDecorationSaver = SaverKt.a(SaversKt$TextDecorationSaver$1.INSTANCE, SaversKt$TextDecorationSaver$2.INSTANCE);

    @NotNull
    private static final Saver<TextGeometricTransform, Object> TextGeometricTransformSaver = SaverKt.a(SaversKt$TextGeometricTransformSaver$1.INSTANCE, SaversKt$TextGeometricTransformSaver$2.INSTANCE);

    @NotNull
    private static final Saver<TextIndent, Object> TextIndentSaver = SaverKt.a(SaversKt$TextIndentSaver$1.INSTANCE, SaversKt$TextIndentSaver$2.INSTANCE);

    @NotNull
    private static final Saver<FontWeight, Object> FontWeightSaver = SaverKt.a(SaversKt$FontWeightSaver$1.INSTANCE, SaversKt$FontWeightSaver$2.INSTANCE);

    @NotNull
    private static final Saver<BaselineShift, Object> BaselineShiftSaver = SaverKt.a(SaversKt$BaselineShiftSaver$1.INSTANCE, SaversKt$BaselineShiftSaver$2.INSTANCE);

    @NotNull
    private static final Saver<TextRange, Object> TextRangeSaver = SaverKt.a(SaversKt$TextRangeSaver$1.INSTANCE, SaversKt$TextRangeSaver$2.INSTANCE);

    @NotNull
    private static final Saver<Shadow, Object> ShadowSaver = SaverKt.a(SaversKt$ShadowSaver$1.INSTANCE, SaversKt$ShadowSaver$2.INSTANCE);

    @NotNull
    private static final Saver<Color, Object> ColorSaver = SaverKt.a(SaversKt$ColorSaver$1.INSTANCE, SaversKt$ColorSaver$2.INSTANCE);

    @NotNull
    private static final Saver<TextUnit, Object> TextUnitSaver = SaverKt.a(SaversKt$TextUnitSaver$1.INSTANCE, SaversKt$TextUnitSaver$2.INSTANCE);

    @NotNull
    private static final Saver<Offset, Object> OffsetSaver = SaverKt.a(SaversKt$OffsetSaver$1.INSTANCE, SaversKt$OffsetSaver$2.INSTANCE);

    @NotNull
    private static final Saver<LocaleList, Object> LocaleListSaver = SaverKt.a(SaversKt$LocaleListSaver$1.INSTANCE, SaversKt$LocaleListSaver$2.INSTANCE);

    @NotNull
    private static final Saver<Locale, Object> LocaleSaver = SaverKt.a(SaversKt$LocaleSaver$1.INSTANCE, SaversKt$LocaleSaver$2.INSTANCE);

    @NotNull
    public static final Saver<AnnotatedString, Object> d() {
        return AnnotatedStringSaver;
    }

    @NotNull
    public static final Saver<ParagraphStyle, Object> e() {
        return ParagraphStyleSaver;
    }

    @NotNull
    public static final Saver<Offset, Object> f(@NotNull Offset.Companion companion) {
        t.j(companion, "<this>");
        return OffsetSaver;
    }

    @NotNull
    public static final Saver<Color, Object> g(@NotNull Color.Companion companion) {
        t.j(companion, "<this>");
        return ColorSaver;
    }

    @NotNull
    public static final Saver<Shadow, Object> h(@NotNull Shadow.Companion companion) {
        t.j(companion, "<this>");
        return ShadowSaver;
    }

    @NotNull
    public static final Saver<TextRange, Object> i(@NotNull TextRange.Companion companion) {
        t.j(companion, "<this>");
        return TextRangeSaver;
    }

    @NotNull
    public static final Saver<FontWeight, Object> j(@NotNull FontWeight.Companion companion) {
        t.j(companion, "<this>");
        return FontWeightSaver;
    }

    @NotNull
    public static final Saver<Locale, Object> k(@NotNull Locale.Companion companion) {
        t.j(companion, "<this>");
        return LocaleSaver;
    }

    @NotNull
    public static final Saver<LocaleList, Object> l(@NotNull LocaleList.Companion companion) {
        t.j(companion, "<this>");
        return LocaleListSaver;
    }

    @NotNull
    public static final Saver<BaselineShift, Object> m(@NotNull BaselineShift.Companion companion) {
        t.j(companion, "<this>");
        return BaselineShiftSaver;
    }

    @NotNull
    public static final Saver<TextDecoration, Object> n(@NotNull TextDecoration.Companion companion) {
        t.j(companion, "<this>");
        return TextDecorationSaver;
    }

    @NotNull
    public static final Saver<TextGeometricTransform, Object> o(@NotNull TextGeometricTransform.Companion companion) {
        t.j(companion, "<this>");
        return TextGeometricTransformSaver;
    }

    @NotNull
    public static final Saver<TextIndent, Object> p(@NotNull TextIndent.Companion companion) {
        t.j(companion, "<this>");
        return TextIndentSaver;
    }

    @NotNull
    public static final Saver<TextUnit, Object> q(@NotNull TextUnit.Companion companion) {
        t.j(companion, "<this>");
        return TextUnitSaver;
    }

    @NotNull
    public static final Saver<SpanStyle, Object> r() {
        return SpanStyleSaver;
    }

    @Nullable
    public static final <T> T s(@Nullable T t5) {
        return t5;
    }

    @NotNull
    public static final <T extends Saver<Original, Saveable>, Original, Saveable> Object t(@Nullable Original original, @NotNull T saver, @NotNull SaverScope scope) {
        Object objA;
        t.j(saver, "saver");
        t.j(scope, "scope");
        return (original == null || (objA = saver.a(scope, original)) == null) ? Boolean.FALSE : objA;
    }
}
