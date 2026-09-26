package kotlinx.serialization.json.internal;

import java.util.List;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObject;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class m0 extends i0 {

    @NotNull
    private final List<String> keys;
    private int position;
    private final int size;

    @NotNull
    private final JsonObject value;

    @Override // kotlinx.serialization.json.internal.i0, kotlinx.serialization.json.internal.c, kotlinx.serialization.internal.h2, kotlinx.serialization.encoding.c
    public void c(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.json.internal.i0, kotlinx.serialization.encoding.c
    public int w(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        int i10 = this.position;
        if (i10 >= this.size - 1) {
            return -1;
        }
        int i11 = i10 + 1;
        this.position = i11;
        return i11;
    }

    @Override // kotlinx.serialization.json.internal.i0, kotlinx.serialization.json.internal.c
    @NotNull
    /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
    public JsonObject v0() {
        return this.value;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(@NotNull kotlinx.serialization.json.a json, @NotNull JsonObject value) {
        super(json, value, null, null, 12, null);
        kotlin.jvm.internal.t.j(json, "json");
        kotlin.jvm.internal.t.j(value, "value");
        this.value = value;
        List<String> listU0 = kotlin.collections.d0.U0(v0().keySet());
        this.keys = listU0;
        this.size = listU0.size() * 2;
        this.position = -1;
    }

    @Override // kotlinx.serialization.json.internal.i0, kotlinx.serialization.internal.h1
    @NotNull
    protected String c0(@NotNull SerialDescriptor desc, int i10) {
        kotlin.jvm.internal.t.j(desc, "desc");
        return this.keys.get(i10 / 2);
    }

    @Override // kotlinx.serialization.json.internal.i0, kotlinx.serialization.json.internal.c
    @NotNull
    protected JsonElement g0(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        return this.position % 2 == 0 ? kotlinx.serialization.json.h.c(tag) : (JsonElement) kotlin.collections.s0.i(v0(), tag);
    }
}
