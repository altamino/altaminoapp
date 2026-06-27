package com.narvii.services.incubator;

import android.content.Context;
import android.content.Intent;
import com.narvii.app.NVContext;
import com.narvii.services.ServiceManager;

/* loaded from: classes.dex */
public class CommunityContext implements NVContext {
    public final int cid;
    private NVContext parent;
    public final ServiceManager serviceManager = new ServiceManager(this);

    public CommunityContext(NVContext nVContext, int i) {
        this.parent = nVContext;
        this.cid = i;
    }

    @Override // com.narvii.app.NVContext
    public <T> T getService(String str) {
        T t = (T) this.serviceManager.getService(str);
        return t == null ? (T) this.parent.getService(str) : t;
    }

    @Override // com.narvii.app.NVContext
    public Context getContext() {
        return this.parent.getContext();
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        return this.parent;
    }

    @Override // com.narvii.app.NVContext
    public long getContextId() {
        return this.cid | 545460846592L;
    }

    @Override // com.narvii.app.NVContext, android.content.Context
    public void startActivity(Intent intent) {
        this.parent.startActivity(intent);
    }
}
