package g7;

import android.content.Context;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.model.StreamInfo;
import java.io.File;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public interface a {

    /* JADX INFO: renamed from: g7.a$a, reason: collision with other inner class name */
    public static final class C0380a {
        public static void a(@NotNull a aVar, @NotNull StickerInfoPack stickerInfo) {
            t.j(stickerInfo, "stickerInfo");
        }

        public static void b(@NotNull a aVar) {
        }

        @Nullable
        public static File c(@NotNull a aVar, @NotNull StickerInfoPack stickerInfo) {
            t.j(stickerInfo, "stickerInfo");
            return null;
        }

        @Nullable
        public static File d(@NotNull a aVar, @NotNull StickerInfoPack stickerInfo) {
            t.j(stickerInfo, "stickerInfo");
            return null;
        }

        public static boolean e(@NotNull a aVar, @Nullable StickerInfoPack stickerInfoPack) {
            return true;
        }

        public static void f(@NotNull a aVar, @NotNull Context context, @NotNull StickerInfoPack stickerInfo, boolean z6, @Nullable ExecutorService executorService, @Nullable b bVar) {
            t.j(context, "context");
            t.j(stickerInfo, "stickerInfo");
        }

        public static void g(@NotNull a aVar) {
        }
    }

    void abort(@NotNull d dVar);

    void abortAll(boolean z6);

    void abortAnimatedStickerConvertTask(@NotNull StickerInfoPack stickerInfoPack);

    void abortAnimatedStickerConvertTasks();

    void execute(@NotNull d dVar, @Nullable ExecutorService executorService, @Nullable c cVar);

    @NotNull
    StreamInfo fetchStreamingInfo(@NotNull String str);

    @Nullable
    File getStickerCopiedSrcFile(@NotNull StickerInfoPack stickerInfoPack);

    @Nullable
    File getTargetStickerInstallFile(@NotNull StickerInfoPack stickerInfoPack);

    boolean hasStickerTemplatedInstalled(@Nullable StickerInfoPack stickerInfoPack);

    void installSticker(@NotNull Context context, @NotNull StickerInfoPack stickerInfoPack, boolean z6, @Nullable ExecutorService executorService, @Nullable b bVar);

    void onLocalStickerCacheCleared();
}
