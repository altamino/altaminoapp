package com.narvii.videotemplate;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.chat.input.MentionedEditText;
import com.narvii.community.CommunityService;
import com.narvii.mediaeditor.R;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.photos.PhotoManager;
import com.narvii.scene.model.TemplateConfig;
import com.narvii.scene.template.data.SceneTemplateExtraInfo;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.ws.WsMessage;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.StreamInfo;
import com.narvii.video.services.VideoManager;
import com.narvii.videotemplate.VideoTemplateJni;
import com.narvii.widget.ThumbImageView;
import ffmpeg.base.MediaEditingConfig;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* compiled from: VideoTemplateManager.kt */
/* loaded from: classes3.dex */
public final class VideoTemplateManager extends BroadcastReceiver implements VideoTemplateJni.IVideoTemplateEventCallback {
    public static final Companion Companion = new Companion(null);
    public static final int DECODER_DEBUG_TYPE = -1;
    private final File aminoLogoFile;
    private VideoTemplateJni.IVideoTemplateEventCallback callback;
    private final NVContext ctx;
    private final ThreadPoolExecutor executor;
    private boolean managerAlive;
    private String outputPath;
    private final PhotoManager photo;
    private final VideoTemplateManager$pidCheckRunnable$1 pidCheckRunnable;
    private boolean taskRunning;
    private final File tempOutVideoFile;
    private Template template;
    private File templateMusicFile;
    private final File watermarkCreatorFile;
    private final File watermarkLogoFile;

    /* JADX WARN: Type inference failed for: r4v10, types: [com.narvii.videotemplate.VideoTemplateManager$pidCheckRunnable$1] */
    public VideoTemplateManager(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        Object service = this.ctx.getService("photo");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"photo\")");
        this.photo = (PhotoManager) service;
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        this.tempOutVideoFile = new File(context.getCacheDir(), "vtemplate_out.h264");
        Context context2 = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "ctx.context");
        this.aminoLogoFile = new File(context2.getCacheDir(), "aminologo.webp");
        Context context3 = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "ctx.context");
        this.watermarkLogoFile = new File(context3.getCacheDir(), "wmlogo.png");
        Context context4 = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "ctx.context");
        this.watermarkCreatorFile = new File(context4.getCacheDir(), "creatorBg.png");
        this.executor = Utils.createThreadPoolExecutor(2, "Video_Template");
        this.pidCheckRunnable = new Runnable() { // from class: com.narvii.videotemplate.VideoTemplateManager$pidCheckRunnable$1
            @Override // java.lang.Runnable
            public void run() throws NumberFormatException, IOException {
                if (this.this$0.taskRunning) {
                    try {
                        Context context5 = this.this$0.getCtx().getContext();
                        Intrinsics.checkExpressionValueIsNotNull(context5, "ctx.context");
                        if (!new File("/proc/" + Integer.parseInt(FilesKt__FileReadWriteKt.readText(new File(context5.getFilesDir(), TemplateServiceKt.TEMPLATE_PID_FILE_PATH), Charsets.US_ASCII)) + "/mem").exists()) {
                            throw new IOException();
                        }
                        Utils.postDelayed(this, 1000L);
                    } catch (Exception e) {
                        Log.e("NV_EGL", "check pid fail " + e);
                        if (this.this$0.tempOutVideoFile.exists()) {
                            this.this$0.tempOutVideoFile.delete();
                        }
                        VideoTemplateJni.IVideoTemplateEventCallback iVideoTemplateEventCallback = this.this$0.callback;
                        if (iVideoTemplateEventCallback != null) {
                            iVideoTemplateEventCallback.onError(VideoTemplateJni.ERROR_ABORT);
                        }
                    }
                }
            }
        };
    }

    public static final /* synthetic */ Template access$getTemplate$p(VideoTemplateManager videoTemplateManager) {
        Template template = videoTemplateManager.template;
        if (template != null) {
            return template;
        }
        Intrinsics.throwUninitializedPropertyAccessException("template");
        throw null;
    }

    public static final /* synthetic */ File access$getTemplateMusicFile$p(VideoTemplateManager videoTemplateManager) {
        File file = videoTemplateManager.templateMusicFile;
        if (file != null) {
            return file;
        }
        Intrinsics.throwUninitializedPropertyAccessException("templateMusicFile");
        throw null;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    /* compiled from: VideoTemplateManager.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final Bitmap generateWatermarkLogo(User user, Community community) {
        View watermarkView = LayoutInflater.from(this.ctx.getContext()).inflate(R.layout.component_watermark_logo, (ViewGroup) null);
        Intrinsics.checkExpressionValueIsNotNull(watermarkView, "watermarkView");
        TextView textView = (TextView) watermarkView.findViewById(R.id.user_name);
        Intrinsics.checkExpressionValueIsNotNull(textView, "watermarkView.user_name");
        textView.setText(user.nickname());
        if (community == null || community.id == 0) {
            TextView textView2 = (TextView) watermarkView.findViewById(R.id.community_from);
            Intrinsics.checkExpressionValueIsNotNull(textView2, "watermarkView.community_from");
            textView2.setVisibility(8);
            TextView textView3 = (TextView) watermarkView.findViewById(R.id.community_name_or_amino_id);
            Intrinsics.checkExpressionValueIsNotNull(textView3, "watermarkView.community_name_or_amino_id");
            textView3.setText(MentionedEditText.DEFAULT_METION_TAG + user.aminoId);
        } else {
            TextView textView4 = (TextView) watermarkView.findViewById(R.id.community_name_or_amino_id);
            Intrinsics.checkExpressionValueIsNotNull(textView4, "watermarkView.community_name_or_amino_id");
            textView4.setText(community.name);
        }
        watermarkView.measure(View.MeasureSpec.makeMeasureSpec(WsMessage.LIVE_LAYER_USER_JOINED_EVENT, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(120, 1073741824));
        watermarkView.layout(0, 0, watermarkView.getMeasuredWidth(), watermarkView.getMeasuredHeight());
        Bitmap bitmap = Bitmap.createBitmap(watermarkView.getWidth(), watermarkView.getHeight(), Bitmap.Config.ARGB_8888);
        watermarkView.draw(new Canvas(bitmap));
        Intrinsics.checkExpressionValueIsNotNull(bitmap, "bitmap");
        return bitmap;
    }

    private final Bitmap generateCreatorInfoPage(User user, Community community) {
        View watermarkView = LayoutInflater.from(this.ctx.getContext()).inflate(R.layout.component_watermark_creator_info, (ViewGroup) null);
        Intrinsics.checkExpressionValueIsNotNull(watermarkView, "watermarkView");
        ((ThumbImageView) watermarkView.findViewById(R.id.author_bg_user_avatar)).setImageUrl(user.icon);
        TextView textView = (TextView) watermarkView.findViewById(R.id.author_bg_user_name);
        Intrinsics.checkExpressionValueIsNotNull(textView, "watermarkView.author_bg_user_name");
        textView.setText(user.nickname());
        if (community == null || community.id == 0) {
            TextView textView2 = (TextView) watermarkView.findViewById(R.id.author_bg_community_amino_id);
            Intrinsics.checkExpressionValueIsNotNull(textView2, "watermarkView.author_bg_community_amino_id");
            textView2.setVisibility(8);
            TextView textView3 = (TextView) watermarkView.findViewById(R.id.author_bg_community_name_or_amino_id);
            Intrinsics.checkExpressionValueIsNotNull(textView3, "watermarkView.author_bg_community_name_or_amino_id");
            textView3.setText(MentionedEditText.DEFAULT_METION_TAG + user.aminoId);
        } else {
            TextView textView4 = (TextView) watermarkView.findViewById(R.id.author_bg_community_name_or_amino_id);
            Intrinsics.checkExpressionValueIsNotNull(textView4, "watermarkView.author_bg_community_name_or_amino_id");
            textView4.setText("From:" + community.name);
            TextView textView5 = (TextView) watermarkView.findViewById(R.id.author_bg_community_amino_id);
            Intrinsics.checkExpressionValueIsNotNull(textView5, "watermarkView.author_bg_community_amino_id");
            textView5.setText("Amino ID: " + community.endpoint);
        }
        watermarkView.measure(View.MeasureSpec.makeMeasureSpec(720, 1073741824), View.MeasureSpec.makeMeasureSpec(1280, 1073741824));
        watermarkView.layout(0, 0, watermarkView.getMeasuredWidth(), watermarkView.getMeasuredHeight());
        Bitmap bitmap = Bitmap.createBitmap(watermarkView.getWidth(), watermarkView.getHeight(), Bitmap.Config.ARGB_8888);
        watermarkView.draw(new Canvas(bitmap));
        Intrinsics.checkExpressionValueIsNotNull(bitmap, "bitmap");
        return bitmap;
    }

    public final void create(TemplateConfig config, VideoTemplateJni.IVideoTemplateEventCallback iVideoTemplateEventCallback) throws IOException {
        Intrinsics.checkParameterIsNotNull(config, "config");
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        InputStream inputStreamOpen = context.getAssets().open(config.folder + "/template.json");
        Template template = (Template) JacksonUtils.DEFAULT_MAPPER.readValue(inputStreamOpen, Template.class);
        inputStreamOpen.close();
        Intrinsics.checkExpressionValueIsNotNull(template, "template");
        create(template, config.isWatermark, iVideoTemplateEventCallback);
    }

    public final void create(Template template, boolean z, VideoTemplateJni.IVideoTemplateEventCallback iVideoTemplateEventCallback) {
        Intrinsics.checkParameterIsNotNull(template, "template");
        this.managerAlive = true;
        this.callback = iVideoTemplateEventCallback;
        this.template = template;
        Iterator<TemplateSegment> it = template.segments.iterator();
        while (it.hasNext()) {
            TemplateSegment next = it.next();
            next.passCount = next.shader.length;
            int[] iArr = next.pass2ExtraInputs;
            next.pass2InputCount = iArr != null ? iArr.length : 0;
            Context context = this.ctx.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
            next.shaderString = Utils.readStringFromAssets(context.getAssets(), next.shader[0]);
            if (next.shader.length > 1) {
                Context context2 = this.ctx.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context2, "ctx.context");
                next.shaderString2Pass = Utils.readStringFromAssets(context2.getAssets(), next.shader[1]);
            }
        }
        Context context3 = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "ctx.context");
        this.templateMusicFile = new File(context3.getCacheDir(), "templateMusic.aac");
        File file = this.templateMusicFile;
        if (file == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateMusicFile");
            throw null;
        }
        if (file.exists()) {
            File file2 = this.templateMusicFile;
            if (file2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateMusicFile");
                throw null;
            }
            file2.delete();
        }
        if (!z) {
            VideoTemplateJni.create(template.segments);
        }
        VideoTemplateJni.setVideoTemplateEventCallback(this);
        this.executor.prestartAllCoreThreads();
    }

    public final void startCompile(final List<? extends Pair<? extends Media, ? extends SceneTemplateExtraInfo>> inputMediaList, String outputPath) {
        Intrinsics.checkParameterIsNotNull(inputMediaList, "inputMediaList");
        Intrinsics.checkParameterIsNotNull(outputPath, "outputPath");
        if (this.managerAlive) {
            this.outputPath = outputPath;
            Template template = this.template;
            if (template == null) {
                Intrinsics.throwUninitializedPropertyAccessException("template");
                throw null;
            }
            if (template.backgroundMusic != null) {
                this.executor.execute(new Runnable() { // from class: com.narvii.videotemplate.VideoTemplateManager.startCompile.1
                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        FileUtils.moveFromAssetsToFile(VideoTemplateManager.this.getCtx().getContext(), VideoTemplateManager.access$getTemplate$p(VideoTemplateManager.this).backgroundMusic, VideoTemplateManager.access$getTemplateMusicFile$p(VideoTemplateManager.this));
                    }
                });
            }
            this.executor.execute(new Runnable() { // from class: com.narvii.videotemplate.VideoTemplateManager.startCompile.2
                /* JADX WARN: Removed duplicated region for block: B:33:0x00ca  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() throws java.io.IOException {
                    /*
                        Method dump skipped, instructions count: 276
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.narvii.videotemplate.VideoTemplateManager.AnonymousClass2.run():void");
                }
            });
            this.taskRunning = true;
        }
    }

    public final void printWatermark(User user, int i, final String orgVideoPath, String outputPath) {
        Intrinsics.checkParameterIsNotNull(user, "user");
        Intrinsics.checkParameterIsNotNull(orgVideoPath, "orgVideoPath");
        Intrinsics.checkParameterIsNotNull(outputPath, "outputPath");
        if (this.managerAlive) {
            this.outputPath = outputPath;
            this.templateMusicFile = new File(orgVideoPath);
            Community community = ((CommunityService) this.ctx.getService("community")).getCommunity(i);
            final Bitmap bitmapGenerateWatermarkLogo = generateWatermarkLogo(user, community);
            final Bitmap bitmapGenerateCreatorInfoPage = generateCreatorInfoPage(user, community);
            this.executor.execute(new Runnable() { // from class: com.narvii.videotemplate.VideoTemplateManager.printWatermark.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(VideoTemplateManager.this.watermarkLogoFile);
                        bitmapGenerateWatermarkLogo.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                        fileOutputStream.close();
                        FileOutputStream fileOutputStream2 = new FileOutputStream(VideoTemplateManager.this.watermarkCreatorFile);
                        bitmapGenerateCreatorInfoPage.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream2);
                        fileOutputStream2.close();
                        FileUtils.moveFromAssetsToFile(VideoTemplateManager.this.getCtx().getContext(), "watermark/watermark.webp", VideoTemplateManager.this.aminoLogoFile);
                        StreamInfo streamInfoFetchStreamInfoSync = ((VideoManager) VideoTemplateManager.this.getCtx().getService("videoManager")).fetchStreamInfoSync(orgVideoPath);
                        VideoTemplateManager.access$getTemplate$p(VideoTemplateManager.this).fps = streamInfoFetchStreamInfoSync.fps;
                        VideoTemplateManager.access$getTemplate$p(VideoTemplateManager.this).outputFrameCount = streamInfoFetchStreamInfoSync.frameCount + 60;
                        VideoTemplateManager.access$getTemplate$p(VideoTemplateManager.this).segments.get(0).frameCount = streamInfoFetchStreamInfoSync.frameCount;
                        VideoTemplateJni.create(VideoTemplateManager.access$getTemplate$p(VideoTemplateManager.this).segments);
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(orgVideoPath);
                        arrayList.add(VideoTemplateManager.this.watermarkLogoFile.getAbsolutePath());
                        arrayList.add(VideoTemplateManager.this.aminoLogoFile.getAbsolutePath());
                        arrayList.add(VideoTemplateManager.this.watermarkCreatorFile.getAbsolutePath());
                        ArrayList arrayList2 = new ArrayList();
                        SceneTemplateExtraInfo sceneTemplateExtraInfo = new SceneTemplateExtraInfo();
                        sceneTemplateExtraInfo.inputType = 3;
                        sceneTemplateExtraInfo.videoTrimEnd = streamInfoFetchStreamInfoSync.durationInMs;
                        arrayList2.add(sceneTemplateExtraInfo);
                        SceneTemplateExtraInfo sceneTemplateExtraInfo2 = new SceneTemplateExtraInfo();
                        sceneTemplateExtraInfo2.inputType = 0;
                        arrayList2.add(sceneTemplateExtraInfo2);
                        SceneTemplateExtraInfo sceneTemplateExtraInfo3 = new SceneTemplateExtraInfo();
                        sceneTemplateExtraInfo3.inputType = 4;
                        arrayList2.add(sceneTemplateExtraInfo3);
                        SceneTemplateExtraInfo sceneTemplateExtraInfo4 = new SceneTemplateExtraInfo();
                        sceneTemplateExtraInfo4.inputType = 0;
                        arrayList2.add(sceneTemplateExtraInfo4);
                        Object[] array = arrayList.toArray(new String[0]);
                        if (array == null) {
                            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                        }
                        String[] strArr = (String[]) array;
                        Object[] array2 = arrayList2.toArray(new SceneTemplateExtraInfo[0]);
                        if (array2 != null) {
                            VideoTemplateJni.start(strArr, (SceneTemplateExtraInfo[]) array2, VideoTemplateManager.this.tempOutVideoFile.getAbsolutePath(), VideoTemplateManager.access$getTemplate$p(VideoTemplateManager.this).outputFrameCount, VideoTemplateManager.access$getTemplate$p(VideoTemplateManager.this).fps);
                            return;
                        }
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                    } catch (Throwable unused) {
                        VideoTemplateManager.this.onError(VideoTemplateJni.ERROR_WATERMARK);
                    }
                }
            });
            this.taskRunning = true;
        }
    }

    public final void cancel() {
        VideoTemplateJni.stop();
        if (this.tempOutVideoFile.exists()) {
            this.tempOutVideoFile.delete();
        }
        if (this.watermarkLogoFile.exists()) {
            this.watermarkLogoFile.delete();
        }
        if (this.aminoLogoFile.exists()) {
            this.aminoLogoFile.delete();
        }
        if (this.watermarkCreatorFile.exists()) {
            this.watermarkCreatorFile.delete();
        }
        VideoTemplateJni.IVideoTemplateEventCallback iVideoTemplateEventCallback = this.callback;
        if (iVideoTemplateEventCallback != null) {
            iVideoTemplateEventCallback.onError(VideoTemplateJni.ERROR_ABORT);
        }
    }

    public final void destroy() {
        this.managerAlive = false;
        if (this.tempOutVideoFile.exists()) {
            this.tempOutVideoFile.delete();
        }
        this.taskRunning = false;
        VideoTemplateJni.removeVideoTemplateEventCallback();
        VideoTemplateJni.destroy();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        VideoTemplateJni.IVideoTemplateEventCallback iVideoTemplateEventCallback;
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(intent, "intent");
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        switch (action.hashCode()) {
            case -1893968811:
                if (action.equals(TemplateServiceKt.VIDEO_TEMPLATE_COMPILE_ERROR)) {
                    this.taskRunning = false;
                    int intExtra = intent.getIntExtra("com.narvii.videotemplate.errorType", VideoTemplateJni.ERROR_NONE);
                    int i = VideoTemplateJni.ERROR_ABORT;
                    if (this.tempOutVideoFile.exists()) {
                        this.tempOutVideoFile.delete();
                    }
                    VideoTemplateJni.IVideoTemplateEventCallback iVideoTemplateEventCallback2 = this.callback;
                    if (iVideoTemplateEventCallback2 != null) {
                        iVideoTemplateEventCallback2.onError(intExtra);
                        break;
                    }
                }
                break;
            case 71209994:
                if (action.equals(TemplateServiceKt.VIDEO_TEMPLATE_PROCESS_FINISH)) {
                    this.taskRunning = false;
                    break;
                }
                break;
            case 1436701638:
                if (action.equals(TemplateServiceKt.VIDEO_TEMPLATE_COMPILE_FINISH)) {
                    this.taskRunning = false;
                    doMix();
                    break;
                }
                break;
            case 1658356896:
                if (action.equals(TemplateServiceKt.VIDEO_TEMPLATE_COMPILE_PROGRESS) && (iVideoTemplateEventCallback = this.callback) != null) {
                    iVideoTemplateEventCallback.onProgress(intent.getFloatExtra("com.narvii.videotemplate.progress", 0.0f));
                    break;
                }
                break;
        }
    }

    @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
    public void onProgress(float f) {
        VideoTemplateJni.IVideoTemplateEventCallback iVideoTemplateEventCallback = this.callback;
        if (iVideoTemplateEventCallback != null) {
            iVideoTemplateEventCallback.onProgress(f);
        }
    }

    @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
    public void onFinish() {
        doMix();
    }

    @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
    public void onError(int i) {
        if (i == VideoTemplateJni.ERROR_ABORT) {
            VideoTemplateJni.destroy();
        }
        if (this.tempOutVideoFile.exists()) {
            this.tempOutVideoFile.delete();
        }
        if (this.watermarkLogoFile.exists()) {
            this.watermarkLogoFile.delete();
        }
        if (this.aminoLogoFile.exists()) {
            this.aminoLogoFile.delete();
        }
        if (this.watermarkCreatorFile.exists()) {
            this.watermarkCreatorFile.delete();
        }
        VideoTemplateJni.IVideoTemplateEventCallback iVideoTemplateEventCallback = this.callback;
        if (iVideoTemplateEventCallback != null) {
            iVideoTemplateEventCallback.onError(i);
        }
    }

    private final void doMix() {
        if (this.outputPath != null) {
            File file = this.templateMusicFile;
            if (file == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateMusicFile");
                throw null;
            }
            if (file.exists() && this.tempOutVideoFile.exists()) {
                VideoManager videoManager = (VideoManager) this.ctx.getService("videoManager");
                AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
                aVClipInfoPack.inputPath = this.tempOutVideoFile.getAbsolutePath();
                AVClipInfoPack aVClipInfoPack2 = new AVClipInfoPack();
                File file2 = this.templateMusicFile;
                if (file2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateMusicFile");
                    throw null;
                }
                aVClipInfoPack2.inputPath = file2.getAbsolutePath();
                aVClipInfoPack2.trimStartInMs = 0;
                Template template = this.template;
                if (template == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("template");
                    throw null;
                }
                float f = template.outputFrameCount;
                if (template == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("template");
                    throw null;
                }
                aVClipInfoPack2.trimEndInMs = (int) ((f / template.fps) * 1000);
                List<? extends AVClipInfoPack> listListOf = CollectionsKt__CollectionsJVMKt.listOf(aVClipInfoPack2);
                String str = this.outputPath;
                if (str != null) {
                    videoManager.simpleAVMix(aVClipInfoPack, listListOf, new File(str), new IVideoServiceCallback() { // from class: com.narvii.videotemplate.VideoTemplateManager.doMix.1
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
                        public void onFrameBitmapLoaded(int i, Bitmap bitmap) {
                            IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i, bitmap);
                        }

                        @Override // com.narvii.video.interfaces.IVideoServiceCallback
                        public void onFramePicturesLoaded(int i, File file3) {
                            IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i, file3);
                        }

                        @Override // com.narvii.video.interfaces.IVideoServiceCallback
                        public void onProgress(float f2, String str2) {
                            IVideoServiceCallback.DefaultImpls.onProgress(this, f2, str2);
                        }

                        @Override // com.narvii.video.interfaces.IVideoServiceCallback
                        public void onVideoProcessed(String path) {
                            Intrinsics.checkParameterIsNotNull(path, "path");
                            if (VideoTemplateManager.this.tempOutVideoFile.exists()) {
                                VideoTemplateManager.this.tempOutVideoFile.delete();
                            }
                            if (VideoTemplateManager.this.watermarkLogoFile.exists()) {
                                VideoTemplateManager.this.watermarkLogoFile.delete();
                            }
                            if (VideoTemplateManager.this.aminoLogoFile.exists()) {
                                VideoTemplateManager.this.aminoLogoFile.delete();
                            }
                            if (VideoTemplateManager.this.watermarkCreatorFile.exists()) {
                                VideoTemplateManager.this.watermarkCreatorFile.delete();
                            }
                            VideoTemplateJni.IVideoTemplateEventCallback iVideoTemplateEventCallback = VideoTemplateManager.this.callback;
                            if (iVideoTemplateEventCallback != null) {
                                iVideoTemplateEventCallback.onFinish();
                            }
                        }

                        @Override // com.narvii.video.interfaces.IVideoServiceCallback
                        public void onActionFailed(Exception exc) {
                            VideoTemplateManager.this.onError(VideoTemplateJni.ERROR_AV_MIX);
                        }
                    }, true);
                    return;
                } else {
                    Intrinsics.throwNpe();
                    throw null;
                }
            }
        }
        onError(VideoTemplateJni.ERROR_AV_MIX);
    }
}
