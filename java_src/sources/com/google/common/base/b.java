package com.google.common.base;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes10.dex */
abstract class b<T> implements Iterator<T> {
    private T next;
    private EnumC0214b state = EnumC0214b.NOT_READY;

    /* JADX INFO: renamed from: com.google.common.base.b$b, reason: collision with other inner class name */
    private enum EnumC0214b {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    protected abstract T a();

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$common$base$AbstractIterator$State;

        static {
            int[] iArr = new int[EnumC0214b.values().length];
            $SwitchMap$com$google$common$base$AbstractIterator$State = iArr;
            try {
                iArr[EnumC0214b.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$common$base$AbstractIterator$State[EnumC0214b.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private boolean c() {
        this.state = EnumC0214b.FAILED;
        this.next = a();
        if (this.state == EnumC0214b.DONE) {
            return false;
        }
        this.state = EnumC0214b.READY;
        return true;
    }

    protected final T b() {
        this.state = EnumC0214b.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        o.p(this.state != EnumC0214b.FAILED);
        int i10 = a.$SwitchMap$com$google$common$base$AbstractIterator$State[this.state.ordinal()];
        if (i10 == 1) {
            return false;
        }
        if (i10 != 2) {
            return c();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    protected b() {
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.state = EnumC0214b.NOT_READY;
            T t5 = (T) j.a(this.next);
            this.next = null;
            return t5;
        }
        throw new NoSuchElementException();
    }
}
