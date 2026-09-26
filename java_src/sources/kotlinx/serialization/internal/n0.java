package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class n0 extends a1 {
    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return "kotlin.collections.HashSet";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(@NotNull SerialDescriptor elementDesc) {
        super(elementDesc, null);
        kotlin.jvm.internal.t.j(elementDesc, "elementDesc");
    }
}
