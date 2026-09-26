package kotlinx.serialization.json.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class k0 extends c {
    private int currentIndex;
    private final int size;

    @NotNull
    private final JsonArray value;

    @Override // kotlinx.serialization.encoding.c
    public int w(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        int i10 = this.currentIndex;
        if (i10 >= this.size - 1) {
            return -1;
        }
        int i11 = i10 + 1;
        this.currentIndex = i11;
        return i11;
    }

    @Override // kotlinx.serialization.json.internal.c
    @NotNull
    /* JADX INFO: renamed from: x0, reason: merged with bridge method [inline-methods] */
    public JsonArray v0() {
        return this.value;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k0(@NotNull kotlinx.serialization.json.a json, @NotNull JsonArray value) {
        super(json, value, null);
        kotlin.jvm.internal.t.j(json, "json");
        kotlin.jvm.internal.t.j(value, "value");
        this.value = value;
        this.size = v0().size();
        this.currentIndex = -1;
    }

    @Override // kotlinx.serialization.internal.h1
    @NotNull
    protected String c0(@NotNull SerialDescriptor desc, int i10) {
        kotlin.jvm.internal.t.j(desc, "desc");
        return String.valueOf(i10);
    }

    @Override // kotlinx.serialization.json.internal.c
    @NotNull
    protected JsonElement g0(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        return v0().get(Integer.parseInt(tag));
    }
}
