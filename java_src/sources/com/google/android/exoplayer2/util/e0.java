package com.google.android.exoplayer2.util;

import java.util.Collections;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes7.dex */
public final class e0 {
    private final Object lock = new Object();
    private final PriorityQueue<Integer> queue = new PriorityQueue<>(10, Collections.reverseOrder());
    private int highestPriority = Integer.MIN_VALUE;

    public void a(int i10) {
        synchronized (this.lock) {
            this.queue.add(Integer.valueOf(i10));
            this.highestPriority = Math.max(this.highestPriority, i10);
        }
    }

    public void b(int i10) {
        synchronized (this.lock) {
            this.queue.remove(Integer.valueOf(i10));
            this.highestPriority = this.queue.isEmpty() ? Integer.MIN_VALUE : ((Integer) o0.j(this.queue.peek())).intValue();
            this.lock.notifyAll();
        }
    }
}
