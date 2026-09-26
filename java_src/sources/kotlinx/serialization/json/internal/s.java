package kotlinx.serialization.json.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class s extends k {

    @NotNull
    private final kotlinx.serialization.json.a json;
    private int level;

    @Override // kotlinx.serialization.json.internal.k
    public void b() {
        n(true);
        this.level++;
    }

    @Override // kotlinx.serialization.json.internal.k
    public void c() {
        n(false);
        j("\n");
        int i10 = this.level;
        for (int i11 = 0; i11 < i10; i11++) {
            j(this.json.e().i());
        }
    }

    @Override // kotlinx.serialization.json.internal.k
    public void p() {
        this.level--;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(@NotNull p0 writer, @NotNull kotlinx.serialization.json.a json) {
        super(writer);
        kotlin.jvm.internal.t.j(writer, "writer");
        kotlin.jvm.internal.t.j(json, "json");
        this.json = json;
    }

    @Override // kotlinx.serialization.json.internal.k
    public void o() {
        e(' ');
    }
}
