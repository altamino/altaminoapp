package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.u1;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public abstract class w1<Element, Array, Builder extends u1<Array>> extends w<Element, Array, Builder> {

    @NotNull
    private final SerialDescriptor descriptor;

    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public final SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    protected abstract Array r();

    protected abstract void u(@NotNull kotlinx.serialization.encoding.d dVar, Array array, int i10);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w1(@NotNull KSerializer<Element> primitiveSerializer) {
        super(primitiveSerializer, null);
        kotlin.jvm.internal.t.j(primitiveSerializer, "primitiveSerializer");
        this.descriptor = new v1(primitiveSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.internal.a
    @NotNull
    protected final Iterator<Element> d(Array array) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead".toString());
    }

    @Override // kotlinx.serialization.internal.a, kotlinx.serialization.b
    public final Array deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return f(decoder, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final int b(@NotNull Builder builder) {
        kotlin.jvm.internal.t.j(builder, "<this>");
        return builder.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public final void c(@NotNull Builder builder, int i10) {
        kotlin.jvm.internal.t.j(builder, "<this>");
        builder.b(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final void n(@NotNull Builder builder, int i10, Element element) {
        kotlin.jvm.internal.t.j(builder, "<this>");
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead".toString());
    }

    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.k
    public final void serialize(@NotNull Encoder encoder, Array array) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        int iE = e(array);
        SerialDescriptor serialDescriptor = this.descriptor;
        kotlinx.serialization.encoding.d dVarZ = encoder.z(serialDescriptor, iE);
        u(dVarZ, array, iE);
        dVarZ.c(serialDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public final Array l(@NotNull Builder builder) {
        kotlin.jvm.internal.t.j(builder, "<this>");
        return (Array) builder.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public final Builder a() {
        return k(r());
    }
}
