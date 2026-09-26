package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public abstract class v0<K, V, R> implements KSerializer<R> {

    @NotNull
    private final KSerializer<K> keySerializer;

    @NotNull
    private final KSerializer<V> valueSerializer;

    public /* synthetic */ v0(KSerializer kSerializer, KSerializer kSerializer2, kotlin.jvm.internal.k kVar) {
        this(kSerializer, kSerializer2);
    }

    protected abstract K a(R r);

    protected abstract V b(R r);

    protected abstract R c(K k, V v5);

    private v0(KSerializer<K> kSerializer, KSerializer<V> kSerializer2) {
        this.keySerializer = kSerializer;
        this.valueSerializer = kSerializer2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.b
    public R deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        kotlinx.serialization.encoding.c cVarB = decoder.b(getDescriptor());
        if (cVarB.k()) {
            return (R) c(kotlinx.serialization.encoding.c.b.c(cVarB, getDescriptor(), 0, this.keySerializer, null, 8, null), kotlinx.serialization.encoding.c.b.c(cVarB, getDescriptor(), 1, this.valueSerializer, null, 8, null));
        }
        Object objC = k2.NULL;
        Object objC2 = k2.NULL;
        while (true) {
            int iW = cVarB.w(getDescriptor());
            if (iW == -1) {
                cVarB.c(getDescriptor());
                if (objC == k2.NULL) {
                    throw new kotlinx.serialization.j("Element 'key' is missing");
                }
                if (objC2 != k2.NULL) {
                    return (R) c(objC, objC2);
                }
                throw new kotlinx.serialization.j("Element 'value' is missing");
            }
            if (iW == 0) {
                objC = kotlinx.serialization.encoding.c.b.c(cVarB, getDescriptor(), 0, this.keySerializer, null, 8, null);
            } else {
                if (iW != 1) {
                    throw new kotlinx.serialization.j("Invalid index: " + iW);
                }
                objC2 = kotlinx.serialization.encoding.c.b.c(cVarB, getDescriptor(), 1, this.valueSerializer, null, 8, null);
            }
        }
    }

    @Override // kotlinx.serialization.k
    public void serialize(@NotNull Encoder encoder, R r) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlinx.serialization.encoding.d dVarB = encoder.b(getDescriptor());
        dVarB.F(getDescriptor(), 0, this.keySerializer, a(r));
        dVarB.F(getDescriptor(), 1, this.valueSerializer, b(r));
        dVarB.c(getDescriptor());
    }
}
