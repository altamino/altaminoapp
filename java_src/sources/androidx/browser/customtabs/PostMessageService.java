package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class PostMessageService extends Service {
    private android.support.customtabs.d.a mBinder = new android.support.customtabs.d.a() { // from class: androidx.browser.customtabs.PostMessageService.1
        @Override // android.support.customtabs.d
        public void f1(@NonNull android.support.customtabs.a aVar, @NonNull String str, @Nullable Bundle bundle) throws RemoteException {
            aVar.p1(str, bundle);
        }

        @Override // android.support.customtabs.d
        public void u(@NonNull android.support.customtabs.a aVar, @Nullable Bundle bundle) throws RemoteException {
            aVar.r1(bundle);
        }
    };

    @Override // android.app.Service
    @NonNull
    public IBinder onBind(@Nullable Intent intent) {
        return this.mBinder;
    }
}
