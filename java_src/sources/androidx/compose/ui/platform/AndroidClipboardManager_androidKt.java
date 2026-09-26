package androidx.compose.ui.platform;

import android.text.Annotation;
import android.text.SpannableString;
import android.text.Spanned;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SpanStyle;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class AndroidClipboardManager_androidKt {
    private static final byte BACKGROUND_ID = 10;
    private static final byte BASELINE_SHIFT_ID = 8;
    private static final int BASELINE_SHIFT_SIZE = 4;
    private static final int BYTE_SIZE = 1;
    private static final byte COLOR_ID = 1;
    private static final int COLOR_SIZE = 8;
    private static final int FLOAT_SIZE = 4;
    private static final byte FONT_FEATURE_SETTINGS_ID = 6;
    private static final byte FONT_SIZE_ID = 2;
    private static final byte FONT_STYLE_ID = 4;
    private static final byte FONT_STYLE_ITALIC = 1;
    private static final byte FONT_STYLE_NORMAL = 0;
    private static final int FONT_STYLE_SIZE = 1;
    private static final byte FONT_SYNTHESIS_ALL = 1;
    private static final byte FONT_SYNTHESIS_ID = 5;
    private static final byte FONT_SYNTHESIS_NONE = 0;
    private static final int FONT_SYNTHESIS_SIZE = 1;
    private static final byte FONT_SYNTHESIS_STYLE = 3;
    private static final byte FONT_SYNTHESIS_WEIGHT = 2;
    private static final byte FONT_WEIGHT_ID = 3;
    private static final int FONT_WEIGHT_SIZE = 4;
    private static final int INT_SIZE = 4;
    private static final byte LETTER_SPACING_ID = 7;
    private static final int LONG_SIZE = 8;

    @NotNull
    private static final String PLAIN_TEXT_LABEL = "plain text";
    private static final byte SHADOW_ID = 12;
    private static final int SHADOW_SIZE = 20;
    private static final byte TEXT_DECORATION_ID = 11;
    private static final int TEXT_DECORATION_SIZE = 4;
    private static final byte TEXT_GEOMETRIC_TRANSFORM_ID = 9;
    private static final int TEXT_GEOMETRIC_TRANSFORM_SIZE = 8;
    private static final int TEXT_UNIT_SIZE = 5;
    private static final byte UNIT_TYPE_EM = 2;
    private static final byte UNIT_TYPE_SP = 1;
    private static final byte UNIT_TYPE_UNSPECIFIED = 0;

    @Nullable
    public static final AnnotatedString a(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        if (!(charSequence instanceof Spanned)) {
            return new AnnotatedString(charSequence.toString(), null, null, 6, null);
        }
        Spanned spanned = (Spanned) charSequence;
        int i10 = 0;
        Annotation[] annotations = (Annotation[]) spanned.getSpans(0, charSequence.length(), Annotation.class);
        ArrayList arrayList = new ArrayList();
        kotlin.jvm.internal.t.i(annotations, "annotations");
        int iR = kotlin.collections.p.R(annotations);
        if (iR >= 0) {
            while (true) {
                Annotation annotation = annotations[i10];
                if (kotlin.jvm.internal.t.e(annotation.getKey(), "androidx.compose.text.SpanStyle")) {
                    int spanStart = spanned.getSpanStart(annotation);
                    int spanEnd = spanned.getSpanEnd(annotation);
                    String value = annotation.getValue();
                    kotlin.jvm.internal.t.i(value, "span.value");
                    arrayList.add(new AnnotatedString.Range(new DecodeHelper(value).k(), spanStart, spanEnd));
                }
                if (i10 == iR) {
                    break;
                }
                i10++;
            }
        }
        return new AnnotatedString(charSequence.toString(), arrayList, null, 4, null);
    }

    @NotNull
    public static final CharSequence b(@NotNull AnnotatedString annotatedString) {
        kotlin.jvm.internal.t.j(annotatedString, "<this>");
        if (annotatedString.e().isEmpty()) {
            return annotatedString.g();
        }
        SpannableString spannableString = new SpannableString(annotatedString.g());
        EncodeHelper encodeHelper = new EncodeHelper();
        List<AnnotatedString.Range<SpanStyle>> listE = annotatedString.e();
        int size = listE.size();
        for (int i10 = 0; i10 < size; i10++) {
            AnnotatedString.Range<SpanStyle> range = listE.get(i10);
            SpanStyle spanStyleA = range.a();
            int iB = range.b();
            int iC = range.c();
            encodeHelper.q();
            encodeHelper.e(spanStyleA);
            spannableString.setSpan(new Annotation("androidx.compose.text.SpanStyle", encodeHelper.p()), iB, iC, 33);
        }
        return spannableString;
    }
}
