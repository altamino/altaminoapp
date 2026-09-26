package androidx.compose.ui.text.input;

import j8.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class SetComposingRegionCommand implements EditCommand {
    private final int end;
    private final int start;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetComposingRegionCommand)) {
            return false;
        }
        SetComposingRegionCommand setComposingRegionCommand = (SetComposingRegionCommand) obj;
        return this.start == setComposingRegionCommand.start && this.end == setComposingRegionCommand.end;
    }

    public int hashCode() {
        return (this.start * 31) + this.end;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void a(@NotNull EditingBuffer buffer) {
        t.j(buffer, "buffer");
        if (buffer.l()) {
            buffer.a();
        }
        int iN = o.n(this.start, 0, buffer.h());
        int iN2 = o.n(this.end, 0, buffer.h());
        if (iN != iN2) {
            if (iN < iN2) {
                buffer.n(iN, iN2);
            } else {
                buffer.n(iN2, iN);
            }
        }
    }

    @NotNull
    public String toString() {
        return "SetComposingRegionCommand(start=" + this.start + ", end=" + this.end + ')';
    }

    public SetComposingRegionCommand(int i10, int i11) {
        this.start = i10;
        this.end = i11;
    }
}
