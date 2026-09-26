package com.narvii.videotemplate;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.LayoutInflater;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.mediaeditor.databinding.ComponentWatermarkCreatorInfoBinding;
import com.narvii.mediaeditor.databinding.ComponentWatermarkLogoBinding;
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
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.collections.u;
import kotlin.collections.w;
import kotlin.io.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class VideoTemplateManager extends BroadcastReceiver implements VideoTemplateJni.IVideoTemplateEventCallback {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int DECODER_DEBUG_TYPE = -1;

    @NotNull
    private final File aminoLogoFile;

    @Nullable
    private VideoTemplateJni.IVideoTemplateEventCallback callback;

    @NotNull
    private final NVContext ctx;
    private final ThreadPoolExecutor executor;
    private boolean managerAlive;

    @Nullable
    private String outputPath;

    @NotNull
    private final PhotoManager photo;

    @NotNull
    private final VideoTemplateManager$pidCheckRunnable$1 pidCheckRunnable;
    private boolean taskRunning;

    @NotNull
    private final File tempOutVideoFile;
    private Template template;
    private File templateMusicFile;

    @NotNull
    private final File watermarkCreatorFile;

    @NotNull
    private final File watermarkLogoFile;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final void create(@NotNull TemplateConfig config, @Nullable VideoTemplateJni.IVideoTemplateEventCallback iVideoTemplateEventCallback) throws IOException {
        t.j(config, "config");
        InputStream inputStreamOpen = this.ctx.getContext().getAssets().open(config.folder + "/template.json");
        t.i(inputStreamOpen, "open(...)");
        Template template = (Template) JacksonUtils.DEFAULT_MAPPER.readValue(inputStreamOpen, Template.class);
        inputStreamOpen.close();
        t.g(template);
        create(template, config.isWatermark, iVideoTemplateEventCallback);
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

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [com.narvii.videotemplate.VideoTemplateManager$pidCheckRunnable$1] */
    public VideoTemplateManager(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        Object service = ctx.getService("photo");
        t.i(service, "getService(...)");
        this.photo = (PhotoManager) service;
        this.tempOutVideoFile = new File(ctx.getContext().getCacheDir(), "vtemplate_out.h264");
        this.aminoLogoFile = new File(ctx.getContext().getCacheDir(), "aminologo.webp");
        this.watermarkLogoFile = new File(ctx.getContext().getCacheDir(), "wmlogo.png");
        this.watermarkCreatorFile = new File(ctx.getContext().getCacheDir(), "creatorBg.png");
        this.executor = Utils.createThreadPoolExecutor(2, "Video_Template");
        this.pidCheckRunnable = new Runnable() { // from class: com.narvii.videotemplate.VideoTemplateManager$pidCheckRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                if (this.this$0.taskRunning) {
                    try {
                        if (!new File("/proc/" + Integer.parseInt(l.h(new File(this.this$0.getCtx().getContext().getFilesDir(), TemplateServiceKt.TEMPLATE_PID_FILE_PATH), d.US_ASCII)) + "/mem").exists()) {
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

    private final void doMix() {
        if (this.outputPath != null) {
            File file = this.templateMusicFile;
            Template template = null;
            if (file == null) {
                t.B("templateMusicFile");
                file = null;
            }
            if (file.exists() && this.tempOutVideoFile.exists()) {
                VideoManager videoManager = (VideoManager) this.ctx.getService("videoManager");
                AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
                aVClipInfoPack.inputPath = this.tempOutVideoFile.getAbsolutePath();
                AVClipInfoPack aVClipInfoPack2 = new AVClipInfoPack();
                File file2 = this.templateMusicFile;
                if (file2 == null) {
                    t.B("templateMusicFile");
                    file2 = null;
                }
                aVClipInfoPack2.inputPath = file2.getAbsolutePath();
                aVClipInfoPack2.trimStartInMs = 0;
                Template template2 = this.template;
                if (template2 == null) {
                    t.B("template");
                    template2 = null;
                }
                float f = template2.outputFrameCount;
                Template template3 = this.template;
                if (template3 == null) {
                    t.B("template");
                } else {
                    template = template3;
                }
                aVClipInfoPack2.trimEndInMs = (int) ((f / template.fps) * 1000);
                List<? extends AVClipInfoPack> listE = u.e(aVClipInfoPack2);
                String str = this.outputPath;
                t.g(str);
                videoManager.simpleAVMix(aVClipInfoPack, listE, new File(str), new IVideoServiceCallback() { // from class: com.narvii.videotemplate.VideoTemplateManager.doMix.1
                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onActionFailed(@Nullable Exception exc) {
                        VideoTemplateManager.this.onError(VideoTemplateJni.ERROR_AV_MIX);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onVideoProcessed(@NotNull String path) {
                        t.j(path, "path");
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
                    public void onActionCancelled() {
                        IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onActionStarted() {
                        IVideoServiceCallback.DefaultImpls.onActionStarted(this);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onExecutingTaskChanged(@NotNull g7.d dVar) {
                        IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, dVar);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onFrameBitmapLoaded(int i10, @Nullable Bitmap bitmap) {
                        IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i10, bitmap);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onFramePicturesLoaded(int i10, @Nullable File file3) {
                        IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i10, file3);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onProgress(float f6, @Nullable String str2) {
                        IVideoServiceCallback.DefaultImpls.onProgress(this, f6, str2);
                    }
                }, true);
                return;
            }
        }
        onError(VideoTemplateJni.ERROR_AV_MIX);
    }

    private final Bitmap generateCreatorInfoPage(User user, Community community) {
        ComponentWatermarkCreatorInfoBinding componentWatermarkCreatorInfoBindingInflate = ComponentWatermarkCreatorInfoBinding.inflate(LayoutInflater.from(this.ctx.getContext()), null, false);
        t.i(componentWatermarkCreatorInfoBindingInflate, "inflate(...)");
        componentWatermarkCreatorInfoBindingInflate.authorBgUserAvatar.setImageUrl(user.icon);
        componentWatermarkCreatorInfoBindingInflate.authorBgUserName.setText(user.nickname());
        if (community == null || community.id == 0) {
            componentWatermarkCreatorInfoBindingInflate.authorBgCommunityAminoId.setVisibility(8);
            componentWatermarkCreatorInfoBindingInflate.authorBgCommunityNameOrAminoId.setText('@' + user.aminoId);
        } else {
            componentWatermarkCreatorInfoBindingInflate.authorBgCommunityNameOrAminoId.setText("From:" + community.name);
            componentWatermarkCreatorInfoBindingInflate.authorBgCommunityAminoId.setText("Amino ID: " + community.endpoint);
        }
        componentWatermarkCreatorInfoBindingInflate.getRoot().measure(View.MeasureSpec.makeMeasureSpec(720, 1073741824), View.MeasureSpec.makeMeasureSpec(1280, 1073741824));
        componentWatermarkCreatorInfoBindingInflate.getRoot().layout(0, 0, componentWatermarkCreatorInfoBindingInflate.getRoot().getMeasuredWidth(), componentWatermarkCreatorInfoBindingInflate.getRoot().getMeasuredHeight());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(componentWatermarkCreatorInfoBindingInflate.getRoot().getWidth(), componentWatermarkCreatorInfoBindingInflate.getRoot().getHeight(), Bitmap.Config.ARGB_8888);
        t.i(bitmapCreateBitmap, "createBitmap(...)");
        componentWatermarkCreatorInfoBindingInflate.getRoot().draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }

    private final Bitmap generateWatermarkLogo(User user, Community community) {
        ComponentWatermarkLogoBinding componentWatermarkLogoBindingInflate = ComponentWatermarkLogoBinding.inflate(LayoutInflater.from(this.ctx.getContext()), null, false);
        t.i(componentWatermarkLogoBindingInflate, "inflate(...)");
        componentWatermarkLogoBindingInflate.userName.setText(user.nickname());
        if (community == null || community.id == 0) {
            componentWatermarkLogoBindingInflate.communityFrom.setVisibility(8);
            componentWatermarkLogoBindingInflate.communityNameOrAminoId.setText('@' + user.aminoId);
        } else {
            componentWatermarkLogoBindingInflate.communityNameOrAminoId.setText(community.name);
        }
        componentWatermarkLogoBindingInflate.getRoot().measure(View.MeasureSpec.makeMeasureSpec(WsMessage.LIVE_LAYER_USER_JOINED_EVENT, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(120, 1073741824));
        componentWatermarkLogoBindingInflate.getRoot().layout(0, 0, componentWatermarkLogoBindingInflate.getRoot().getMeasuredWidth(), componentWatermarkLogoBindingInflate.getRoot().getMeasuredHeight());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(componentWatermarkLogoBindingInflate.getRoot().getWidth(), componentWatermarkLogoBindingInflate.getRoot().getHeight(), Bitmap.Config.ARGB_8888);
        t.i(bitmapCreateBitmap, "createBitmap(...)");
        componentWatermarkLogoBindingInflate.getRoot().draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:34:0x00c4  */
    public static final void startCompile$lambda$4(List inputMediaList, VideoTemplateManager this$0) {
        String imageType;
        t.j(inputMediaList, "$inputMediaList");
        t.j(this$0, "this$0");
        List list = inputMediaList;
        ArrayList arrayList = new ArrayList(w.x(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this$0.photo.getPath(((Media) ((w7.u) it.next()).c()).url).getAbsolutePath());
        }
        ArrayList arrayList2 = new ArrayList(w.x(list, 10));
        Iterator it2 = list.iterator();
        while (true) {
            int i10 = 0;
            if (!it2.hasNext()) {
                break;
            }
            w7.u uVar = (w7.u) it2.next();
            SceneTemplateExtraInfo sceneTemplateExtraInfo = (SceneTemplateExtraInfo) uVar.d();
            if (((Media) uVar.c()).isVideo()) {
                i10 = 3;
            } else if (!((Media) uVar.c()).isImage() || (imageType = Utils.getImageType(this$0.photo.getPath(((Media) uVar.c()).url).getAbsolutePath())) == null) {
                i10 = -1;
            } else {
                int iHashCode = imageType.hashCode();
                if (iHashCode != 102340) {
                    if (iHashCode != 105441) {
                        if (iHashCode != 111145 || !imageType.equals("png")) {
                            i10 = -1;
                        }
                    } else if (imageType.equals("jpg")) {
                        i10 = 1;
                    } else {
                        i10 = -1;
                    }
                } else if (imageType.equals("gif")) {
                    i10 = 2;
                } else {
                    i10 = -1;
                }
            }
            sceneTemplateExtraInfo.inputType = i10;
            arrayList2.add(sceneTemplateExtraInfo);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        SceneTemplateExtraInfo[] sceneTemplateExtraInfoArr = (SceneTemplateExtraInfo[]) arrayList2.toArray(new SceneTemplateExtraInfo[0]);
        String absolutePath = this$0.tempOutVideoFile.getAbsolutePath();
        Template template = this$0.template;
        Template template2 = null;
        if (template == null) {
            t.B("template");
            template = null;
        }
        int i11 = template.outputFrameCount;
        Template template3 = this$0.template;
        if (template3 == null) {
            t.B("template");
        } else {
            template2 = template3;
        }
        VideoTemplateJni.start(strArr, sceneTemplateExtraInfoArr, absolutePath, i11, template2.fps);
    }

    @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
    public void onError(int i10) {
        if (i10 == VideoTemplateJni.ERROR_ABORT) {
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
            iVideoTemplateEventCallback.onError(i10);
        }
    }

    @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
    public void onProgress(float f) {
        VideoTemplateJni.IVideoTemplateEventCallback iVideoTemplateEventCallback = this.callback;
        if (iVideoTemplateEventCallback != null) {
            iVideoTemplateEventCallback.onProgress(f);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.BroadcastReceiver
    public void onReceive(@NotNull Context context, @NotNull Intent intent) {
        VideoTemplateJni.IVideoTemplateEventCallback iVideoTemplateEventCallback;
        t.j(context, "context");
        t.j(intent, "intent");
        String action = intent.getAction();
        if (action != null) {
            switch (action.hashCode()) {
                case -1893968811:
                    if (action.equals(TemplateServiceKt.VIDEO_TEMPLATE_COMPILE_ERROR)) {
                        this.taskRunning = false;
                        int intExtra = intent.getIntExtra("com.narvii.videotemplate.errorType", VideoTemplateJni.ERROR_NONE);
                        if (this.tempOutVideoFile.exists()) {
                            this.tempOutVideoFile.delete();
                        }
                        VideoTemplateJni.IVideoTemplateEventCallback iVideoTemplateEventCallback2 = this.callback;
                        if (iVideoTemplateEventCallback2 != null) {
                            iVideoTemplateEventCallback2.onError(intExtra);
                        }
                        break;
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
                    }
                    break;
            }
        }
    }

    public final void startCompile(@NotNull final List<? extends w7.u<? extends Media, ? extends SceneTemplateExtraInfo>> inputMediaList, @NotNull String outputPath) {
        t.j(inputMediaList, "inputMediaList");
        t.j(outputPath, "outputPath");
        if (this.managerAlive) {
            this.outputPath = outputPath;
            Template template = this.template;
            if (template == null) {
                t.B("template");
                template = null;
            }
            if (template.backgroundMusic != null) {
                this.executor.execute(new Runnable() { // from class: com.narvii.videotemplate.b
                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        VideoTemplateManager.startCompile$lambda$1(this.f3000a);
                    }
                });
            }
            this.executor.execute(new Runnable() { // from class: com.narvii.videotemplate.c
                @Override // java.lang.Runnable
                public final void run() {
                    VideoTemplateManager.startCompile$lambda$4(inputMediaList, this);
                }
            });
            this.taskRunning = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void printWatermark$lambda$5(VideoTemplateManager this$0, Bitmap watermarkBitmap, Bitmap creatorBgBitmap, String orgVideoPath) {
        t.j(this$0, "this$0");
        t.j(watermarkBitmap, "$watermarkBitmap");
        t.j(creatorBgBitmap, "$creatorBgBitmap");
        t.j(orgVideoPath, "$orgVideoPath");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(this$0.watermarkLogoFile);
            Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.PNG;
            watermarkBitmap.compress(compressFormat, 100, fileOutputStream);
            fileOutputStream.close();
            FileOutputStream fileOutputStream2 = new FileOutputStream(this$0.watermarkCreatorFile);
            creatorBgBitmap.compress(compressFormat, 100, fileOutputStream2);
            fileOutputStream2.close();
            FileUtils.moveFromAssetsToFile(this$0.ctx.getContext(), "watermark/watermark.webp", this$0.aminoLogoFile);
            StreamInfo streamInfoFetchStreamInfoSync = ((VideoManager) this$0.ctx.getService("videoManager")).fetchStreamInfoSync(orgVideoPath);
            Template template = this$0.template;
            Template template2 = null;
            if (template == null) {
                t.B("template");
                template = null;
            }
            template.fps = streamInfoFetchStreamInfoSync.fps;
            Template template3 = this$0.template;
            if (template3 == null) {
                t.B("template");
                template3 = null;
            }
            template3.outputFrameCount = streamInfoFetchStreamInfoSync.frameCount + 60;
            Template template4 = this$0.template;
            if (template4 == null) {
                t.B("template");
                template4 = null;
            }
            template4.segments.get(0).frameCount = streamInfoFetchStreamInfoSync.frameCount;
            Template template5 = this$0.template;
            if (template5 == null) {
                t.B("template");
                template5 = null;
            }
            VideoTemplateJni.create(template5.segments);
            ArrayList arrayList = new ArrayList();
            arrayList.add(orgVideoPath);
            arrayList.add(this$0.watermarkLogoFile.getAbsolutePath());
            arrayList.add(this$0.aminoLogoFile.getAbsolutePath());
            arrayList.add(this$0.watermarkCreatorFile.getAbsolutePath());
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
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            SceneTemplateExtraInfo[] sceneTemplateExtraInfoArr = (SceneTemplateExtraInfo[]) arrayList2.toArray(new SceneTemplateExtraInfo[0]);
            String absolutePath = this$0.tempOutVideoFile.getAbsolutePath();
            Template template6 = this$0.template;
            if (template6 == null) {
                t.B("template");
                template6 = null;
            }
            int i10 = template6.outputFrameCount;
            Template template7 = this$0.template;
            if (template7 == null) {
                t.B("template");
            } else {
                template2 = template7;
            }
            VideoTemplateJni.start(strArr, sceneTemplateExtraInfoArr, absolutePath, i10, template2.fps);
        } catch (Throwable unused) {
            this$0.onError(VideoTemplateJni.ERROR_WATERMARK);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startCompile$lambda$1(VideoTemplateManager this$0) throws Throwable {
        t.j(this$0, "this$0");
        Context context = this$0.ctx.getContext();
        Template template = this$0.template;
        File file = null;
        if (template == null) {
            t.B("template");
            template = null;
        }
        String str = template.backgroundMusic;
        File file2 = this$0.templateMusicFile;
        if (file2 == null) {
            t.B("templateMusicFile");
        } else {
            file = file2;
        }
        FileUtils.moveFromAssetsToFile(context, str, file);
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

    @Override // com.narvii.videotemplate.VideoTemplateJni.IVideoTemplateEventCallback
    public void onFinish() {
        doMix();
    }

    public final void printWatermark(@NotNull User user, int i10, @NotNull final String orgVideoPath, @NotNull String outputPath) {
        t.j(user, "user");
        t.j(orgVideoPath, "orgVideoPath");
        t.j(outputPath, "outputPath");
        if (!this.managerAlive) {
            return;
        }
        this.outputPath = outputPath;
        this.templateMusicFile = new File(orgVideoPath);
        Community community = ((CommunityService) this.ctx.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(i10);
        final Bitmap bitmapGenerateWatermarkLogo = generateWatermarkLogo(user, community);
        final Bitmap bitmapGenerateCreatorInfoPage = generateCreatorInfoPage(user, community);
        this.executor.execute(new Runnable() { // from class: com.narvii.videotemplate.a
            @Override // java.lang.Runnable
            public final void run() {
                VideoTemplateManager.printWatermark$lambda$5(this.f2997a, bitmapGenerateWatermarkLogo, bitmapGenerateCreatorInfoPage, orgVideoPath);
            }
        });
        this.taskRunning = true;
    }

    public final void create(@NotNull Template template, boolean z6, @Nullable VideoTemplateJni.IVideoTemplateEventCallback iVideoTemplateEventCallback) {
        t.j(template, "template");
        this.managerAlive = true;
        this.callback = iVideoTemplateEventCallback;
        this.template = template;
        for (TemplateSegment templateSegment : template.segments) {
            templateSegment.passCount = templateSegment.shader.length;
            int[] iArr = templateSegment.pass2ExtraInputs;
            templateSegment.pass2InputCount = iArr != null ? iArr.length : 0;
            templateSegment.shaderString = Utils.readStringFromAssets(this.ctx.getContext().getAssets(), templateSegment.shader[0]);
            if (templateSegment.shader.length > 1) {
                templateSegment.shaderString2Pass = Utils.readStringFromAssets(this.ctx.getContext().getAssets(), templateSegment.shader[1]);
            }
        }
        File file = new File(this.ctx.getContext().getCacheDir(), "templateMusic.aac");
        this.templateMusicFile = file;
        if (file.exists()) {
            File file2 = this.templateMusicFile;
            if (file2 == null) {
                t.B("templateMusicFile");
                file2 = null;
            }
            file2.delete();
        }
        if (!z6) {
            VideoTemplateJni.create(template.segments);
        }
        VideoTemplateJni.setVideoTemplateEventCallback(this);
        this.executor.prestartAllCoreThreads();
    }
}
