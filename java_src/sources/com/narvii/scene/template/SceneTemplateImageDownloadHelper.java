package com.narvii.scene.template;

import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
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
import java.util.Map;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes5.dex */
public final class SceneTemplateImageDownloadHelper {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG = "SceneTemplateHelper";

    @NotNull
    private final m callbackMap$delegate;

    @NotNull
    private final NVContext ctx;

    @NotNull
    private final File draftFile;

    @NotNull
    private final m fileLoader$delegate;

    @Nullable
    private OnDownloadListener onDownloadListener;

    @NotNull
    private String path;

    @NotNull
    private final PhotoManager photo;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public interface OnDownloadListener {
        void onDownloadError(@NotNull String str, @Nullable Exception exc, @NotNull SceneTemplateGeneratorFragment.Entry entry);

        void onDownloadProgress(int i10, int i11, @NotNull SceneTemplateGeneratorFragment.Entry entry);

        void onDownloadSuccess(@NotNull SceneTemplateGeneratorFragment.Entry entry);
    }

    public final class SceneFileCache implements INVFileCache {

        @NotNull
        private final File dir;

        @NotNull
        private final DiskDaemonHelper diskDaemonHelper;
        final /* synthetic */ SceneTemplateImageDownloadHelper this$0;

        @NotNull
        public final File getDir() {
            return this.dir;
        }

        public SceneFileCache(@NotNull SceneTemplateImageDownloadHelper sceneTemplateImageDownloadHelper, File dir) {
            t.j(dir, "dir");
            this.this$0 = sceneTemplateImageDownloadHelper;
            this.dir = dir;
            this.diskDaemonHelper = new DiskDaemonHelper(dir, "storyTemplate");
        }

        @Override // com.narvii.util.fileloader.INVFileCache
        public void clear() {
            this.diskDaemonHelper.clear();
        }

        @Override // com.narvii.util.fileloader.INVFileCache
        @NotNull
        public File get(@NotNull String fileName) {
            t.j(fileName, "fileName");
            File file = new File(this.dir, fileName);
            touch(file);
            return file;
        }

        @Override // com.narvii.util.fileloader.INVFileCache
        public void put(@NotNull String fileName, @NotNull File file) {
            t.j(fileName, "fileName");
            t.j(file, "file");
            File file2 = new File(this.dir, fileName);
            FileUtils.deleteFile(file2);
            if (file.renameTo(file2)) {
                this.diskDaemonHelper.touch(file2);
            }
        }

        @Override // com.narvii.util.fileloader.INVFileCache
        public boolean remove(@NotNull String fileName) {
            t.j(fileName, "fileName");
            return FileUtils.deleteFile(new File(this.dir, fileName));
        }

        @Override // com.narvii.util.fileloader.INVFileCache
        public void touch(@NotNull File file) {
            t.j(file, "file");
            this.diskDaemonHelper.touch(file);
        }

        @Override // com.narvii.util.fileloader.INVFileCache
        public void trimAndFlush(int i10, long j6) {
            this.diskDaemonHelper.trimAndFlush(i10, j6);
        }
    }

    public final class SceneFileLoader extends FileLoader {
        final /* synthetic */ SceneTemplateImageDownloadHelper this$0;

        @Override // com.narvii.util.fileloader.FileLoader
        public boolean dispatchToMainThread() {
            return true;
        }

        @Override // com.narvii.util.fileloader.FileLoader
        public boolean validateCacheFile(@NotNull File cache) {
            t.j(cache, "cache");
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SceneFileLoader(@NotNull SceneTemplateImageDownloadHelper sceneTemplateImageDownloadHelper, @NotNull NVContext ctx, String path) {
            super(ctx, path);
            t.j(ctx, "ctx");
            t.j(path, "path");
            this.this$0 = sceneTemplateImageDownloadHelper;
        }

        @Override // com.narvii.util.fileloader.FileLoader
        @NotNull
        public String getFileName(@NotNull FileLoaderRequest request) {
            t.j(request, "request");
            FileLoaderRequest.Companion.Builder builder = request.getBuilder();
            int iB0 = u.b0(builder.getUrl(), '?', 0, false, 6, null);
            if (iB0 < 0) {
                iB0 = builder.getUrl().length();
            }
            String strSubstring = builder.getUrl().substring(u.h0(builder.getUrl(), '/', iB0, false, 4, null) + 1, iB0);
            t.i(strSubstring, "substring(...)");
            if (strSubstring.length() >= 128) {
                strSubstring = strSubstring.substring(strSubstring.length() - 128);
                t.i(strSubstring, "substring(...)");
            }
            String strSafeFilename = Utils.safeFilename(strSubstring);
            t.i(strSafeFilename, "safeFilename(...)");
            return strSafeFilename;
        }

        @Override // com.narvii.util.fileloader.FileLoader
        @Nullable
        public INVFileCache provideCache(@NotNull File dir) {
            t.j(dir, "dir");
            return new SceneFileCache(this.this$0, dir);
        }

        @Override // com.narvii.util.fileloader.FileLoader
        @NotNull
        protected w7.u<File, Boolean> initCacheDir() {
            boolean z6;
            File cacheDir = getCtx().getContext().getCacheDir();
            if (cacheDir != null && cacheDir.isDirectory()) {
                z6 = false;
            } else {
                Log.w("fail to get external cache dir, using internal cache instead");
                cacheDir = getCtx().getContext().getCacheDir();
                z6 = true;
            }
            return new w7.u<>(new File(cacheDir, getPath()), Boolean.valueOf(z6));
        }
    }

    public final void downloadMedia(@NotNull SceneTemplateGeneratorFragment.SelectedEntry selectedEntry) {
        t.j(selectedEntry, "selectedEntry");
        SceneTemplateGeneratorFragment.Entry entry = new SceneTemplateGeneratorFragment.Entry(null, null, false, 0, false, 31, null);
        entry.setMedia(selectedEntry.getMedia());
        entry.setId(selectedEntry.getId());
        downloadMedia(entry);
    }

    @Nullable
    public final OnDownloadListener getOnDownloadListener() {
        return this.onDownloadListener;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final PhotoManager getPhoto() {
        return this.photo;
    }

    public final void setOnDownloadListener(@Nullable OnDownloadListener onDownloadListener) {
        this.onDownloadListener = onDownloadListener;
    }

    public final void setPath(@NotNull String str) {
        t.j(str, "<set-?>");
        this.path = str;
    }

    public SceneTemplateImageDownloadHelper(@NotNull NVContext ctx, @NotNull File draftFile) {
        t.j(ctx, "ctx");
        t.j(draftFile, "draftFile");
        this.ctx = ctx;
        this.draftFile = draftFile;
        Object service = ctx.getService("photo");
        t.i(service, "getService(...)");
        this.photo = (PhotoManager) service;
        this.path = "storyTemplate";
        this.fileLoader$delegate = o.a(new SceneTemplateImageDownloadHelper$fileLoader$2(this));
        this.callbackMap$delegate = o.a(SceneTemplateImageDownloadHelper$callbackMap$2.INSTANCE);
    }

    public final void cancelRequest(@NotNull SceneTemplateGeneratorFragment.SelectedEntry selectedEntry) {
        t.j(selectedEntry, "selectedEntry");
        SceneFileLoader fileLoader = getFileLoader();
        Media media = selectedEntry.getMedia();
        String str = media != null ? media.url : null;
        if (str == null) {
            str = "";
        }
        fileLoader.abort(str, getCallbackMap().remove(selectedEntry.getId()));
    }

    @NotNull
    public final Map<String, IFileDownloadCallback> getCallbackMap() {
        return (Map) this.callbackMap$delegate.getValue();
    }

    @NotNull
    public final SceneFileLoader getFileLoader() {
        return (SceneFileLoader) this.fileLoader$delegate.getValue();
    }

    public final void cancel() {
        getFileLoader().abortAll();
    }

    public final void downloadMedia(@NotNull final SceneTemplateGeneratorFragment.Entry entry) {
        t.j(entry, "entry");
        final Media media = (Media) JacksonUtils.readAs(JacksonUtils.writeAsString(entry.getMedia()), Media.class);
        String url = NVImageView.fitSize(media.url, "", 1080, 1080);
        media.url = url;
        t.i(url, "url");
        FileLoaderRequest fileLoaderRequestBuild = new FileLoaderRequest.Companion.Builder(url).applyCache(true).applyZipExtract(false).build();
        IFileDownloadCallback iFileDownloadCallback = new IFileDownloadCallback() { // from class: com.narvii.scene.template.SceneTemplateImageDownloadHelper$downloadMedia$callback$1
            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onPostExecute(@NotNull File file) {
                t.j(file, "file");
                Media media2 = media;
                String str = media2.url;
                media2.url = this.this$0.getPhoto().getUri(file);
                entry.setMedia(media);
                SceneTemplateImageDownloadHelper.OnDownloadListener onDownloadListener = this.this$0.getOnDownloadListener();
                if (onDownloadListener != null) {
                    onDownloadListener.onDownloadSuccess(entry);
                }
                Log.d("SceneTemplateHelper", "Download Media Success >>> oldUrl : " + str + "   newUrl : " + media.url);
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onProgressUpdate(int i10, int i11) {
                SceneTemplateImageDownloadHelper.OnDownloadListener onDownloadListener = this.this$0.getOnDownloadListener();
                if (onDownloadListener != null) {
                    onDownloadListener.onDownloadProgress(i10, i11, entry);
                }
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            @Nullable
            public Object getRealCallback() {
                return IFileDownloadCallback.DefaultImpls.getRealCallback(this);
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            @Nullable
            public Object getTag() {
                return IFileDownloadCallback.DefaultImpls.getTag(this);
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onError(@NotNull String url2, @Nullable Exception exc) {
                t.j(url2, "url");
                SceneTemplateImageDownloadHelper.OnDownloadListener onDownloadListener = this.this$0.getOnDownloadListener();
                if (onDownloadListener != null) {
                    onDownloadListener.onDownloadError(url2, exc, entry);
                }
            }
        };
        getCallbackMap().put(entry.getId(), iFileDownloadCallback);
        getFileLoader().requireFile(fileLoaderRequestBuild, iFileDownloadCallback);
    }
}
