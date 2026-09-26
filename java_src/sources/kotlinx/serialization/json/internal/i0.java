package kotlinx.serialization.json.internal;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
class i0 extends c {
    private boolean forceNull;

    @Nullable
    private final SerialDescriptor polyDescriptor;

    @Nullable
    private final String polyDiscriminator;
    private int position;

    @NotNull
    private final JsonObject value;

    /* synthetic */ class a extends kotlin.jvm.internal.q implements e8.a<Map<String, ? extends Integer>> {
        a(Object obj) {
            super(0, obj, c0.class, "buildAlternativeNamesMap", "buildAlternativeNamesMap(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Map;", 1);
        }

        @Override // e8.a
        @NotNull
        public final Map<String, ? extends Integer> invoke() {
            return c0.a((SerialDescriptor) this.receiver);
        }
    }

    public /* synthetic */ i0(kotlinx.serialization.json.a aVar, JsonObject jsonObject, String str, SerialDescriptor serialDescriptor, int i10, kotlin.jvm.internal.k kVar) {
        this(aVar, jsonObject, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? null : serialDescriptor);
    }

    @Override // kotlinx.serialization.json.internal.c
    @NotNull
    /* JADX INFO: renamed from: z0 */
    public JsonObject v0() {
        return this.value;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i0(@NotNull kotlinx.serialization.json.a json, @NotNull JsonObject value, @Nullable String str, @Nullable SerialDescriptor serialDescriptor) {
        super(json, value, null);
        kotlin.jvm.internal.t.j(json, "json");
        kotlin.jvm.internal.t.j(value, "value");
        this.value = value;
        this.polyDiscriminator = str;
        this.polyDescriptor = serialDescriptor;
    }

    @Override // kotlinx.serialization.json.internal.c, kotlinx.serialization.internal.h2, kotlinx.serialization.encoding.Decoder
    public boolean D() {
        return !this.forceNull && super.D();
    }

    @Override // kotlinx.serialization.json.internal.c, kotlinx.serialization.internal.h2, kotlinx.serialization.encoding.Decoder
    @NotNull
    public kotlinx.serialization.encoding.c b(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return descriptor == this.polyDescriptor ? this : super.b(descriptor);
    }

    @Override // kotlinx.serialization.json.internal.c, kotlinx.serialization.internal.h2, kotlinx.serialization.encoding.c
    public void c(@NotNull SerialDescriptor descriptor) {
        Set<String> setK;
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        if (this.configuration.g() || (descriptor.getKind() instanceof kotlinx.serialization.descriptors.d)) {
            return;
        }
        if (this.configuration.j()) {
            Set<String> setA = kotlinx.serialization.internal.u0.a(descriptor);
            Map map = (Map) kotlinx.serialization.json.u.a(d()).a(descriptor, c0.c());
            Set setKeySet = map != null ? map.keySet() : null;
            if (setKeySet == null) {
                setKeySet = kotlin.collections.y0.e();
            }
            setK = kotlin.collections.z0.k(setA, setKeySet);
        } else {
            setK = kotlinx.serialization.internal.u0.a(descriptor);
        }
        for (String str : v0().keySet()) {
            if (!setK.contains(str) && !kotlin.jvm.internal.t.e(str, this.polyDiscriminator)) {
                throw b0.g(str, v0().toString());
            }
        }
    }

    @Override // kotlinx.serialization.internal.h1
    @NotNull
    protected String c0(@NotNull SerialDescriptor desc, int i10) {
        Object next;
        kotlin.jvm.internal.t.j(desc, "desc");
        String strF = desc.f(i10);
        if (!this.configuration.j() || v0().keySet().contains(strF)) {
            return strF;
        }
        Map map = (Map) kotlinx.serialization.json.u.a(d()).b(desc, c0.c(), new a(desc));
        Iterator<T> it = v0().keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            Integer num = (Integer) map.get((String) next);
            if (num != null && num.intValue() == i10) {
                break;
            }
        }
        String str = (String) next;
        return str == null ? strF : str;
    }

    @Override // kotlinx.serialization.json.internal.c
    @NotNull
    protected JsonElement g0(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        return (JsonElement) kotlin.collections.s0.i(v0(), tag);
    }

    @Override // kotlinx.serialization.encoding.c
    public int w(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        while (this.position < descriptor.e()) {
            int i10 = this.position;
            this.position = i10 + 1;
            String strX = X(descriptor, i10);
            int i11 = this.position - 1;
            this.forceNull = false;
            if (v0().containsKey(strX) || x0(descriptor, i11)) {
                if (!this.configuration.d() || !y0(descriptor, i11, strX)) {
                    return i11;
                }
            }
        }
        return -1;
    }

    private final boolean x0(SerialDescriptor serialDescriptor, int i10) {
        boolean z6;
        if (!d().e().f() && !serialDescriptor.i(i10) && serialDescriptor.d(i10).b()) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.forceNull = z6;
        return z6;
    }

    private final boolean y0(SerialDescriptor serialDescriptor, int i10, String str) {
        JsonPrimitive jsonPrimitive;
        kotlinx.serialization.json.a aVarD = d();
        SerialDescriptor serialDescriptorD = serialDescriptor.d(i10);
        if (!serialDescriptorD.b() && (g0(str) instanceof JsonNull)) {
            return true;
        }
        if (kotlin.jvm.internal.t.e(serialDescriptorD.getKind(), kotlinx.serialization.descriptors.i.b.INSTANCE)) {
            JsonElement jsonElementG0 = g0(str);
            String strF = null;
            if (jsonElementG0 instanceof JsonPrimitive) {
                jsonPrimitive = (JsonPrimitive) jsonElementG0;
            } else {
                jsonPrimitive = null;
            }
            if (jsonPrimitive != null) {
                strF = kotlinx.serialization.json.h.f(jsonPrimitive);
            }
            if (strF != null && c0.d(serialDescriptorD, aVarD, strF) == -3) {
                return true;
            }
        }
        return false;
    }
}
