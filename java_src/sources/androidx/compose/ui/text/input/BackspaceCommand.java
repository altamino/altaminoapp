package androidx.compose.ui.text.input;

import androidx.compose.ui.text.JvmCharHelpers_androidKt;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class BackspaceCommand implements EditCommand {
    @NotNull
    public String toString() {
        return "BackspaceCommand()";
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void a(@NotNull EditingBuffer buffer) {
        t.j(buffer, "buffer");
        if (buffer.l()) {
            buffer.b(buffer.f(), buffer.e());
            return;
        }
        if (buffer.g() != -1) {
            if (buffer.g() == 0) {
                return;
            }
            buffer.b(JvmCharHelpers_androidKt.b(buffer.toString(), buffer.g()), buffer.g());
        } else {
            int iK = buffer.k();
            int iJ = buffer.j();
            buffer.o(buffer.k());
            buffer.b(iK, iJ);
        }
    }

    public boolean equals(@Nullable Object obj) {
        return obj instanceof BackspaceCommand;
    }

    public int hashCode() {
        return q0.b(BackspaceCommand.class).hashCode();
    }
}
