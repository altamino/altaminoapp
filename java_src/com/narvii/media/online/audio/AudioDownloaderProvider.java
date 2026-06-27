package com.narvii.media.online.audio;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import com.narvii.util.fileloader.FileLoader;

/* loaded from: classes.dex */
public class AudioDownloaderProvider implements ServiceProvider<FileLoader> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public FileLoader create(NVContext nVContext) {
        return new AudioDownloader(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, FileLoader fileLoader) {
        fileLoader.onStart();
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, FileLoader fileLoader) {
        fileLoader.onResume();
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, FileLoader fileLoader) {
        fileLoader.onPause();
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, FileLoader fileLoader) {
        fileLoader.onStop();
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, FileLoader fileLoader) {
        fileLoader.onDestroy();
    }
}
