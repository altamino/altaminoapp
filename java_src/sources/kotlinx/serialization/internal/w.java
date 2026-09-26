package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public abstract class w<Element, Collection, Builder> extends a<Element, Collection, Builder> {

    @NotNull
    private final KSerializer<Element> elementSerializer;

    public /* synthetic */ w(KSerializer kSerializer, kotlin.jvm.internal.k kVar) {
        this(kSerializer);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public abstract SerialDescriptor getDescriptor();

    protected abstract void n(Builder builder, int i10, Element element);

    private w(KSerializer<Element> kSerializer) {
        super(null);
        this.elementSerializer = kSerializer;
    }

    @Override // kotlinx.serialization.internal.a
    protected final void g(@NotNull kotlinx.serialization.encoding.c decoder, Builder builder, int i10, int i11) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        if (i11 < 0) {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL".toString());
        }
        for (int i12 = 0; i12 < i11; i12++) {
            h(decoder, i10 + i12, builder, false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.a
    protected void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, Builder builder, boolean z6) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        n(builder, i10, kotlinx.serialization.encoding.c.b.c(decoder, getDescriptor(), i10, this.elementSerializer, null, 8, null));
    }

    @Override // kotlinx.serialization.k
    public void serialize(@NotNull Encoder encoder, Collection collection) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        int iE = e(collection);
        SerialDescriptor descriptor = getDescriptor();
        kotlinx.serialization.encoding.d dVarZ = encoder.z(descriptor, iE);
        Iterator<Element> itD = d(collection);
        for (int i10 = 0; i10 < iE; i10++) {
            dVarZ.F(getDescriptor(), i10, this.elementSerializer, itD.next());
        }
        dVarZ.c(descriptor);
    }
}
