package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public abstract class h1 extends h2<String> {
    @NotNull
    protected String b0(@NotNull String parentName, @NotNull String childName) {
        kotlin.jvm.internal.t.j(parentName, "parentName");
        kotlin.jvm.internal.t.j(childName, "childName");
        if (parentName.length() == 0) {
            return childName;
        }
        return parentName + '.' + childName;
    }

    @NotNull
    protected String c0(@NotNull SerialDescriptor desc, int i10) {
        kotlin.jvm.internal.t.j(desc, "desc");
        return desc.f(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.h2
    @NotNull
    /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
    public final String X(@NotNull SerialDescriptor serialDescriptor, int i10) {
        kotlin.jvm.internal.t.j(serialDescriptor, "<this>");
        return e0(c0(serialDescriptor, i10));
    }

    @NotNull
    protected final String e0(@NotNull String nestedName) {
        kotlin.jvm.internal.t.j(nestedName, "nestedName");
        String strW = W();
        if (strW == null) {
            strW = "";
        }
        return b0(strW, nestedName);
    }
}
