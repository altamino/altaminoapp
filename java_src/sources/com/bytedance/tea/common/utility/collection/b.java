package com.bytedance.tea.common.utility.collection;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes10.dex */
public class b extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WeakReference<a> f917a;

    public interface a {
        void a(Message message);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        a aVar = this.f917a.get();
        if (aVar == null || message == null) {
            return;
        }
        aVar.a(message);
    }

    public b(Looper looper, a aVar) {
        super(looper);
        this.f917a = new WeakReference<>(aVar);
    }
}
