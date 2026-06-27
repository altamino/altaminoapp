package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Utils;
import java.io.File;

/* loaded from: classes.dex */
public class PhotoServiceProvider implements ServiceProvider<PhotoManager> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, PhotoManager photoManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, PhotoManager photoManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, PhotoManager photoManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, PhotoManager photoManager) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public PhotoManager create(NVContext nVContext) {
        return new PhotoManager(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, PhotoManager photoManager) {
        Utils.deleteDir(new File(nVContext.getContext().getFilesDir(), "photo"));
        CommentPostActivity.clearMemoryDrafts();
    }
}
