package kotlinx.serialization;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.reflect.KClass;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.q1;
import kotlinx.serialization.internal.t1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class a<T> implements KSerializer<T> {

    @NotNull
    private final SerialDescriptor descriptor;

    @Nullable
    private final KSerializer<T> fallbackSerializer;

    @NotNull
    private final KClass<T> serializableClass;

    @NotNull
    private final List<KSerializer<?>> typeArgumentsSerializers;

    /* JADX INFO: renamed from: kotlinx.serialization.a$a, reason: collision with other inner class name */
    static final class C0459a extends v implements e8.l<kotlinx.serialization.descriptors.a, l0> {
        final /* synthetic */ a<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0459a(a<T> aVar) {
            super(1);
            this.this$0 = aVar;
        }

        public final void a(@NotNull kotlinx.serialization.descriptors.a buildSerialDescriptor) {
            SerialDescriptor descriptor;
            t.j(buildSerialDescriptor, "$this$buildSerialDescriptor");
            KSerializer kSerializer = ((a) this.this$0).fallbackSerializer;
            List<Annotation> annotations = (kSerializer == null || (descriptor = kSerializer.getDescriptor()) == null) ? null : descriptor.getAnnotations();
            if (annotations == null) {
                annotations = kotlin.collections.v.m();
            }
            buildSerialDescriptor.h(annotations);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(kotlinx.serialization.descriptors.a aVar) {
            a(aVar);
            return l0.INSTANCE;
        }
    }

    public a(@NotNull KClass<T> serializableClass, @Nullable KSerializer<T> kSerializer, @NotNull KSerializer<?>[] typeArgumentsSerializers) {
        t.j(serializableClass, "serializableClass");
        t.j(typeArgumentsSerializers, "typeArgumentsSerializers");
        this.serializableClass = serializableClass;
        this.fallbackSerializer = kSerializer;
        this.typeArgumentsSerializers = kotlin.collections.o.c(typeArgumentsSerializers);
        this.descriptor = kotlinx.serialization.descriptors.b.c(kotlinx.serialization.descriptors.h.c("kotlinx.serialization.ContextualSerializer", kotlinx.serialization.descriptors.i.a.INSTANCE, new SerialDescriptor[0], new C0459a(this)), serializableClass);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    private final KSerializer<T> b(kotlinx.serialization.modules.c cVar) {
        KSerializer<T> kSerializerB = cVar.b(this.serializableClass, this.typeArgumentsSerializers);
        if (kSerializerB != null || (kSerializerB = this.fallbackSerializer) != null) {
            return kSerializerB;
        }
        q1.d(this.serializableClass);
        throw new w7.i();
    }

    @Override // kotlinx.serialization.b
    @NotNull
    public T deserialize(@NotNull Decoder decoder) {
        t.j(decoder, "decoder");
        return (T) decoder.G(b(decoder.a()));
    }

    @Override // kotlinx.serialization.k
    public void serialize(@NotNull Encoder encoder, @NotNull T value) {
        t.j(encoder, "encoder");
        t.j(value, "value");
        encoder.e(b(encoder.a()), value);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(@NotNull KClass<T> serializableClass) {
        this(serializableClass, null, t1.EMPTY_SERIALIZER_ARRAY);
        t.j(serializableClass, "serializableClass");
    }
}
