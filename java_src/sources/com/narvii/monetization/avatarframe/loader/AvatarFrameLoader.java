package com.narvii.monetization.avatarframe.loader;

import android.text.TextUtils;
import androidx.annotation.MainThread;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.monetization.avatarframe.AvatarFrameConfig;
import com.narvii.monetization.bubble.BubbleService;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.fileloader.FileLoader;
import com.narvii.util.fileloader.FileLoaderRequest;
import com.narvii.util.fileloader.IFileDownloadCallback;
import com.narvii.util.fileloader.INVFileCache;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class AvatarFrameLoader extends FileLoader {

    @NotNull
    private final ConcurrentHashMap<String, AvatarFrameConfig> cachedConfigMap;

    public interface AvatarFrameLoaderCallback {

        public static final class DefaultImpls {
            public static void onError(@NotNull AvatarFrameLoaderCallback avatarFrameLoaderCallback, @NotNull String url, @NotNull String tag, @Nullable Exception exc) {
                t.j(url, "url");
                t.j(tag, "tag");
            }

            public static void onProgressUpdate(@NotNull AvatarFrameLoaderCallback avatarFrameLoaderCallback, int i10, int i11, @NotNull String tag) {
                t.j(tag, "tag");
            }
        }

        void onError(@NotNull String str, @NotNull String str2, @Nullable Exception exc);

        void onPostExecute(@NotNull AvatarFrameConfig avatarFrameConfig, @NotNull String str);

        void onProgressUpdate(int i10, int i11, @NotNull String str);
    }

    /* JADX INFO: renamed from: com.narvii.monetization.avatarframe.loader.AvatarFrameLoader$load$1, reason: invalid class name */
    public static final class AnonymousClass1 implements IFileDownloadCallback {
        final /* synthetic */ User.IAvatarFrame $avatarFrame;
        final /* synthetic */ AvatarFrameLoaderCallback $callback;
        final /* synthetic */ Object $callbackTag;
        final /* synthetic */ String $tag;
        final /* synthetic */ AvatarFrameLoader this$0;

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        @Nullable
        public Object getTag() {
            return this.$callbackTag;
        }

        AnonymousClass1(AvatarFrameLoaderCallback avatarFrameLoaderCallback, String str, AvatarFrameLoader avatarFrameLoader, User.IAvatarFrame iAvatarFrame, Object obj) {
            this.$callback = avatarFrameLoaderCallback;
            this.$tag = str;
            this.this$0 = avatarFrameLoader;
            this.$avatarFrame = iAvatarFrame;
            this.$callbackTag = obj;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onError$lambda$2(AvatarFrameLoaderCallback callback, String url, String tag, Exception exc) {
            t.j(callback, "$callback");
            t.j(url, "$url");
            t.j(tag, "$tag");
            callback.onError(url, tag, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onPostExecute$lambda$1(AvatarFrameLoaderCallback callback, AvatarFrameConfig avatarFrameConfig, String tag) {
            t.j(callback, "$callback");
            t.j(tag, "$tag");
            t.g(avatarFrameConfig);
            callback.onPostExecute(avatarFrameConfig, tag);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onProgressUpdate$lambda$0(AvatarFrameLoaderCallback callback, int i10, int i11, String tag) {
            t.j(callback, "$callback");
            t.j(tag, "$tag");
            callback.onProgressUpdate(i10, i11, tag);
        }

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        public void onError(@NotNull final String url, @Nullable final Exception exc) {
            t.j(url, "url");
            final AvatarFrameLoaderCallback avatarFrameLoaderCallback = this.$callback;
            final String str = this.$tag;
            Utils.post(new Runnable() { // from class: com.narvii.monetization.avatarframe.loader.b
                @Override // java.lang.Runnable
                public final void run() {
                    AvatarFrameLoader.AnonymousClass1.onError$lambda$2(avatarFrameLoaderCallback, url, str, exc);
                }
            });
        }

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        public void onPostExecute(@NotNull File file) {
            t.j(file, "file");
            if (file.exists()) {
                File file2 = new File(file, BubbleService.BUBBLE_CONFIG_FILE_NAME);
                if (file2.exists()) {
                    try {
                        final AvatarFrameConfig avatarFrameConfig = (AvatarFrameConfig) JacksonUtils.DEFAULT_MAPPER.readValue(file2, AvatarFrameConfig.class);
                        avatarFrameConfig.setFileFolder(file);
                        ConcurrentHashMap concurrentHashMap = this.this$0.cachedConfigMap;
                        String frameId = this.$avatarFrame.getFrameId();
                        t.i(frameId, "getFrameId(...)");
                        AvatarFrameConfig avatarFrameConfigM1626clone = avatarFrameConfig.m1626clone();
                        t.i(avatarFrameConfigM1626clone, "clone(...)");
                        concurrentHashMap.put(frameId, avatarFrameConfigM1626clone);
                        final AvatarFrameLoaderCallback avatarFrameLoaderCallback = this.$callback;
                        final String str = this.$tag;
                        Utils.post(new Runnable() { // from class: com.narvii.monetization.avatarframe.loader.a
                            @Override // java.lang.Runnable
                            public final void run() {
                                AvatarFrameLoader.AnonymousClass1.onPostExecute$lambda$1(avatarFrameLoaderCallback, avatarFrameConfig, str);
                            }
                        });
                        return;
                    } catch (Exception unused) {
                        FileUtils.deleteFile(file2);
                    }
                }
            }
            String resourceUrl = this.$avatarFrame.getResourceUrl();
            t.i(resourceUrl, "getResourceUrl(...)");
            onError(resourceUrl, new FileNotFoundException());
        }

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        public void onProgressUpdate(final int i10, final int i11) {
            final AvatarFrameLoaderCallback avatarFrameLoaderCallback = this.$callback;
            final String str = this.$tag;
            Utils.post(new Runnable() { // from class: com.narvii.monetization.avatarframe.loader.c
                @Override // java.lang.Runnable
                public final void run() {
                    AvatarFrameLoader.AnonymousClass1.onProgressUpdate$lambda$0(avatarFrameLoaderCallback, i10, i11, str);
                }
            });
        }

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        @Nullable
        public Object getRealCallback() {
            return IFileDownloadCallback.DefaultImpls.getRealCallback(this);
        }
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean dispatchToMainThread() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarFrameLoader(@NotNull NVContext ctx) {
        super(ctx, "avatar_frame");
        t.j(ctx, "ctx");
        this.cachedConfigMap = new ConcurrentHashMap<>();
    }

    @MainThread
    public final void load(@NotNull User.IAvatarFrame avatarFrame, @NotNull String tag, @NotNull Object callbackTag, @NotNull AvatarFrameLoaderCallback callback) {
        t.j(avatarFrame, "avatarFrame");
        t.j(tag, "tag");
        t.j(callbackTag, "callbackTag");
        t.j(callback, "callback");
        AvatarFrameConfig avatarFrameConfig = this.cachedConfigMap.get(avatarFrame.getFrameId());
        if ((avatarFrameConfig != null ? avatarFrameConfig.fileFolder : null) != null && avatarFrameConfig.fileFolder.exists()) {
            File fileFolder = avatarFrameConfig.fileFolder;
            t.i(fileFolder, "fileFolder");
            if (validateCacheFile(fileFolder)) {
                callback.onPostExecute(avatarFrameConfig, tag);
                INVFileCache cache = getCache();
                if (cache != null) {
                    File fileFolder2 = avatarFrameConfig.fileFolder;
                    t.i(fileFolder2, "fileFolder");
                    cache.touch(fileFolder2);
                    return;
                }
                return;
            }
        }
        if (TextUtils.isEmpty(avatarFrame.getResourceUrl())) {
            callback.onError("Url cannot be null", tag, new IllegalArgumentException());
            return;
        }
        String resourceUrl = avatarFrame.getResourceUrl();
        t.i(resourceUrl, "getResourceUrl(...)");
        requireFile(new FileLoaderRequest.Companion.Builder(resourceUrl).applyZipExtract(true).rev(avatarFrame.getVersion()).build(), new AnonymousClass1(callback, tag, this, avatarFrame, callbackTag));
    }

    @Override // com.narvii.util.fileloader.FileLoader
    @Nullable
    public INVFileCache provideCache(@NotNull File dir) {
        t.j(dir, "dir");
        return new AvatarFrameCache(dir);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean validateCacheFile(@NotNull File cache) {
        boolean z6;
        boolean z10;
        t.j(cache, "cache");
        if (!cache.isDirectory()) {
            return true;
        }
        File[] fileArrListFiles = cache.listFiles();
        if (fileArrListFiles != null) {
            z6 = false;
            z10 = false;
            for (File file : fileArrListFiles) {
                t.g(file);
                String name = file.getName();
                t.i(name, "getName(...)");
                if (t.e(BubbleService.BUBBLE_CONFIG_FILE_NAME, name) && file.length() > 0) {
                    z6 = true;
                } else if (kotlin.text.t.v(name, ".webp", false, 2, null) || kotlin.text.t.v(name, ".gif", false, 2, null) || kotlin.text.t.v(name, ".png", false, 2, null) || kotlin.text.t.v(name, ".jpg", false, 2, null)) {
                    z10 = true;
                }
            }
        } else {
            z6 = false;
            z10 = false;
        }
        return z6 && z10;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public void onStop() {
        super.onStop();
        this.cachedConfigMap.clear();
    }
}
