package com.narvii.media;

import com.narvii.util.Log;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class MediaPickCallbackManager {
    public static final String GLOBAL_MEDIA_PICK = "global_media_pick";
    public static final String SHARED_PHOTO_PICK = "shared_photo_pick";
    public static final String SHARED_PHOTO_PICK_FROM_POST = "shared_photo_pick_from_post";
    public static final String SHARED_SCENE_MEDIA_PICK = "shared_scene_media_pick";
    public HashMap<String, MediaPickCallback> callbackArrayMap = new HashMap<>();

    public void registerCallback(String str, MediaPickCallback mediaPickCallback) {
        this.callbackArrayMap.put(str, mediaPickCallback);
    }

    public MediaPickCallback getCallback(String str) {
        MediaPickCallback mediaPickCallback = this.callbackArrayMap.get(str);
        if (mediaPickCallback == null) {
            Log.e(str + " callback is missing");
        }
        return mediaPickCallback;
    }
}
