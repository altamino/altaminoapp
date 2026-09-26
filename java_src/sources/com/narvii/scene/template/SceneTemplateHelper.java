package com.narvii.scene.template;

import android.graphics.BitmapFactory;
import android.graphics.RectF;
import android.net.Uri;
import com.narvii.app.NVContext;
import com.narvii.crop.BitmapCropTask;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.pre_editing.TrimVideoGenerator;
import com.narvii.scene.model.TemplateConfig;
import com.narvii.scene.template.data.SceneTemplateExtraInfo;
import com.narvii.theme.ThemeImage;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.fileloader.DiskDaemonHelper;
import com.narvii.util.fileloader.FileLoader;
import com.narvii.util.fileloader.FileLoaderRequest;
import com.narvii.util.fileloader.IFileDownloadCallback;
import com.narvii.util.fileloader.INVFileCache;
import com.narvii.util.http.ApiService;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.text.TextUtils;
import com.narvii.video.model.StreamInfo;
import com.narvii.video.services.VideoManager;
import com.narvii.videotemplate.Template;
import com.narvii.videotemplate.VideoTemplateJni;
import com.narvii.videotemplate.VideoTemplateManager;
import e8.l;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qa.y;
import w7.a0;
import w7.m;
import w7.o;
import w7.u;

/* JADX INFO: loaded from: classes6.dex */
public final class SceneTemplateHelper implements VideoTemplateJni.IVideoTemplateEventCallback, VideoManager.IFetchStreamInfoCallback {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG = "SceneTemplateHelper";

    @NotNull
    private final ApiService api;
    private int compilePercent;
    private int cropMediaCount;

    @NotNull
    private final NVContext ctx;
    private int downloadMediaCount;
    private int downloadPercent;

    @NotNull
    private final File draftFile;

    @NotNull
    private final m fileLoader$delegate;

    @NotNull
    private final NVImageLoader imageLoader;
    private boolean isExecuting;

    @NotNull
    private l<? super Media, Boolean> isHttpMedia;
    public List<u<Media, SceneTemplateExtraInfo>> medias;

    @Nullable
    private OnCompileListener onCompileListener;

    @Nullable
    private File outputFile;

    @NotNull
    private String path;

    @NotNull
    private final PhotoManager photo;
    private int progress;

    @NotNull
    private final m singleThreadExecutor$delegate;
    public TemplateConfig templateConfig;
    private int total;

    @NotNull
    private final m trimVideoGenerator$delegate;

    @NotNull
    private final VideoManager video;

    @NotNull
    private final m videoTemplateManager$delegate;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public interface OnCompileListener {
        void onCompileFail(@NotNull SceneTemplateHelper sceneTemplateHelper, int i10, @Nullable String str, @Nullable Throwable th);

        void onCompileFinished(@NotNull SceneTemplateHelper sceneTemplateHelper, @NotNull Template template, @NotNull String str, @NotNull StreamInfo streamInfo);

        void onCompileProgress(@NotNull SceneTemplateHelper sceneTemplateHelper, int i10, int i11);

        void onCompileStart(@NotNull SceneTemplateHelper sceneTemplateHelper);
    }

    public final class SceneFileCache implements INVFileCache {

        @NotNull
        private final File dir;

        @NotNull
        private final DiskDaemonHelper diskDaemonHelper;
        final /* synthetic */ SceneTemplateHelper this$0;

        @NotNull
        public final File getDir() {
            return this.dir;
        }

        public SceneFileCache(@NotNull SceneTemplateHelper sceneTemplateHelper, File dir) {
            t.j(dir, "dir");
            this.this$0 = sceneTemplateHelper;
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
        final /* synthetic */ SceneTemplateHelper this$0;

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
        public SceneFileLoader(@NotNull SceneTemplateHelper sceneTemplateHelper, @NotNull NVContext ctx, String path) {
            super(ctx, path);
            t.j(ctx, "ctx");
            t.j(path, "path");
            this.this$0 = sceneTemplateHelper;
        }

        @Override // com.narvii.util.fileloader.FileLoader
        @NotNull
        public String getFileName(@NotNull FileLoaderRequest request) {
            t.j(request, "request");
            FileLoaderRequest.Companion.Builder builder = request.getBuilder();
            int iB0 = kotlin.text.u.b0(builder.getUrl(), '?', 0, false, 6, null);
            if (iB0 < 0) {
                iB0 = builder.getUrl().length();
            }
            String strSubstring = builder.getUrl().substring(kotlin.text.u.h0(builder.getUrl(), '/', iB0, false, 4, null) + 1, iB0);
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
        protected u<File, Boolean> initCacheDir() {
            boolean z6;
            File cacheDir = getCtx().getContext().getCacheDir();
            if (cacheDir != null && cacheDir.isDirectory()) {
                z6 = false;
            } else {
                Log.w("fail to get external cache dir, using internal cache instead");
                cacheDir = getCtx().getContext().getCacheDir();
                z6 = true;
            }
            return new u<>(new File(cacheDir, getPath()), Boolean.valueOf(z6));
        }
    }

    /* JADX INFO: renamed from: com.narvii.scene.template.SceneTemplateHelper$isHttpMedia$1, reason: invalid class name and case insensitive filesystem */
    static final class C05581 extends v implements l<Media, Boolean> {
        public static final C05581 INSTANCE = new C05581();

        C05581() {
            super(1);
        }

        /* JADX WARN: Code duplicated, block: B:8:0x002d  */
        @Override // e8.l
        @NotNull
        public final Boolean invoke(@NotNull Media it) {
            t.j(it, "it");
            boolean z6 = false;
            if (!TextUtils.isEmpty(it.url)) {
                String url = it.url;
                t.i(url, "url");
                if (kotlin.text.t.K(url, y.HTTP, false, 2, null)) {
                    z6 = true;
                } else {
                    String url2 = it.url;
                    t.i(url2, "url");
                    if (kotlin.text.t.K(url2, y.HTTPS, false, 2, null)) {
                        z6 = true;
                    }
                }
            }
            return Boolean.valueOf(z6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void downloadMediaSuccess(String str, String str2, long j6) {
        try {
            String uri = this.photo.getUri(new File(str2));
            List<u<Media, SceneTemplateExtraInfo>> medias = getMedias();
            ArrayList<u> arrayList = new ArrayList();
            for (Object obj : medias) {
                if (t.e(((Media) ((u) obj).c()).url, str)) {
                    arrayList.add(obj);
                }
            }
            for (u uVar : arrayList) {
                ((Media) uVar.c()).url = uri;
                ((SceneTemplateExtraInfo) uVar.d()).videoTrimStart = 0L;
                ((SceneTemplateExtraInfo) uVar.d()).videoTrimEnd = j6;
            }
            int i10 = this.progress;
            int i11 = i10 + ((this.downloadPercent - i10) / this.downloadMediaCount);
            this.progress = i11;
            OnCompileListener onCompileListener = this.onCompileListener;
            if (onCompileListener != null) {
                onCompileListener.onCompileProgress(this, i11, this.total);
            }
            int i12 = this.downloadMediaCount - 1;
            this.downloadMediaCount = i12;
            if (i12 == 0) {
                getVideoTemplateManager().startCompile(getMedias(), getOutputPath());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void cancel() {
        this.isExecuting = false;
        getVideoTemplateManager().cancel();
        getTrimVideoGenerator().cancel();
    }

    @NotNull
    public final ApiService getApi() {
        return this.api;
    }

    public final int getCompilePercent() {
        return this.compilePercent;
    }

    public final int getCropMediaCount() {
        return this.cropMediaCount;
    }

    public final int getDownloadMediaCount() {
        return this.downloadMediaCount;
    }

    public final int getDownloadPercent() {
        return this.downloadPercent;
    }

    @NotNull
    public final NVImageLoader getImageLoader() {
        return this.imageLoader;
    }

    @Nullable
    public final OnCompileListener getOnCompileListener() {
        return this.onCompileListener;
    }

    @Nullable
    public final File getOutputFile() {
        return this.outputFile;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final PhotoManager getPhoto() {
        return this.photo;
    }

    public final int getProgress() {
        return this.progress;
    }

    public final int getTotal() {
        return this.total;
    }

    @NotNull
    public final VideoManager getVideo() {
        return this.video;
    }

    public final boolean isExecuting() {
        return this.isExecuting;
    }

    @NotNull
    public final l<Media, Boolean> isHttpMedia() {
        return this.isHttpMedia;
    }

    public final void setCompilePercent(int i10) {
        this.compilePercent = i10;
    }

    public final void setCropMediaCount(int i10) {
        this.cropMediaCount = i10;
    }

    public final void setDownloadMediaCount(int i10) {
        this.downloadMediaCount = i10;
    }

    public final void setDownloadPercent(int i10) {
        this.downloadPercent = i10;
    }

    public final void setExecuting(boolean z6) {
        this.isExecuting = z6;
    }

    public final void setHttpMedia(@NotNull l<? super Media, Boolean> lVar) {
        t.j(lVar, "<set-?>");
        this.isHttpMedia = lVar;
    }

    public final void setMedias(@NotNull List<u<Media, SceneTemplateExtraInfo>> list) {
        t.j(list, "<set-?>");
        this.medias = list;
    }

    public final void setOnCompileListener(@Nullable OnCompileListener onCompileListener) {
        this.onCompileListener = onCompileListener;
    }

    public final void setOutputFile(@Nullable File file) {
        this.outputFile = file;
    }

    public final void setPath(@NotNull String str) {
        t.j(str, "<set-?>");
        this.path = str;
    }

    public final void setProgress(int i10) {
        this.progress = i10;
    }

    public final void setTemplateConfig(@NotNull TemplateConfig templateConfig) {
        t.j(templateConfig, "<set-?>");
        this.templateConfig = templateConfig;
    }

    public final void setTotal(int i10) {
        this.total = i10;
    }

    public SceneTemplateHelper(@NotNull NVContext ctx, @NotNull File draftFile) {
        t.j(ctx, "ctx");
        t.j(draftFile, "draftFile");
        this.ctx = ctx;
        this.draftFile = draftFile;
        Object service = ctx.getService("photo");
        t.i(service, "getService(...)");
        this.photo = (PhotoManager) service;
        Object service2 = ctx.getService("api");
        t.i(service2, "getService(...)");
        this.api = (ApiService) service2;
        Object service3 = ctx.getService("videoManager");
        t.i(service3, "getService(...)");
        this.video = (VideoManager) service3;
        Object service4 = ctx.getService("imageLoader");
        t.i(service4, "getService(...)");
        this.imageLoader = (NVImageLoader) service4;
        this.videoTemplateManager$delegate = o.a(new SceneTemplateHelper$videoTemplateManager$2(this));
        this.path = "storyTemplate";
        this.fileLoader$delegate = o.a(new SceneTemplateHelper$fileLoader$2(this));
        this.total = 100;
        this.downloadPercent = 10;
        this.compilePercent = 90;
        this.isHttpMedia = C05581.INSTANCE;
        this.singleThreadExecutor$delegate = o.a(SceneTemplateHelper$singleThreadExecutor$2.INSTANCE);
        this.trimVideoGenerator$delegate = o.a(new SceneTemplateHelper$trimVideoGenerator$2(this));
    }

    private final void downloadImage(SceneTemplateGeneratorFragment.Entry entry) {
        Media media = entry.getMedia();
        t.g(media);
        String url = media.url;
        t.i(url, "url");
        getFileLoader().requireFile(new FileLoaderRequest.Companion.Builder(url).applyCache(true).applyZipExtract(false).build(), new IFileDownloadCallback() { // from class: com.narvii.scene.template.SceneTemplateHelper.downloadImage.1
            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onError(@NotNull String url2, @Nullable Exception exc) {
                t.j(url2, "url");
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onPostExecute(@NotNull File file) {
                t.j(file, "file");
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onProgressUpdate(int i10, int i11) {
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
        });
    }

    private final void downloadMedia(final String str, final long j6, final long j10) {
        String str2 = this.draftFile.getAbsolutePath() + File.separator;
        String str3 = "video_" + kotlin.text.u.R0(kotlin.text.u.V0(str, "?", null, 2, null), com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING, null, 2, null) + '_' + j6 + '_' + j10 + ".mp4";
        File file = new File(str2, str3);
        if (!file.exists() || file.length() <= 0) {
            getTrimVideoGenerator().startTrimVideo(a0.a(str, str), str2, str3, j6, j10, new TrimVideoGenerator.TrimCallback() { // from class: com.narvii.scene.template.SceneTemplateHelper.downloadMedia.1
                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onCancel() {
                }

                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onProgress(float f) {
                }

                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onError() {
                    if (SceneTemplateHelper.this.isExecuting()) {
                        String string = SceneTemplateHelper.this.ctx.getContext().getString(R.string.media_could_not_processed);
                        t.i(string, "getString(...)");
                        OnCompileListener onCompileListener = SceneTemplateHelper.this.getOnCompileListener();
                        if (onCompileListener != null) {
                            onCompileListener.onCompileFail(SceneTemplateHelper.this, 0, string, null);
                        }
                        SceneTemplateHelper.this.setExecuting(false);
                    }
                }

                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onSuccess(@NotNull String outputFilePath) {
                    t.j(outputFilePath, "outputFilePath");
                    if (!SceneTemplateHelper.this.isExecuting() || SceneTemplateHelper.this.getDownloadMediaCount() == 0) {
                        return;
                    }
                    SceneTemplateHelper.this.downloadMediaSuccess(str, outputFilePath, j10 - j6);
                }
            });
            return;
        }
        String absolutePath = file.getAbsolutePath();
        t.i(absolutePath, "getAbsolutePath(...)");
        downloadMediaSuccess(str, absolutePath, j10 - j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void downloadMediaList(List<? extends u<? extends Media, ? extends SceneTemplateExtraInfo>> list) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            u uVar = (u) it.next();
            String url = ((Media) uVar.c()).url;
            t.i(url, "url");
            downloadMedia(url, ((SceneTemplateExtraInfo) uVar.d()).videoTrimStart, ((SceneTemplateExtraInfo) uVar.d()).videoTrimEnd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getOutputPath() {
        if (this.outputFile == null) {
            this.outputFile = new File(this.draftFile, UUID.randomUUID().toString() + ".mp4");
        }
        File file = this.outputFile;
        t.g(file);
        String absolutePath = file.getAbsolutePath();
        t.i(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    private final ExecutorService getSingleThreadExecutor() {
        return (ExecutorService) this.singleThreadExecutor$delegate.getValue();
    }

    private final TrimVideoGenerator getTrimVideoGenerator() {
        return (TrimVideoGenerator) this.trimVideoGenerator$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoTemplateManager getVideoTemplateManager() {
        return (VideoTemplateManager) this.videoTemplateManager$delegate.getValue();
    }

    @NotNull
    public final SceneFileLoader getFileLoader() {
        return (SceneFileLoader) this.fileLoader$delegate.getValue();
    }

    @NotNull
    public final List<u<Media, SceneTemplateExtraInfo>> getMedias() {
        List<u<Media, SceneTemplateExtraInfo>> list = this.medias;
        if (list != null) {
            return list;
        }
        t.B("medias");
        return null;
    }

    @NotNull
    public final Template getTemplate(@NotNull TemplateConfig config) throws IOException {
        t.j(config, "config");
        InputStream inputStreamOpen = this.ctx.getContext().getAssets().open(config.folder + "/template.json");
        t.i(inputStreamOpen, "open(...)");
        Template template = (Template) JacksonUtils.DEFAULT_MAPPER.readValue(inputStreamOpen, Template.class);
        inputStreamOpen.close();
        t.g(template);
        return template;
    }

    @NotNull
    public final TemplateConfig getTemplateConfig() {
        TemplateConfig templateConfig = this.templateConfig;
        if (templateConfig != null) {
            return templateConfig;
        }
        t.B("templateConfig");
        return null;
    }

    @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
    public void onError(int i10) {
        if (i10 != VideoTemplateJni.ERROR_ABORT) {
            this.outputFile = null;
            releaseTemplateManager();
            String string = this.ctx.getContext().getString(R.string.failed_to_generate_the_video);
            t.i(string, "getString(...)");
            OnCompileListener onCompileListener = this.onCompileListener;
            if (onCompileListener != null) {
                onCompileListener.onCompileFail(this, i10, string, null);
            }
            this.isExecuting = false;
        }
    }

    @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
    public void onProgress(float f) {
        OnCompileListener onCompileListener = this.onCompileListener;
        if (onCompileListener != null) {
            onCompileListener.onCompileProgress(this, (int) ((f * this.compilePercent) + this.downloadPercent), this.total);
        }
    }

    public final void startCompile(@NotNull final List<u<Media, SceneTemplateExtraInfo>> medias, @NotNull TemplateConfig config, @NotNull String path) {
        t.j(medias, "medias");
        t.j(config, "config");
        t.j(path, "path");
        if (this.isExecuting) {
            return;
        }
        this.isExecuting = true;
        initTemplateManager(config);
        setMedias(medias);
        setTemplateConfig(config);
        this.path = path;
        final List<u<Media, SceneTemplateExtraInfo>> allDownloadVideoMedias = getAllDownloadVideoMedias();
        List<u<Media, SceneTemplateExtraInfo>> allCropImageMedias = getAllCropImageMedias();
        this.downloadMediaCount = allDownloadVideoMedias.size();
        this.cropMediaCount = allCropImageMedias.size();
        int iMin = Math.min(this.downloadMediaCount * 2, 10);
        this.downloadPercent = iMin;
        this.compilePercent = this.total - iMin;
        this.progress = 0;
        OnCompileListener onCompileListener = this.onCompileListener;
        if (onCompileListener != null) {
            onCompileListener.onCompileStart(this);
        }
        OnCompileListener onCompileListener2 = this.onCompileListener;
        if (onCompileListener2 != null) {
            onCompileListener2.onCompileProgress(this, this.progress, this.total);
        }
        int i10 = this.downloadMediaCount;
        if (i10 == 0 && this.cropMediaCount == 0) {
            int i11 = this.downloadPercent;
            this.progress = i11;
            OnCompileListener onCompileListener3 = this.onCompileListener;
            if (onCompileListener3 != null) {
                onCompileListener3.onCompileProgress(this, i11, this.total);
            }
            getVideoTemplateManager().startCompile(medias, getOutputPath());
            return;
        }
        if (this.cropMediaCount <= 0) {
            if (i10 > 0) {
                downloadMediaList(allDownloadVideoMedias);
                return;
            }
            return;
        }
        Iterator<T> it = allCropImageMedias.iterator();
        while (it.hasNext()) {
            final u uVar = (u) it.next();
            Media media = (Media) uVar.c();
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(this.photo.getPath(media.url).getAbsolutePath(), options);
            final String absolutePath = new File(this.draftFile.getAbsolutePath() + File.separator, "image_" + UUID.randomUUID() + ".jpg").getAbsolutePath();
            if (((SceneTemplateExtraInfo) uVar.d()).crop != null) {
                ThemeImage themeImage = ((SceneTemplateExtraInfo) uVar.d()).crop;
                float f = themeImage.f2753x;
                float f6 = themeImage.f2754y;
                new BitmapCropTask(this.ctx.getContext(), null, this.photo.getPath(((Media) uVar.c()).url).getAbsolutePath(), new RectF(f, f6, themeImage.width + f, themeImage.height + f6), new RectF(0.0f, 0.0f, options.outWidth, options.outHeight), 1.0f, 720, 1280, this.imageLoader.isLocal(path) ? this.photo.getPath(path).getAbsolutePath() : "", absolutePath, new BitmapCropTask.BitmapCropCallback() { // from class: com.narvii.scene.template.SceneTemplateHelper$startCompile$1$1$1
                    @Override // com.narvii.crop.BitmapCropTask.BitmapCropCallback
                    public void onBitmapCropped(@NotNull Uri resultUri, int i12, int i13, int i14, int i15) {
                        t.j(resultUri, "resultUri");
                        SceneTemplateHelper sceneTemplateHelper = this.this$0;
                        sceneTemplateHelper.setCropMediaCount(sceneTemplateHelper.getCropMediaCount() - 1);
                        Media mediaC = uVar.c();
                        mediaC.type = 100;
                        mediaC.url = this.this$0.getPhoto().getUri(new File(absolutePath));
                        mediaC.width = i14;
                        mediaC.height = i15;
                        if (this.this$0.getCropMediaCount() == 0) {
                            if (this.this$0.getDownloadMediaCount() > 0) {
                                this.this$0.downloadMediaList(allDownloadVideoMedias);
                            } else {
                                this.this$0.getVideoTemplateManager().startCompile(medias, this.this$0.getOutputPath());
                            }
                        }
                    }

                    @Override // com.narvii.crop.BitmapCropTask.BitmapCropCallback
                    public void onCropFailure(@NotNull Throwable t5) {
                        t.j(t5, "t");
                        String string = this.this$0.ctx.getContext().getString(R.string.media_could_not_processed);
                        t.i(string, "getString(...)");
                        SceneTemplateHelper.OnCompileListener onCompileListener4 = this.this$0.getOnCompileListener();
                        if (onCompileListener4 != null) {
                            onCompileListener4.onCompileFail(this.this$0, 0, string, null);
                        }
                    }
                }).execute(new Void[0]);
            } else {
                String string = this.ctx.getContext().getString(R.string.media_could_not_processed);
                t.i(string, "getString(...)");
                OnCompileListener onCompileListener4 = this.onCompileListener;
                if (onCompileListener4 != null) {
                    onCompileListener4.onCompileFail(this, 0, string, null);
                }
            }
        }
    }

    private final List<u<Media, SceneTemplateExtraInfo>> getAllCropImageMedias() {
        List<u<Media, SceneTemplateExtraInfo>> medias = getMedias();
        ArrayList arrayList = new ArrayList();
        for (Object obj : medias) {
            u uVar = (u) obj;
            if (((Media) uVar.c()).isImage() && ((SceneTemplateExtraInfo) uVar.d()).crop != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    private final List<u<Media, SceneTemplateExtraInfo>> getAllDownloadVideoMedias() {
        List<u<Media, SceneTemplateExtraInfo>> medias = getMedias();
        ArrayList arrayList = new ArrayList();
        for (Object obj : medias) {
            Media media = (Media) ((u) obj).c();
            int i10 = media.type;
            if (i10 == 102 || i10 == 123) {
                if (this.isHttpMedia.invoke(media).booleanValue()) {
                    arrayList.add(obj);
                }
            }
        }
        return arrayList;
    }

    private final void initTemplateManager(TemplateConfig templateConfig) throws IOException {
        getVideoTemplateManager().create(templateConfig, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFinish$lambda$8(SceneTemplateHelper this$0) {
        t.j(this$0, "this$0");
        this$0.video.fetchStreamInfo(this$0.getOutputPath(), this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onStreamInfoFetched$lambda$9(SceneTemplateHelper this$0, Template t5, StreamInfo streamInfo) {
        t.j(this$0, "this$0");
        t.j(t5, "$t");
        t.j(streamInfo, "$streamInfo");
        OnCompileListener onCompileListener = this$0.onCompileListener;
        if (onCompileListener != null) {
            onCompileListener.onCompileFinished(this$0, t5, this$0.getOutputPath(), streamInfo);
        }
        this$0.isExecuting = false;
    }

    private final void releaseTemplateManager() {
        getVideoTemplateManager().destroy();
    }

    @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
    public void onFinish() {
        releaseTemplateManager();
        getSingleThreadExecutor().execute(new Runnable() { // from class: com.narvii.scene.template.j
            @Override // java.lang.Runnable
            public final void run() {
                SceneTemplateHelper.onFinish$lambda$8(this.f2689a);
            }
        });
    }

    @Override // com.narvii.video.services.VideoManager.IFetchStreamInfoCallback
    public void onStreamInfoFetched(@NotNull final StreamInfo streamInfo) throws IOException {
        t.j(streamInfo, "streamInfo");
        final Template template = getTemplate(getTemplateConfig());
        Utils.post(new Runnable() { // from class: com.narvii.scene.template.k
            @Override // java.lang.Runnable
            public final void run() {
                SceneTemplateHelper.onStreamInfoFetched$lambda$9(this.f2690a, template, streamInfo);
            }
        });
    }
}
