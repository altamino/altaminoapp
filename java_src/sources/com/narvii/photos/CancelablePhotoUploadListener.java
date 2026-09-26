package com.narvii.photos;

/* JADX INFO: loaded from: classes10.dex */
public class CancelablePhotoUploadListener implements PhotoUploadListener {
    protected boolean canceled;

    @Override // com.narvii.photos.PhotoUploadListener
    public void onFail(String str, int i10, String str2, Throwable th) {
    }

    @Override // com.narvii.photos.PhotoUploadListener
    public void onFinish(String str, String str2) {
    }

    @Override // com.narvii.photos.PhotoUploadListener
    public void onProgress(String str, int i10, int i11) {
    }

    public void setCanceled(boolean z6) {
        this.canceled = z6;
    }
}
