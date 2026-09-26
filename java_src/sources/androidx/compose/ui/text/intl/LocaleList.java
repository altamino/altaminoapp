package androidx.compose.ui.text.intl;

import androidx.compose.runtime.Immutable;
import f8.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import kotlin.collections.p;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class LocaleList implements Collection<Locale>, a {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final List<Locale> localeList;
    private final int size;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final LocaleList a() {
            List<PlatformLocale> listA = PlatformLocaleKt.a().a();
            ArrayList arrayList = new ArrayList(listA.size());
            int size = listA.size();
            for (int i10 = 0; i10 < size; i10++) {
                arrayList.add(new Locale(listA.get(i10)));
            }
            return new LocaleList(arrayList);
        }
    }

    public LocaleList(@NotNull List<Locale> localeList) {
        t.j(localeList, "localeList");
        this.localeList = localeList;
        this.size = localeList.size();
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Locale locale) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends Locale> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @NotNull
    public final List<Locale> e() {
        return this.localeList;
    }

    @Override // java.util.Collection
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LocaleList) && t.e(this.localeList, ((LocaleList) obj).localeList);
    }

    public int f() {
        return this.size;
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeIf(Predicate<? super Locale> predicate) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return j.a(this);
    }

    public boolean a(@NotNull Locale element) {
        t.j(element, "element");
        return this.localeList.contains(element);
    }

    @NotNull
    public final Locale c(int i10) {
        return this.localeList.get(i10);
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Locale) {
            return a((Locale) obj);
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        return this.localeList.containsAll(elements);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return this.localeList.hashCode();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.localeList.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<Locale> iterator() {
        return this.localeList.iterator();
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] array) {
        t.j(array, "array");
        return (T[]) j.b(this, array);
    }

    @NotNull
    public String toString() {
        return "LocaleList(localeList=" + this.localeList + ')';
    }

    public LocaleList(@NotNull String languageTags) {
        t.j(languageTags, "languageTags");
        List listC0 = u.C0(languageTags, new String[]{","}, false, 0, 6, null);
        ArrayList arrayList = new ArrayList(listC0.size());
        int size = listC0.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(u.b1((String) listC0.get(i10)).toString());
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i11 = 0; i11 < size2; i11++) {
            arrayList2.add(new Locale((String) arrayList.get(i11)));
        }
        this(arrayList2);
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return f();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LocaleList(@NotNull Locale... locales) {
        this((List<Locale>) p.t0(locales));
        t.j(locales, "locales");
    }
}
