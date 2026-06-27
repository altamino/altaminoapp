package com.narvii.scene.template;

import android.content.Context;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.scene.template.SceneTemplateGeneratorFragment;
import com.narvii.scene.template.SceneTemplateImageDownloadHelper;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.fileloader.DiskDaemonHelper;
import com.narvii.util.fileloader.FileLoader;
import com.narvii.util.fileloader.FileLoaderRequest;
import com.narvii.util.fileloader.IFileDownloadCallback;
import com.narvii.util.fileloader.INVFileCache;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: SceneTemplateImageDownloadHelper.kt */
/* loaded from: classes3.dex */
public final class SceneTemplateImageDownloadHelper {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateImageDownloadHelper.class), "fileLoader", "getFileLoader()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateImageDownloadHelper.class), "callbackMap", "getCallbackMap()Ljava/util/Map;"))};
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "SceneTemplateHelper";
    private final Lazy callbackMap$delegate;
    private final NVContext ctx;
    private final File draftFile;
    private final Lazy fileLoader$delegate;
    private OnDownloadListener onDownloadListener;
    private String path;
    private final PhotoManager photo;

    /* compiled from: SceneTemplateImageDownloadHelper.kt */
    public interface OnDownloadListener {
        void onDownloadError(String str, Exception exc, SceneTemplateGeneratorFragment.Entry entry);

        void onDownloadProgress(int i, int i2, SceneTemplateGeneratorFragment.Entry entry);

        void onDownloadSuccess(SceneTemplateGeneratorFragment.Entry entry);
    }

    public final Map<String, IFileDownloadCallback> getCallbackMap() {
        Lazy lazy = this.callbackMap$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (Map) lazy.getValue();
    }

    public final SceneFileLoader getFileLoader() {
        Lazy lazy = this.fileLoader$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (SceneFileLoader) lazy.getValue();
    }

    public SceneTemplateImageDownloadHelper(NVContext ctx, File draftFile) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(draftFile, "draftFile");
        this.ctx = ctx;
        this.draftFile = draftFile;
        Object service = this.ctx.getService("photo");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"photo\")");
        this.photo = (PhotoManager) service;
        this.path = "storyTemplate";
        this.fileLoader$delegate = LazyKt__LazyJVMKt.lazy(new Function0<SceneFileLoader>() { // from class: com.narvii.scene.template.SceneTemplateImageDownloadHelper$fileLoader$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SceneTemplateImageDownloadHelper.SceneFileLoader invoke() {
                SceneTemplateImageDownloadHelper sceneTemplateImageDownloadHelper = this.this$0;
                return new SceneTemplateImageDownloadHelper.SceneFileLoader(sceneTemplateImageDownloadHelper, sceneTemplateImageDownloadHelper.ctx, this.this$0.getPath());
            }
        });
        this.callbackMap$delegate = LazyKt__LazyJVMKt.lazy(new Function0<Map<String, IFileDownloadCallback>>() { // from class: com.narvii.scene.template.SceneTemplateImageDownloadHelper$callbackMap$2
            @Override // kotlin.jvm.functions.Function0
            public final Map<String, IFileDownloadCallback> invoke() {
                return new LinkedHashMap();
            }
        });
    }

    /* compiled from: SceneTemplateImageDownloadHelper.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final PhotoManager getPhoto() {
        return this.photo;
    }

    public final String getPath() {
        return this.path;
    }

    public final void setPath(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.path = str;
    }

    public final OnDownloadListener getOnDownloadListener() {
        return this.onDownloadListener;
    }

    public final void setOnDownloadListener(OnDownloadListener onDownloadListener) {
        this.onDownloadListener = onDownloadListener;
    }

    public final void downloadMedia(SceneTemplateGeneratorFragment.SelectedEntry selectedEntry) {
        Intrinsics.checkParameterIsNotNull(selectedEntry, "selectedEntry");
        SceneTemplateGeneratorFragment.Entry entry = new SceneTemplateGeneratorFragment.Entry(null, null, false, 0, false, 31, null);
        entry.setMedia(selectedEntry.getMedia());
        entry.setId(selectedEntry.getId());
        downloadMedia(entry);
    }

    public final void downloadMedia(final SceneTemplateGeneratorFragment.Entry entry) {
        Intrinsics.checkParameterIsNotNull(entry, "entry");
        final Media media = (Media) JacksonUtils.readAs(JacksonUtils.writeAsString(entry.getMedia()), Media.class);
        media.url = NVImageView.fitSize(media.url, "", 1080, 1080);
        String str = media.url;
        Intrinsics.checkExpressionValueIsNotNull(str, "media.url");
        FileLoaderRequest fileLoaderRequestBuild = new FileLoaderRequest.Companion.Builder(str).applyCache(true).applyZipExtract(false).build();
        IFileDownloadCallback iFileDownloadCallback = new IFileDownloadCallback() { // from class: com.narvii.scene.template.SceneTemplateImageDownloadHelper$downloadMedia$callback$1
            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public Object getRealCallback() {
                return IFileDownloadCallback.DefaultImpls.getRealCallback(this);
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public Object getTag() {
                return IFileDownloadCallback.DefaultImpls.getTag(this);
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onProgressUpdate(int i, int i2) {
                SceneTemplateImageDownloadHelper.OnDownloadListener onDownloadListener = this.this$0.getOnDownloadListener();
                if (onDownloadListener != null) {
                    onDownloadListener.onDownloadProgress(i, i2, entry);
                }
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onPostExecute(File file) {
                Intrinsics.checkParameterIsNotNull(file, "file");
                Media media2 = media;
                String str2 = media2.url;
                media2.url = this.this$0.getPhoto().getUri(file);
                entry.setMedia(media);
                SceneTemplateImageDownloadHelper.OnDownloadListener onDownloadListener = this.this$0.getOnDownloadListener();
                if (onDownloadListener != null) {
                    onDownloadListener.onDownloadSuccess(entry);
                }
                Log.d("SceneTemplateHelper", "Download Media Success >>> oldUrl : " + str2 + "   newUrl : " + media.url);
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onError(String url, Exception exc) {
                Intrinsics.checkParameterIsNotNull(url, "url");
                SceneTemplateImageDownloadHelper.OnDownloadListener onDownloadListener = this.this$0.getOnDownloadListener();
                if (onDownloadListener != null) {
                    onDownloadListener.onDownloadError(url, exc, entry);
                }
            }
        };
        getCallbackMap().put(entry.getId(), iFileDownloadCallback);
        getFileLoader().requireFile(fileLoaderRequestBuild, iFileDownloadCallback);
    }

    public final void cancel() {
        getFileLoader().abortAll();
    }

    public final void cancelRequest(SceneTemplateGeneratorFragment.SelectedEntry selectedEntry) {
        String str;
        Intrinsics.checkParameterIsNotNull(selectedEntry, "selectedEntry");
        SceneFileLoader fileLoader = getFileLoader();
        Media media = selectedEntry.getMedia();
        if (media == null || (str = media.url) == null) {
            str = "";
        }
        fileLoader.abort(str, getCallbackMap().remove(selectedEntry.getId()));
    }

    /* compiled from: SceneTemplateImageDownloadHelper.kt */
    public final class SceneFileLoader extends FileLoader {
        final /* synthetic */ SceneTemplateImageDownloadHelper this$0;

        @Override // com.narvii.util.fileloader.FileLoader
        public boolean dispatchToMainThread() {
            return true;
        }

        @Override // com.narvii.util.fileloader.FileLoader
        public boolean validateCacheFile(File cache) {
            Intrinsics.checkParameterIsNotNull(cache, "cache");
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SceneFileLoader(SceneTemplateImageDownloadHelper sceneTemplateImageDownloadHelper, NVContext ctx, String path) {
            super(ctx, path);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            Intrinsics.checkParameterIsNotNull(path, "path");
            this.this$0 = sceneTemplateImageDownloadHelper;
        }

        @Override // com.narvii.util.fileloader.FileLoader
        public INVFileCache provideCache(File dir) {
            Intrinsics.checkParameterIsNotNull(dir, "dir");
            return new SceneFileCache(this.this$0, dir);
        }

        @Override // com.narvii.util.fileloader.FileLoader
        protected Pair<File, Boolean> initCacheDir() {
            boolean z;
            Context context = getCtx().getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
            File cacheDir = context.getCacheDir();
            if (cacheDir == null || !cacheDir.isDirectory()) {
                Log.w("fail to get external cache dir, using internal cache instead");
                Context context2 = getCtx().getContext();
                Intrinsics.checkExpressionValueIsNotNull(context2, "ctx.context");
                cacheDir = context2.getCacheDir();
                z = true;
            } else {
                z = false;
            }
            return new Pair<>(new File(cacheDir, getPath()), Boolean.valueOf(z));
        }

        @Override // com.narvii.util.fileloader.FileLoader
        public String getFileName(FileLoaderRequest request) {
            Intrinsics.checkParameterIsNotNull(request, "request");
            FileLoaderRequest.Companion.Builder builder = request.getBuilder();
            int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) builder.getUrl(), '?', 0, false, 6, (Object) null);
            if (iIndexOf$default < 0) {
                iIndexOf$default = builder.getUrl().length();
            }
            String url = builder.getUrl();
            int iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) builder.getUrl(), '/', iIndexOf$default, false, 4, (Object) null) + 1;
            if (url == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            String strSubstring = url.substring(iLastIndexOf$default, iIndexOf$default);
            Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            if (strSubstring.length() >= 128) {
                int length = strSubstring.length() - 128;
                if (strSubstring == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                strSubstring = strSubstring.substring(length);
                Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
            }
            String strSafeFilename = Utils.safeFilename(strSubstring);
            Intrinsics.checkExpressionValueIsNotNull(strSafeFilename, "Utils.safeFilename(if (f…bstring(fn.length - 128))");
            return strSafeFilename;
        }
    }

    /* compiled from: SceneTemplateImageDownloadHelper.kt */
    public final class SceneFileCache implements INVFileCache {
        private final File dir;
        private final DiskDaemonHelper diskDaemonHelper;
        final /* synthetic */ SceneTemplateImageDownloadHelper this$0;

        public SceneFileCache(SceneTemplateImageDownloadHelper sceneTemplateImageDownloadHelper, File dir) {
            Intrinsics.checkParameterIsNotNull(dir, "dir");
            this.this$0 = sceneTemplateImageDownloadHelper;
            this.dir = dir;
            this.diskDaemonHelper = new DiskDaemonHelper(this.dir, "storyTemplate");
        }

        public final File getDir() {
            return this.dir;
        }

        @Override // com.narvii.util.fileloader.INVFileCache
        public File get(String fileName) {
            Intrinsics.checkParameterIsNotNull(fileName, "fileName");
            File file = new File(this.dir, fileName);
            touch(file);
            return file;
        }

        @Override // com.narvii.util.fileloader.INVFileCache
        public void put(String fileName, File file) {
            Intrinsics.checkParameterIsNotNull(fileName, "fileName");
            Intrinsics.checkParameterIsNotNull(file, "file");
            File file2 = new File(this.dir, fileName);
            FileUtils.deleteFile(file2);
            if (file.renameTo(file2)) {
                this.diskDaemonHelper.touch(file2);
            }
        }

        @Override // com.narvii.util.fileloader.INVFileCache
        public boolean remove(String fileName) {
            Intrinsics.checkParameterIsNotNull(fileName, "fileName");
            return FileUtils.deleteFile(new File(this.dir, fileName));
        }

        @Override // com.narvii.util.fileloader.INVFileCache
        public void clear() {
            this.diskDaemonHelper.clear();
        }

        @Override // com.narvii.util.fileloader.INVFileCache
        public void trimAndFlush(int i, long j) {
            this.diskDaemonHelper.trimAndFlush(i, j);
        }

        @Override // com.narvii.util.fileloader.INVFileCache
        public void touch(File file) {
            Intrinsics.checkParameterIsNotNull(file, "file");
            this.diskDaemonHelper.touch(file);
        }
    }
}
