package com.narvii.sharedfolder;

import androidx.annotation.NonNull;
import com.narvii.app.NVActivity;
import com.narvii.model.Media;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class SharedPhotoFromPostCallback extends SharedPhotoPickCallback {
    @Override // com.narvii.sharedfolder.SharedPhotoPickCallback
    @NonNull
    protected void uploadMedia(HashMap<String, Object> map, final NVActivity nVActivity, final boolean z6, String str) {
        new SharedFolderHelper(nVActivity).addPhotosFromPosts(str, JacksonUtils.readListAs((String) map.get("mediaList"), Media.class), (String) map.get(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID), ((Integer) map.get(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE)).intValue(), new Callback<List<String>>() { // from class: com.narvii.sharedfolder.SharedPhotoFromPostCallback.1
            @Override // com.narvii.util.Callback
            public void call(List<String> list) {
                if (z6) {
                    nVActivity.finish();
                }
                if (list != null) {
                    NVActivity.addPendingForAttach(new AddAlbumDialogCallback(list));
                }
            }
        });
    }
}
