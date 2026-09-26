package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class Selection {

    @NotNull
    private final AnchorInfo end;
    private final boolean handlesCrossed;

    @NotNull
    private final AnchorInfo start;

    @Immutable
    public static final class AnchorInfo {

        @NotNull
        private final ResolvedTextDirection direction;
        private final int offset;
        private final long selectableId;

        @NotNull
        public final ResolvedTextDirection a() {
            return this.direction;
        }

        public final int b() {
            return this.offset;
        }

        public final long c() {
            return this.selectableId;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AnchorInfo)) {
                return false;
            }
            AnchorInfo anchorInfo = (AnchorInfo) obj;
            return this.direction == anchorInfo.direction && this.offset == anchorInfo.offset && this.selectableId == anchorInfo.selectableId;
        }

        public int hashCode() {
            return (((this.direction.hashCode() * 31) + this.offset) * 31) + i.a.a(this.selectableId);
        }

        @NotNull
        public String toString() {
            return "AnchorInfo(direction=" + this.direction + ", offset=" + this.offset + ", selectableId=" + this.selectableId + ')';
        }

        public AnchorInfo(@NotNull ResolvedTextDirection direction, int i10, long j6) {
            t.j(direction, "direction");
            this.direction = direction;
            this.offset = i10;
            this.selectableId = j6;
        }
    }

    public Selection(@NotNull AnchorInfo start, @NotNull AnchorInfo end, boolean z6) {
        t.j(start, "start");
        t.j(end, "end");
        this.start = start;
        this.end = end;
        this.handlesCrossed = z6;
    }

    public static /* synthetic */ Selection b(Selection selection, AnchorInfo anchorInfo, AnchorInfo anchorInfo2, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            anchorInfo = selection.start;
        }
        if ((i10 & 2) != 0) {
            anchorInfo2 = selection.end;
        }
        if ((i10 & 4) != 0) {
            z6 = selection.handlesCrossed;
        }
        return selection.a(anchorInfo, anchorInfo2, z6);
    }

    @NotNull
    public final Selection a(@NotNull AnchorInfo start, @NotNull AnchorInfo end, boolean z6) {
        t.j(start, "start");
        t.j(end, "end");
        return new Selection(start, end, z6);
    }

    @NotNull
    public final AnchorInfo c() {
        return this.end;
    }

    public final boolean d() {
        return this.handlesCrossed;
    }

    @NotNull
    public final AnchorInfo e() {
        return this.start;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Selection)) {
            return false;
        }
        Selection selection = (Selection) obj;
        return t.e(this.start, selection.start) && t.e(this.end, selection.end) && this.handlesCrossed == selection.handlesCrossed;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    public int hashCode() {
        int iHashCode = ((this.start.hashCode() * 31) + this.end.hashCode()) * 31;
        boolean z6 = this.handlesCrossed;
        ?? r1 = z6;
        if (z6) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    @NotNull
    public String toString() {
        return "Selection(start=" + this.start + ", end=" + this.end + ", handlesCrossed=" + this.handlesCrossed + ')';
    }

    public /* synthetic */ Selection(AnchorInfo anchorInfo, AnchorInfo anchorInfo2, boolean z6, int i10, k kVar) {
        this(anchorInfo, anchorInfo2, (i10 & 4) != 0 ? false : z6);
    }

    @NotNull
    public final Selection f(@Nullable Selection selection) {
        if (selection == null) {
            return this;
        }
        return this.handlesCrossed ? b(this, selection.start, null, false, 6, null) : b(this, null, selection.end, false, 5, null);
    }

    public final long g() {
        return TextRangeKt.b(this.start.b(), this.end.b());
    }
}
