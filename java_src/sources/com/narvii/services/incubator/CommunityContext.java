package com.narvii.services.incubator;

import android.content.Context;
import android.content.Intent;
import com.narvii.app.NVContext;
import com.narvii.services.ServiceManager;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes9.dex */
public class CommunityContext implements NVContext {
    public final int cid;
    private NVContext parent;
    public final ServiceManager serviceManager = new ServiceManager(this);

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVContext
    public long getContextId() {
        return ((long) this.cid) | 545460846592L;
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        return this.parent;
    }

    @Override // com.narvii.app.NVContext
    public Context getContext() {
        return this.parent.getContext();
    }

    @Override // com.narvii.app.NVContext
    public <T> T getService(String str) {
        T t5 = (T) this.serviceManager.getService(str);
        return t5 == null ? (T) this.parent.getService(str) : t5;
    }

    @Override // com.narvii.app.NVContext
    public void startActivity(Intent intent) {
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.parent, intent);
    }

    public CommunityContext(NVContext nVContext, int i10) {
        this.parent = nVContext;
        this.cid = i10;
    }
}
