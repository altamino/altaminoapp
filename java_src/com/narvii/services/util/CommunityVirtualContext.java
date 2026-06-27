package com.narvii.services.util;

import android.content.Context;
import android.view.ContextThemeWrapper;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;

/* loaded from: classes.dex */
public class CommunityVirtualContext extends ContextThemeWrapper implements NVContext {
    NVContext base;
    int cid;

    @Override // com.narvii.app.NVContext
    public Context getContext() {
        return this;
    }

    @Override // com.narvii.app.NVContext
    public long getContextId() {
        return 0L;
    }

    public CommunityVirtualContext(NVContext nVContext, int i, int i2) {
        super(nVContext.getContext(), i);
        this.base = nVContext;
        this.cid = i2;
    }

    @Override // com.narvii.app.NVContext
    public <T> T getService(String str) {
        return (T) NVApplication.instance().getService(this.cid, str);
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        return this.base;
    }
}
