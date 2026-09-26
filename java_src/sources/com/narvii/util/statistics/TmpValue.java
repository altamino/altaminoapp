package com.narvii.util.statistics;

import android.os.Handler;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes7.dex */
public final class TmpValue<T> implements Runnable {
    private T value;

    public T peek() {
        return this.value;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.value = null;
    }

    public void set(T t5) {
        set(t5, 600L);
    }

    public boolean compareAndRemove(T t5) {
        if (!Utils.isEquals(this.value, t5)) {
            return false;
        }
        this.value = null;
        Utils.handler.removeCallbacks(this);
        return true;
    }

    public T getAndRemove() {
        T t5 = this.value;
        this.value = null;
        Utils.handler.removeCallbacks(this);
        return t5;
    }

    public void set(T t5, long j6) {
        this.value = t5;
        Handler handler = Utils.handler;
        handler.removeCallbacks(this);
        if (t5 != null) {
            handler.postDelayed(this, j6);
        }
    }
}
