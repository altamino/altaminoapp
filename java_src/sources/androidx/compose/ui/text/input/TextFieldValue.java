package androidx.compose.ui.text.input;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public final class TextFieldValue {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Saver<TextFieldValue, Object> Saver = SaverKt.a(TextFieldValue$Companion$Saver$1.INSTANCE, TextFieldValue$Companion$Saver$2.INSTANCE);

    @NotNull
    private final AnnotatedString annotatedString;

    @Nullable
    private final TextRange composition;
    private final long selection;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ TextFieldValue(AnnotatedString annotatedString, long j6, TextRange textRange, k kVar) {
        this(annotatedString, j6, textRange);
    }

    @NotNull
    public final AnnotatedString e() {
        return this.annotatedString;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldValue)) {
            return false;
        }
        TextFieldValue textFieldValue = (TextFieldValue) obj;
        return TextRange.g(this.selection, textFieldValue.selection) && t.e(this.composition, textFieldValue.composition) && t.e(this.annotatedString, textFieldValue.annotatedString);
    }

    @Nullable
    public final TextRange f() {
        return this.composition;
    }

    public final long g() {
        return this.selection;
    }

    public /* synthetic */ TextFieldValue(String str, long j6, TextRange textRange, k kVar) {
        this(str, j6, textRange);
    }

    public static /* synthetic */ TextFieldValue c(TextFieldValue textFieldValue, AnnotatedString annotatedString, long j6, TextRange textRange, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            annotatedString = textFieldValue.annotatedString;
        }
        if ((i10 & 2) != 0) {
            j6 = textFieldValue.selection;
        }
        if ((i10 & 4) != 0) {
            textRange = textFieldValue.composition;
        }
        return textFieldValue.a(annotatedString, j6, textRange);
    }

    public static /* synthetic */ TextFieldValue d(TextFieldValue textFieldValue, String str, long j6, TextRange textRange, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j6 = textFieldValue.selection;
        }
        if ((i10 & 4) != 0) {
            textRange = textFieldValue.composition;
        }
        return textFieldValue.b(str, j6, textRange);
    }

    @NotNull
    public final TextFieldValue a(@NotNull AnnotatedString annotatedString, long j6, @Nullable TextRange textRange) {
        t.j(annotatedString, "annotatedString");
        return new TextFieldValue(annotatedString, j6, textRange, (k) null);
    }

    @NotNull
    public final TextFieldValue b(@NotNull String text, long j6, @Nullable TextRange textRange) {
        t.j(text, "text");
        return new TextFieldValue(new AnnotatedString(text, null, null, 6, null), j6, textRange, (k) null);
    }

    @NotNull
    public final String h() {
        return this.annotatedString.g();
    }

    public int hashCode() {
        int iHashCode = ((this.annotatedString.hashCode() * 31) + TextRange.o(this.selection)) * 31;
        TextRange textRange = this.composition;
        return iHashCode + (textRange != null ? TextRange.o(textRange.r()) : 0);
    }

    @NotNull
    public String toString() {
        return "TextFieldValue(text='" + ((Object) this.annotatedString) + "', selection=" + ((Object) TextRange.q(this.selection)) + ", composition=" + this.composition + ')';
    }

    private TextFieldValue(AnnotatedString annotatedString, long j6, TextRange textRange) {
        this.annotatedString = annotatedString;
        this.selection = TextRangeKt.c(j6, 0, h().length());
        this.composition = textRange != null ? TextRange.b(TextRangeKt.c(textRange.r(), 0, h().length())) : null;
    }

    public /* synthetic */ TextFieldValue(AnnotatedString annotatedString, long j6, TextRange textRange, int i10, k kVar) {
        this(annotatedString, (i10 & 2) != 0 ? TextRange.Companion.a() : j6, (i10 & 4) != 0 ? null : textRange, (k) null);
    }

    public /* synthetic */ TextFieldValue(String str, long j6, TextRange textRange, int i10, k kVar) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? TextRange.Companion.a() : j6, (i10 & 4) != 0 ? null : textRange, (k) null);
    }

    private TextFieldValue(String str, long j6, TextRange textRange) {
        this(new AnnotatedString(str, null, null, 6, null), j6, textRange, (k) null);
    }
}
