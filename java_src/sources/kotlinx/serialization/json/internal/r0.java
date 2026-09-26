package kotlinx.serialization.json.internal;

import java.util.List;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class r0 implements kotlinx.serialization.modules.e {

    @NotNull
    private final String discriminator;
    private final boolean useArrayPolymorphism;

    @Override // kotlinx.serialization.modules.e
    public <Base> void a(@NotNull KClass<Base> baseClass, @NotNull e8.l<? super Base, ? extends kotlinx.serialization.k<? super Base>> defaultSerializerProvider) {
        kotlin.jvm.internal.t.j(baseClass, "baseClass");
        kotlin.jvm.internal.t.j(defaultSerializerProvider, "defaultSerializerProvider");
    }

    @Override // kotlinx.serialization.modules.e
    public <Base> void d(@NotNull KClass<Base> baseClass, @NotNull e8.l<? super String, ? extends kotlinx.serialization.b<? extends Base>> defaultDeserializerProvider) {
        kotlin.jvm.internal.t.j(baseClass, "baseClass");
        kotlin.jvm.internal.t.j(defaultDeserializerProvider, "defaultDeserializerProvider");
    }

    @Override // kotlinx.serialization.modules.e
    public <T> void e(@NotNull KClass<T> kClass, @NotNull e8.l<? super List<? extends KSerializer<?>>, ? extends KSerializer<?>> provider) {
        kotlin.jvm.internal.t.j(kClass, "kClass");
        kotlin.jvm.internal.t.j(provider, "provider");
    }

    public r0(boolean z6, @NotNull String discriminator) {
        kotlin.jvm.internal.t.j(discriminator, "discriminator");
        this.useArrayPolymorphism = z6;
        this.discriminator = discriminator;
    }

    @Override // kotlinx.serialization.modules.e
    public <Base, Sub extends Base> void b(@NotNull KClass<Base> baseClass, @NotNull KClass<Sub> actualClass, @NotNull KSerializer<Sub> actualSerializer) {
        kotlin.jvm.internal.t.j(baseClass, "baseClass");
        kotlin.jvm.internal.t.j(actualClass, "actualClass");
        kotlin.jvm.internal.t.j(actualSerializer, "actualSerializer");
        SerialDescriptor descriptor = actualSerializer.getDescriptor();
        g(descriptor, actualClass);
        if (this.useArrayPolymorphism) {
            return;
        }
        f(descriptor, actualClass);
    }

    private final void f(SerialDescriptor serialDescriptor, KClass<?> kClass) {
        int iE = serialDescriptor.e();
        for (int i10 = 0; i10 < iE; i10++) {
            String strF = serialDescriptor.f(i10);
            if (kotlin.jvm.internal.t.e(strF, this.discriminator)) {
                throw new IllegalArgumentException("Polymorphic serializer for " + kClass + " has property '" + strF + "' that conflicts with JSON class discriminator. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism");
            }
        }
    }

    private final void g(SerialDescriptor serialDescriptor, KClass<?> kClass) {
        kotlinx.serialization.descriptors.i kind = serialDescriptor.getKind();
        if (!(kind instanceof kotlinx.serialization.descriptors.d) && !kotlin.jvm.internal.t.e(kind, kotlinx.serialization.descriptors.i.a.INSTANCE)) {
            if (this.useArrayPolymorphism) {
                return;
            }
            if (!kotlin.jvm.internal.t.e(kind, kotlinx.serialization.descriptors.j.b.INSTANCE) && !kotlin.jvm.internal.t.e(kind, kotlinx.serialization.descriptors.j.c.INSTANCE) && !(kind instanceof kotlinx.serialization.descriptors.e) && !(kind instanceof kotlinx.serialization.descriptors.i.b)) {
                return;
            }
            throw new IllegalArgumentException("Serializer for " + kClass.getSimpleName() + " of kind " + kind + " cannot be serialized polymorphically with class discriminator.");
        }
        throw new IllegalArgumentException("Serializer for " + kClass.getSimpleName() + " can't be registered as a subclass for polymorphic serialization because its kind " + kind + " is not concrete. To work with multiple hierarchies, register it as a base class.");
    }

    @Override // kotlinx.serialization.modules.e
    public <T> void c(@NotNull KClass<T> kClass, @NotNull KSerializer<T> kSerializer) {
        kotlinx.serialization.modules.e.a.a(this, kClass, kSerializer);
    }
}
