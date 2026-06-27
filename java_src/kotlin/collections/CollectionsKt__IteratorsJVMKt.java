package kotlin.collections;

import java.util.Enumeration;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IteratorsJVM.kt */
/* loaded from: classes4.dex */
public class CollectionsKt__IteratorsJVMKt extends CollectionsKt__IterablesKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: IteratorsJVM.kt */
    /* renamed from: kotlin.collections.CollectionsKt__IteratorsJVMKt$iterator$1, reason: invalid class name */
    public static final class AnonymousClass1<T> implements Iterator<T>, KMappedMarker {
        final /* synthetic */ Enumeration $this_iterator;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        AnonymousClass1(Enumeration<T> enumeration) {
            this.$this_iterator = enumeration;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.$this_iterator.hasMoreElements();
        }

        @Override // java.util.Iterator
        public T next() {
            return (T) this.$this_iterator.nextElement();
        }
    }

    public static <T> Iterator<T> iterator(Enumeration<T> iterator) {
        Intrinsics.checkParameterIsNotNull(iterator, "$this$iterator");
        return new AnonymousClass1(iterator);
    }
}
