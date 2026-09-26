package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class PasswordVisualTransformation implements VisualTransformation {
    private final char mask;

    public PasswordVisualTransformation() {
        this((char) 0, 1, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PasswordVisualTransformation) && this.mask == ((PasswordVisualTransformation) obj).mask;
    }

    public int hashCode() {
        return this.mask;
    }

    public PasswordVisualTransformation(char c7) {
        this.mask = c7;
    }

    @Override // androidx.compose.ui.text.input.VisualTransformation
    @NotNull
    public TransformedText a(@NotNull AnnotatedString text) {
        t.j(text, "text");
        return new TransformedText(new AnnotatedString(kotlin.text.t.C(String.valueOf(this.mask), text.g().length()), null, null, 6, null), OffsetMapping.Companion.a());
    }

    public /* synthetic */ PasswordVisualTransformation(char c7, int i10, k kVar) {
        this((i10 & 1) != 0 ? (char) 8226 : c7);
    }
}
