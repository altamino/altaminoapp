package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class TransformedText {

    @NotNull
    private final OffsetMapping offsetMapping;

    @NotNull
    private final AnnotatedString text;

    @NotNull
    public final OffsetMapping a() {
        return this.offsetMapping;
    }

    @NotNull
    public final AnnotatedString b() {
        return this.text;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransformedText)) {
            return false;
        }
        TransformedText transformedText = (TransformedText) obj;
        return t.e(this.text, transformedText.text) && t.e(this.offsetMapping, transformedText.offsetMapping);
    }

    public TransformedText(@NotNull AnnotatedString text, @NotNull OffsetMapping offsetMapping) {
        t.j(text, "text");
        t.j(offsetMapping, "offsetMapping");
        this.text = text;
        this.offsetMapping = offsetMapping;
    }

    public int hashCode() {
        return (this.text.hashCode() * 31) + this.offsetMapping.hashCode();
    }

    @NotNull
    public String toString() {
        return "TransformedText(text=" + ((Object) this.text) + ", offsetMapping=" + this.offsetMapping + ')';
    }
}
