package androidx.compose.ui.text.input;

import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class DeleteAllCommand implements EditCommand {
    @NotNull
    public String toString() {
        return "DeleteAllCommand()";
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void a(@NotNull EditingBuffer buffer) {
        t.j(buffer, "buffer");
        buffer.m(0, buffer.h(), "");
    }

    public boolean equals(@Nullable Object obj) {
        return obj instanceof DeleteAllCommand;
    }

    public int hashCode() {
        return q0.b(DeleteAllCommand.class).hashCode();
    }
}
