package com.bumptech.glide.load.engine.bitmap_recycle;

import com.bumptech.glide.load.engine.bitmap_recycle.l;
import java.util.Queue;

/* JADX INFO: loaded from: classes11.dex */
abstract class c<T extends l> {
    private static final int MAX_SIZE = 20;
    private final Queue<T> keyPool = com.bumptech.glide.util.k.e(20);

    abstract T a();

    T b() {
        T tPoll = this.keyPool.poll();
        return tPoll == null ? (T) a() : tPoll;
    }

    public void c(T t5) {
        if (this.keyPool.size() < 20) {
            this.keyPool.offer(t5);
        }
    }

    c() {
    }
}
