package androidx.compose.ui.text.input;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class DeleteSurroundingTextInCodePointsCommand implements EditCommand {
    private final int lengthAfterCursor;
    private final int lengthBeforeCursor;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeleteSurroundingTextInCodePointsCommand)) {
            return false;
        }
        DeleteSurroundingTextInCodePointsCommand deleteSurroundingTextInCodePointsCommand = (DeleteSurroundingTextInCodePointsCommand) obj;
        return this.lengthBeforeCursor == deleteSurroundingTextInCodePointsCommand.lengthBeforeCursor && this.lengthAfterCursor == deleteSurroundingTextInCodePointsCommand.lengthAfterCursor;
    }

    public int hashCode() {
        return (this.lengthBeforeCursor * 31) + this.lengthAfterCursor;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void a(@NotNull EditingBuffer buffer) {
        t.j(buffer, "buffer");
        int i10 = this.lengthBeforeCursor;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = i11 + 1;
            i11 = (buffer.k() <= i13 || !EditCommandKt.b(buffer.c((buffer.k() - i13) + (-1)), buffer.c(buffer.k() - i13))) ? i13 : i11 + 2;
            if (i11 == buffer.k()) {
                break;
            }
        }
        int i14 = this.lengthAfterCursor;
        int i15 = 0;
        for (int i16 = 0; i16 < i14; i16++) {
            int i17 = i15 + 1;
            i15 = (buffer.j() + i17 >= buffer.h() || !EditCommandKt.b(buffer.c((buffer.j() + i17) + (-1)), buffer.c(buffer.j() + i17))) ? i17 : i15 + 2;
            if (buffer.j() + i15 == buffer.h()) {
                break;
            }
        }
        buffer.b(buffer.j(), buffer.j() + i15);
        buffer.b(buffer.k() - i11, buffer.k());
    }

    @NotNull
    public String toString() {
        return "DeleteSurroundingTextInCodePointsCommand(lengthBeforeCursor=" + this.lengthBeforeCursor + ", lengthAfterCursor=" + this.lengthAfterCursor + ')';
    }

    public DeleteSurroundingTextInCodePointsCommand(int i10, int i11) {
        this.lengthBeforeCursor = i10;
        this.lengthAfterCursor = i11;
        if (i10 >= 0 && i11 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i10 + " and " + i11 + " respectively.").toString());
    }
}
