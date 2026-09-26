package kotlinx.serialization.internal;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class z1<ElementKlass, Element extends ElementKlass> extends w<Element, Element[], ArrayList<Element>> {

    @NotNull
    private final SerialDescriptor descriptor;

    @NotNull
    private final KClass<ElementKlass> kClass;

    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z1(@NotNull KClass<ElementKlass> kClass, @NotNull KSerializer<Element> eSerializer) {
        super(eSerializer, null);
        kotlin.jvm.internal.t.j(kClass, "kClass");
        kotlin.jvm.internal.t.j(eSerializer, "eSerializer");
        this.kClass = kClass;
        this.descriptor = new d(eSerializer.getDescriptor());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public ArrayList<Element> a() {
        return new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public int b(@NotNull ArrayList<Element> arrayList) {
        kotlin.jvm.internal.t.j(arrayList, "<this>");
        return arrayList.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void c(@NotNull ArrayList<Element> arrayList, int i10) {
        kotlin.jvm.internal.t.j(arrayList, "<this>");
        arrayList.ensureCapacity(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public Iterator<Element> d(@NotNull Element[] elementArr) {
        kotlin.jvm.internal.t.j(elementArr, "<this>");
        return kotlin.jvm.internal.c.a(elementArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public int e(@NotNull Element[] elementArr) {
        kotlin.jvm.internal.t.j(elementArr, "<this>");
        return elementArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public void n(@NotNull ArrayList<Element> arrayList, int i10, Element element) {
        kotlin.jvm.internal.t.j(arrayList, "<this>");
        arrayList.add(i10, element);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public ArrayList<Element> k(@NotNull Element[] elementArr) {
        kotlin.jvm.internal.t.j(elementArr, "<this>");
        return new ArrayList<>(kotlin.collections.o.c(elementArr));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public Element[] l(@NotNull ArrayList<Element> arrayList) {
        kotlin.jvm.internal.t.j(arrayList, "<this>");
        return (Element[]) p1.n(arrayList, this.kClass);
    }
}
