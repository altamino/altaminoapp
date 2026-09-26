package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class j2<A, B, C> implements KSerializer<w7.z<? extends A, ? extends B, ? extends C>> {

    @NotNull
    private final KSerializer<A> aSerializer;

    @NotNull
    private final KSerializer<B> bSerializer;

    @NotNull
    private final KSerializer<C> cSerializer;

    @NotNull
    private final SerialDescriptor descriptor;

    static final class a extends kotlin.jvm.internal.v implements e8.l<kotlinx.serialization.descriptors.a, w7.l0> {
        final /* synthetic */ j2<A, B, C> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(j2<A, B, C> j2Var) {
            super(1);
            this.this$0 = j2Var;
        }

        public final void a(@NotNull kotlinx.serialization.descriptors.a buildClassSerialDescriptor) {
            kotlin.jvm.internal.t.j(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
            kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "first", ((j2) this.this$0).aSerializer.getDescriptor(), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "second", ((j2) this.this$0).bSerializer.getDescriptor(), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "third", ((j2) this.this$0).cSerializer.getDescriptor(), null, false, 12, null);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(kotlinx.serialization.descriptors.a aVar) {
            a(aVar);
            return w7.l0.INSTANCE;
        }
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    public j2(@NotNull KSerializer<A> aSerializer, @NotNull KSerializer<B> bSerializer, @NotNull KSerializer<C> cSerializer) {
        kotlin.jvm.internal.t.j(aSerializer, "aSerializer");
        kotlin.jvm.internal.t.j(bSerializer, "bSerializer");
        kotlin.jvm.internal.t.j(cSerializer, "cSerializer");
        this.aSerializer = aSerializer;
        this.bSerializer = bSerializer;
        this.cSerializer = cSerializer;
        this.descriptor = kotlinx.serialization.descriptors.h.b("kotlin.Triple", new SerialDescriptor[0], new a(this));
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public w7.z<A, B, C> deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        kotlinx.serialization.encoding.c cVarB = decoder.b(getDescriptor());
        return cVarB.k() ? d(cVarB) : e(cVarB);
    }

    @Override // kotlinx.serialization.k
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void serialize(@NotNull Encoder encoder, @NotNull w7.z<? extends A, ? extends B, ? extends C> value) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(value, "value");
        kotlinx.serialization.encoding.d dVarB = encoder.b(getDescriptor());
        dVarB.F(getDescriptor(), 0, this.aSerializer, value.d());
        dVarB.F(getDescriptor(), 1, this.bSerializer, value.e());
        dVarB.F(getDescriptor(), 2, this.cSerializer, value.f());
        dVarB.c(getDescriptor());
    }

    private final w7.z<A, B, C> d(kotlinx.serialization.encoding.c cVar) {
        Object objC = kotlinx.serialization.encoding.c.b.c(cVar, getDescriptor(), 0, this.aSerializer, null, 8, null);
        Object objC2 = kotlinx.serialization.encoding.c.b.c(cVar, getDescriptor(), 1, this.bSerializer, null, 8, null);
        Object objC3 = kotlinx.serialization.encoding.c.b.c(cVar, getDescriptor(), 2, this.cSerializer, null, 8, null);
        cVar.c(getDescriptor());
        return new w7.z<>(objC, objC2, objC3);
    }

    private final w7.z<A, B, C> e(kotlinx.serialization.encoding.c cVar) {
        Object objC = k2.NULL;
        Object objC2 = k2.NULL;
        Object objC3 = k2.NULL;
        while (true) {
            int iW = cVar.w(getDescriptor());
            if (iW != -1) {
                if (iW != 0) {
                    if (iW != 1) {
                        if (iW == 2) {
                            objC3 = kotlinx.serialization.encoding.c.b.c(cVar, getDescriptor(), 2, this.cSerializer, null, 8, null);
                        } else {
                            throw new kotlinx.serialization.j("Unexpected index " + iW);
                        }
                    } else {
                        objC2 = kotlinx.serialization.encoding.c.b.c(cVar, getDescriptor(), 1, this.bSerializer, null, 8, null);
                    }
                } else {
                    objC = kotlinx.serialization.encoding.c.b.c(cVar, getDescriptor(), 0, this.aSerializer, null, 8, null);
                }
            } else {
                cVar.c(getDescriptor());
                if (objC != k2.NULL) {
                    if (objC2 != k2.NULL) {
                        if (objC3 != k2.NULL) {
                            return new w7.z<>(objC, objC2, objC3);
                        }
                        throw new kotlinx.serialization.j("Element 'third' is missing");
                    }
                    throw new kotlinx.serialization.j("Element 'second' is missing");
                }
                throw new kotlinx.serialization.j("Element 'first' is missing");
            }
        }
    }
}
