package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.TextRange;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class EditProcessor {

    @NotNull
    private TextFieldValue mBufferState = new TextFieldValue(AnnotatedStringKt.d(), TextRange.Companion.a(), (TextRange) null, (k) null);

    @NotNull
    private EditingBuffer mBuffer = new EditingBuffer(this.mBufferState.e(), this.mBufferState.g(), (k) null);

    @NotNull
    public final TextFieldValue c() {
        return this.mBufferState;
    }

    @NotNull
    public final TextFieldValue a(@NotNull List<? extends EditCommand> editCommands) {
        t.j(editCommands, "editCommands");
        int size = editCommands.size();
        for (int i10 = 0; i10 < size; i10++) {
            editCommands.get(i10).a(this.mBuffer);
        }
        TextFieldValue textFieldValue = new TextFieldValue(this.mBuffer.q(), this.mBuffer.i(), this.mBuffer.d(), (k) null);
        this.mBufferState = textFieldValue;
        return textFieldValue;
    }

    public final void b(@NotNull TextFieldValue value, @Nullable TextInputSession textInputSession) {
        t.j(value, "value");
        boolean z6 = true;
        boolean z10 = !t.e(value.f(), this.mBuffer.d());
        boolean z11 = false;
        if (!t.e(this.mBufferState.e(), value.e())) {
            this.mBuffer = new EditingBuffer(value.e(), value.g(), (k) null);
        } else if (TextRange.g(this.mBufferState.g(), value.g())) {
            z6 = false;
        } else {
            this.mBuffer.p(TextRange.l(value.g()), TextRange.k(value.g()));
            z11 = true;
            z6 = false;
        }
        if (value.f() == null) {
            this.mBuffer.a();
        } else if (!TextRange.h(value.f().r())) {
            this.mBuffer.n(TextRange.l(value.f().r()), TextRange.k(value.f().r()));
        }
        if (z6 || (!z11 && z10)) {
            this.mBuffer.a();
            value = TextFieldValue.c(value, null, 0L, null, 3, null);
        }
        TextFieldValue textFieldValue = this.mBufferState;
        this.mBufferState = value;
        if (textInputSession != null) {
            textInputSession.d(textFieldValue, value);
        }
    }
}
