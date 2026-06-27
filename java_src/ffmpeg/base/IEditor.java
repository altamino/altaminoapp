package ffmpeg.base;

import android.content.Context;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.model.StreamInfo;
import java.io.File;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IEditor.kt */
/* loaded from: classes4.dex */
public interface IEditor {

    /* compiled from: IEditor.kt */
    public static final class DefaultImpls {
        public static void abortAnimatedStickerConvertTask(IEditor iEditor, StickerInfoPack stickerInfo) {
            Intrinsics.checkParameterIsNotNull(stickerInfo, "stickerInfo");
        }

        public static void abortAnimatedStickerConvertTasks(IEditor iEditor) {
        }

        public static File getStickerCopiedSrcFile(IEditor iEditor, StickerInfoPack stickerInfo) {
            Intrinsics.checkParameterIsNotNull(stickerInfo, "stickerInfo");
            return null;
        }

        public static File getTargetStickerInstallFile(IEditor iEditor, StickerInfoPack stickerInfo) {
            Intrinsics.checkParameterIsNotNull(stickerInfo, "stickerInfo");
            return null;
        }

        public static boolean hasStickerTemplatedInstalled(IEditor iEditor, StickerInfoPack stickerInfoPack) {
            return true;
        }

        public static void installSticker(IEditor iEditor, Context context, StickerInfoPack stickerInfo, boolean z, ExecutorService executorService, IEditorBaseCallback iEditorBaseCallback) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(stickerInfo, "stickerInfo");
        }

        public static void onLocalStickerCacheCleared(IEditor iEditor) {
        }
    }

    void abort(MediaEditingConfig mediaEditingConfig);

    void abortAll(boolean z);

    void abortAnimatedStickerConvertTask(StickerInfoPack stickerInfoPack);

    void abortAnimatedStickerConvertTasks();

    void execute(MediaEditingConfig mediaEditingConfig, ExecutorService executorService, IEditorExecuteCallback iEditorExecuteCallback);

    StreamInfo fetchStreamingInfo(String str);

    File getStickerCopiedSrcFile(StickerInfoPack stickerInfoPack);

    File getTargetStickerInstallFile(StickerInfoPack stickerInfoPack);

    boolean hasStickerTemplatedInstalled(StickerInfoPack stickerInfoPack);

    void installSticker(Context context, StickerInfoPack stickerInfoPack, boolean z, ExecutorService executorService, IEditorBaseCallback iEditorBaseCallback);

    void onLocalStickerCacheCleared();
}
