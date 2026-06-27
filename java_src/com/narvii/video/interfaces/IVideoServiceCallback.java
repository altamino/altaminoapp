package com.narvii.video.interfaces;

import android.graphics.Bitmap;
import ffmpeg.base.MediaEditingConfig;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IVideoServiceCallback.kt */
/* loaded from: classes3.dex */
public interface IVideoServiceCallback {

    /* compiled from: IVideoServiceCallback.kt */
    public static final class DefaultImpls {
        public static void onActionCancelled(IVideoServiceCallback iVideoServiceCallback) {
        }

        public static void onActionFailed(IVideoServiceCallback iVideoServiceCallback, Exception exc) {
        }

        public static void onActionStarted(IVideoServiceCallback iVideoServiceCallback) {
        }

        public static void onExecutingTaskChanged(IVideoServiceCallback iVideoServiceCallback, MediaEditingConfig newTask) {
            Intrinsics.checkParameterIsNotNull(newTask, "newTask");
        }

        public static void onFrameBitmapLoaded(IVideoServiceCallback iVideoServiceCallback, int i, Bitmap bitmap) {
        }

        public static void onFramePicturesLoaded(IVideoServiceCallback iVideoServiceCallback, int i, File file) {
        }

        public static void onProgress(IVideoServiceCallback iVideoServiceCallback, float f, String str) {
        }

        public static void onVideoProcessed(IVideoServiceCallback iVideoServiceCallback, String path) {
            Intrinsics.checkParameterIsNotNull(path, "path");
        }
    }

    void onActionCancelled();

    void onActionFailed(Exception exc);

    void onActionStarted();

    void onExecutingTaskChanged(MediaEditingConfig mediaEditingConfig);

    void onFrameBitmapLoaded(int i, Bitmap bitmap);

    void onFramePicturesLoaded(int i, File file);

    void onProgress(float f, String str);

    void onVideoProcessed(String str);
}
