package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class d extends a1 {
    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return "kotlin.Array";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(@NotNull SerialDescriptor elementDesc) {
        super(elementDesc, null);
        kotlin.jvm.internal.t.j(elementDesc, "elementDesc");
    }
}
