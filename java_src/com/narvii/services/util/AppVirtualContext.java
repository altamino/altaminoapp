package com.narvii.services.util;

import android.content.Context;
import android.view.ContextThemeWrapper;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;

/* loaded from: classes.dex */
public class AppVirtualContext extends ContextThemeWrapper implements NVContext {
    NVContext base;

    @Override // com.narvii.app.NVContext
    public Context getContext() {
        return this;
    }

    @Override // com.narvii.app.NVContext
    public long getContextId() {
        return 0L;
    }

    AppVirtualContext(NVContext nVContext, int i) {
        super(nVContext.getContext(), i);
        this.base = nVContext;
    }

    @Override // com.narvii.app.NVContext
    public <T> T getService(String str) {
        return (T) NVApplication.instance().getService(str);
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        return this.base;
    }
}
