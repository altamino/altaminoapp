package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public abstract class i1 extends i2<String> {
    @NotNull
    protected String d0(@NotNull String parentName, @NotNull String childName) {
        kotlin.jvm.internal.t.j(parentName, "parentName");
        kotlin.jvm.internal.t.j(childName, "childName");
        if (parentName.length() == 0) {
            return childName;
        }
        return parentName + '.' + childName;
    }

    @NotNull
    protected String e0(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return descriptor.f(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.i2
    @NotNull
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public final String a0(@NotNull SerialDescriptor serialDescriptor, int i10) {
        kotlin.jvm.internal.t.j(serialDescriptor, "<this>");
        return g0(e0(serialDescriptor, i10));
    }

    @NotNull
    protected final String g0(@NotNull String nestedName) {
        kotlin.jvm.internal.t.j(nestedName, "nestedName");
        String strZ = Z();
        if (strZ == null) {
            strZ = "";
        }
        return d0(strZ, nestedName);
    }
}
