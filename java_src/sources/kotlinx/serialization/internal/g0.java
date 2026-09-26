package kotlinx.serialization.internal;

import java.lang.Enum;
import java.util.Arrays;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class g0<T extends Enum<T>> implements KSerializer<T> {

    @NotNull
    private final w7.m descriptor$delegate;

    @Nullable
    private SerialDescriptor overriddenDescriptor;

    @NotNull
    private final T[] values;

    static final class a extends kotlin.jvm.internal.v implements e8.a<SerialDescriptor> {
        final /* synthetic */ String $serialName;
        final /* synthetic */ g0<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(g0<T> g0Var, String str) {
            super(0);
            this.this$0 = g0Var;
            this.$serialName = str;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SerialDescriptor invoke() {
            SerialDescriptor serialDescriptor = ((g0) this.this$0).overriddenDescriptor;
            return serialDescriptor == null ? this.this$0.c(this.$serialName) : serialDescriptor;
        }
    }

    public g0(@NotNull String serialName, @NotNull T[] values) {
        kotlin.jvm.internal.t.j(serialName, "serialName");
        kotlin.jvm.internal.t.j(values, "values");
        this.values = values;
        this.descriptor$delegate = w7.o.a(new a(this, serialName));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SerialDescriptor c(String str) {
        f0 f0Var = new f0(str, this.values.length);
        for (T t5 : this.values) {
            PluginGeneratedSerialDescriptor.l(f0Var, t5.name(), false, 2, null);
        }
        return f0Var;
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public T deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        int iS = decoder.s(getDescriptor());
        if (iS >= 0) {
            T[] tArr = this.values;
            if (iS < tArr.length) {
                return tArr[iS];
            }
        }
        throw new kotlinx.serialization.j(iS + " is not among valid " + getDescriptor().h() + " enum values, values size is " + this.values.length);
    }

    @Override // kotlinx.serialization.k
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void serialize(@NotNull Encoder encoder, @NotNull T value) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(value, "value");
        int iX = kotlin.collections.p.X(this.values, value);
        if (iX != -1) {
            encoder.g(getDescriptor(), iX);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(value);
        sb.append(" is not a valid enum ");
        sb.append(getDescriptor().h());
        sb.append(", must be one of ");
        String string = Arrays.toString(this.values);
        kotlin.jvm.internal.t.i(string, "toString(this)");
        sb.append(string);
        throw new kotlinx.serialization.j(sb.toString());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    @NotNull
    public String toString() {
        return "kotlinx.serialization.internal.EnumSerializer<" + getDescriptor().h() + '>';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public g0(@NotNull String serialName, @NotNull T[] values, @NotNull SerialDescriptor descriptor) {
        this(serialName, values);
        kotlin.jvm.internal.t.j(serialName, "serialName");
        kotlin.jvm.internal.t.j(values, "values");
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        this.overriddenDescriptor = descriptor;
    }
}
