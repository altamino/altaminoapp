package kotlinx.serialization.json;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class b implements KSerializer<JsonArray> {

    @NotNull
    public static final b INSTANCE = new b();

    @NotNull
    private static final SerialDescriptor descriptor = a.INSTANCE;

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    private static final class a implements SerialDescriptor {

        @NotNull
        public static final a INSTANCE = new a();

        @NotNull
        private static final String serialName = "kotlinx.serialization.json.JsonArray";
        private final /* synthetic */ SerialDescriptor $$delegate_0 = m8.a.h(i.INSTANCE).getDescriptor();

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean b() {
            return this.$$delegate_0.b();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int c(@NotNull String name) {
            kotlin.jvm.internal.t.j(name, "name");
            return this.$$delegate_0.c(name);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public SerialDescriptor d(int i10) {
            return this.$$delegate_0.d(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int e() {
            return this.$$delegate_0.e();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public String f(int i10) {
            return this.$$delegate_0.f(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public List<Annotation> g(int i10) {
            return this.$$delegate_0.g(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public List<Annotation> getAnnotations() {
            return this.$$delegate_0.getAnnotations();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public kotlinx.serialization.descriptors.i getKind() {
            return this.$$delegate_0.getKind();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public String h() {
            return serialName;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean i(int i10) {
            return this.$$delegate_0.i(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean isInline() {
            return this.$$delegate_0.isInline();
        }

        private a() {
        }
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public JsonArray deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        j.g(decoder);
        return new JsonArray((List) m8.a.h(i.INSTANCE).deserialize(decoder));
    }

    @Override // kotlinx.serialization.k
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void serialize(@NotNull Encoder encoder, @NotNull JsonArray value) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(value, "value");
        j.h(encoder);
        m8.a.h(i.INSTANCE).serialize(encoder, value);
    }

    private b() {
    }
}
