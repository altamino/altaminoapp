package com.coloros.ocs.base.common.api;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.coloros.ocs.base.common.AuthResult;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes5.dex */
public class k implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f959a = "k";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Lock f960b = new ReentrantLock();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f961c;
    private a.e d;

    @Override // com.coloros.ocs.base.common.api.d
    public void a() {
        c1.a.c(f959a, "connect()");
        this.f960b.lock();
        try {
            try {
                a.e eVar = this.d;
                if (eVar != null) {
                    eVar.a();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            this.f960b.unlock();
        }
    }

    @Override // com.coloros.ocs.base.common.api.d
    public <T> void b(g<T> gVar) {
        a.e eVar = this.d;
        if (eVar != null) {
            eVar.b(gVar);
        }
    }

    @Override // com.coloros.ocs.base.common.api.d
    public void c(f fVar, @Nullable Handler handler) {
        a.e eVar = this.d;
        if (eVar != null) {
            eVar.c(fVar, handler);
        }
    }

    @Override // com.coloros.ocs.base.common.api.d
    public void d(l lVar) {
        a.e eVar = this.d;
        if (eVar != null) {
            eVar.d(lVar);
        }
    }

    @Override // com.coloros.ocs.base.common.api.d
    public void disconnect() {
        this.f960b.lock();
        try {
            try {
                a.e eVar = this.d;
                if (eVar != null && eVar.isConnected()) {
                    this.d.disconnect();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            this.f960b.unlock();
        }
    }

    @Override // com.coloros.ocs.base.common.api.d
    public AuthResult e() {
        a.e eVar = this.d;
        if (eVar != null) {
            return eVar.e();
        }
        return null;
    }

    @Override // com.coloros.ocs.base.common.api.d
    public boolean isConnected() {
        a.e eVar = this.d;
        if (eVar != null) {
            return eVar.isConnected();
        }
        return false;
    }

    public k(Context context, a aVar, a.c cVar, f1.a aVar2) {
        c1.a.f(f959a, "init color client impl");
        this.f961c = aVar;
        this.d = aVar.a().a(context, Looper.getMainLooper(), aVar2, cVar);
    }
}
