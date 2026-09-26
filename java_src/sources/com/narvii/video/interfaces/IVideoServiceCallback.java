package com.narvii.video.interfaces;

import android.graphics.Bitmap;
import g7.d;
import java.io.File;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public interface IVideoServiceCallback {

    public static final class DefaultImpls {
        public static void onActionCancelled(@NotNull IVideoServiceCallback iVideoServiceCallback) {
        }

        public static void onActionFailed(@NotNull IVideoServiceCallback iVideoServiceCallback, @Nullable Exception exc) {
        }

        public static void onActionStarted(@NotNull IVideoServiceCallback iVideoServiceCallback) {
        }

        public static void onExecutingTaskChanged(@NotNull IVideoServiceCallback iVideoServiceCallback, @NotNull d newTask) {
            t.j(newTask, "newTask");
        }

        public static void onFrameBitmapLoaded(@NotNull IVideoServiceCallback iVideoServiceCallback, int i10, @Nullable Bitmap bitmap) {
        }

        public static void onFramePicturesLoaded(@NotNull IVideoServiceCallback iVideoServiceCallback, int i10, @Nullable File file) {
        }

        public static void onProgress(@NotNull IVideoServiceCallback iVideoServiceCallback, float f, @Nullable String str) {
        }

        public static void onVideoProcessed(@NotNull IVideoServiceCallback iVideoServiceCallback, @NotNull String path) {
            t.j(path, "path");
        }
    }

    void onActionCancelled();

    void onActionFailed(@Nullable Exception exc);

    void onActionStarted();

    void onExecutingTaskChanged(@NotNull d dVar);

    void onFrameBitmapLoaded(int i10, @Nullable Bitmap bitmap);

    void onFramePicturesLoaded(int i10, @Nullable File file);

    void onProgress(float f, @Nullable String str);

    void onVideoProcessed(@NotNull String str);
}
