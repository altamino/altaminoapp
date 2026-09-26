package kotlinx.serialization.json;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.jvm.internal.q0;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    public static final class a implements SerialDescriptor {

        @NotNull
        private final w7.m original$delegate;

        private final SerialDescriptor a() {
            return (SerialDescriptor) this.original$delegate.getValue();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int c(@NotNull String name) {
            kotlin.jvm.internal.t.j(name, "name");
            return a().c(name);
        }

        a(e8.a<? extends SerialDescriptor> aVar) {
            this.original$delegate = w7.o.a(aVar);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean b() {
            return SerialDescriptor.a.c(this);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public SerialDescriptor d(int i10) {
            return a().d(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int e() {
            return a().e();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public String f(int i10) {
            return a().f(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public List<Annotation> g(int i10) {
            return a().g(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public List<Annotation> getAnnotations() {
            return SerialDescriptor.a.a(this);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public kotlinx.serialization.descriptors.i getKind() {
            return a().getKind();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public String h() {
            return a().h();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean i(int i10) {
            return a().i(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean isInline() {
            return SerialDescriptor.a.b(this);
        }
    }

    @NotNull
    public static final f d(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "<this>");
        f fVar = decoder instanceof f ? (f) decoder : null;
        if (fVar != null) {
            return fVar;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got " + q0.b(decoder.getClass()));
    }

    @NotNull
    public static final k e(@NotNull Encoder encoder) {
        kotlin.jvm.internal.t.j(encoder, "<this>");
        k kVar = encoder instanceof k ? (k) encoder : null;
        if (kVar != null) {
            return kVar;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got " + q0.b(encoder.getClass()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor f(e8.a<? extends SerialDescriptor> aVar) {
        return new a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(Decoder decoder) {
        d(decoder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(Encoder encoder) {
        e(encoder);
    }
}
