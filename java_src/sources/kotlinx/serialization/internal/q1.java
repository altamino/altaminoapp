package kotlinx.serialization.internal;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class q1 {

    @NotNull
    private static final SerialDescriptor[] EMPTY_DESCRIPTOR_ARRAY = new SerialDescriptor[0];

    @NotNull
    public static final SerialDescriptor[] b(@Nullable List<? extends SerialDescriptor> list) {
        List<? extends SerialDescriptor> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            list = null;
        }
        if (list != null) {
            Object[] array = list.toArray(new SerialDescriptor[0]);
            kotlin.jvm.internal.t.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            SerialDescriptor[] serialDescriptorArr = (SerialDescriptor[]) array;
            if (serialDescriptorArr != null) {
                return serialDescriptorArr;
            }
        }
        return EMPTY_DESCRIPTOR_ARRAY;
    }

    @NotNull
    public static final Set<String> a(@NotNull SerialDescriptor serialDescriptor) {
        kotlin.jvm.internal.t.j(serialDescriptor, "<this>");
        if (serialDescriptor instanceof n) {
            return ((n) serialDescriptor).a();
        }
        HashSet hashSet = new HashSet(serialDescriptor.e());
        int iE = serialDescriptor.e();
        for (int i10 = 0; i10 < iE; i10++) {
            hashSet.add(serialDescriptor.f(i10));
        }
        return hashSet;
    }

    @NotNull
    public static final KClass<Object> c(@NotNull KType kType) {
        kotlin.jvm.internal.t.j(kType, "<this>");
        KClassifier classifier = kType.getClassifier();
        if (classifier instanceof KClass) {
            return (KClass) classifier;
        }
        if (!(classifier instanceof KTypeParameter)) {
            throw new IllegalStateException(("Only KClass supported as classifier, got " + classifier).toString());
        }
        throw new IllegalStateException(("Captured type paramerer " + classifier + " from generic non-reified function. Such functionality cannot be supported as " + classifier + " is erased, either specify serializer explicitly or make calling function inline with reified " + classifier).toString());
    }

    @NotNull
    public static final Void d(@NotNull KClass<?> kClass) {
        kotlin.jvm.internal.t.j(kClass, "<this>");
        throw new kotlinx.serialization.j("Serializer for class '" + kClass.getSimpleName() + "' is not found.\nMark the class as @Serializable or provide the serializer explicitly.");
    }
}
