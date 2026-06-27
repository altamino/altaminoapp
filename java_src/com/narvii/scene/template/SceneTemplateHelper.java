package com.narvii.scene.template;

import android.content.Context;
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
import com.narvii.scene.template.SceneTemplateGeneratorFragment;
import com.narvii.scene.template.SceneTemplateHelper;
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
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: SceneTemplateHelper.kt */
/* loaded from: classes3.dex */
public final class SceneTemplateHelper implements VideoTemplateJni.IVideoTemplateEventCallback, VideoManager.IFetchStreamInfoCallback {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateHelper.class), "videoTemplateManager", "getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateHelper.class), "fileLoader", "getFileLoader()Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateHelper.class), "singleThreadExecutor", "getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateHelper.class), "trimVideoGenerator", "getTrimVideoGenerator()Lcom/narvii/pre_editing/TrimVideoGenerator;"))};
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "SceneTemplateHelper";
    private final ApiService api;
    private int compilePercent;
    private int cropMediaCount;
    private final NVContext ctx;
    private int downloadMediaCount;
    private int downloadPercent;
    private final File draftFile;
    private final Lazy fileLoader$delegate;
    private final NVImageLoader imageLoader;
    private boolean isExecuting;
    private Function1<? super Media, Boolean> isHttpMedia;
    public List<Pair<Media, SceneTemplateExtraInfo>> medias;
    private OnCompileListener onCompileListener;
    private File outputFile;
    private String path;
    private final PhotoManager photo;
    private int progress;
    private final Lazy singleThreadExecutor$delegate;
    public TemplateConfig templateConfig;
    private int total;
    private final Lazy trimVideoGenerator$delegate;
    private final VideoManager video;
    private final Lazy videoTemplateManager$delegate;

    /* compiled from: SceneTemplateHelper.kt */
    public interface OnCompileListener {
        void onCompileFail(SceneTemplateHelper sceneTemplateHelper, int i, String str, Throwable th);

        void onCompileFinished(SceneTemplateHelper sceneTemplateHelper, Template template, String str, StreamInfo streamInfo);

        void onCompileProgress(SceneTemplateHelper sceneTemplateHelper, int i, int i2);

        void onCompileStart(SceneTemplateHelper sceneTemplateHelper);
    }

    private final ExecutorService getSingleThreadExecutor() {
        Lazy lazy = this.singleThreadExecutor$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (ExecutorService) lazy.getValue();
    }

    private final TrimVideoGenerator getTrimVideoGenerator() {
        Lazy lazy = this.trimVideoGenerator$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (TrimVideoGenerator) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoTemplateManager getVideoTemplateManager() {
        Lazy lazy = this.videoTemplateManager$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (VideoTemplateManager) lazy.getValue();
    }

    public final SceneFileLoader getFileLoader() {
        Lazy lazy = this.fileLoader$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (SceneFileLoader) lazy.getValue();
    }

    public SceneTemplateHelper(NVContext ctx, File draftFile) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(draftFile, "draftFile");
        this.ctx = ctx;
        this.draftFile = draftFile;
        Object service = this.ctx.getService("photo");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"photo\")");
        this.photo = (PhotoManager) service;
        Object service2 = this.ctx.getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service2, "ctx.getService(\"api\")");
        this.api = (ApiService) service2;
        Object service3 = this.ctx.getService("videoManager");
        Intrinsics.checkExpressionValueIsNotNull(service3, "ctx.getService(\"videoManager\")");
        this.video = (VideoManager) service3;
        Object service4 = this.ctx.getService("imageLoader");
        Intrinsics.checkExpressionValueIsNotNull(service4, "ctx.getService(\"imageLoader\")");
        this.imageLoader = (NVImageLoader) service4;
        this.videoTemplateManager$delegate = LazyKt__LazyJVMKt.lazy(new Function0<VideoTemplateManager>() { // from class: com.narvii.scene.template.SceneTemplateHelper$videoTemplateManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final VideoTemplateManager invoke() {
                VideoTemplateManager videoTemplateManager = new VideoTemplateManager(this.this$0.ctx);
                videoTemplateManager.cancel();
                return videoTemplateManager;
            }
        });
        this.path = "storyTemplate";
        this.fileLoader$delegate = LazyKt__LazyJVMKt.lazy(new Function0<SceneFileLoader>() { // from class: com.narvii.scene.template.SceneTemplateHelper$fileLoader$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SceneTemplateHelper.SceneFileLoader invoke() {
                SceneTemplateHelper sceneTemplateHelper = this.this$0;
                return new SceneTemplateHelper.SceneFileLoader(sceneTemplateHelper, sceneTemplateHelper.ctx, this.this$0.getPath());
            }
        });
        this.total = 100;
        this.downloadPercent = 10;
        this.compilePercent = 90;
        this.isHttpMedia = new Function1<Media, Boolean>() { // from class: com.narvii.scene.template.SceneTemplateHelper.isHttpMedia.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Media media) {
                return Boolean.valueOf(invoke2(media));
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final boolean invoke2(Media it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                if (TextUtils.isEmpty(it.url)) {
                    return false;
                }
                String str = it.url;
                Intrinsics.checkExpressionValueIsNotNull(str, "it.url");
                if (!StringsKt__StringsJVMKt.startsWith$default(str, "http://", false, 2, null)) {
                    String str2 = it.url;
                    Intrinsics.checkExpressionValueIsNotNull(str2, "it.url");
                    if (!StringsKt__StringsJVMKt.startsWith$default(str2, "https://", false, 2, null)) {
                        return false;
                    }
                }
                return true;
            }
        };
        this.singleThreadExecutor$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ExecutorService>() { // from class: com.narvii.scene.template.SceneTemplateHelper$singleThreadExecutor$2
            @Override // kotlin.jvm.functions.Function0
            public final ExecutorService invoke() {
                return Executors.newSingleThreadExecutor();
            }
        });
        this.trimVideoGenerator$delegate = LazyKt__LazyJVMKt.lazy(new Function0<TrimVideoGenerator>() { // from class: com.narvii.scene.template.SceneTemplateHelper$trimVideoGenerator$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TrimVideoGenerator invoke() {
                TrimVideoGenerator trimVideoGenerator = new TrimVideoGenerator(this.this$0.ctx);
                trimVideoGenerator.setSingleTask(false);
                trimVideoGenerator.setDropNegativeTs(false);
                return trimVideoGenerator;
            }
        });
    }

    /* compiled from: SceneTemplateHelper.kt */
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

    public final ApiService getApi() {
        return this.api;
    }

    public final VideoManager getVideo() {
        return this.video;
    }

    public final NVImageLoader getImageLoader() {
        return this.imageLoader;
    }

    public final TemplateConfig getTemplateConfig() {
        TemplateConfig templateConfig = this.templateConfig;
        if (templateConfig != null) {
            return templateConfig;
        }
        Intrinsics.throwUninitializedPropertyAccessException("templateConfig");
        throw null;
    }

    public final void setTemplateConfig(TemplateConfig templateConfig) {
        Intrinsics.checkParameterIsNotNull(templateConfig, "<set-?>");
        this.templateConfig = templateConfig;
    }

    public final List<Pair<Media, SceneTemplateExtraInfo>> getMedias() {
        List<Pair<Media, SceneTemplateExtraInfo>> list = this.medias;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("medias");
        throw null;
    }

    public final void setMedias(List<Pair<Media, SceneTemplateExtraInfo>> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.medias = list;
    }

    public final OnCompileListener getOnCompileListener() {
        return this.onCompileListener;
    }

    public final void setOnCompileListener(OnCompileListener onCompileListener) {
        this.onCompileListener = onCompileListener;
    }

    public final String getPath() {
        return this.path;
    }

    public final void setPath(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.path = str;
    }

    public final int getDownloadMediaCount() {
        return this.downloadMediaCount;
    }

    public final void setDownloadMediaCount(int i) {
        this.downloadMediaCount = i;
    }

    public final int getCropMediaCount() {
        return this.cropMediaCount;
    }

    public final void setCropMediaCount(int i) {
        this.cropMediaCount = i;
    }

    public final int getProgress() {
        return this.progress;
    }

    public final void setProgress(int i) {
        this.progress = i;
    }

    public final int getTotal() {
        return this.total;
    }

    public final void setTotal(int i) {
        this.total = i;
    }

    public final int getDownloadPercent() {
        return this.downloadPercent;
    }

    public final void setDownloadPercent(int i) {
        this.downloadPercent = i;
    }

    public final int getCompilePercent() {
        return this.compilePercent;
    }

    public final void setCompilePercent(int i) {
        this.compilePercent = i;
    }

    public final boolean isExecuting() {
        return this.isExecuting;
    }

    public final void setExecuting(boolean z) {
        this.isExecuting = z;
    }

    public final Function1<Media, Boolean> isHttpMedia() {
        return this.isHttpMedia;
    }

    public final void setHttpMedia(Function1<? super Media, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.isHttpMedia = function1;
    }

    public final File getOutputFile() {
        return this.outputFile;
    }

    public final void setOutputFile(File file) {
        this.outputFile = file;
    }

    public final void startCompile(final List<Pair<Media, SceneTemplateExtraInfo>> medias, TemplateConfig config, final String path) throws IOException {
        String absolutePath;
        Intrinsics.checkParameterIsNotNull(medias, "medias");
        Intrinsics.checkParameterIsNotNull(config, "config");
        Intrinsics.checkParameterIsNotNull(path, "path");
        if (this.isExecuting) {
            return;
        }
        this.isExecuting = true;
        initTemplateManager(config);
        this.medias = medias;
        this.templateConfig = config;
        this.path = path;
        final List<Pair<Media, SceneTemplateExtraInfo>> allDownloadVideoMedias = getAllDownloadVideoMedias();
        List<Pair<Media, SceneTemplateExtraInfo>> allCropImageMedias = getAllCropImageMedias();
        this.downloadMediaCount = allDownloadVideoMedias.size();
        this.cropMediaCount = allCropImageMedias.size();
        this.downloadPercent = Math.min(this.downloadMediaCount * 2, 10);
        this.compilePercent = this.total - this.downloadPercent;
        this.progress = 0;
        OnCompileListener onCompileListener = this.onCompileListener;
        if (onCompileListener != null) {
            onCompileListener.onCompileStart(this);
        }
        OnCompileListener onCompileListener2 = this.onCompileListener;
        if (onCompileListener2 != null) {
            onCompileListener2.onCompileProgress(this, this.progress, this.total);
        }
        if (this.downloadMediaCount == 0 && this.cropMediaCount == 0) {
            this.progress = this.downloadPercent;
            OnCompileListener onCompileListener3 = this.onCompileListener;
            if (onCompileListener3 != null) {
                onCompileListener3.onCompileProgress(this, this.progress, this.total);
            }
            getVideoTemplateManager().startCompile(medias, getOutputPath());
            return;
        }
        if (this.cropMediaCount <= 0) {
            if (this.downloadMediaCount > 0) {
                downloadMediaList(allDownloadVideoMedias);
                return;
            }
            return;
        }
        Iterator<T> it = allCropImageMedias.iterator();
        while (it.hasNext()) {
            final Pair pair = (Pair) it.next();
            Media media = (Media) pair.getFirst();
            final BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            File path2 = this.photo.getPath(media.url);
            Intrinsics.checkExpressionValueIsNotNull(path2, "photo.getPath(media.url)");
            BitmapFactory.decodeFile(path2.getAbsolutePath(), options);
            final String absolutePath2 = new File(this.draftFile.getAbsolutePath() + File.separator, "image_" + UUID.randomUUID().toString() + ".jpg").getAbsolutePath();
            if (((SceneTemplateExtraInfo) pair.getSecond()).crop != null) {
                ThemeImage themeImage = ((SceneTemplateExtraInfo) pair.getSecond()).crop;
                float f = themeImage.x;
                float f2 = themeImage.y;
                RectF rectF = new RectF(f, f2, themeImage.width + f, themeImage.height + f2);
                RectF rectF2 = new RectF(0.0f, 0.0f, options.outWidth, options.outHeight);
                if (this.imageLoader.isLocal(path)) {
                    File path3 = this.photo.getPath(path);
                    Intrinsics.checkExpressionValueIsNotNull(path3, "photo.getPath(path)");
                    absolutePath = path3.getAbsolutePath();
                } else {
                    absolutePath = "";
                }
                String str = absolutePath;
                Context context = this.ctx.getContext();
                File path4 = this.photo.getPath(((Media) pair.getFirst()).url);
                Intrinsics.checkExpressionValueIsNotNull(path4, "photo.getPath(it.first.url)");
                new BitmapCropTask(context, null, path4.getAbsolutePath(), rectF, rectF2, 1.0f, 720, 1280, str, absolutePath2, new BitmapCropTask.BitmapCropCallback() { // from class: com.narvii.scene.template.SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1
                    @Override // com.narvii.crop.BitmapCropTask.BitmapCropCallback
                    public void onBitmapCropped(Uri resultUri, int i, int i2, int i3, int i4) {
                        Intrinsics.checkParameterIsNotNull(resultUri, "resultUri");
                        this.setCropMediaCount(r2.getCropMediaCount() - 1);
                        Media media2 = (Media) pair.getFirst();
                        media2.type = 100;
                        media2.url = this.getPhoto().getUri(new File(absolutePath2));
                        media2.width = i3;
                        media2.height = i4;
                        if (this.getCropMediaCount() == 0) {
                            if (this.getDownloadMediaCount() > 0) {
                                this.downloadMediaList(allDownloadVideoMedias);
                            } else {
                                this.getVideoTemplateManager().startCompile(medias, this.getOutputPath());
                            }
                        }
                    }

                    @Override // com.narvii.crop.BitmapCropTask.BitmapCropCallback
                    public void onCropFailure(Throwable t) {
                        Intrinsics.checkParameterIsNotNull(t, "t");
                        String string = this.ctx.getContext().getString(R.string.media_could_not_processed);
                        SceneTemplateHelper.OnCompileListener onCompileListener4 = this.getOnCompileListener();
                        if (onCompileListener4 != null) {
                            onCompileListener4.onCompileFail(this, 0, string, null);
                        }
                    }
                }).execute(new Void[0]);
            } else {
                String string = this.ctx.getContext().getString(R.string.media_could_not_processed);
                OnCompileListener onCompileListener4 = this.onCompileListener;
                if (onCompileListener4 != null) {
                    onCompileListener4.onCompileFail(this, 0, string, null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getOutputPath() {
        if (this.outputFile == null) {
            this.outputFile = new File(this.draftFile, UUID.randomUUID().toString() + ".mp4");
        }
        File file = this.outputFile;
        if (file == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkExpressionValueIsNotNull(absolutePath, "outputFile!!.absolutePath");
        return absolutePath;
    }

    private final void initTemplateManager(TemplateConfig templateConfig) throws IOException {
        getVideoTemplateManager().create(templateConfig, this);
    }

    private final void releaseTemplateManager() {
        getVideoTemplateManager().destroy();
    }

    private final List<Pair<Media, SceneTemplateExtraInfo>> getAllDownloadVideoMedias() {
        List<Pair<Media, SceneTemplateExtraInfo>> list = this.medias;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("medias");
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Media media = (Media) ((Pair) obj).getFirst();
            int i = media.type;
            if ((i == 102 || i == 123) && this.isHttpMedia.invoke(media).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    private final List<Pair<Media, SceneTemplateExtraInfo>> getAllCropImageMedias() {
        List<Pair<Media, SceneTemplateExtraInfo>> list = this.medias;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("medias");
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Pair pair = (Pair) obj;
            if (((Media) pair.getFirst()).isImage() && ((SceneTemplateExtraInfo) pair.getSecond()).crop != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    private final void downloadMedia(final String str, final long j, final long j2) {
        String str2 = this.draftFile.getAbsolutePath() + File.separator;
        String str3 = "video_" + StringsKt__StringsKt.substringAfterLast$default(StringsKt__StringsKt.substringBefore$default(str, "?", null, 2, null), "/", null, 2, null) + '_' + j + '_' + j2 + ".mp4";
        File file = new File(str2, str3);
        if (!file.exists() || file.length() <= 0) {
            getTrimVideoGenerator().startTrimVideo(TuplesKt.to(str, str), str2, str3, j, j2, new TrimVideoGenerator.TrimCallback() { // from class: com.narvii.scene.template.SceneTemplateHelper.downloadMedia.1
                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onCancel() {
                }

                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onProgress(float f) {
                }

                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onSuccess(String outputFilePath) {
                    Intrinsics.checkParameterIsNotNull(outputFilePath, "outputFilePath");
                    if (!SceneTemplateHelper.this.isExecuting() || SceneTemplateHelper.this.getDownloadMediaCount() == 0) {
                        return;
                    }
                    SceneTemplateHelper.this.downloadMediaSuccess(str, outputFilePath, j2 - j);
                }

                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onError() {
                    if (SceneTemplateHelper.this.isExecuting()) {
                        String string = SceneTemplateHelper.this.ctx.getContext().getString(R.string.media_could_not_processed);
                        OnCompileListener onCompileListener = SceneTemplateHelper.this.getOnCompileListener();
                        if (onCompileListener != null) {
                            onCompileListener.onCompileFail(SceneTemplateHelper.this, 0, string, null);
                        }
                        SceneTemplateHelper.this.setExecuting(false);
                    }
                }
            });
            return;
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkExpressionValueIsNotNull(absolutePath, "localFile.absolutePath");
        downloadMediaSuccess(str, absolutePath, j2 - j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void downloadMediaSuccess(String str, String str2, long j) {
        String uri = this.photo.getUri(new File(str2));
        List<Pair<Media, SceneTemplateExtraInfo>> list = this.medias;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("medias");
            throw null;
        }
        ArrayList<Pair> arrayList = new ArrayList();
        for (Object obj : list) {
            if (Intrinsics.areEqual(((Media) ((Pair) obj).getFirst()).url, str)) {
                arrayList.add(obj);
            }
        }
        for (Pair pair : arrayList) {
            ((Media) pair.getFirst()).url = uri;
            ((SceneTemplateExtraInfo) pair.getSecond()).videoTrimStart = 0L;
            ((SceneTemplateExtraInfo) pair.getSecond()).videoTrimEnd = j;
        }
        this.progress += (this.downloadPercent - this.progress) / this.downloadMediaCount;
        OnCompileListener onCompileListener = this.onCompileListener;
        if (onCompileListener != null) {
            onCompileListener.onCompileProgress(this, this.progress, this.total);
        }
        this.downloadMediaCount--;
        if (this.downloadMediaCount == 0) {
            VideoTemplateManager videoTemplateManager = getVideoTemplateManager();
            List<Pair<Media, SceneTemplateExtraInfo>> list2 = this.medias;
            if (list2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("medias");
                throw null;
            }
            videoTemplateManager.startCompile(list2, getOutputPath());
        }
    }

    private final void downloadImage(SceneTemplateGeneratorFragment.Entry entry) {
        Media media = entry.getMedia();
        if (media == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        String str = media.url;
        Intrinsics.checkExpressionValueIsNotNull(str, "entry.media!!.url");
        getFileLoader().requireFile(new FileLoaderRequest.Companion.Builder(str).applyCache(true).applyZipExtract(false).build(), new IFileDownloadCallback() { // from class: com.narvii.scene.template.SceneTemplateHelper.downloadImage.1
            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onError(String url, Exception exc) {
                Intrinsics.checkParameterIsNotNull(url, "url");
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onPostExecute(File file) {
                Intrinsics.checkParameterIsNotNull(file, "file");
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public void onProgressUpdate(int i, int i2) {
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public Object getRealCallback() {
                return IFileDownloadCallback.DefaultImpls.getRealCallback(this);
            }

            @Override // com.narvii.util.fileloader.IFileDownloadCallback
            public Object getTag() {
                return IFileDownloadCallback.DefaultImpls.getTag(this);
            }
        });
    }

    public final void cancel() {
        this.isExecuting = false;
        getVideoTemplateManager().cancel();
        getTrimVideoGenerator().cancel();
    }

    @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
    public void onProgress(float f) {
        OnCompileListener onCompileListener = this.onCompileListener;
        if (onCompileListener != null) {
            onCompileListener.onCompileProgress(this, (int) ((f * this.compilePercent) + this.downloadPercent), this.total);
        }
    }

    @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
    public void onFinish() {
        releaseTemplateManager();
        getSingleThreadExecutor().execute(new Runnable() { // from class: com.narvii.scene.template.SceneTemplateHelper.onFinish.1
            @Override // java.lang.Runnable
            public final void run() {
                SceneTemplateHelper.this.getVideo().fetchStreamInfo(SceneTemplateHelper.this.getOutputPath(), SceneTemplateHelper.this);
            }
        });
    }

    @Override // com.narvii.video.services.VideoManager.IFetchStreamInfoCallback
    public void onStreamInfoFetched(final StreamInfo streamInfo) throws IOException {
        Intrinsics.checkParameterIsNotNull(streamInfo, "streamInfo");
        TemplateConfig templateConfig = this.templateConfig;
        if (templateConfig == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateConfig");
            throw null;
        }
        final Template template = getTemplate(templateConfig);
        Utils.post(new Runnable() { // from class: com.narvii.scene.template.SceneTemplateHelper.onStreamInfoFetched.1
            @Override // java.lang.Runnable
            public final void run() {
                OnCompileListener onCompileListener = SceneTemplateHelper.this.getOnCompileListener();
                if (onCompileListener != null) {
                    SceneTemplateHelper sceneTemplateHelper = SceneTemplateHelper.this;
                    onCompileListener.onCompileFinished(sceneTemplateHelper, template, sceneTemplateHelper.getOutputPath(), streamInfo);
                }
                SceneTemplateHelper.this.setExecuting(false);
            }
        });
    }

    public final Template getTemplate(TemplateConfig config) throws IOException {
        Intrinsics.checkParameterIsNotNull(config, "config");
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        InputStream inputStreamOpen = context.getAssets().open(config.folder + "/template.json");
        Template t = (Template) JacksonUtils.DEFAULT_MAPPER.readValue(inputStreamOpen, Template.class);
        inputStreamOpen.close();
        Intrinsics.checkExpressionValueIsNotNull(t, "t");
        return t;
    }

    @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
    public void onError(int i) {
        if (i != VideoTemplateJni.ERROR_ABORT) {
            this.outputFile = null;
            releaseTemplateManager();
            String string = this.ctx.getContext().getString(R.string.failed_to_generate_the_video);
            OnCompileListener onCompileListener = this.onCompileListener;
            if (onCompileListener != null) {
                onCompileListener.onCompileFail(this, i, string, null);
            }
            this.isExecuting = false;
        }
    }

    /* compiled from: SceneTemplateHelper.kt */
    public final class SceneFileLoader extends FileLoader {
        final /* synthetic */ SceneTemplateHelper this$0;

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
        public SceneFileLoader(SceneTemplateHelper sceneTemplateHelper, NVContext ctx, String path) {
            super(ctx, path);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            Intrinsics.checkParameterIsNotNull(path, "path");
            this.this$0 = sceneTemplateHelper;
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

    /* compiled from: SceneTemplateHelper.kt */
    public final class SceneFileCache implements INVFileCache {
        private final File dir;
        private final DiskDaemonHelper diskDaemonHelper;
        final /* synthetic */ SceneTemplateHelper this$0;

        public SceneFileCache(SceneTemplateHelper sceneTemplateHelper, File dir) {
            Intrinsics.checkParameterIsNotNull(dir, "dir");
            this.this$0 = sceneTemplateHelper;
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void downloadMediaList(List<? extends Pair<? extends Media, ? extends SceneTemplateExtraInfo>> list) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            String str = ((Media) pair.getFirst()).url;
            Intrinsics.checkExpressionValueIsNotNull(str, "it.first.url");
            downloadMedia(str, ((SceneTemplateExtraInfo) pair.getSecond()).videoTrimStart, ((SceneTemplateExtraInfo) pair.getSecond()).videoTrimEnd);
        }
    }
}
