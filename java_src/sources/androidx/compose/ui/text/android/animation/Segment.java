package androidx.compose.ui.text.android.animation;

import androidx.compose.ui.text.android.InternalPlatformTextApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@InternalPlatformTextApi
public final class Segment {
    private final int bottom;
    private final int endOffset;
    private final int left;
    private final int right;
    private final int startOffset;
    private final int top;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Segment)) {
            return false;
        }
        Segment segment = (Segment) obj;
        return this.startOffset == segment.startOffset && this.endOffset == segment.endOffset && this.left == segment.left && this.top == segment.top && this.right == segment.right && this.bottom == segment.bottom;
    }

    public int hashCode() {
        return (((((((((this.startOffset * 31) + this.endOffset) * 31) + this.left) * 31) + this.top) * 31) + this.right) * 31) + this.bottom;
    }

    @NotNull
    public String toString() {
        return "Segment(startOffset=" + this.startOffset + ", endOffset=" + this.endOffset + ", left=" + this.left + ", top=" + this.top + ", right=" + this.right + ", bottom=" + this.bottom + ')';
    }

    public Segment(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.startOffset = i10;
        this.endOffset = i11;
        this.left = i12;
        this.top = i13;
        this.right = i14;
        this.bottom = i15;
    }
}
