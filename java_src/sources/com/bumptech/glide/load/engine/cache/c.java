package com.bumptech.glide.load.engine.cache;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes4.dex */
final class c {
    private final Map<String, a> locks = new HashMap();
    private final b writeLockPool = new b();

    private static class b {
        private static final int MAX_POOL_SIZE = 10;
        private final Queue<a> pool = new ArrayDeque();

        a a() {
            a aVarPoll;
            synchronized (this.pool) {
                aVarPoll = this.pool.poll();
            }
            return aVarPoll == null ? new a() : aVarPoll;
        }

        void b(a aVar) {
            synchronized (this.pool) {
                try {
                    if (this.pool.size() < 10) {
                        this.pool.offer(aVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        b() {
        }
    }

    void a(String str) {
        a aVarA;
        synchronized (this) {
            try {
                aVarA = this.locks.get(str);
                if (aVarA == null) {
                    aVarA = this.writeLockPool.a();
                    this.locks.put(str, aVarA);
                }
                aVarA.interestedThreads++;
            } catch (Throwable th) {
                throw th;
            }
        }
        aVarA.lock.lock();
    }

    void b(String str) {
        a aVar;
        synchronized (this) {
            try {
                aVar = (a) com.bumptech.glide.util.j.d(this.locks.get(str));
                int i10 = aVar.interestedThreads;
                if (i10 < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.interestedThreads);
                }
                int i11 = i10 - 1;
                aVar.interestedThreads = i11;
                if (i11 == 0) {
                    a aVarRemove = this.locks.remove(str);
                    if (!aVarRemove.equals(aVar)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + aVarRemove + ", safeKey: " + str);
                    }
                    this.writeLockPool.b(aVarRemove);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        aVar.lock.unlock();
    }

    private static class a {
        int interestedThreads;
        final Lock lock = new ReentrantLock();

        a() {
        }
    }

    c() {
    }
}
