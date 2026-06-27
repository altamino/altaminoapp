package com.narvii.util;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class BlockingItem<T> {
    private volatile T item;
    final Lock lock = new ReentrantLock();
    final Condition notEmpty = this.lock.newCondition();

    public void put(T t) {
        this.lock.lock();
        try {
            this.item = t;
            if (t != null) {
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
            } finally {
                this.lock.unlock();
            }
        }
        T t = this.item;
        this.item = null;
        return t;
    }

    public T tryTake(long j) throws InterruptedException {
        this.lock.lock();
        while (this.item == null) {
            try {
                if (!this.notEmpty.await(j, TimeUnit.MILLISECONDS)) {
                    return null;
                }
            } finally {
                this.lock.unlock();
            }
        }
        T t = this.item;
        this.item = null;
        return t;
    }

    public T peek() {
        return this.item;
    }
}
