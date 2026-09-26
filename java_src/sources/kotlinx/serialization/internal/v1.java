package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class v1 extends a1 {

    @NotNull
    private final String serialName;

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return this.serialName;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v1(@NotNull SerialDescriptor primitive) {
        super(primitive, null);
        kotlin.jvm.internal.t.j(primitive, "primitive");
        this.serialName = primitive.h() + "Array";
    }
}
