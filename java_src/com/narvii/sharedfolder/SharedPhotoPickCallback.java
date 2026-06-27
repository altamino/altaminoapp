package com.narvii.sharedfolder;

import com.narvii.app.NVActivity;
import com.narvii.media.MediaPickCallback;
import com.narvii.model.Media;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class SharedPhotoPickCallback implements MediaPickCallback {
    @Override // com.narvii.media.MediaPickCallback
    public void onPick(HashMap<String, Object> map, NVActivity nVActivity, boolean z) {
        uploadMedia(map, nVActivity, z, map != null ? (String) map.get("folderId") : null);
    }

    protected void uploadMedia(HashMap<String, Object> map, final NVActivity nVActivity, final boolean z, String str) {
        SharedPhotoPostHelper sharedPhotoPostHelper = new SharedPhotoPostHelper(nVActivity);
        sharedPhotoPostHelper.showAddAlbumAlert = (map == null || !map.containsKey("showAddAlbumAlert")) ? true : ((Boolean) map.get("showAddAlbumAlert")).booleanValue();
        sharedPhotoPostHelper.showAddAlbumAlertImmediately = !z;
        sharedPhotoPostHelper.uploadMedia(JacksonUtils.readListAs((String) map.get("mediaList"), Media.class), str, new Callback() { // from class: com.narvii.sharedfolder.SharedPhotoPickCallback.1
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (z) {
                    nVActivity.finish();
                }
            }
        });
    }
}
