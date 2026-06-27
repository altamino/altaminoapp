package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.master.home.profile.GlobalProfileMediaPickCallback;
import com.narvii.media.MediaPickCallbackManager;
import com.narvii.scene.callback.SceneMediaPickerCallback;
import com.narvii.sharedfolder.SharedPhotoFromPostCallback;
import com.narvii.sharedfolder.SharedPhotoPickCallback;

/* loaded from: classes.dex */
public class MediaPickCallbackServiceProvider implements ServiceProvider<MediaPickCallbackManager> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, MediaPickCallbackManager mediaPickCallbackManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, MediaPickCallbackManager mediaPickCallbackManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, MediaPickCallbackManager mediaPickCallbackManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, MediaPickCallbackManager mediaPickCallbackManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, MediaPickCallbackManager mediaPickCallbackManager) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public MediaPickCallbackManager create(NVContext nVContext) {
        MediaPickCallbackManager mediaPickCallbackManager = new MediaPickCallbackManager();
        mediaPickCallbackManager.registerCallback(MediaPickCallbackManager.SHARED_PHOTO_PICK, new SharedPhotoPickCallback());
        mediaPickCallbackManager.registerCallback(MediaPickCallbackManager.SHARED_PHOTO_PICK_FROM_POST, new SharedPhotoFromPostCallback());
        mediaPickCallbackManager.registerCallback(MediaPickCallbackManager.SHARED_SCENE_MEDIA_PICK, new SceneMediaPickerCallback());
        mediaPickCallbackManager.registerCallback(MediaPickCallbackManager.GLOBAL_MEDIA_PICK, new GlobalProfileMediaPickCallback());
        return mediaPickCallbackManager;
    }
}
