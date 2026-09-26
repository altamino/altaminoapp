package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes7.dex */
class k {
    private final Executor mExecutor = Executors.newSingleThreadExecutor();

    private static class a implements Callable<SharedPreferences> {
        private final Context mContext;
        private final b mListener;
        private final String mPrefsName;

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedPreferences call() {
            SharedPreferences sharedPreferences = this.mContext.getSharedPreferences(this.mPrefsName, 0);
            b bVar = this.mListener;
            if (bVar != null) {
                bVar.a(sharedPreferences);
            }
            return sharedPreferences;
        }

        public a(Context context, String str, b bVar) {
            this.mContext = context;
            this.mPrefsName = str;
            this.mListener = bVar;
        }
    }

    interface b {
        void a(SharedPreferences sharedPreferences);
    }

    public Future<SharedPreferences> a(Context context, String str, b bVar) {
        FutureTask futureTask = new FutureTask(new a(context, str, bVar));
        this.mExecutor.execute(futureTask);
        return futureTask;
    }
}
