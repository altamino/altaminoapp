package kotlinx.serialization.encoding;

import kotlin.jvm.internal.t;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public interface Encoder {

    public static final class a {
        public static void b(@NotNull Encoder encoder) {
        }

        @NotNull
        public static d a(@NotNull Encoder encoder, @NotNull SerialDescriptor descriptor, int i10) {
            t.j(descriptor, "descriptor");
            return encoder.b(descriptor);
        }

        public static <T> void c(@NotNull Encoder encoder, @NotNull k<? super T> serializer, @Nullable T t5) {
            t.j(serializer, "serializer");
            if (serializer.getDescriptor().b()) {
                encoder.e(serializer, t5);
            } else if (t5 == null) {
                encoder.B();
            } else {
                encoder.E();
                encoder.e(serializer, t5);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static <T> void d(@NotNull Encoder encoder, @NotNull k<? super T> serializer, T t5) {
            t.j(serializer, "serializer");
            serializer.serialize(encoder, t5);
        }
    }

    void A(long j6);

    void B();

    void D(char c7);

    void E();

    @NotNull
    kotlinx.serialization.modules.c a();

    @NotNull
    d b(@NotNull SerialDescriptor serialDescriptor);

    <T> void e(@NotNull k<? super T> kVar, T t5);

    void f(byte b7);

    void g(@NotNull SerialDescriptor serialDescriptor, int i10);

    @NotNull
    Encoder h(@NotNull SerialDescriptor serialDescriptor);

    void k(short s);

    void l(boolean z6);

    void m(float f);

    void s(int i10);

    void v(@NotNull String str);

    void x(double d);

    @NotNull
    d z(@NotNull SerialDescriptor serialDescriptor, int i10);
}
