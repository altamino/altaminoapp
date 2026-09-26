package kotlinx.serialization.internal;

import java.util.Set;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class u0 {
    @NotNull
    public static final Set<String> a(@NotNull SerialDescriptor serialDescriptor) {
        kotlin.jvm.internal.t.j(serialDescriptor, "<this>");
        return q1.a(serialDescriptor);
    }
}
