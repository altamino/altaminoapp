package com.narvii.photos;

/* loaded from: classes3.dex */
public class CancelablePhotoUploadListener implements PhotoUploadListener {
    protected boolean canceled;

    @Override // com.narvii.photos.PhotoUploadListener
    public void onFail(String str, int i, String str2, Throwable th) {
    }

    @Override // com.narvii.photos.PhotoUploadListener
    public void onFinish(String str, String str2) {
    }

    @Override // com.narvii.photos.PhotoUploadListener
    public void onProgress(String str, int i, int i2) {
    }

    public void setCanceled(boolean z) {
        this.canceled = z;
    }
}
