package com.narvii.util.statistics;

import com.narvii.util.Utils;

/* loaded from: classes.dex */
public final class TmpValue<T> implements Runnable {
    private T value;

    public boolean compareAndRemove(T t) {
        if (!Utils.isEquals(this.value, t)) {
            return false;
        }
        this.value = null;
        Utils.handler.removeCallbacks(this);
        return true;
    }

    public T getAndRemove() {
        T t = this.value;
        this.value = null;
        Utils.handler.removeCallbacks(this);
        return t;
    }

    public T peek() {
        return this.value;
    }

    public void set(T t) {
        set(t, 600L);
    }

    public void set(T t, long j) {
        this.value = t;
        Utils.handler.removeCallbacks(this);
        if (t != null) {
            Utils.handler.postDelayed(this, j);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.value = null;
    }
}
