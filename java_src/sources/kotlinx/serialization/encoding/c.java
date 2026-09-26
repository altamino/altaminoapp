package kotlinx.serialization.encoding;

import kotlin.jvm.internal.t;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface c {

    @NotNull
    public static final a Companion = a.$$INSTANCE;
    public static final int DECODE_DONE = -1;
    public static final int UNKNOWN_NAME = -3;

    public static final class b {
        public static int a(@NotNull c cVar, @NotNull SerialDescriptor descriptor) {
            t.j(descriptor, "descriptor");
            return -1;
        }

        public static boolean b(@NotNull c cVar) {
            return false;
        }

        public static /* synthetic */ Object c(c cVar, SerialDescriptor serialDescriptor, int i10, kotlinx.serialization.b bVar, Object obj, int i11, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeSerializableElement");
            }
            if ((i11 & 8) != 0) {
                obj = null;
            }
            return cVar.p(serialDescriptor, i10, bVar, obj);
        }
    }

    byte B(@NotNull SerialDescriptor serialDescriptor, int i10);

    boolean C(@NotNull SerialDescriptor serialDescriptor, int i10);

    short E(@NotNull SerialDescriptor serialDescriptor, int i10);

    double F(@NotNull SerialDescriptor serialDescriptor, int i10);

    @NotNull
    kotlinx.serialization.modules.c a();

    void c(@NotNull SerialDescriptor serialDescriptor);

    long e(@NotNull SerialDescriptor serialDescriptor, int i10);

    int f(@NotNull SerialDescriptor serialDescriptor, int i10);

    @NotNull
    String i(@NotNull SerialDescriptor serialDescriptor, int i10);

    @Nullable
    <T> T j(@NotNull SerialDescriptor serialDescriptor, int i10, @NotNull kotlinx.serialization.b<T> bVar, @Nullable T t5);

    boolean k();

    @NotNull
    Decoder l(@NotNull SerialDescriptor serialDescriptor, int i10);

    <T> T p(@NotNull SerialDescriptor serialDescriptor, int i10, @NotNull kotlinx.serialization.b<T> bVar, @Nullable T t5);

    char r(@NotNull SerialDescriptor serialDescriptor, int i10);

    int v(@NotNull SerialDescriptor serialDescriptor);

    int w(@NotNull SerialDescriptor serialDescriptor);

    float z(@NotNull SerialDescriptor serialDescriptor, int i10);

    public static final class a {
        static final /* synthetic */ a $$INSTANCE = new a();
        public static final int DECODE_DONE = -1;
        public static final int UNKNOWN_NAME = -3;

        private a() {
        }
    }
}
