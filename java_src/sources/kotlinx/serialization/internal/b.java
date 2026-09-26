package kotlinx.serialization.internal;

import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class b<T> implements KSerializer<T> {
    @NotNull
    public abstract KClass<T> e();

    @Nullable
    public kotlinx.serialization.b<? extends T> c(@NotNull kotlinx.serialization.encoding.c decoder, @Nullable String str) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return decoder.a().d(e(), str);
    }

    @Nullable
    public kotlinx.serialization.k<T> d(@NotNull Encoder encoder, @NotNull T value) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(value, "value");
        return encoder.a().e(e(), value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.b
    @NotNull
    public final T deserialize(@NotNull Decoder decoder) {
        T t5;
        kotlin.jvm.internal.t.j(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        kotlinx.serialization.encoding.c cVarB = decoder.b(descriptor);
        kotlin.jvm.internal.p0 p0Var = new kotlin.jvm.internal.p0();
        if (cVarB.k()) {
            t5 = (T) b(cVarB);
        } else {
            t5 = null;
            while (true) {
                int iW = cVarB.w(getDescriptor());
                if (iW == -1) {
                    if (t5 != null) {
                        kotlin.jvm.internal.t.h(t5, "null cannot be cast to non-null type T of kotlinx.serialization.internal.AbstractPolymorphicSerializer.deserialize$lambda$3");
                        break;
                    }
                    throw new IllegalArgumentException(("Polymorphic value has not been read for class " + ((String) p0Var.element)).toString());
                }
                if (iW == 0) {
                    p0Var.element = (T) cVarB.i(getDescriptor(), iW);
                } else {
                    if (iW != 1) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Invalid index in polymorphic deserialization of ");
                        String str = (String) p0Var.element;
                        if (str == null) {
                            str = "unknown class";
                        }
                        sb.append(str);
                        sb.append("\n Expected 0, 1 or DECODE_DONE(-1), but found ");
                        sb.append(iW);
                        throw new kotlinx.serialization.j(sb.toString());
                    }
                    T t10 = p0Var.element;
                    if (t10 == 0) {
                        throw new IllegalArgumentException("Cannot read polymorphic value before its type token".toString());
                    }
                    p0Var.element = t10;
                    t5 = (T) kotlinx.serialization.encoding.c.b.c(cVarB, getDescriptor(), iW, kotlinx.serialization.f.a(this, cVarB, (String) t10), null, 8, null);
                }
            }
        }
        cVarB.c(descriptor);
        return t5;
    }

    @Override // kotlinx.serialization.k
    public final void serialize(@NotNull Encoder encoder, @NotNull T value) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(value, "value");
        kotlinx.serialization.k<? super T> kVarB = kotlinx.serialization.f.b(this, encoder, value);
        SerialDescriptor descriptor = getDescriptor();
        kotlinx.serialization.encoding.d dVarB = encoder.b(descriptor);
        dVarB.p(getDescriptor(), 0, kVarB.getDescriptor().h());
        SerialDescriptor descriptor2 = getDescriptor();
        kotlin.jvm.internal.t.h(kVarB, "null cannot be cast to non-null type kotlinx.serialization.SerializationStrategy<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        dVarB.F(descriptor2, 1, kVarB, value);
        dVarB.c(descriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final T b(kotlinx.serialization.encoding.c cVar) {
        return (T) kotlinx.serialization.encoding.c.b.c(cVar, getDescriptor(), 1, kotlinx.serialization.f.a(this, cVar, cVar.i(getDescriptor(), 0)), null, 8, null);
    }
}
