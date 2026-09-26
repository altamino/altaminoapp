package androidx.compose.runtime;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class Anchor {
    private int location;

    public final int a() {
        return this.location;
    }

    public final boolean b() {
        return this.location != Integer.MIN_VALUE;
    }

    public final void c(int i10) {
        this.location = i10;
    }

    public final int d(@NotNull SlotTable slots) {
        t.j(slots, "slots");
        return slots.a(this);
    }

    public final int e(@NotNull SlotWriter writer) {
        t.j(writer, "writer");
        return writer.B(this);
    }

    public Anchor(int i10) {
        this.location = i10;
    }
}
