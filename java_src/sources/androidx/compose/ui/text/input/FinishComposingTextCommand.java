package androidx.compose.ui.text.input;

import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class FinishComposingTextCommand implements EditCommand {
    @NotNull
    public String toString() {
        return "FinishComposingTextCommand()";
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void a(@NotNull EditingBuffer buffer) {
        t.j(buffer, "buffer");
        buffer.a();
    }

    public boolean equals(@Nullable Object obj) {
        return obj instanceof FinishComposingTextCommand;
    }

    public int hashCode() {
        return q0.b(FinishComposingTextCommand.class).hashCode();
    }
}
