package kotlinx.serialization.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class l1<T> implements KSerializer<T> {

    @NotNull
    private List<? extends Annotation> _annotations;

    @NotNull
    private final w7.m descriptor$delegate;

    @NotNull
    private final T objectInstance;

    static final class a extends kotlin.jvm.internal.v implements e8.a<SerialDescriptor> {
        final /* synthetic */ String $serialName;
        final /* synthetic */ l1<T> this$0;

        /* JADX INFO: renamed from: kotlinx.serialization.internal.l1$a$a, reason: collision with other inner class name */
        static final class C0464a extends kotlin.jvm.internal.v implements e8.l<kotlinx.serialization.descriptors.a, w7.l0> {
            final /* synthetic */ l1<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0464a(l1<T> l1Var) {
                super(1);
                this.this$0 = l1Var;
            }

            public final void a(@NotNull kotlinx.serialization.descriptors.a buildSerialDescriptor) {
                kotlin.jvm.internal.t.j(buildSerialDescriptor, "$this$buildSerialDescriptor");
                buildSerialDescriptor.h(((l1) this.this$0)._annotations);
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ w7.l0 invoke(kotlinx.serialization.descriptors.a aVar) {
                a(aVar);
                return w7.l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, l1<T> l1Var) {
            super(0);
            this.$serialName = str;
            this.this$0 = l1Var;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SerialDescriptor invoke() {
            return kotlinx.serialization.descriptors.h.c(this.$serialName, kotlinx.serialization.descriptors.j.d.INSTANCE, new SerialDescriptor[0], new C0464a(this.this$0));
        }
    }

    public l1(@NotNull String serialName, @NotNull T objectInstance) {
        kotlin.jvm.internal.t.j(serialName, "serialName");
        kotlin.jvm.internal.t.j(objectInstance, "objectInstance");
        this.objectInstance = objectInstance;
        this._annotations = kotlin.collections.v.m();
        this.descriptor$delegate = w7.o.b(w7.q.PUBLICATION, new a(serialName, this));
    }

    @Override // kotlinx.serialization.b
    @NotNull
    public T deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        kotlinx.serialization.encoding.c cVarB = decoder.b(descriptor);
        int iW = cVarB.w(getDescriptor());
        if (iW == -1) {
            w7.l0 l0Var = w7.l0.INSTANCE;
            cVarB.c(descriptor);
            return this.objectInstance;
        }
        throw new kotlinx.serialization.j("Unexpected index " + iW);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    @Override // kotlinx.serialization.k
    public void serialize(@NotNull Encoder encoder, @NotNull T value) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(value, "value");
        encoder.b(getDescriptor()).c(getDescriptor());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public l1(@NotNull String serialName, @NotNull T objectInstance, @NotNull Annotation[] classAnnotations) {
        this(serialName, objectInstance);
        kotlin.jvm.internal.t.j(serialName, "serialName");
        kotlin.jvm.internal.t.j(objectInstance, "objectInstance");
        kotlin.jvm.internal.t.j(classAnnotations, "classAnnotations");
        this._annotations = kotlin.collections.o.c(classAnnotations);
    }
}
