package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes8.dex */
final class u0 {
    private final String itemSeparator;
    private final String queueName;
    private final SharedPreferences sharedPreferences;
    private final Executor syncExecutor;

    @GuardedBy
    @VisibleForTesting
    final ArrayDeque<String> internalQueue = new ArrayDeque<>();

    @GuardedBy
    private boolean bulkOperation = false;

    @GuardedBy
    private boolean b(boolean z6) {
        if (z6 && !this.bulkOperation) {
            i();
        }
        return z6;
    }

    @WorkerThread
    static u0 c(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        u0 u0Var = new u0(sharedPreferences, str, str2, executor);
        u0Var.d();
        return u0Var;
    }

    @WorkerThread
    private void d() {
        synchronized (this.internalQueue) {
            try {
                this.internalQueue.clear();
                String string = this.sharedPreferences.getString(this.queueName, "");
                if (!TextUtils.isEmpty(string) && string.contains(this.itemSeparator)) {
                    String[] strArrSplit = string.split(this.itemSeparator, -1);
                    if (strArrSplit.length == 0) {
                        Log.e(e.TAG, "Corrupted queue. Please check the queue contents and item separator provided");
                    }
                    for (String str : strArrSplit) {
                        if (!TextUtils.isEmpty(str)) {
                            this.internalQueue.add(str);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void h() {
        synchronized (this.internalQueue) {
            this.sharedPreferences.edit().putString(this.queueName, g()).commit();
        }
    }

    private void i() {
        this.syncExecutor.execute(new Runnable() { // from class: com.google.firebase.messaging.t0
            @Override // java.lang.Runnable
            public final void run() {
                this.f1591a.h();
            }
        });
    }

    @Nullable
    public String e() {
        String strPeek;
        synchronized (this.internalQueue) {
            strPeek = this.internalQueue.peek();
        }
        return strPeek;
    }

    public boolean f(@Nullable Object obj) {
        boolean zB;
        synchronized (this.internalQueue) {
            zB = b(this.internalQueue.remove(obj));
        }
        return zB;
    }

    @NonNull
    @GuardedBy
    public String g() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.internalQueue.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(this.itemSeparator);
        }
        return sb.toString();
    }

    private u0(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        this.sharedPreferences = sharedPreferences;
        this.queueName = str;
        this.itemSeparator = str2;
        this.syncExecutor = executor;
    }
}
