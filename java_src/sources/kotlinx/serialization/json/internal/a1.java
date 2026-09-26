package kotlinx.serialization.json.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class a1 {
    @NotNull
    public static final SerialDescriptor a(@NotNull SerialDescriptor serialDescriptor, @NotNull kotlinx.serialization.modules.c module) {
        SerialDescriptor serialDescriptorA;
        kotlin.jvm.internal.t.j(serialDescriptor, "<this>");
        kotlin.jvm.internal.t.j(module, "module");
        if (!kotlin.jvm.internal.t.e(serialDescriptor.getKind(), kotlinx.serialization.descriptors.i.a.INSTANCE)) {
            return serialDescriptor.isInline() ? a(serialDescriptor.d(0), module) : serialDescriptor;
        }
        SerialDescriptor serialDescriptorB = kotlinx.serialization.descriptors.b.b(module, serialDescriptor);
        return (serialDescriptorB == null || (serialDescriptorA = a(serialDescriptorB, module)) == null) ? serialDescriptor : serialDescriptorA;
    }

    @NotNull
    public static final z0 b(@NotNull kotlinx.serialization.json.a aVar, @NotNull SerialDescriptor desc) {
        kotlin.jvm.internal.t.j(aVar, "<this>");
        kotlin.jvm.internal.t.j(desc, "desc");
        kotlinx.serialization.descriptors.i kind = desc.getKind();
        if (kind instanceof kotlinx.serialization.descriptors.d) {
            return z0.POLY_OBJ;
        }
        if (kotlin.jvm.internal.t.e(kind, kotlinx.serialization.descriptors.j.b.INSTANCE)) {
            return z0.LIST;
        }
        if (!kotlin.jvm.internal.t.e(kind, kotlinx.serialization.descriptors.j.c.INSTANCE)) {
            return z0.OBJ;
        }
        SerialDescriptor serialDescriptorA = a(desc.d(0), aVar.a());
        kotlinx.serialization.descriptors.i kind2 = serialDescriptorA.getKind();
        if ((kind2 instanceof kotlinx.serialization.descriptors.e) || kotlin.jvm.internal.t.e(kind2, kotlinx.serialization.descriptors.i.b.INSTANCE)) {
            return z0.MAP;
        }
        if (aVar.e().b()) {
            return z0.LIST;
        }
        throw b0.d(serialDescriptorA);
    }
}
