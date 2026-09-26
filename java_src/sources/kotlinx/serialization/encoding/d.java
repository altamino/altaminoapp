package kotlinx.serialization.encoding;

import kotlin.jvm.internal.t;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface d {

    public static final class a {
        public static boolean a(@NotNull d dVar, @NotNull SerialDescriptor descriptor, int i10) {
            t.j(descriptor, "descriptor");
            return true;
        }
    }

    void C(@NotNull SerialDescriptor serialDescriptor, int i10, float f);

    <T> void F(@NotNull SerialDescriptor serialDescriptor, int i10, @NotNull k<? super T> kVar, T t5);

    void G(@NotNull SerialDescriptor serialDescriptor, int i10, double d);

    void c(@NotNull SerialDescriptor serialDescriptor);

    void i(@NotNull SerialDescriptor serialDescriptor, int i10, char c7);

    void j(@NotNull SerialDescriptor serialDescriptor, int i10, byte b7);

    void n(@NotNull SerialDescriptor serialDescriptor, int i10, int i11);

    void o(@NotNull SerialDescriptor serialDescriptor, int i10, boolean z6);

    void p(@NotNull SerialDescriptor serialDescriptor, int i10, @NotNull String str);

    boolean q(@NotNull SerialDescriptor serialDescriptor, int i10);

    void t(@NotNull SerialDescriptor serialDescriptor, int i10, short s);

    void u(@NotNull SerialDescriptor serialDescriptor, int i10, long j6);

    @NotNull
    Encoder w(@NotNull SerialDescriptor serialDescriptor, int i10);

    <T> void y(@NotNull SerialDescriptor serialDescriptor, int i10, @NotNull k<? super T> kVar, @Nullable T t5);
}
