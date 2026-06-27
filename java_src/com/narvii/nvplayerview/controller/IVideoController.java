package com.narvii.nvplayerview.controller;

import com.narvii.nvplayer.NVVideoException;

/* loaded from: classes3.dex */
public interface IVideoController {

    /* renamed from: com.narvii.nvplayerview.controller.IVideoController$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void $default$closeVoice(IVideoController iVideoController) {
        }

        public static void $default$destroy(IVideoController iVideoController) {
        }

        public static int $default$getProgress(IVideoController iVideoController) {
            return 0;
        }

        public static void $default$onActiveChanged(IVideoController iVideoController, boolean z) {
        }

        public static void $default$onOrientationChanged(IVideoController iVideoController, int i) {
        }

        public static void $default$onPlayerError(IVideoController iVideoController, NVVideoException nVVideoException) {
        }

        public static void $default$onPlayerStateChanged(IVideoController iVideoController, boolean z, int i) {
        }

        public static void $default$onPressBack(IVideoController iVideoController) {
        }

        public static void $default$onRenderedFirstFrame(IVideoController iVideoController) {
        }

        public static void $default$openVoice(IVideoController iVideoController) {
        }

        public static void $default$pause(IVideoController iVideoController) {
        }

        public static void $default$resume(IVideoController iVideoController) {
        }

        public static void $default$setAnimating(IVideoController iVideoController, boolean z) {
        }

        public static void $default$setCurrentTime(IVideoController iVideoController) {
        }

        public static void $default$setOptionMenu(IVideoController iVideoController) {
        }

        public static void $default$setProgress(IVideoController iVideoController, int i) {
        }

        public static void $default$setTotalTime(IVideoController iVideoController) {
        }

        public static void $default$setUIVisibility(IVideoController iVideoController, int i) {
        }

        public static void $default$start(IVideoController iVideoController) {
        }
    }

    void closeVoice();

    void destroy();

    int getLayoutId();

    int getProgress();

    void init();

    void onActiveChanged(boolean z);

    void onOrientationChanged(int i);

    void onPlayerError(NVVideoException nVVideoException);

    void onPlayerStateChanged(boolean z, int i);

    void onPressBack();

    void onRenderedFirstFrame();

    void openVoice();

    void pause();

    void resume();

    void setAnimating(boolean z);

    void setCurrentTime();

    void setOptionMenu();

    void setProgress(int i);

    void setTotalTime();

    void setUIVisibility(int i);

    void start();
}
