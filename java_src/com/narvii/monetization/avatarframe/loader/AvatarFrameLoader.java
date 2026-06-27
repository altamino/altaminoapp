package com.narvii.monetization.avatarframe.loader;

import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.monetization.avatarframe.AvatarFrameConfig;
import com.narvii.monetization.avatarframe.loader.AvatarFrameLoader;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: AvatarFrameLoader.kt */
/* loaded from: classes3.dex */
public final class AvatarFrameLoader extends FileLoader {
    private final ConcurrentHashMap<String, AvatarFrameConfig> cachedConfigMap;

    /* compiled from: AvatarFrameLoader.kt */
    public interface AvatarFrameLoaderCallback {

        /* compiled from: AvatarFrameLoader.kt */
        public static final class DefaultImpls {
            public static void onError(AvatarFrameLoaderCallback avatarFrameLoaderCallback, String url, String tag, Exception exc) {
                Intrinsics.checkParameterIsNotNull(url, "url");
                Intrinsics.checkParameterIsNotNull(tag, "tag");
            }

            public static void onProgressUpdate(AvatarFrameLoaderCallback avatarFrameLoaderCallback, int i, int i2, String tag) {
                Intrinsics.checkParameterIsNotNull(tag, "tag");
            }
        }

        void onError(String str, String str2, Exception exc);

        void onPostExecute(AvatarFrameConfig avatarFrameConfig, String str);

        void onProgressUpdate(int i, int i2, String str);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean dispatchToMainThread() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarFrameLoader(NVContext ctx) {
        super(ctx, "avatar_frame");
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.cachedConfigMap = new ConcurrentHashMap<>();
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public INVFileCache provideCache(File dir) {
        Intrinsics.checkParameterIsNotNull(dir, "dir");
        return new AvatarFrameCache(dir);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean validateCacheFile(File cache) {
        boolean z;
        boolean z2;
        Intrinsics.checkParameterIsNotNull(cache, "cache");
        if (!cache.isDirectory()) {
            return true;
        }
        File[] fileArrListFiles = cache.listFiles();
        if (fileArrListFiles != null) {
            z = false;
            z2 = false;
            for (File file : fileArrListFiles) {
                String name = file.getName();
                Intrinsics.checkExpressionValueIsNotNull(name, "file.name");
                if (Intrinsics.areEqual(BubbleService.BUBBLE_CONFIG_FILE_NAME, name) && file.length() > 0) {
                    z = true;
                } else if (StringsKt__StringsJVMKt.endsWith$default(name, ".webp", false, 2, null) || StringsKt__StringsJVMKt.endsWith$default(name, ".gif", false, 2, null) || StringsKt__StringsJVMKt.endsWith$default(name, ".png", false, 2, null) || StringsKt__StringsJVMKt.endsWith$default(name, ".jpg", false, 2, null)) {
                    z2 = true;
                }
            }
        } else {
            z = false;
            z2 = false;
        }
        return z && z2;
    }

    public final void load(User.IAvatarFrame avatarFrame, String tag, Object callbackTag, AvatarFrameLoaderCallback callback) {
        Intrinsics.checkParameterIsNotNull(avatarFrame, "avatarFrame");
        Intrinsics.checkParameterIsNotNull(tag, "tag");
        Intrinsics.checkParameterIsNotNull(callbackTag, "callbackTag");
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        AvatarFrameConfig avatarFrameConfig = this.cachedConfigMap.get(avatarFrame.getFrameId());
        if ((avatarFrameConfig != null ? avatarFrameConfig.fileFolder : null) != null && avatarFrameConfig.fileFolder.exists()) {
            File file = avatarFrameConfig.fileFolder;
            Intrinsics.checkExpressionValueIsNotNull(file, "cachedConfig.fileFolder");
            if (validateCacheFile(file)) {
                callback.onPostExecute(avatarFrameConfig, tag);
                INVFileCache cache = getCache();
                if (cache != null) {
                    File file2 = avatarFrameConfig.fileFolder;
                    Intrinsics.checkExpressionValueIsNotNull(file2, "cachedConfig.fileFolder");
                    cache.touch(file2);
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
        Intrinsics.checkExpressionValueIsNotNull(resourceUrl, "avatarFrame.resourceUrl");
        requireFile(new FileLoaderRequest.Companion.Builder(resourceUrl).applyZipExtract(true).rev(avatarFrame.getVersion()).build(), new AnonymousClass1(callback, tag, avatarFrame, callbackTag));
    }

    /* compiled from: AvatarFrameLoader.kt */
    /* renamed from: com.narvii.monetization.avatarframe.loader.AvatarFrameLoader$load$1, reason: invalid class name */
    public static final class AnonymousClass1 implements IFileDownloadCallback {
        final /* synthetic */ User.IAvatarFrame $avatarFrame;
        final /* synthetic */ AvatarFrameLoaderCallback $callback;
        final /* synthetic */ Object $callbackTag;
        final /* synthetic */ String $tag;

        AnonymousClass1(AvatarFrameLoaderCallback avatarFrameLoaderCallback, String str, User.IAvatarFrame iAvatarFrame, Object obj) {
            this.$callback = avatarFrameLoaderCallback;
            this.$tag = str;
            this.$avatarFrame = iAvatarFrame;
            this.$callbackTag = obj;
        }

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        public Object getRealCallback() {
            return IFileDownloadCallback.DefaultImpls.getRealCallback(this);
        }

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        public void onProgressUpdate(final int i, final int i2) {
            Utils.post(new Runnable() { // from class: com.narvii.monetization.avatarframe.loader.AvatarFrameLoader$load$1$onProgressUpdate$1
                @Override // java.lang.Runnable
                public final void run() {
                    AvatarFrameLoader.AnonymousClass1 anonymousClass1 = this.this$0;
                    anonymousClass1.$callback.onProgressUpdate(i, i2, anonymousClass1.$tag);
                }
            });
        }

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        public void onPostExecute(File file) {
            Intrinsics.checkParameterIsNotNull(file, "file");
            if (file.exists()) {
                File file2 = new File(file, BubbleService.BUBBLE_CONFIG_FILE_NAME);
                if (file2.exists()) {
                    try {
                        final AvatarFrameConfig avatarFrameConfig = (AvatarFrameConfig) JacksonUtils.DEFAULT_MAPPER.readValue(file2, AvatarFrameConfig.class);
                        avatarFrameConfig.setFileFolder(file);
                        ConcurrentHashMap concurrentHashMap = AvatarFrameLoader.this.cachedConfigMap;
                        String frameId = this.$avatarFrame.getFrameId();
                        Intrinsics.checkExpressionValueIsNotNull(frameId, "avatarFrame.frameId");
                        AvatarFrameConfig avatarFrameConfigM50clone = avatarFrameConfig.m50clone();
                        Intrinsics.checkExpressionValueIsNotNull(avatarFrameConfigM50clone, "config.clone()");
                        concurrentHashMap.put(frameId, avatarFrameConfigM50clone);
                        Utils.post(new Runnable() { // from class: com.narvii.monetization.avatarframe.loader.AvatarFrameLoader$load$1$onPostExecute$1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AvatarFrameLoader.AvatarFrameLoaderCallback avatarFrameLoaderCallback = this.this$0.$callback;
                                AvatarFrameConfig config = avatarFrameConfig;
                                Intrinsics.checkExpressionValueIsNotNull(config, "config");
                                avatarFrameLoaderCallback.onPostExecute(config, this.this$0.$tag);
                            }
                        });
                        return;
                    } catch (Exception unused) {
                        FileUtils.deleteFile(file2);
                    }
                }
            }
            String resourceUrl = this.$avatarFrame.getResourceUrl();
            Intrinsics.checkExpressionValueIsNotNull(resourceUrl, "avatarFrame.resourceUrl");
            onError(resourceUrl, new FileNotFoundException());
        }

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        public void onError(final String url, final Exception exc) {
            Intrinsics.checkParameterIsNotNull(url, "url");
            Utils.post(new Runnable() { // from class: com.narvii.monetization.avatarframe.loader.AvatarFrameLoader$load$1$onError$1
                @Override // java.lang.Runnable
                public final void run() {
                    AvatarFrameLoader.AnonymousClass1 anonymousClass1 = this.this$0;
                    anonymousClass1.$callback.onError(url, anonymousClass1.$tag, exc);
                }
            });
        }

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        public Object getTag() {
            return this.$callbackTag;
        }
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public void onStop() {
        super.onStop();
        this.cachedConfigMap.clear();
    }
}
