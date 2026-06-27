package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.util.debug.AminoDebugService;
import com.narvii.util.debug.DebugService;
import com.narvii.util.debug.DebugServiceProvider;

/* loaded from: classes.dex */
public class AminoDebugServiceProvider extends DebugServiceProvider {
    @Override // com.narvii.util.debug.DebugServiceProvider, com.narvii.services.ServiceProvider
    public DebugService create(NVContext nVContext) {
        if (this.instance == null) {
            this.instance = new AminoDebugService(nVContext);
        }
        return this.instance;
    }
}
