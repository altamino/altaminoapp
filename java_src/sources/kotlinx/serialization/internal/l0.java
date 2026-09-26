package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class l0 extends f1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(@NotNull SerialDescriptor keyDesc, @NotNull SerialDescriptor valueDesc) {
        super("kotlin.collections.HashMap", keyDesc, valueDesc, null);
        kotlin.jvm.internal.t.j(keyDesc, "keyDesc");
        kotlin.jvm.internal.t.j(valueDesc, "valueDesc");
    }
}
