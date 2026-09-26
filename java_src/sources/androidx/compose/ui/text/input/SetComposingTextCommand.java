package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import j8.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class SetComposingTextCommand implements EditCommand {

    @NotNull
    private final AnnotatedString annotatedString;
    private final int newCursorPosition;

    public SetComposingTextCommand(@NotNull AnnotatedString annotatedString, int i10) {
        t.j(annotatedString, "annotatedString");
        this.annotatedString = annotatedString;
        this.newCursorPosition = i10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetComposingTextCommand)) {
            return false;
        }
        SetComposingTextCommand setComposingTextCommand = (SetComposingTextCommand) obj;
        return t.e(b(), setComposingTextCommand.b()) && this.newCursorPosition == setComposingTextCommand.newCursorPosition;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SetComposingTextCommand(@NotNull String text, int i10) {
        this(new AnnotatedString(text, null, null, 6, null), i10);
        t.j(text, "text");
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void a(@NotNull EditingBuffer buffer) {
        t.j(buffer, "buffer");
        if (buffer.l()) {
            int iF = buffer.f();
            buffer.m(buffer.f(), buffer.e(), b());
            if (b().length() > 0) {
                buffer.n(iF, b().length() + iF);
            }
        } else {
            int iK = buffer.k();
            buffer.m(buffer.k(), buffer.j(), b());
            if (b().length() > 0) {
                buffer.n(iK, b().length() + iK);
            }
        }
        int iG = buffer.g();
        int i10 = this.newCursorPosition;
        buffer.o(o.n(i10 > 0 ? (iG + i10) - 1 : (iG + i10) - b().length(), 0, buffer.h()));
    }

    @NotNull
    public final String b() {
        return this.annotatedString.g();
    }

    @NotNull
    public String toString() {
        return "SetComposingTextCommand(text='" + b() + "', newCursorPosition=" + this.newCursorPosition + ')';
    }

    public int hashCode() {
        return (b().hashCode() * 31) + this.newCursorPosition;
    }
}
