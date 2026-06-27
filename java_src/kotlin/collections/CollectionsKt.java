package kotlin.collections;

import java.util.Collection;
import java.util.List;

/* loaded from: classes4.dex */
public final class CollectionsKt extends CollectionsKt___CollectionsKt {
    private CollectionsKt() {
    }

    public static /* bridge */ /* synthetic */ <T> T first(List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.first(list);
    }

    public static /* bridge */ /* synthetic */ <T> T last(List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.last(list);
    }

    public static /* bridge */ /* synthetic */ <T> T single(Iterable<? extends T> iterable) {
        return (T) CollectionsKt___CollectionsKt.single(iterable);
    }

    public static /* bridge */ /* synthetic */ void throwIndexOverflow() {
        CollectionsKt__CollectionsKt.throwIndexOverflow();
        throw null;
    }

    public static /* bridge */ /* synthetic */ <T, C extends Collection<? super T>> C toCollection(Iterable<? extends T> iterable, C c) {
        CollectionsKt___CollectionsKt.toCollection(iterable, c);
        return c;
    }
}
