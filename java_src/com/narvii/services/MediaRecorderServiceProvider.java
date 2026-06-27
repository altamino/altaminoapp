package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.media.MediaRecordManager;

/* loaded from: classes.dex */
public class MediaRecorderServiceProvider implements ServiceProvider<MediaRecordManager> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, MediaRecordManager mediaRecordManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, MediaRecordManager mediaRecordManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, MediaRecordManager mediaRecordManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, MediaRecordManager mediaRecordManager) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public MediaRecordManager create(NVContext nVContext) {
        return new MediaRecordManager(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, MediaRecordManager mediaRecordManager) {
        mediaRecordManager.deleteRecordDir();
    }
}
