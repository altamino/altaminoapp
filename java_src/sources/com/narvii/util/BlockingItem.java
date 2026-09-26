package com.narvii.util;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes10.dex */
public class BlockingItem<T> {
    private volatile T item;
    final Lock lock;
    final Condition notEmpty;

    public T peek() {
        return this.item;
    }

    public void put(T t5) {
        this.lock.lock();
        try {
            this.item = t5;
            if (t5 != null) {
                this.notEmpty.signal();
            }
        } finally {
            this.lock.unlock();
        }
    }

    public T take() throws InterruptedException {
        this.lock.lock();
        while (this.item == null) {
            try {
                this.notEmpty.await();
            } catch (Throwable th) {
                this.lock.unlock();
                throw th;
            }
        }
        T t5 = this.item;
        this.item = null;
        this.lock.unlock();
        return t5;
    }

    public T tryTake(long j6) throws InterruptedException {
        this.lock.lock();
        while (this.item == null) {
            try {
                if (!this.notEmpty.await(j6, TimeUnit.MILLISECONDS)) {
                    this.lock.unlock();
                    return null;
                }
            } catch (Throwable th) {
                this.lock.unlock();
                throw th;
            }
        }
        T t5 = this.item;
        this.item = null;
        this.lock.unlock();
        return t5;
    }

    public BlockingItem() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.notEmpty = reentrantLock.newCondition();
    }
}
