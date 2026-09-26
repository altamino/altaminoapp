package com.coloros.ocs.base.common.api;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.coloros.ocs.base.common.AuthResult;

/* JADX INFO: loaded from: classes5.dex */
public interface d {
    void a();

    <T> void b(g<T> gVar);

    void c(f fVar, @Nullable Handler handler);

    void d(l lVar);

    void disconnect();

    AuthResult e();

    boolean isConnected();
}
