package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class f0 extends PluginGeneratedSerialDescriptor {

    @NotNull
    private final w7.m elementDescriptors$delegate;

    @NotNull
    private final kotlinx.serialization.descriptors.i kind;

    static final class a extends kotlin.jvm.internal.v implements e8.a<SerialDescriptor[]> {
        final /* synthetic */ int $elementsCount;
        final /* synthetic */ String $name;
        final /* synthetic */ f0 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i10, String str, f0 f0Var) {
            super(0);
            this.$elementsCount = i10;
            this.$name = str;
            this.this$0 = f0Var;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SerialDescriptor[] invoke() {
            int i10 = this.$elementsCount;
            SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                serialDescriptorArr[i11] = kotlinx.serialization.descriptors.h.d(this.$name + '.' + this.this$0.f(i11), kotlinx.serialization.descriptors.j.d.INSTANCE, new SerialDescriptor[0], null, 8, null);
            }
            return serialDescriptorArr;
        }
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SerialDescriptor)) {
            return false;
        }
        SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
        return serialDescriptor.getKind() == kotlinx.serialization.descriptors.i.b.INSTANCE && kotlin.jvm.internal.t.e(h(), serialDescriptor.h()) && kotlin.jvm.internal.t.e(q1.a(this), q1.a(serialDescriptor));
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor, kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public kotlinx.serialization.descriptors.i getKind() {
        return this.kind;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(@NotNull String name, int i10) {
        super(name, null, i10, 2, null);
        kotlin.jvm.internal.t.j(name, "name");
        this.kind = kotlinx.serialization.descriptors.i.b.INSTANCE;
        this.elementDescriptors$delegate = w7.o.a(new a(i10, name, this));
    }

    private final SerialDescriptor[] q() {
        return (SerialDescriptor[]) this.elementDescriptors$delegate.getValue();
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor, kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialDescriptor d(int i10) {
        return q()[i10];
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public int hashCode() {
        int iHashCode;
        int iHashCode2 = h().hashCode();
        int i10 = 1;
        for (String str : kotlinx.serialization.descriptors.g.b(this)) {
            int i11 = i10 * 31;
            if (str != null) {
                iHashCode = str.hashCode();
            } else {
                iHashCode = 0;
            }
            i10 = i11 + iHashCode;
        }
        return (iHashCode2 * 31) + i10;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    @NotNull
    public String toString() {
        return kotlin.collections.d0.t0(kotlinx.serialization.descriptors.g.b(this), ", ", h() + '(', ")", 0, null, null, 56, null);
    }
}
