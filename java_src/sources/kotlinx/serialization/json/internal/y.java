package kotlinx.serialization.json.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class y {
    private boolean isUnmarkedNull;

    @NotNull
    private final kotlinx.serialization.internal.e0 origin;

    /* synthetic */ class a extends kotlin.jvm.internal.q implements e8.p<SerialDescriptor, Integer, Boolean> {
        a(Object obj) {
            super(2, obj, y.class, "readIfAbsent", "readIfAbsent(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z", 0);
        }

        @NotNull
        public final Boolean a(@NotNull SerialDescriptor p0, int i10) {
            kotlin.jvm.internal.t.j(p0, "p0");
            return Boolean.valueOf(((y) this.receiver).e(p0, i10));
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ Boolean invoke(SerialDescriptor serialDescriptor, Integer num) {
            return a(serialDescriptor, num.intValue());
        }
    }

    public final boolean b() {
        return this.isUnmarkedNull;
    }

    public y(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        this.origin = new kotlinx.serialization.internal.e0(descriptor, new a(this));
    }

    public final void c(int i10) {
        this.origin.a(i10);
    }

    public final int d() {
        return this.origin.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean e(SerialDescriptor serialDescriptor, int i10) {
        boolean z6;
        if (!serialDescriptor.i(i10) && serialDescriptor.d(i10).b()) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.isUnmarkedNull = z6;
        return z6;
    }
}
