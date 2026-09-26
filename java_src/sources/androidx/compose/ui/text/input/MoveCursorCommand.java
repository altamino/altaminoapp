package androidx.compose.ui.text.input;

import androidx.compose.ui.text.JvmCharHelpers_androidKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class MoveCursorCommand implements EditCommand {
    private final int amount;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MoveCursorCommand) && this.amount == ((MoveCursorCommand) obj).amount;
    }

    public int hashCode() {
        return this.amount;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void a(@NotNull EditingBuffer buffer) {
        t.j(buffer, "buffer");
        if (buffer.g() == -1) {
            buffer.o(buffer.k());
        }
        int iK = buffer.k();
        String string = buffer.toString();
        int i10 = this.amount;
        int i11 = 0;
        if (i10 <= 0) {
            int i12 = -i10;
            while (i11 < i12) {
                int iB = JvmCharHelpers_androidKt.b(string, iK);
                if (iB == -1) {
                    break;
                }
                i11++;
                iK = iB;
            }
        } else {
            while (i11 < i10) {
                int iA = JvmCharHelpers_androidKt.a(string, iK);
                if (iA == -1) {
                    break;
                }
                i11++;
                iK = iA;
            }
        }
        buffer.o(iK);
    }

    @NotNull
    public String toString() {
        return "MoveCursorCommand(amount=" + this.amount + ')';
    }

    public MoveCursorCommand(int i10) {
        this.amount = i10;
    }
}
