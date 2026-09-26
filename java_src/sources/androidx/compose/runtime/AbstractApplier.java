package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public abstract class AbstractApplier<T> implements Applier<T> {
    public static final int $stable = 8;
    private T current;
    private final T root;

    @NotNull
    private final List<T> stack = new ArrayList();

    @Override // androidx.compose.runtime.Applier
    public T a() {
        return this.current;
    }

    @Override // androidx.compose.runtime.Applier
    public /* synthetic */ void c() {
        a.b(this);
    }

    @Override // androidx.compose.runtime.Applier
    public /* synthetic */ void d() {
        a.a(this);
    }

    public final T j() {
        return this.root;
    }

    protected abstract void k();

    protected void l(T t5) {
        this.current = t5;
    }

    @Override // androidx.compose.runtime.Applier
    public final void clear() {
        this.stack.clear();
        l(this.root);
        k();
    }

    @Override // androidx.compose.runtime.Applier
    public void h(T t5) {
        this.stack.add(a());
        l(t5);
    }

    @Override // androidx.compose.runtime.Applier
    public void i() {
        if (!(!this.stack.isEmpty())) {
            throw new IllegalStateException("Check failed.".toString());
        }
        List<T> list = this.stack;
        l(list.remove(list.size() - 1));
    }

    public AbstractApplier(T t5) {
        this.root = t5;
        this.current = t5;
    }
}
