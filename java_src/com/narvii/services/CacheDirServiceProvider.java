package com.narvii.services;

import com.narvii.app.NVContext;
import java.io.File;

/* loaded from: classes.dex */
public class CacheDirServiceProvider implements ServiceProvider<File> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, File file) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, File file) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, File file) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, File file) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, File file) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public File create(NVContext nVContext) {
        return nVContext.getContext().getCacheDir();
    }
}
