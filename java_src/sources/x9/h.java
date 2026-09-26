package x9;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import x9.e;
import x9.f;

/* JADX INFO: loaded from: classes10.dex */
public abstract class h<I extends e, E extends f> implements a<I, E> {
    private final Comparator<I> comparator;
    private final List<Throwable> errors;
    private final List<I> itemList;
    private final int serviceId;

    public h(int i10) {
        this(i10, null);
    }

    public int g() {
        return this.serviceId;
    }

    public h(int i10, Comparator<I> comparator) {
        this.itemList = new ArrayList();
        this.errors = new ArrayList();
        this.serviceId = i10;
        this.comparator = comparator;
    }

    protected void b(Exception exc) {
        this.errors.add(exc);
    }

    protected void c(I i10) {
        this.itemList.add(i10);
    }

    public List<Throwable> e() {
        return Collections.unmodifiableList(this.errors);
    }

    public List<I> f() {
        Comparator<I> comparator = this.comparator;
        if (comparator != null) {
            this.itemList.sort(comparator);
        }
        return Collections.unmodifiableList(this.itemList);
    }

    public void d(E e) {
        try {
            c(a(e));
        } catch (aa.e unused) {
        } catch (aa.h e2) {
            b(e2);
        }
    }
}
