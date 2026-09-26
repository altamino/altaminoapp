package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class a {

    @NotNull
    private List<? extends Annotation> annotations;

    @NotNull
    private final List<List<Annotation>> elementAnnotations;

    @NotNull
    private final List<SerialDescriptor> elementDescriptors;

    @NotNull
    private final List<String> elementNames;

    @NotNull
    private final List<Boolean> elementOptionality;
    private boolean isNullable;

    @NotNull
    private final String serialName;

    @NotNull
    private final Set<String> uniqueNames;

    @NotNull
    public final List<Annotation> c() {
        return this.annotations;
    }

    @NotNull
    public final List<List<Annotation>> d() {
        return this.elementAnnotations;
    }

    @NotNull
    public final List<SerialDescriptor> e() {
        return this.elementDescriptors;
    }

    @NotNull
    public final List<String> f() {
        return this.elementNames;
    }

    @NotNull
    public final List<Boolean> g() {
        return this.elementOptionality;
    }

    public final void h(@NotNull List<? extends Annotation> list) {
        t.j(list, "<set-?>");
        this.annotations = list;
    }

    public a(@NotNull String serialName) {
        t.j(serialName, "serialName");
        this.serialName = serialName;
        this.annotations = v.m();
        this.elementNames = new ArrayList();
        this.uniqueNames = new HashSet();
        this.elementDescriptors = new ArrayList();
        this.elementAnnotations = new ArrayList();
        this.elementOptionality = new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void b(a aVar, String str, SerialDescriptor serialDescriptor, List list, boolean z6, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            list = v.m();
        }
        if ((i10 & 8) != 0) {
            z6 = false;
        }
        aVar.a(str, serialDescriptor, list, z6);
    }

    public final void a(@NotNull String elementName, @NotNull SerialDescriptor descriptor, @NotNull List<? extends Annotation> annotations, boolean z6) {
        t.j(elementName, "elementName");
        t.j(descriptor, "descriptor");
        t.j(annotations, "annotations");
        if (!this.uniqueNames.add(elementName)) {
            throw new IllegalArgumentException(("Element with name '" + elementName + "' is already registered").toString());
        }
        this.elementNames.add(elementName);
        this.elementDescriptors.add(descriptor);
        this.elementAnnotations.add(annotations);
        this.elementOptionality.add(Boolean.valueOf(z6));
    }
}
