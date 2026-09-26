package com.google.common.collect;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class b<T> extends l1<T> {
    private T next;
    private EnumC0218b state = EnumC0218b.NOT_READY;

    /* JADX INFO: renamed from: com.google.common.collect.b$b, reason: collision with other inner class name */
    private enum EnumC0218b {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    protected abstract T a();

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$common$collect$AbstractIterator$State;

        static {
            int[] iArr = new int[EnumC0218b.values().length];
            $SwitchMap$com$google$common$collect$AbstractIterator$State = iArr;
            try {
                iArr[EnumC0218b.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$common$collect$AbstractIterator$State[EnumC0218b.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private boolean c() {
        this.state = EnumC0218b.FAILED;
        this.next = a();
        if (this.state == EnumC0218b.DONE) {
            return false;
        }
        this.state = EnumC0218b.READY;
        return true;
    }

    protected final T b() {
        this.state = EnumC0218b.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        com.google.common.base.o.p(this.state != EnumC0218b.FAILED);
        int i10 = a.$SwitchMap$com$google$common$collect$AbstractIterator$State[this.state.ordinal()];
        if (i10 == 1) {
            return false;
        }
        if (i10 != 2) {
            return c();
        }
        return true;
    }

    protected b() {
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.state = EnumC0218b.NOT_READY;
            T t5 = (T) r0.a(this.next);
            this.next = null;
            return t5;
        }
        throw new NoSuchElementException();
    }
}
