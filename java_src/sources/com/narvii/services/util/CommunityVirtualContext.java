package com.narvii.services.util;

import android.content.Context;
import android.view.ContextThemeWrapper;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;

/* JADX INFO: loaded from: classes7.dex */
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

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        return this.base;
    }

    public CommunityVirtualContext(NVContext nVContext, int i10, int i11) {
        super(nVContext.getContext(), i10);
        this.base = nVContext;
        this.cid = i11;
    }

    @Override // com.narvii.app.NVContext
    public <T> T getService(String str) {
        return (T) NVApplication.instance().getService(this.cid, str);
    }
}
