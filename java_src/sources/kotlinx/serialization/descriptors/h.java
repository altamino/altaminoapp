package kotlinx.serialization.descriptors;

import e8.l;
import kotlin.collections.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.serialization.internal.y1;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final class a extends v implements l<kotlinx.serialization.descriptors.a, l0> {
        public static final a INSTANCE = new a();

        a() {
            super(1);
        }

        public final void a(@NotNull kotlinx.serialization.descriptors.a aVar) {
            t.j(aVar, "$this$null");
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(kotlinx.serialization.descriptors.a aVar) {
            a(aVar);
            return l0.INSTANCE;
        }
    }

    @NotNull
    public static final SerialDescriptor a(@NotNull String serialName, @NotNull e kind) {
        t.j(serialName, "serialName");
        t.j(kind, "kind");
        if (!kotlin.text.t.z(serialName)) {
            return y1.a(serialName, kind);
        }
        throw new IllegalArgumentException("Blank serial names are prohibited".toString());
    }

    @NotNull
    public static final SerialDescriptor b(@NotNull String serialName, @NotNull SerialDescriptor[] typeParameters, @NotNull l<? super kotlinx.serialization.descriptors.a, l0> builderAction) {
        t.j(serialName, "serialName");
        t.j(typeParameters, "typeParameters");
        t.j(builderAction, "builderAction");
        if (!(!kotlin.text.t.z(serialName))) {
            throw new IllegalArgumentException("Blank serial names are prohibited".toString());
        }
        kotlinx.serialization.descriptors.a aVar = new kotlinx.serialization.descriptors.a(serialName);
        builderAction.invoke(aVar);
        return new f(serialName, j.a.INSTANCE, aVar.f().size(), p.t0(typeParameters), aVar);
    }

    @NotNull
    public static final SerialDescriptor c(@NotNull String serialName, @NotNull i kind, @NotNull SerialDescriptor[] typeParameters, @NotNull l<? super kotlinx.serialization.descriptors.a, l0> builder) {
        t.j(serialName, "serialName");
        t.j(kind, "kind");
        t.j(typeParameters, "typeParameters");
        t.j(builder, "builder");
        if (!(!kotlin.text.t.z(serialName))) {
            throw new IllegalArgumentException("Blank serial names are prohibited".toString());
        }
        if (!(!t.e(kind, j.a.INSTANCE))) {
            throw new IllegalArgumentException("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead".toString());
        }
        kotlinx.serialization.descriptors.a aVar = new kotlinx.serialization.descriptors.a(serialName);
        builder.invoke(aVar);
        return new f(serialName, kind, aVar.f().size(), p.t0(typeParameters), aVar);
    }

    public static /* synthetic */ SerialDescriptor d(String str, i iVar, SerialDescriptor[] serialDescriptorArr, l lVar, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            lVar = a.INSTANCE;
        }
        return c(str, iVar, serialDescriptorArr, lVar);
    }
}
