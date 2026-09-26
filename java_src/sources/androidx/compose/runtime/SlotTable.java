package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionGroup;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.i;

/* JADX INFO: loaded from: classes10.dex */
public final class SlotTable implements CompositionData, Iterable<CompositionGroup>, f8.a {
    private int groupsSize;
    private int readers;
    private int slotsSize;
    private int version;
    private boolean writer;

    @NotNull
    private int[] groups = new int[0];

    @NotNull
    private Object[] slots = new Object[0];

    @NotNull
    private ArrayList<Anchor> anchors = new ArrayList<>();

    @NotNull
    public final ArrayList<Anchor> e() {
        return this.anchors;
    }

    @NotNull
    public final int[] f() {
        return this.groups;
    }

    public final int g() {
        return this.groupsSize;
    }

    public boolean isEmpty() {
        return this.groupsSize == 0;
    }

    @NotNull
    public final Object[] j() {
        return this.slots;
    }

    public final int m() {
        return this.slotsSize;
    }

    public final int p() {
        return this.version;
    }

    public final boolean q() {
        return this.writer;
    }

    public final void v(@NotNull int[] groups, int i10, @NotNull Object[] slots, int i11, @NotNull ArrayList<Anchor> anchors) {
        t.j(groups, "groups");
        t.j(slots, "slots");
        t.j(anchors, "anchors");
        this.groups = groups;
        this.groupsSize = i10;
        this.slots = slots;
        this.slotsSize = i11;
        this.anchors = anchors;
    }

    public final int a(@NotNull Anchor anchor) {
        t.j(anchor, "anchor");
        if (!(!this.writer)) {
            ComposerKt.x("Use active SlotWriter to determine anchor location instead".toString());
            throw new i();
        }
        if (anchor.b()) {
            return anchor.a();
        }
        throw new IllegalArgumentException("Anchor refers to a group that was removed".toString());
    }

    public final void b(@NotNull SlotReader reader) {
        int i10;
        t.j(reader, "reader");
        if (reader.v() != this || (i10 = this.readers) <= 0) {
            throw new IllegalArgumentException("Unexpected reader close()".toString());
        }
        this.readers = i10 - 1;
    }

    public final void c(@NotNull SlotWriter writer, @NotNull int[] groups, int i10, @NotNull Object[] slots, int i11, @NotNull ArrayList<Anchor> anchors) {
        t.j(writer, "writer");
        t.j(groups, "groups");
        t.j(slots, "slots");
        t.j(anchors, "anchors");
        if (writer.X() != this || !this.writer) {
            throw new IllegalArgumentException("Unexpected writer close()".toString());
        }
        this.writer = false;
        v(groups, i10, slots, i11, anchors);
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<CompositionGroup> iterator() {
        return new GroupIterator(this, 0, this.groupsSize);
    }

    public final boolean r(int i10, @NotNull Anchor anchor) {
        t.j(anchor, "anchor");
        if (!(!this.writer)) {
            ComposerKt.x("Writer is active".toString());
            throw new i();
        }
        if (!(i10 >= 0 && i10 < this.groupsSize)) {
            ComposerKt.x("Invalid group index".toString());
            throw new i();
        }
        if (u(anchor)) {
            int iG = SlotTableKt.G(this.groups, i10) + i10;
            int iA = anchor.a();
            if (i10 <= iA && iA < iG) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final SlotReader s() {
        if (this.writer) {
            throw new IllegalStateException("Cannot read while a writer is pending".toString());
        }
        this.readers++;
        return new SlotReader(this);
    }

    @NotNull
    public final SlotWriter t() {
        if (!(!this.writer)) {
            ComposerKt.x("Cannot start a writer when another writer is pending".toString());
            throw new i();
        }
        if (!(this.readers <= 0)) {
            ComposerKt.x("Cannot start a writer when a reader is pending".toString());
            throw new i();
        }
        this.writer = true;
        this.version++;
        return new SlotWriter(this);
    }

    public final boolean u(@NotNull Anchor anchor) {
        int iS;
        t.j(anchor, "anchor");
        return anchor.b() && (iS = SlotTableKt.S(this.anchors, anchor.a(), this.groupsSize)) >= 0 && t.e(this.anchors.get(iS), anchor);
    }
}
