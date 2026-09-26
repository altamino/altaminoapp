package androidx.compose.ui.text.input;

import j8.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class SetSelectionCommand implements EditCommand {
    private final int end;
    private final int start;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetSelectionCommand)) {
            return false;
        }
        SetSelectionCommand setSelectionCommand = (SetSelectionCommand) obj;
        return this.start == setSelectionCommand.start && this.end == setSelectionCommand.end;
    }

    public int hashCode() {
        return (this.start * 31) + this.end;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void a(@NotNull EditingBuffer buffer) {
        t.j(buffer, "buffer");
        int iN = o.n(this.start, 0, buffer.h());
        int iN2 = o.n(this.end, 0, buffer.h());
        if (iN < iN2) {
            buffer.p(iN, iN2);
        } else {
            buffer.p(iN2, iN);
        }
    }

    @NotNull
    public String toString() {
        return "SetSelectionCommand(start=" + this.start + ", end=" + this.end + ')';
    }

    public SetSelectionCommand(int i10, int i11) {
        this.start = i10;
        this.end = i11;
    }
}
