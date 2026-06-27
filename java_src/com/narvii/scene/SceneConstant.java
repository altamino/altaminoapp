package com.narvii.scene;

import com.narvii.app.NVApplication;

/* loaded from: classes3.dex */
public class SceneConstant {
    public static final String COVER_IMAGE_FILE_NAME = "scene_cover_image";
    public static final String COVER_IMAGE_FOLDER = "coverImage_only_folder";
    public static final int COVER_IMAGE_HEIGHT = 1280;
    public static final int COVER_IMAGE_WIDTH = 720;
    public static final int FADE_DURATION = 4000;
    public static final int MAX_SCENE_LENGTH_MS = 15099;
    public static final int MAX_SCENE_LENGTH_MS_STANDALONE = 15000;
    public static final int MIN_SCENE_LENGHT_MS = 3000;
    public static final int MIN_VIDEO_CLIP_MS = 1000;
    public static final String PREVIEW_VIDEO_FOLDER = "preview_only_folder";
    public static final String SCENE_GLOBAL_FILE = "scene_global_file";
    public static final String SCENE_INTERMEDIATE_FILE = "scene_intermediate_file";

    public static int getMaxSceneLengthMs() {
        if (NVApplication.isBasedOnMeishe()) {
            return 15000;
        }
        return MAX_SCENE_LENGTH_MS;
    }
}
