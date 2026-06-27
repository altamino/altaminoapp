package com.narvii.services.incubator;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import java.io.File;

/* loaded from: classes.dex */
public class IncubatorCacheDirServiceProvider implements ServiceProvider<File> {
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
        int i = nVContext instanceof CommunityContext ? ((CommunityContext) nVContext).cid : 0;
        File file = new File(nVContext.getContext().getCacheDir(), "x" + i);
        file.mkdirs();
        return file;
    }
}
