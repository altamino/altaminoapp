package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.collections.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public interface SerialDescriptor {
    boolean b();

    int c(@NotNull String str);

    @NotNull
    SerialDescriptor d(int i10);

    int e();

    @NotNull
    String f(int i10);

    @NotNull
    List<Annotation> g(int i10);

    @NotNull
    List<Annotation> getAnnotations();

    @NotNull
    i getKind();

    @NotNull
    String h();

    boolean i(int i10);

    boolean isInline();

    public static final class a {
        public static boolean b(@NotNull SerialDescriptor serialDescriptor) {
            return false;
        }

        public static boolean c(@NotNull SerialDescriptor serialDescriptor) {
            return false;
        }

        @NotNull
        public static List<Annotation> a(@NotNull SerialDescriptor serialDescriptor) {
            return v.m();
        }
    }
}
