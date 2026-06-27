package com.narvii.editor.generator;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.meicam.sdk.NvsRational;
import com.meicam.sdk.NvsStreamingContext;
import com.meicam.sdk.NvsTimeline;
import com.narvii.editor.utils.TimelineUtils;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.FileUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.image.BitmapUtils;
import com.narvii.video.interfaces.ISceneVideoGenerator;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KProperty;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* compiled from: MeisheSceneVideoGenerator.kt */
/* loaded from: classes2.dex */
public final class MeisheSceneVideoGenerator extends ISceneVideoGenerator implements NvsStreamingContext.CompileCallback, NvsStreamingContext.CompileCallback2 {
    private boolean compileCancel;
    private MeisheTask currentTask;
    private CoverImageTask grabCoverImageTask;
    private final Map<String, NvsTimeline> sceneMap;
    private final Lazy singleThreadExecutor$delegate;
    private final Lazy streamingContext$delegate;
    private final Lazy taskQueue$delegate;
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MeisheSceneVideoGenerator.class), "streamingContext", "getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MeisheSceneVideoGenerator.class), "taskQueue", "getTaskQueue()Ljava/util/LinkedList;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MeisheSceneVideoGenerator.class), "singleThreadExecutor", "getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;"))};
    public static final Companion Companion = new Companion(null);
    private static final Lazy instance$delegate = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<MeisheSceneVideoGenerator>() { // from class: com.narvii.editor.generator.MeisheSceneVideoGenerator$Companion$instance$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final MeisheSceneVideoGenerator invoke() {
            return new MeisheSceneVideoGenerator(null);
        }
    });
    private static final String TAG = "MeisheSceneVideoGenerator";

    public final ExecutorService getSingleThreadExecutor() {
        Lazy lazy = this.singleThreadExecutor$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (ExecutorService) lazy.getValue();
    }

    public final NvsStreamingContext getStreamingContext() {
        Lazy lazy = this.streamingContext$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (NvsStreamingContext) lazy.getValue();
    }

    public final LinkedList<ISceneVideoGenerator.Task> getTaskQueue() {
        Lazy lazy = this.taskQueue$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (LinkedList) lazy.getValue();
    }

    @Override // com.meicam.sdk.NvsStreamingContext.CompileCallback
    public void onCompileFinished(NvsTimeline nvsTimeline) {
    }

    private MeisheSceneVideoGenerator() {
        this.streamingContext$delegate = LazyKt__LazyJVMKt.lazy(new Function0<NvsStreamingContext>() { // from class: com.narvii.editor.generator.MeisheSceneVideoGenerator$streamingContext$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final NvsStreamingContext invoke() {
                return NvsStreamingContext.getInstance();
            }
        });
        this.taskQueue$delegate = LazyKt__LazyJVMKt.lazy(new Function0<LinkedList<ISceneVideoGenerator.Task>>() { // from class: com.narvii.editor.generator.MeisheSceneVideoGenerator$taskQueue$2
            @Override // kotlin.jvm.functions.Function0
            public final LinkedList<ISceneVideoGenerator.Task> invoke() {
                return new LinkedList<>();
            }
        });
        this.sceneMap = new LinkedHashMap();
        this.singleThreadExecutor$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ExecutorService>() { // from class: com.narvii.editor.generator.MeisheSceneVideoGenerator$singleThreadExecutor$2
            @Override // kotlin.jvm.functions.Function0
            public final ExecutorService invoke() {
                return Executors.newSingleThreadExecutor();
            }
        });
        setListener();
    }

    public /* synthetic */ MeisheSceneVideoGenerator(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: MeisheSceneVideoGenerator.kt */
    public static final class Companion {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Companion.class), "instance", "getInstance()Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;"))};

        public final MeisheSceneVideoGenerator getInstance() {
            Lazy lazy = MeisheSceneVideoGenerator.instance$delegate;
            Companion companion = MeisheSceneVideoGenerator.Companion;
            KProperty kProperty = $$delegatedProperties[0];
            return (MeisheSceneVideoGenerator) lazy.getValue();
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getTAG() {
            return MeisheSceneVideoGenerator.TAG;
        }
    }

    public final MeisheTask getCurrentTask() {
        return this.currentTask;
    }

    public final void setCurrentTask(MeisheTask meisheTask) {
        this.currentTask = meisheTask;
    }

    public final CoverImageTask getGrabCoverImageTask() {
        return this.grabCoverImageTask;
    }

    public final void setGrabCoverImageTask(CoverImageTask coverImageTask) {
        this.grabCoverImageTask = coverImageTask;
    }

    public final Map<String, NvsTimeline> getSceneMap() {
        return this.sceneMap;
    }

    public final boolean getCompileCancel() {
        return this.compileCancel;
    }

    public final void setCompileCancel(boolean z) {
        this.compileCancel = z;
    }

    private final void setListener() {
        getStreamingContext().setCompileCallback(this);
        getStreamingContext().setCompileCallback2(this);
    }

    @Override // com.narvii.video.interfaces.ISceneVideoGenerator
    public void prepareSceneList(ArrayList<SceneInfo> sceneList) {
        Intrinsics.checkParameterIsNotNull(sceneList, "sceneList");
        this.sceneMap.clear();
        for (SceneInfo sceneInfo : sceneList) {
            Map<String, NvsTimeline> map = this.sceneMap;
            String str = sceneInfo.id;
            Intrinsics.checkExpressionValueIsNotNull(str, "it.id");
            map.put(str, TimelineUtils.INSTANCE.createTimeline(sceneInfo));
        }
        MeisheTask meisheTask = this.currentTask;
        if (meisheTask != null) {
            meisheTask.pause();
        }
        safeSetCurrentTask(null);
    }

    @Override // com.narvii.video.interfaces.ISceneVideoGenerator
    public void generateStoryVideo(SceneDraft sceneDraft, String outputPath, ISceneVideoGenerator.OnGenerateCallback onGenerateCallback) {
        Intrinsics.checkParameterIsNotNull(sceneDraft, "sceneDraft");
        Intrinsics.checkParameterIsNotNull(outputPath, "outputPath");
        Intrinsics.checkParameterIsNotNull(onGenerateCallback, "onGenerateCallback");
        generate(sceneDraft, outputPath, onGenerateCallback);
    }

    private final void generate(SceneDraft sceneDraft, String str, ISceneVideoGenerator.OnGenerateCallback onGenerateCallback) {
        pauseCurrentTask();
        String str2 = sceneDraft.draftId;
        Intrinsics.checkExpressionValueIsNotNull(str2, "sceneDraft.draftId");
        safeSetCurrentTask(new MeisheTask(this, str2, TimelineUtils.createTimeline$default(TimelineUtils.INSTANCE, sceneDraft, false, 2, null), str, onGenerateCallback));
        execute();
        String str3 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("generateStoryVideo >>> generator = ");
        sb.append(this);
        sb.append("   task id = ");
        MeisheTask meisheTask = this.currentTask;
        sb.append(meisheTask != null ? meisheTask.getId() : null);
        sb.append("    outputPath = ");
        sb.append(str);
        Log.d(str3, sb.toString());
    }

    @Override // com.narvii.video.interfaces.ISceneVideoGenerator
    public void generateSceneVideo(SceneInfo sceneInfo, String outputPath, ISceneVideoGenerator.OnGenerateCallback onGenerateCallback, boolean z) {
        Intrinsics.checkParameterIsNotNull(sceneInfo, "sceneInfo");
        Intrinsics.checkParameterIsNotNull(outputPath, "outputPath");
        Intrinsics.checkParameterIsNotNull(onGenerateCallback, "onGenerateCallback");
        generate(sceneInfo, onGenerateCallback, outputPath, z);
    }

    private final void generate(SceneInfo sceneInfo, ISceneVideoGenerator.OnGenerateCallback onGenerateCallback, String str, boolean z) {
        if (this.sceneMap.get(sceneInfo.id) == null) {
            onGenerateCallback.onCancel();
            return;
        }
        String str2 = sceneInfo.id;
        Intrinsics.checkExpressionValueIsNotNull(str2, "sceneInfo.id");
        MeisheTask meisheTask = new MeisheTask(this, str2, this.sceneMap.get(sceneInfo.id), str, onGenerateCallback);
        Iterator<ISceneVideoGenerator.Task> it = getTaskQueue().iterator();
        Intrinsics.checkExpressionValueIsNotNull(it, "taskQueue.iterator()");
        while (it.hasNext()) {
            ISceneVideoGenerator.Task next = it.next();
            Intrinsics.checkExpressionValueIsNotNull(next, "iterator.next()");
            if (TextUtils.equals(meisheTask.getId(), next.getId())) {
                it.remove();
            }
        }
        Log.d(TAG, "generateSceneVideo >>>  generator = " + this + "  task id = " + meisheTask.getId() + "    outputPath = " + str + "  immediately = " + z + ' ');
        if (z) {
            pauseCurrentTask();
            safeSetCurrentTask(meisheTask);
            execute();
        } else if (this.currentTask == null) {
            safeSetCurrentTask(meisheTask);
            execute();
        } else {
            getTaskQueue().addLast(meisheTask);
        }
    }

    @Override // com.narvii.video.interfaces.ISceneVideoGenerator
    public void grabSceneCoverImage(SceneInfo sceneInfo, String outputPath, ISceneVideoGenerator.OnGenerateCallback callback) {
        Intrinsics.checkParameterIsNotNull(sceneInfo, "sceneInfo");
        Intrinsics.checkParameterIsNotNull(outputPath, "outputPath");
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        String str = sceneInfo.id;
        Intrinsics.checkExpressionValueIsNotNull(str, "sceneInfo.id");
        this.grabCoverImageTask = new CoverImageTask(this, str, TimelineUtils.INSTANCE.createTimeline(sceneInfo), outputPath, 0, callback, 8, null);
        CoverImageTask coverImageTask = this.grabCoverImageTask;
        if (coverImageTask != null) {
            coverImageTask.execute();
        }
    }

    @Override // com.narvii.video.interfaces.ISceneVideoGenerator
    public void grabStoryCoverImage(SceneDraft sceneDraft, String outputPath, int i, ISceneVideoGenerator.OnGenerateCallback onGenerateCallback) {
        Intrinsics.checkParameterIsNotNull(sceneDraft, "sceneDraft");
        Intrinsics.checkParameterIsNotNull(outputPath, "outputPath");
        Intrinsics.checkParameterIsNotNull(onGenerateCallback, "onGenerateCallback");
        String str = sceneDraft.draftId;
        Intrinsics.checkExpressionValueIsNotNull(str, "sceneDraft.draftId");
        this.grabCoverImageTask = new CoverImageTask(this, str, TimelineUtils.INSTANCE.createTimeline(sceneDraft, false), outputPath, i, onGenerateCallback);
        CoverImageTask coverImageTask = this.grabCoverImageTask;
        if (coverImageTask != null) {
            coverImageTask.execute();
        }
    }

    private final void pauseCurrentTask() {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("pauseCurrentTask >>> task Id = ");
        MeisheTask meisheTask = this.currentTask;
        sb.append(meisheTask != null ? meisheTask.getId() : null);
        Log.d(str, sb.toString());
        MeisheTask meisheTask2 = this.currentTask;
        if (meisheTask2 != null) {
            meisheTask2.pause();
            getTaskQueue().push(meisheTask2);
        }
    }

    @Override // com.narvii.video.interfaces.ISceneVideoGenerator
    public Bitmap getLastFrameSnapShot(SceneInfo sceneInfo) {
        NvsTimeline nvsTimelineCreateTimelineWithoutDurationLimit;
        NvsStreamingContext streamingContext;
        if (sceneInfo == null || (nvsTimelineCreateTimelineWithoutDurationLimit = TimelineUtils.INSTANCE.createTimelineWithoutDurationLimit(sceneInfo)) == null || (streamingContext = getStreamingContext()) == null) {
            return null;
        }
        return streamingContext.grabImageFromTimeline(nvsTimelineCreateTimelineWithoutDurationLimit, nvsTimelineCreateTimelineWithoutDurationLimit.getDuration() - 10, new NvsRational(1, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void execute() {
        this.compileCancel = false;
        MeisheTask meisheTask = this.currentTask;
        if (meisheTask != null) {
            meisheTask.execute();
        }
    }

    private final void safeSetCurrentTask(MeisheTask meisheTask) {
        this.currentTask = meisheTask;
    }

    @Override // com.narvii.video.interfaces.ISceneVideoGenerator
    public void abort() {
        Log.d(TAG, "abort >>>");
        this.compileCancel = true;
        abortCompile();
        CoverImageTask coverImageTask = this.grabCoverImageTask;
        if (coverImageTask != null) {
            coverImageTask.abort();
        }
    }

    private final void abortCompile() {
        if (getStreamingContext().getStreamingEngineState() == 5) {
            getStreamingContext().stop();
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.CompileCallback
    public void onCompileFailed(NvsTimeline nvsTimeline) {
        ISceneVideoGenerator.OnGenerateCallback onGenerateCallback;
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onCompileFailed >>> taskId = ");
        MeisheTask meisheTask = this.currentTask;
        sb.append(meisheTask != null ? meisheTask.getId() : null);
        sb.append("  ");
        Log.d(str, sb.toString());
        MeisheTask meisheTask2 = this.currentTask;
        if (meisheTask2 != null && (onGenerateCallback = meisheTask2.getOnGenerateCallback()) != null) {
            onGenerateCallback.onError(new Exception(""));
        }
        Map<String, NvsTimeline> map = this.sceneMap;
        MeisheTask meisheTask3 = this.currentTask;
        String id = meisheTask3 != null ? meisheTask3.getId() : null;
        if (map == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>");
        }
        TypeIntrinsics.asMutableMap(map).remove(id);
    }

    @Override // com.meicam.sdk.NvsStreamingContext.CompileCallback
    public void onCompileProgress(NvsTimeline nvsTimeline, int i) {
        ISceneVideoGenerator.OnGenerateCallback onGenerateCallback;
        MeisheTask meisheTask = this.currentTask;
        if (meisheTask == null || (onGenerateCallback = meisheTask.getOnGenerateCallback()) == null) {
            return;
        }
        onGenerateCallback.onProgress(i);
    }

    @Override // com.meicam.sdk.NvsStreamingContext.CompileCallback2
    public void onCompileCompleted(NvsTimeline nvsTimeline, boolean z) {
        NvsTimeline timeline;
        ISceneVideoGenerator.OnGenerateCallback onGenerateCallback;
        ISceneVideoGenerator.OnGenerateCallback onGenerateCallback2;
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onCompileCompleted >>> taskId = ");
        MeisheTask meisheTask = this.currentTask;
        sb.append(meisheTask != null ? meisheTask.getId() : null);
        sb.append("  isCanceled = ");
        sb.append(z);
        Log.d(str, sb.toString());
        Map<String, NvsTimeline> map = this.sceneMap;
        MeisheTask meisheTask2 = this.currentTask;
        String id = meisheTask2 != null ? meisheTask2.getId() : null;
        if (map == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>");
        }
        TypeIntrinsics.asMutableMap(map).remove(id);
        getStreamingContext().removeTimeline(nvsTimeline);
        if (z || this.compileCancel) {
            MeisheTask meisheTask3 = this.currentTask;
            if (meisheTask3 != null && (onGenerateCallback2 = meisheTask3.getOnGenerateCallback()) != null) {
                onGenerateCallback2.onCancel();
            }
            while (!getTaskQueue().isEmpty()) {
                MeisheTask meisheTask4 = (MeisheTask) getTaskQueue().pop();
                if (meisheTask4 != null && (onGenerateCallback = meisheTask4.getOnGenerateCallback()) != null) {
                    onGenerateCallback.onCancel();
                }
                if (meisheTask4 != null && (timeline = meisheTask4.getTimeline()) != null) {
                    getStreamingContext().removeTimeline(timeline);
                }
            }
            safeSetCurrentTask(null);
            this.sceneMap.clear();
            this.compileCancel = false;
            return;
        }
        MeisheTask meisheTask5 = this.currentTask;
        if (meisheTask5 != null) {
            if (TextUtils.isEmpty(meisheTask5.getOutputPath()) || FileUtils.isEmpty(new File(meisheTask5.getOutputPath()))) {
                ISceneVideoGenerator.OnGenerateCallback onGenerateCallback3 = meisheTask5.getOnGenerateCallback();
                if (onGenerateCallback3 != null) {
                    onGenerateCallback3.onError(new Exception("output file is not exist"));
                }
            } else {
                ISceneVideoGenerator.OnGenerateCallback onGenerateCallback4 = meisheTask5.getOnGenerateCallback();
                if (onGenerateCallback4 != null) {
                    String outputPath = meisheTask5.getOutputPath();
                    if (outputPath == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    onGenerateCallback4.onSuccess(outputPath);
                }
            }
        }
        if (!getTaskQueue().isEmpty()) {
            safeSetCurrentTask((MeisheTask) getTaskQueue().pop());
        } else {
            safeSetCurrentTask(null);
        }
        Utils.post(new Runnable() { // from class: com.narvii.editor.generator.MeisheSceneVideoGenerator.onCompileCompleted.3
            @Override // java.lang.Runnable
            public final void run() {
                MeisheSceneVideoGenerator.this.execute();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void clearCoverImageTask() {
        NvsTimeline timeline;
        CoverImageTask coverImageTask = this.grabCoverImageTask;
        if (coverImageTask != null && (timeline = coverImageTask.getTimeline()) != null) {
            getStreamingContext().removeTimeline(timeline);
        }
        this.grabCoverImageTask = null;
    }

    /* compiled from: MeisheSceneVideoGenerator.kt */
    public final class MeisheTask extends ISceneVideoGenerator.Task {
        private final ISceneVideoGenerator.OnGenerateCallback onGenerateCallback;
        private final String outputPath;
        final /* synthetic */ MeisheSceneVideoGenerator this$0;
        private final NvsTimeline timeline;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MeisheTask(MeisheSceneVideoGenerator meisheSceneVideoGenerator, String id, NvsTimeline nvsTimeline, String str, ISceneVideoGenerator.OnGenerateCallback onGenerateCallback) {
            super(id);
            Intrinsics.checkParameterIsNotNull(id, "id");
            this.this$0 = meisheSceneVideoGenerator;
            this.timeline = nvsTimeline;
            this.outputPath = str;
            this.onGenerateCallback = onGenerateCallback;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ MeisheTask(MeisheSceneVideoGenerator meisheSceneVideoGenerator, String str, NvsTimeline nvsTimeline, String str2, ISceneVideoGenerator.OnGenerateCallback onGenerateCallback, int i, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i & 1) != 0) {
                str = UUID.randomUUID().toString();
                Intrinsics.checkExpressionValueIsNotNull(str, "UUID.randomUUID().toString()");
            }
            this(meisheSceneVideoGenerator, str, nvsTimeline, str2, onGenerateCallback);
        }

        public final NvsTimeline getTimeline() {
            return this.timeline;
        }

        public final String getOutputPath() {
            return this.outputPath;
        }

        public final ISceneVideoGenerator.OnGenerateCallback getOnGenerateCallback() {
            return this.onGenerateCallback;
        }

        @Override // com.narvii.video.interfaces.ISceneVideoGenerator.Task
        public void execute() {
            NvsTimeline nvsTimeline = this.timeline;
            if (nvsTimeline != null) {
                Log.d(MeisheSceneVideoGenerator.Companion.getTAG(), "MeisheTask execute >>> id = " + getId() + "  outputPath = " + this.outputPath);
                if (!FileUtils.isEmpty(new File(this.outputPath))) {
                    FileUtils.deleteFile(new File(this.outputPath));
                }
                this.this$0.getStreamingContext().setCompileConfigurations(TimelineUtils.INSTANCE.createCompileConfig());
                this.this$0.getStreamingContext().setCustomCompileVideoHeight(1280);
                this.this$0.getStreamingContext().compileTimeline(nvsTimeline, 0L, nvsTimeline.getDuration(), this.outputPath, 256, 2, 1);
            }
        }

        @Override // com.narvii.video.interfaces.ISceneVideoGenerator.Task
        public void pause() {
            Log.d(MeisheSceneVideoGenerator.Companion.getTAG(), "MeisheTask pause >>> id = " + getId() + "  outputPath = " + this.outputPath);
            this.this$0.getStreamingContext().stop();
        }

        @Override // com.narvii.video.interfaces.ISceneVideoGenerator.Task
        public void abort() {
            Log.d(MeisheSceneVideoGenerator.Companion.getTAG(), "MeisheTask abort >>> id = " + getId() + "  outputPath = " + this.outputPath);
            this.this$0.getStreamingContext().stop();
        }
    }

    /* compiled from: MeisheSceneVideoGenerator.kt */
    public final class CoverImageTask extends ISceneVideoGenerator.Task {
        private ISceneVideoGenerator.OnGenerateCallback onGenerateCallback;
        private final String outputPath;
        private final int selectedPlaybackTime;
        final /* synthetic */ MeisheSceneVideoGenerator this$0;
        private final NvsTimeline timeline;

        @Override // com.narvii.video.interfaces.ISceneVideoGenerator.Task
        public void pause() {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CoverImageTask(MeisheSceneVideoGenerator meisheSceneVideoGenerator, String id, NvsTimeline nvsTimeline, String str, int i, ISceneVideoGenerator.OnGenerateCallback onGenerateCallback) {
            super(id);
            Intrinsics.checkParameterIsNotNull(id, "id");
            this.this$0 = meisheSceneVideoGenerator;
            this.timeline = nvsTimeline;
            this.outputPath = str;
            this.selectedPlaybackTime = i;
            this.onGenerateCallback = onGenerateCallback;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ CoverImageTask(MeisheSceneVideoGenerator meisheSceneVideoGenerator, String str, NvsTimeline nvsTimeline, String str2, int i, ISceneVideoGenerator.OnGenerateCallback onGenerateCallback, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i2 & 1) != 0) {
                str = UUID.randomUUID().toString();
                Intrinsics.checkExpressionValueIsNotNull(str, "UUID.randomUUID().toString()");
            }
            this(meisheSceneVideoGenerator, str, nvsTimeline, str2, (i2 & 8) != 0 ? -1 : i, onGenerateCallback);
        }

        public final NvsTimeline getTimeline() {
            return this.timeline;
        }

        public final String getOutputPath() {
            return this.outputPath;
        }

        public final int getSelectedPlaybackTime() {
            return this.selectedPlaybackTime;
        }

        public final ISceneVideoGenerator.OnGenerateCallback getOnGenerateCallback() {
            return this.onGenerateCallback;
        }

        public final void setOnGenerateCallback(ISceneVideoGenerator.OnGenerateCallback onGenerateCallback) {
            this.onGenerateCallback = onGenerateCallback;
        }

        @Override // com.narvii.video.interfaces.ISceneVideoGenerator.Task
        public void execute() {
            final File file = new File(this.outputPath);
            if (file.isDirectory()) {
                ISceneVideoGenerator.OnGenerateCallback onGenerateCallback = this.onGenerateCallback;
                if (onGenerateCallback != null) {
                    onGenerateCallback.onError(new Exception("output path error"));
                    return;
                }
                return;
            }
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            } else if (file.exists()) {
                file.delete();
            }
            int i = this.selectedPlaybackTime;
            final long j = i == -1 ? 1L : i * 1000;
            this.this$0.getSingleThreadExecutor().execute(new Runnable() { // from class: com.narvii.editor.generator.MeisheSceneVideoGenerator$CoverImageTask$execute$1
                @Override // java.lang.Runnable
                public final void run() {
                    Bitmap bitmapGrabImageFromTimeline = this.this$0.this$0.getStreamingContext().grabImageFromTimeline(this.this$0.getTimeline(), j, new NvsRational(1, 1));
                    if (bitmapGrabImageFromTimeline != null) {
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(file);
                            BitmapUtils.compressJpeg(bitmapGrabImageFromTimeline, 100, fileOutputStream);
                            fileOutputStream.close();
                        } catch (Throwable th) {
                            Utils.post(new Runnable() { // from class: com.narvii.editor.generator.MeisheSceneVideoGenerator$CoverImageTask$execute$1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MeisheSceneVideoGenerator$CoverImageTask$execute$1.this.this$0.this$0.clearCoverImageTask();
                                    ISceneVideoGenerator.OnGenerateCallback onGenerateCallback2 = MeisheSceneVideoGenerator$CoverImageTask$execute$1.this.this$0.getOnGenerateCallback();
                                    if (onGenerateCallback2 != null) {
                                        onGenerateCallback2.onError(new Exception(th));
                                    }
                                }
                            });
                        }
                        Utils.post(new Runnable() { // from class: com.narvii.editor.generator.MeisheSceneVideoGenerator$CoverImageTask$execute$1.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                MeisheSceneVideoGenerator$CoverImageTask$execute$1.this.this$0.this$0.clearCoverImageTask();
                                ISceneVideoGenerator.OnGenerateCallback onGenerateCallback2 = MeisheSceneVideoGenerator$CoverImageTask$execute$1.this.this$0.getOnGenerateCallback();
                                if (onGenerateCallback2 != null) {
                                    String outputPath = MeisheSceneVideoGenerator$CoverImageTask$execute$1.this.this$0.getOutputPath();
                                    if (outputPath != null) {
                                        onGenerateCallback2.onSuccess(outputPath);
                                    } else {
                                        Intrinsics.throwNpe();
                                        throw null;
                                    }
                                }
                            }
                        });
                        return;
                    }
                    Utils.post(new Runnable() { // from class: com.narvii.editor.generator.MeisheSceneVideoGenerator$CoverImageTask$execute$1.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            MeisheSceneVideoGenerator$CoverImageTask$execute$1.this.this$0.this$0.clearCoverImageTask();
                            ISceneVideoGenerator.OnGenerateCallback onGenerateCallback2 = MeisheSceneVideoGenerator$CoverImageTask$execute$1.this.this$0.getOnGenerateCallback();
                            if (onGenerateCallback2 != null) {
                                onGenerateCallback2.onError(new Exception(IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR));
                            }
                        }
                    });
                }
            });
        }

        @Override // com.narvii.video.interfaces.ISceneVideoGenerator.Task
        public void abort() {
            this.this$0.clearCoverImageTask();
            ISceneVideoGenerator.OnGenerateCallback onGenerateCallback = this.onGenerateCallback;
            if (onGenerateCallback != null) {
                onGenerateCallback.onCancel();
            }
            this.onGenerateCallback = null;
        }
    }
}
