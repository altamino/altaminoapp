package androidx.compose.ui.text.font;

import androidx.compose.runtime.Immutable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public final class FontListFontFamily extends FileBasedFontFamily implements List<Font>, f8.a {
    private final /* synthetic */ List<Font> $$delegate_0;

    @NotNull
    private final List<Font> fonts;

    @Override // java.util.List
    public /* bridge */ /* synthetic */ void add(int i10, Font font) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i10, Collection<? extends Font> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        return this.$$delegate_0.containsAll(elements);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FontListFontFamily) && t.e(this.fonts, ((FontListFontFamily) obj).fonts);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.$$delegate_0.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<Font> iterator() {
        return this.$$delegate_0.iterator();
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<Font> listIterator() {
        return this.$$delegate_0.listIterator();
    }

    public boolean m(@NotNull Font element) {
        t.j(element, "element");
        return this.$$delegate_0.contains(element);
    }

    @Override // java.util.List
    @NotNull
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public Font get(int i10) {
        return this.$$delegate_0.get(i10);
    }

    @NotNull
    public final List<Font> q() {
        return this.fonts;
    }

    public int r() {
        return this.$$delegate_0.size();
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ Font remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void replaceAll(UnaryOperator<Font> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public int s(@NotNull Font element) {
        t.j(element, "element");
        return this.$$delegate_0.indexOf(element);
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ Font set(int i10, Font font) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void sort(Comparator<? super Font> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    @NotNull
    public List<Font> subList(int i10, int i11) {
        return this.$$delegate_0.subList(i10, i11);
    }

    public int t(@NotNull Font element) {
        t.j(element, "element");
        return this.$$delegate_0.lastIndexOf(element);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return j.a(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FontListFontFamily(@NotNull List<? extends Font> fonts) {
        super(null);
        t.j(fonts, "fonts");
        this.$$delegate_0 = fonts;
        List<? extends Font> list = fonts;
        if (!(!list.isEmpty())) {
            throw new IllegalStateException("At least one font should be passed to FontFamily".toString());
        }
        this.fonts = new ArrayList(list);
    }

    @Override // java.util.List, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends Font> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Font) {
            return m((Font) obj);
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.fonts.hashCode();
    }

    @Override // java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Font) {
            return s((Font) obj);
        }
        return -1;
    }

    @Override // java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Font) {
            return t((Font) obj);
        }
        return -1;
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<Font> listIterator(int i10) {
        return this.$$delegate_0.listIterator(i10);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] array) {
        t.j(array, "array");
        return (T[]) j.b(this, array);
    }

    @NotNull
    public String toString() {
        return "FontListFontFamily(fonts=" + this.fonts + ')';
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return r();
    }
}
