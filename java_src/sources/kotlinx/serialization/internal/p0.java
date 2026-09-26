package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class p0 extends PluginGeneratedSerialDescriptor {
    private final boolean isInline;

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof p0) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (kotlin.jvm.internal.t.e(h(), serialDescriptor.h())) {
                p0 p0Var = (p0) obj;
                if (p0Var.isInline() && Arrays.equals(o(), p0Var.o()) && e() == serialDescriptor.e()) {
                    int iE = e();
                    for (int i10 = 0; i10 < iE; i10++) {
                        if (kotlin.jvm.internal.t.e(d(i10).h(), serialDescriptor.d(i10).h()) && kotlin.jvm.internal.t.e(d(i10).getKind(), serialDescriptor.d(i10).getKind())) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor, kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return this.isInline;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p0(@NotNull String name, @NotNull k0<?> generatedSerializer) {
        super(name, generatedSerializer, 1);
        kotlin.jvm.internal.t.j(name, "name");
        kotlin.jvm.internal.t.j(generatedSerializer, "generatedSerializer");
        this.isInline = true;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public int hashCode() {
        return super.hashCode() * 31;
    }
}
