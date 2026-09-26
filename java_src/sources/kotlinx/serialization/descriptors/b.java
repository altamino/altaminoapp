package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.t;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.a2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class b {
    @Nullable
    public static final KClass<?> a(@NotNull SerialDescriptor serialDescriptor) {
        t.j(serialDescriptor, "<this>");
        if (serialDescriptor instanceof c) {
            return ((c) serialDescriptor).kClass;
        }
        if (serialDescriptor instanceof a2) {
            return a(((a2) serialDescriptor).j());
        }
        return null;
    }

    @Nullable
    public static final SerialDescriptor b(@NotNull kotlinx.serialization.modules.c cVar, @NotNull SerialDescriptor descriptor) {
        KSerializer kSerializerC;
        t.j(cVar, "<this>");
        t.j(descriptor, "descriptor");
        KClass<?> kClassA = a(descriptor);
        if (kClassA == null || (kSerializerC = kotlinx.serialization.modules.c.c(cVar, kClassA, null, 2, null)) == null) {
            return null;
        }
        return kSerializerC.getDescriptor();
    }

    @NotNull
    public static final SerialDescriptor c(@NotNull SerialDescriptor serialDescriptor, @NotNull KClass<?> context) {
        t.j(serialDescriptor, "<this>");
        t.j(context, "context");
        return new c(serialDescriptor, context);
    }
}
