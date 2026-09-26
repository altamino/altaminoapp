package kotlinx.serialization.internal;

import java.util.Iterator;
import java.util.Map;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public abstract class g1<Key, Value, Collection, Builder extends Map<Key, Value>> extends a<Map.Entry<? extends Key, ? extends Value>, Collection, Builder> {

    @NotNull
    private final KSerializer<Key> keySerializer;

    @NotNull
    private final KSerializer<Value> valueSerializer;

    public /* synthetic */ g1(KSerializer kSerializer, KSerializer kSerializer2, kotlin.jvm.internal.k kVar) {
        this(kSerializer, kSerializer2);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public abstract SerialDescriptor getDescriptor();

    @NotNull
    public final KSerializer<Key> m() {
        return this.keySerializer;
    }

    @NotNull
    public final KSerializer<Value> n() {
        return this.valueSerializer;
    }

    private g1(KSerializer<Key> kSerializer, KSerializer<Value> kSerializer2) {
        super(null);
        this.keySerializer = kSerializer;
        this.valueSerializer = kSerializer2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public final void g(@NotNull kotlinx.serialization.encoding.c decoder, @NotNull Builder builder, int i10, int i11) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        kotlin.jvm.internal.t.j(builder, "builder");
        if (i11 < 0) {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL".toString());
        }
        j8.g gVarU = j8.o.u(j8.o.v(0, i11 * 2), 2);
        int iE = gVarU.e();
        int iF = gVarU.f();
        int iG = gVarU.g();
        if ((iG <= 0 || iE > iF) && (iG >= 0 || iF > iE)) {
            return;
        }
        while (true) {
            h(decoder, i10 + iE, builder, false);
            if (iE == iF) {
                return;
            } else {
                iE += iG;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull Builder builder, boolean z6) {
        int iW;
        kotlin.jvm.internal.t.j(decoder, "decoder");
        kotlin.jvm.internal.t.j(builder, "builder");
        Object objC = kotlinx.serialization.encoding.c.b.c(decoder, getDescriptor(), i10, this.keySerializer, null, 8, null);
        if (z6) {
            iW = decoder.w(getDescriptor());
            if (iW != i10 + 1) {
                throw new IllegalArgumentException(("Value must follow key in a map, index for key: " + i10 + ", returned index for value: " + iW).toString());
            }
        } else {
            iW = i10 + 1;
        }
        int i11 = iW;
        builder.put(objC, (!builder.containsKey(objC) || (this.valueSerializer.getDescriptor().getKind() instanceof kotlinx.serialization.descriptors.e)) ? kotlinx.serialization.encoding.c.b.c(decoder, getDescriptor(), i11, this.valueSerializer, null, 8, null) : decoder.p(getDescriptor(), i11, this.valueSerializer, kotlin.collections.s0.i(builder, objC)));
    }

    @Override // kotlinx.serialization.k
    public void serialize(@NotNull Encoder encoder, Collection collection) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        int iE = e(collection);
        SerialDescriptor descriptor = getDescriptor();
        kotlinx.serialization.encoding.d dVarZ = encoder.z(descriptor, iE);
        Iterator<Map.Entry<? extends Key, ? extends Value>> itD = d(collection);
        int i10 = 0;
        while (itD.hasNext()) {
            Map.Entry<? extends Key, ? extends Value> next = itD.next();
            Key key = next.getKey();
            Value value = next.getValue();
            int i11 = i10 + 1;
            dVarZ.F(getDescriptor(), i10, m(), key);
            i10 += 2;
            dVarZ.F(getDescriptor(), i11, n(), value);
        }
        dVarZ.c(descriptor);
    }
}
