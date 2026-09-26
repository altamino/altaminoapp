package com.narvii.sharedfolder;

import androidx.annotation.NonNull;
import com.narvii.app.NVActivity;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.media.MediaPickCallback;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public class SharedPhotoPickCallback implements MediaPickCallback {
    @Override // com.narvii.media.MediaPickCallback
    public void onPick(HashMap<String, Object> map, NVActivity nVActivity, boolean z6) {
        uploadMedia(map, nVActivity, z6, map != null ? (String) map.get("folderId") : null);
        if (nVActivity != null) {
            ((StatisticsService) nVActivity.getService("statistics")).event("Upload Shared Folder Media").param(EventConstants.CommentPost.TYPE, (String) map.get(MediaPickerFragment.PICK_SOURCE)).source((String) map.get(ExternalPostPreviewFragment.SOURCE)).userPropInc("Upload Shared Folder Media Total");
        }
    }

    @NonNull
    protected void uploadMedia(HashMap<String, Object> map, final NVActivity nVActivity, final boolean z6, String str) {
        SharedPhotoPostHelper sharedPhotoPostHelper = new SharedPhotoPostHelper(nVActivity);
        sharedPhotoPostHelper.showAddAlbumAlert = (map == null || !map.containsKey("showAddAlbumAlert")) ? true : ((Boolean) map.get("showAddAlbumAlert")).booleanValue();
        sharedPhotoPostHelper.showAddAlbumAlertImmediately = !z6;
        sharedPhotoPostHelper.uploadMedia(JacksonUtils.readListAs((String) map.get("mediaList"), Media.class), str, new Callback() { // from class: com.narvii.sharedfolder.SharedPhotoPickCallback.1
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (z6) {
                    nVActivity.finish();
                }
            }
        });
    }
}
