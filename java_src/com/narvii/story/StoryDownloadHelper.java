package com.narvii.story;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.model.Blog;
import com.narvii.model.Media;
import com.narvii.model.Scene;
import com.narvii.model.User;
import com.narvii.scene.view.ProgressRingDialog;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.fileloader.FileLoader;
import com.narvii.util.fileloader.FileLoaderRequest;
import com.narvii.util.fileloader.IFileDownloadCallback;
import com.narvii.util.fileloader.INVFileCache;
import com.narvii.util.image.MediaStoreUtils;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.StreamInfo;
import com.narvii.video.services.VideoManager;
import com.narvii.videotemplate.Template;
import com.narvii.videotemplate.VideoTemplateJni;
import com.narvii.videotemplate.VideoTemplateManager;
import ffmpeg.base.MediaEditingConfig;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.concurrent.ThreadsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.Charsets;

/* compiled from: StoryDownloadHelper.kt */
/* loaded from: classes3.dex */
public final class StoryDownloadHelper {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryDownloadHelper.class), "progressDialog", "getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryDownloadHelper.class), "videoManager", "getVideoManager()Lcom/narvii/video/services/VideoManager;"))};
    public static final Companion Companion = new Companion(null);
    public static final int PROGRESS_FOR_ADD_WATERMARK = 80;
    public static final int PROGRESS_FOR_DOWNLOAD_VIDEO = 20;
    public static final String SAVED_STORY = "SavedStory";
    private final NVContext ctx;
    private OnStoryDownloadClickListener downloadClickListener;
    private final String filePath;
    private boolean isRunning;
    private Function1<? super Boolean, Unit> onActionFinished;
    private final Lazy progressDialog$delegate;
    private final StorySceneDownloader storyLoader;
    private VideoTemplateManager templateManager;
    private final Lazy videoManager$delegate;

    /* compiled from: StoryDownloadHelper.kt */
    public interface OnStoryDownloadClickListener {
        void onDownloadScene();

        void onDownloadStory();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoManager getVideoManager() {
        Lazy lazy = this.videoManager$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (VideoManager) lazy.getValue();
    }

    public final ProgressRingDialog getProgressDialog() {
        Lazy lazy = this.progressDialog$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ProgressRingDialog) lazy.getValue();
    }

    /* compiled from: StoryDownloadHelper.kt */
    /* renamed from: com.narvii.story.StoryDownloadHelper$downloadStoryInternal$2, reason: invalid class name and case insensitive filesystem */
    static final class C10972 extends Lambda implements Function0<Unit> {
        final /* synthetic */ User $author;
        final /* synthetic */ List $medias;
        final /* synthetic */ int $ndcId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10972(List list, User user, int i) {
            super(0);
            this.$medias = list;
            this.$author = user;
            this.$ndcId = i;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() throws Throwable {
            invoke2();
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() throws Throwable {
            final CountDownLatch countDownLatch = new CountDownLatch(this.$medias.size());
            int size = this.$medias.size();
            final String[] strArr = new String[size];
            final int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                strArr[i2] = "";
            }
            int size2 = this.$medias.size();
            Integer[] numArr = new Integer[size2];
            for (int i3 = 0; i3 < size2; i3++) {
                numArr[i3] = 0;
            }
            final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            ref$BooleanRef.element = false;
            for (Iterator it = this.$medias.iterator(); it.hasNext(); it = it) {
                Object next = it.next();
                int i4 = i + 1;
                if (i >= 0) {
                    Pair pair = (Pair) next;
                    StorySceneDownloader storySceneDownloader = StoryDownloadHelper.this.storyLoader;
                    String str = (String) pair.getFirst();
                    String highResVideoUrl = Utils.getHighResVideoUrl(((Media) pair.getSecond()).url);
                    Intrinsics.checkExpressionValueIsNotNull(highResVideoUrl, "Utils.getHighResVideoUrl(pair.second.url)");
                    final Integer[] numArr2 = numArr;
                    storySceneDownloader.loadSceneFile(str, highResVideoUrl, new IFileDownloadCallback() { // from class: com.narvii.story.StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1
                        @Override // com.narvii.util.fileloader.IFileDownloadCallback
                        public Object getRealCallback() {
                            return IFileDownloadCallback.DefaultImpls.getRealCallback(this);
                        }

                        @Override // com.narvii.util.fileloader.IFileDownloadCallback
                        public Object getTag() {
                            return IFileDownloadCallback.DefaultImpls.getTag(this);
                        }

                        @Override // com.narvii.util.fileloader.IFileDownloadCallback
                        public void onProgressUpdate(int i5, int i6) {
                            numArr2[i] = Integer.valueOf((i5 * 20) / i6);
                            StoryDownloadHelper.this.getProgressDialog().updateProgress(ArraysKt___ArraysKt.sumOfInt(numArr2) / this.$medias.size());
                        }

                        @Override // com.narvii.util.fileloader.IFileDownloadCallback
                        public void onPostExecute(File file) {
                            Intrinsics.checkParameterIsNotNull(file, "file");
                            String[] strArr2 = strArr;
                            int i5 = i;
                            String absolutePath = file.getAbsolutePath();
                            Intrinsics.checkExpressionValueIsNotNull(absolutePath, "file.absolutePath");
                            strArr2[i5] = absolutePath;
                            numArr2[i] = 20;
                            countDownLatch.countDown();
                            StoryDownloadHelper.this.getProgressDialog().updateProgress(ArraysKt___ArraysKt.sumOfInt(numArr2) / this.$medias.size());
                        }

                        @Override // com.narvii.util.fileloader.IFileDownloadCallback
                        public void onError(String url, Exception exc) {
                            Intrinsics.checkParameterIsNotNull(url, "url");
                            ref$BooleanRef.element = true;
                            StoryDownloadHelper.this.cancel();
                            int count = (int) countDownLatch.getCount();
                            for (int i5 = 0; i5 < count; i5++) {
                                countDownLatch.countDown();
                            }
                        }
                    });
                    i = i4;
                    numArr = numArr;
                } else {
                    CollectionsKt.throwIndexOverflow();
                    throw null;
                }
            }
            countDownLatch.await();
            if (ref$BooleanRef.element) {
                StoryDownloadHelper.showResult$default(StoryDownloadHelper.this, true, null, 2, null);
                return;
            }
            final String strCreateConcatFile = StoryDownloadHelper.this.createConcatFile(strArr);
            ref$BooleanRef.element = TextUtils.isEmpty(strCreateConcatFile);
            if (ref$BooleanRef.element) {
                StoryDownloadHelper.showResult$default(StoryDownloadHelper.this, true, null, 2, null);
                return;
            }
            String str2 = StoryDownloadHelper.this.filePath + '/' + UUID.randomUUID() + ".mp4";
            VideoManager videoManager = StoryDownloadHelper.this.getVideoManager();
            AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
            aVClipInfoPack.inputPath = strCreateConcatFile;
            videoManager.concatVideo(aVClipInfoPack, new File(str2), new IVideoServiceCallback() { // from class: com.narvii.story.StoryDownloadHelper.downloadStoryInternal.2.3
                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onActionCancelled() {
                    IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onActionStarted() {
                    IVideoServiceCallback.DefaultImpls.onActionStarted(this);
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onExecutingTaskChanged(MediaEditingConfig newTask) {
                    Intrinsics.checkParameterIsNotNull(newTask, "newTask");
                    IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, newTask);
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onFrameBitmapLoaded(int i5, Bitmap bitmap) {
                    IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i5, bitmap);
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onFramePicturesLoaded(int i5, File file) {
                    IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i5, file);
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onProgress(float f, String str3) {
                    IVideoServiceCallback.DefaultImpls.onProgress(this, f, str3);
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onVideoProcessed(String path) throws IOException {
                    Intrinsics.checkParameterIsNotNull(path, "path");
                    IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                    for (String str3 : strArr) {
                        new File(str3).delete();
                    }
                    new File(strCreateConcatFile).delete();
                    C10972 c10972 = C10972.this;
                    StoryDownloadHelper.this.generateVideoWithWaterMarkToGallery(c10972.$author, c10972.$ndcId, path);
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onActionFailed(Exception exc) {
                    IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                    StoryDownloadHelper.showResult$default(StoryDownloadHelper.this, true, null, 2, null);
                    for (String str3 : strArr) {
                        new File(str3).delete();
                    }
                    new File(strCreateConcatFile).delete();
                }
            });
        }
    }

    public StoryDownloadHelper(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.progressDialog$delegate = LazyKt__LazyJVMKt.lazy(new StoryDownloadHelper$progressDialog$2(this));
        File tmpDir = Utils.getTmpDir(true);
        Intrinsics.checkExpressionValueIsNotNull(tmpDir, "Utils.getTmpDir(true)");
        String absolutePath = tmpDir.getAbsolutePath();
        Intrinsics.checkExpressionValueIsNotNull(absolutePath, "Utils.getTmpDir(true).absolutePath");
        this.filePath = absolutePath;
        this.videoManager$delegate = LazyKt__LazyJVMKt.lazy(new Function0<VideoManager>() { // from class: com.narvii.story.StoryDownloadHelper$videoManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final VideoManager invoke() {
                Object service = this.this$0.ctx.getService("videoManager");
                if (service != null) {
                    return (VideoManager) service;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.services.VideoManager");
            }
        });
        this.storyLoader = new StorySceneDownloader(this, this.ctx, this.filePath);
    }

    /* compiled from: StoryDownloadHelper.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final OnStoryDownloadClickListener getDownloadClickListener() {
        return this.downloadClickListener;
    }

    public final void setDownloadClickListener(OnStoryDownloadClickListener onStoryDownloadClickListener) {
        this.downloadClickListener = onStoryDownloadClickListener;
    }

    public final Function1<Boolean, Unit> getOnActionFinished() {
        return this.onActionFinished;
    }

    public final void setOnActionFinished(Function1<? super Boolean, Unit> function1) {
        this.onActionFinished = function1;
    }

    public static /* synthetic */ void downloadStory$default(StoryDownloadHelper storyDownloadHelper, Blog blog, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        storyDownloadHelper.downloadStory(blog, i);
    }

    public final void downloadStory(final Blog blog, final int i) {
        Intrinsics.checkParameterIsNotNull(blog, "blog");
        List<Scene> list = blog.sceneList;
        if (list != null) {
            final ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            for (Scene scene : list) {
                arrayList.add(TuplesKt.to(scene.sceneId, scene.media));
            }
            if (arrayList.size() > 1) {
                int size = arrayList.size();
                if (i >= 0 && size > i) {
                    ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this.ctx.getContext());
                    actionSheetDialog.addItem(R.string.save_the_current_scene, 0);
                    actionSheetDialog.addItem(R.string.save_the_story, 0);
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.story.StoryDownloadHelper.downloadStory.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            if (i2 == 0) {
                                OnStoryDownloadClickListener downloadClickListener = StoryDownloadHelper.this.getDownloadClickListener();
                                if (downloadClickListener != null) {
                                    downloadClickListener.onDownloadScene();
                                }
                                StoryDownloadHelper storyDownloadHelper = StoryDownloadHelper.this;
                                User user = blog.author;
                                Intrinsics.checkExpressionValueIsNotNull(user, "blog.author");
                                storyDownloadHelper.downloadStoryInternal(user, blog.ndcId, CollectionsKt__CollectionsJVMKt.listOf(arrayList.get(i)));
                                return;
                            }
                            if (i2 != 1) {
                                return;
                            }
                            OnStoryDownloadClickListener downloadClickListener2 = StoryDownloadHelper.this.getDownloadClickListener();
                            if (downloadClickListener2 != null) {
                                downloadClickListener2.onDownloadStory();
                            }
                            StoryDownloadHelper storyDownloadHelper2 = StoryDownloadHelper.this;
                            User user2 = blog.author;
                            Intrinsics.checkExpressionValueIsNotNull(user2, "blog.author");
                            storyDownloadHelper2.downloadStoryInternal(user2, blog.ndcId, arrayList);
                        }
                    });
                    actionSheetDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.story.StoryDownloadHelper.downloadStory.2
                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            Function1<Boolean, Unit> onActionFinished = StoryDownloadHelper.this.getOnActionFinished();
                            if (onActionFinished != null) {
                                onActionFinished.invoke(true);
                            }
                        }
                    });
                    actionSheetDialog.show();
                    return;
                }
            }
            User user = blog.author;
            Intrinsics.checkExpressionValueIsNotNull(user, "blog.author");
            downloadStoryInternal(user, blog.ndcId, arrayList);
        }
    }

    public final void cancel() {
        this.storyLoader.abortAll();
        VideoTemplateManager videoTemplateManager = this.templateManager;
        if (videoTemplateManager != null) {
            videoTemplateManager.cancel();
        }
        Function1<? super Boolean, Unit> function1 = this.onActionFinished;
        if (function1 != null) {
            function1.invoke(true);
        }
        this.isRunning = false;
    }

    public final void destroy() {
        VideoTemplateManager videoTemplateManager = this.templateManager;
        if (videoTemplateManager != null) {
            videoTemplateManager.destroy();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void downloadStoryInternal(User user, int i, List<? extends Pair<String, ? extends Media>> list) {
        if (this.isRunning) {
            return;
        }
        this.isRunning = true;
        Utils.post(new Runnable() { // from class: com.narvii.story.StoryDownloadHelper.downloadStoryInternal.1
            @Override // java.lang.Runnable
            public final void run() {
                StoryDownloadHelper.this.getProgressDialog().updateProgress(0);
                StoryDownloadHelper.this.getProgressDialog().show();
            }
        });
        ThreadsKt.thread((31 & 1) != 0, (31 & 2) != 0 ? false : false, (31 & 4) != 0 ? null : null, (31 & 8) != 0 ? null : null, (31 & 16) != 0 ? -1 : 0, new C10972(list, user, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String createConcatFile(String[] strArr) throws Throwable {
        FileOutputStream fileOutputStream;
        String str = this.filePath + "/concat.txt";
        File file = new File(str);
        if (file.exists()) {
            file.delete();
            file = new File(str);
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
            fileOutputStream = fileOutputStream2;
        }
        try {
            StringBuilder sb = new StringBuilder();
            for (String str2 : strArr) {
                sb.append("file '");
                sb.append(str2);
                sb.append("'\n");
            }
            String string = sb.toString();
            Intrinsics.checkExpressionValueIsNotNull(string, "builder.toString()");
            Charset charset = Charsets.UTF_8;
            if (string == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            byte[] bytes = string.getBytes(charset);
            Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
            fileOutputStream.write(bytes);
            try {
                fileOutputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            return str;
        } catch (IOException e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 == null) {
                return "";
            }
            try {
                fileOutputStream2.close();
                return "";
            } catch (IOException e4) {
                e4.printStackTrace();
                return "";
            }
        } catch (Throwable th2) {
            th = th2;
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    static /* synthetic */ void showResult$default(StoryDownloadHelper storyDownloadHelper, boolean z, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        storyDownloadHelper.showResult(z, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showResult(final boolean z, final String str) {
        this.isRunning = false;
        Utils.post(new Runnable() { // from class: com.narvii.story.StoryDownloadHelper.showResult.1
            @Override // java.lang.Runnable
            public final void run() throws Resources.NotFoundException {
                StoryDownloadHelper.this.getProgressDialog().dismiss();
                Function1<Boolean, Unit> onActionFinished = StoryDownloadHelper.this.getOnActionFinished();
                if (onActionFinished != null) {
                    onActionFinished.invoke(false);
                }
                final Context context = StoryDownloadHelper.this.ctx.getContext();
                if (z) {
                    NVToast.makeText(context, R.string.save_bubble_error, 0).show();
                    return;
                }
                if (context instanceof NVActivity) {
                    ((NVActivity) context).toastImageWithText(ContextCompat.getDrawable(context, R.drawable.check), context.getString(R.string.saved), R.anim.toast_scale_in, 600L);
                }
                StoryDownloadHelper.this.getVideoManager().fetchStreamInfo(str, new VideoManager.IFetchStreamInfoCallback() { // from class: com.narvii.story.StoryDownloadHelper.showResult.1.1
                    @Override // com.narvii.video.services.VideoManager.IFetchStreamInfoCallback
                    public void onStreamInfoFetched(StreamInfo streamInfo) {
                        Intrinsics.checkParameterIsNotNull(streamInfo, "streamInfo");
                        MediaStoreUtils.addVideo(context, new File(str), streamInfo.durationInMs);
                        context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse(str)));
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void generateVideoWithWaterMarkToGallery(User user, int i, final String str) throws IOException {
        File file;
        if (Environment.isExternalStorageEmulated()) {
            file = new File(Environment.getExternalStorageDirectory(), "Amino/SavedStory");
        } else {
            Context context = this.ctx.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
            file = new File(context.getFilesDir(), SAVED_STORY);
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        final String str2 = file.getAbsolutePath() + "/" + UUID.randomUUID() + "_watermark.mp4";
        this.templateManager = new VideoTemplateManager(this.ctx);
        Context context2 = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "ctx.context");
        InputStream inputStreamOpen = context2.getAssets().open("watermark/template.json");
        Intrinsics.checkExpressionValueIsNotNull(inputStreamOpen, "ctx.context.assets.open(\"watermark/template.json\")");
        Template template = (Template) JacksonUtils.DEFAULT_MAPPER.readValue(inputStreamOpen, Template.class);
        inputStreamOpen.close();
        VideoTemplateManager videoTemplateManager = this.templateManager;
        if (videoTemplateManager != null) {
            Intrinsics.checkExpressionValueIsNotNull(template, "template");
            videoTemplateManager.create(template, true, new VideoTemplateJni.IVideoTemplateEventCallback() { // from class: com.narvii.story.StoryDownloadHelper.generateVideoWithWaterMarkToGallery.1
                @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
                public void onProgress(float f) {
                    StoryDownloadHelper.this.getProgressDialog().updateProgress((int) (20 + (80 * f)));
                }

                @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
                public void onFinish() {
                    StoryDownloadHelper.this.showResult(false, str2);
                    new File(str).delete();
                }

                @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
                public void onError(int i2) {
                    if (i2 != VideoTemplateJni.ERROR_ABORT) {
                        StoryDownloadHelper.showResult$default(StoryDownloadHelper.this, true, null, 2, null);
                    }
                    new File(str).delete();
                }
            });
        }
        VideoTemplateManager videoTemplateManager2 = this.templateManager;
        if (videoTemplateManager2 != null) {
            videoTemplateManager2.printWatermark(user, i, str, str2);
        }
    }

    /* compiled from: StoryDownloadHelper.kt */
    public final class StorySceneDownloader extends FileLoader {
        final /* synthetic */ StoryDownloadHelper this$0;

        @Override // com.narvii.util.fileloader.FileLoader
        public boolean dispatchToMainThread() {
            return true;
        }

        @Override // com.narvii.util.fileloader.FileLoader
        public INVFileCache provideCache(File dir) {
            Intrinsics.checkParameterIsNotNull(dir, "dir");
            return null;
        }

        @Override // com.narvii.util.fileloader.FileLoader
        public boolean validateCacheFile(File cache) {
            Intrinsics.checkParameterIsNotNull(cache, "cache");
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StorySceneDownloader(StoryDownloadHelper storyDownloadHelper, NVContext ctx, String path) {
            super(ctx, path);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            Intrinsics.checkParameterIsNotNull(path, "path");
            this.this$0 = storyDownloadHelper;
        }

        public final void loadSceneFile(String sceneId, String url, IFileDownloadCallback callback) {
            Intrinsics.checkParameterIsNotNull(sceneId, "sceneId");
            Intrinsics.checkParameterIsNotNull(url, "url");
            Intrinsics.checkParameterIsNotNull(callback, "callback");
            requireFile(new FileLoaderRequest.Companion.Builder(url).applyZipExtract(false).applyCache(false).attachObject(sceneId).build(), callback);
        }

        @Override // com.narvii.util.fileloader.FileLoader
        protected Pair<File, Boolean> initCacheDir() {
            return new Pair<>(new File(getPath()), false);
        }

        @Override // com.narvii.util.fileloader.FileLoader
        public String getFileName(FileLoaderRequest request) {
            Intrinsics.checkParameterIsNotNull(request, "request");
            Object obj = request.getBuilder().getObj();
            if (obj == null) {
                obj = String.valueOf(System.currentTimeMillis());
            }
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.String");
            }
            return "story_scene_" + ((String) obj) + ".mp4";
        }
    }
}
