package androidx.recyclerview.widget;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
class MessageThreadUtil<T> implements ThreadUtil<T> {

    /* JADX INFO: renamed from: androidx.recyclerview.widget.MessageThreadUtil$1, reason: invalid class name */
    class AnonymousClass1 implements ThreadUtil.MainThreadCallback<T> {
        static final int ADD_TILE = 2;
        static final int REMOVE_TILE = 3;
        static final int UPDATE_ITEM_COUNT = 1;
        final /* synthetic */ ThreadUtil.MainThreadCallback val$callback;
        final MessageQueue mQueue = new MessageQueue();
        private final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
        private Runnable mMainThreadRunnable = new Runnable() { // from class: androidx.recyclerview.widget.MessageThreadUtil.1.1
            @Override // java.lang.Runnable
            public void run() {
                SyncQueueItem syncQueueItemA = AnonymousClass1.this.mQueue.a();
                while (syncQueueItemA != null) {
                    int i10 = syncQueueItemA.what;
                    if (i10 == 1) {
                        AnonymousClass1.this.val$callback.a(syncQueueItemA.arg1, syncQueueItemA.arg2);
                    } else if (i10 == 2) {
                        AnonymousClass1.this.val$callback.c(syncQueueItemA.arg1, (TileList.Tile) syncQueueItemA.data);
                    } else if (i10 != 3) {
                        Log.e("ThreadUtil", "Unsupported message, what=" + syncQueueItemA.what);
                    } else {
                        AnonymousClass1.this.val$callback.b(syncQueueItemA.arg1, syncQueueItemA.arg2);
                    }
                    syncQueueItemA = AnonymousClass1.this.mQueue.a();
                }
            }
        };

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void a(int i10, int i11) {
            d(SyncQueueItem.a(1, i10, i11));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void b(int i10, int i11) {
            d(SyncQueueItem.a(3, i10, i11));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void c(int i10, TileList.Tile<T> tile) {
            d(SyncQueueItem.c(2, i10, tile));
        }

        AnonymousClass1(ThreadUtil.MainThreadCallback mainThreadCallback) {
            this.val$callback = mainThreadCallback;
        }

        private void d(SyncQueueItem syncQueueItem) {
            this.mQueue.c(syncQueueItem);
            this.mMainThreadHandler.post(this.mMainThreadRunnable);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.MessageThreadUtil$2, reason: invalid class name */
    class AnonymousClass2 implements ThreadUtil.BackgroundCallback<T> {
        static final int LOAD_TILE = 3;
        static final int RECYCLE_TILE = 4;
        static final int REFRESH = 1;
        static final int UPDATE_RANGE = 2;
        final /* synthetic */ ThreadUtil.BackgroundCallback val$callback;
        final MessageQueue mQueue = new MessageQueue();
        private final Executor mExecutor = AsyncTask.THREAD_POOL_EXECUTOR;
        AtomicBoolean mBackgroundRunning = new AtomicBoolean(false);
        private Runnable mBackgroundRunnable = new Runnable() { // from class: androidx.recyclerview.widget.MessageThreadUtil.2.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    SyncQueueItem syncQueueItemA = AnonymousClass2.this.mQueue.a();
                    if (syncQueueItemA == null) {
                        AnonymousClass2.this.mBackgroundRunning.set(false);
                        return;
                    }
                    int i10 = syncQueueItemA.what;
                    if (i10 == 1) {
                        AnonymousClass2.this.mQueue.b(1);
                        AnonymousClass2.this.val$callback.c(syncQueueItemA.arg1);
                    } else if (i10 == 2) {
                        AnonymousClass2.this.mQueue.b(2);
                        AnonymousClass2.this.mQueue.b(3);
                        AnonymousClass2.this.val$callback.a(syncQueueItemA.arg1, syncQueueItemA.arg2, syncQueueItemA.arg3, syncQueueItemA.arg4, syncQueueItemA.arg5);
                    } else if (i10 == 3) {
                        AnonymousClass2.this.val$callback.b(syncQueueItemA.arg1, syncQueueItemA.arg2);
                    } else if (i10 != 4) {
                        Log.e("ThreadUtil", "Unsupported message, what=" + syncQueueItemA.what);
                    } else {
                        AnonymousClass2.this.val$callback.d((TileList.Tile) syncQueueItemA.data);
                    }
                }
            }
        };

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void a(int i10, int i11, int i12, int i13, int i14) {
            g(SyncQueueItem.b(2, i10, i11, i12, i13, i14, null));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void b(int i10, int i11) {
            f(SyncQueueItem.a(3, i10, i11));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void c(int i10) {
            g(SyncQueueItem.c(1, i10, null));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void d(TileList.Tile<T> tile) {
            f(SyncQueueItem.c(4, 0, tile));
        }

        AnonymousClass2(ThreadUtil.BackgroundCallback backgroundCallback) {
            this.val$callback = backgroundCallback;
        }

        private void e() {
            if (this.mBackgroundRunning.compareAndSet(false, true)) {
                this.mExecutor.execute(this.mBackgroundRunnable);
            }
        }

        private void f(SyncQueueItem syncQueueItem) {
            this.mQueue.c(syncQueueItem);
            e();
        }

        private void g(SyncQueueItem syncQueueItem) {
            this.mQueue.d(syncQueueItem);
            e();
        }
    }

    static class MessageQueue {
        private final Object mLock = new Object();
        private SyncQueueItem mRoot;

        SyncQueueItem a() {
            synchronized (this.mLock) {
                try {
                    SyncQueueItem syncQueueItem = this.mRoot;
                    if (syncQueueItem == null) {
                        return null;
                    }
                    this.mRoot = syncQueueItem.next;
                    return syncQueueItem;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        void b(int i10) {
            SyncQueueItem syncQueueItem;
            synchronized (this.mLock) {
                while (true) {
                    try {
                        syncQueueItem = this.mRoot;
                        if (syncQueueItem == null || syncQueueItem.what != i10) {
                            break;
                        }
                        this.mRoot = syncQueueItem.next;
                        syncQueueItem.d();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (syncQueueItem != null) {
                    SyncQueueItem syncQueueItem2 = syncQueueItem.next;
                    while (syncQueueItem2 != null) {
                        SyncQueueItem syncQueueItem3 = syncQueueItem2.next;
                        if (syncQueueItem2.what == i10) {
                            syncQueueItem.next = syncQueueItem3;
                            syncQueueItem2.d();
                        } else {
                            syncQueueItem = syncQueueItem2;
                        }
                        syncQueueItem2 = syncQueueItem3;
                    }
                }
            }
        }

        void c(SyncQueueItem syncQueueItem) {
            synchronized (this.mLock) {
                try {
                    SyncQueueItem syncQueueItem2 = this.mRoot;
                    if (syncQueueItem2 == null) {
                        this.mRoot = syncQueueItem;
                        return;
                    }
                    while (true) {
                        SyncQueueItem syncQueueItem3 = syncQueueItem2.next;
                        if (syncQueueItem3 == null) {
                            syncQueueItem2.next = syncQueueItem;
                            return;
                        }
                        syncQueueItem2 = syncQueueItem3;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        void d(SyncQueueItem syncQueueItem) {
            synchronized (this.mLock) {
                syncQueueItem.next = this.mRoot;
                this.mRoot = syncQueueItem;
            }
        }

        MessageQueue() {
        }
    }

    static class SyncQueueItem {
        private static SyncQueueItem sPool;
        private static final Object sPoolLock = new Object();
        public int arg1;
        public int arg2;
        public int arg3;
        public int arg4;
        public int arg5;
        public Object data;
        SyncQueueItem next;
        public int what;

        static SyncQueueItem a(int i10, int i11, int i12) {
            return b(i10, i11, i12, 0, 0, 0, null);
        }

        static SyncQueueItem c(int i10, int i11, Object obj) {
            return b(i10, i11, 0, 0, 0, 0, obj);
        }

        void d() {
            this.next = null;
            this.arg5 = 0;
            this.arg4 = 0;
            this.arg3 = 0;
            this.arg2 = 0;
            this.arg1 = 0;
            this.what = 0;
            this.data = null;
            synchronized (sPoolLock) {
                try {
                    SyncQueueItem syncQueueItem = sPool;
                    if (syncQueueItem != null) {
                        this.next = syncQueueItem;
                    }
                    sPool = this;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        static SyncQueueItem b(int i10, int i11, int i12, int i13, int i14, int i15, Object obj) {
            SyncQueueItem syncQueueItem;
            synchronized (sPoolLock) {
                try {
                    syncQueueItem = sPool;
                    if (syncQueueItem == null) {
                        syncQueueItem = new SyncQueueItem();
                    } else {
                        sPool = syncQueueItem.next;
                        syncQueueItem.next = null;
                    }
                    syncQueueItem.what = i10;
                    syncQueueItem.arg1 = i11;
                    syncQueueItem.arg2 = i12;
                    syncQueueItem.arg3 = i13;
                    syncQueueItem.arg4 = i14;
                    syncQueueItem.arg5 = i15;
                    syncQueueItem.data = obj;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return syncQueueItem;
        }

        SyncQueueItem() {
        }
    }

    @Override // androidx.recyclerview.widget.ThreadUtil
    public ThreadUtil.MainThreadCallback<T> a(ThreadUtil.MainThreadCallback<T> mainThreadCallback) {
        return new AnonymousClass1(mainThreadCallback);
    }

    @Override // androidx.recyclerview.widget.ThreadUtil
    public ThreadUtil.BackgroundCallback<T> b(ThreadUtil.BackgroundCallback<T> backgroundCallback) {
        return new AnonymousClass2(backgroundCallback);
    }

    MessageThreadUtil() {
    }
}
