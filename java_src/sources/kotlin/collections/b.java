package kotlin.collections;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b<T> implements Iterator<T>, f8.a {

    @Nullable
    private T nextValue;

    @NotNull
    private a1 state = a1.NotReady;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[a1.values().length];
            try {
                iArr[a1.Done.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[a1.Ready.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    protected abstract void a();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    private final boolean e() {
        this.state = a1.Failed;
        a();
        return this.state == a1.Ready;
    }

    protected final void b() {
        this.state = a1.Done;
    }

    protected final void c(T t5) {
        this.nextValue = t5;
        this.state = a1.Ready;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        a1 a1Var = this.state;
        if (a1Var == a1.Failed) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int i10 = a.$EnumSwitchMapping$0[a1Var.ordinal()];
        if (i10 == 1) {
            return false;
        }
        if (i10 != 2) {
            return e();
        }
        return true;
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            this.state = a1.NotReady;
            return this.nextValue;
        }
        throw new NoSuchElementException();
    }
}
