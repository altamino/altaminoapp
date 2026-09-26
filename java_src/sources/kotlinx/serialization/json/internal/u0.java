package kotlinx.serialization.json.internal;

import java.util.Set;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class u0 {

    @NotNull
    private static final Set<SerialDescriptor> unsignedNumberDescriptors = kotlin.collections.y0.i(m8.a.E(w7.d0.Companion).getDescriptor(), m8.a.F(w7.f0.Companion).getDescriptor(), m8.a.D(w7.b0.Companion).getDescriptor(), m8.a.G(w7.i0.Companion).getDescriptor());

    public static final boolean a(@NotNull SerialDescriptor serialDescriptor) {
        kotlin.jvm.internal.t.j(serialDescriptor, "<this>");
        return serialDescriptor.isInline() && unsignedNumberDescriptors.contains(serialDescriptor);
    }
}
