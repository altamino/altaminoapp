package kotlinx.serialization.json.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonElement;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class y0 {

    @NotNull
    public static final String PRIMITIVE_TAG = "primitive";

    static final class a extends kotlin.jvm.internal.v implements e8.l<JsonElement, w7.l0> {
        final /* synthetic */ kotlin.jvm.internal.p0<JsonElement> $result;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(kotlin.jvm.internal.p0<JsonElement> p0Var) {
            super(1);
            this.$result = p0Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(@NotNull JsonElement it) {
            kotlin.jvm.internal.t.j(it, "it");
            this.$result.element = it;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(JsonElement jsonElement) {
            a(jsonElement);
            return w7.l0.INSTANCE;
        }
    }

    @NotNull
    public static final <T> JsonElement c(@NotNull kotlinx.serialization.json.a aVar, T t5, @NotNull kotlinx.serialization.k<? super T> serializer) {
        kotlin.jvm.internal.t.j(aVar, "<this>");
        kotlin.jvm.internal.t.j(serializer, "serializer");
        kotlin.jvm.internal.p0 p0Var = new kotlin.jvm.internal.p0();
        new j0(aVar, new a(p0Var)).e(serializer, t5);
        T t10 = p0Var.element;
        if (t10 != null) {
            return (JsonElement) t10;
        }
        kotlin.jvm.internal.t.B("result");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(SerialDescriptor serialDescriptor) {
        if (!(serialDescriptor.getKind() instanceof kotlinx.serialization.descriptors.e) && serialDescriptor.getKind() != kotlinx.serialization.descriptors.i.b.INSTANCE) {
            return false;
        }
        return true;
    }
}
