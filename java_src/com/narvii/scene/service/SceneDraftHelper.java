package com.narvii.scene.service;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.model.Scene;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.photos.PhotoManager;
import com.narvii.post.DraftManager;
import com.narvii.scene.SceneConstant;
import com.narvii.scene.model.SceneCoverImageInfo;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: SceneDraftHelper.kt */
/* loaded from: classes3.dex */
public final class SceneDraftHelper {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneDraftHelper.class), "singleThreadExecutor", "getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;"))};
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "SceneDraftHelper";
    private final Function1<File, Unit> deleteFile;
    private final DraftManager draftManager;
    private final NVContext nvContext;
    private final PhotoManager photoManager;
    private final Lazy singleThreadExecutor$delegate;

    private final ExecutorService getSingleThreadExecutor() {
        Lazy lazy = this.singleThreadExecutor$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ExecutorService) lazy.getValue();
    }

    public SceneDraftHelper(NVContext nvContext) {
        Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
        this.nvContext = nvContext;
        Object service = this.nvContext.getService("photo");
        Intrinsics.checkExpressionValueIsNotNull(service, "nvContext.getService(\"photo\")");
        this.photoManager = (PhotoManager) service;
        Object service2 = this.nvContext.getService(EntryManager.ENTRY_DRAFT);
        Intrinsics.checkExpressionValueIsNotNull(service2, "nvContext.getService(\"draft\")");
        this.draftManager = (DraftManager) service2;
        this.singleThreadExecutor$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ExecutorService>() { // from class: com.narvii.scene.service.SceneDraftHelper$singleThreadExecutor$2
            @Override // kotlin.jvm.functions.Function0
            public final ExecutorService invoke() {
                return Executors.newSingleThreadExecutor();
            }
        });
        this.deleteFile = new Function1<File, Unit>() { // from class: com.narvii.scene.service.SceneDraftHelper.deleteFile.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(File file) {
                invoke2(file);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(File it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                FileUtils.deleteFile(it);
                Log.d(SceneDraftHelper.TAG, "delete useless file : " + it.getAbsoluteFile());
            }
        };
    }

    /* compiled from: SceneDraftHelper.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x02b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void deleteUselessFile(final com.narvii.scene.model.SceneDraft r14) {
        /*
            Method dump skipped, instructions count: 889
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.scene.service.SceneDraftHelper.deleteUselessFile(com.narvii.scene.model.SceneDraft):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void deleteFile(File file, Function1<? super File, Boolean> function1) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            ArrayList arrayList = new ArrayList();
            for (File it : fileArrListFiles) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                if (!function1.invoke(it).booleanValue()) {
                    arrayList.add(it);
                }
            }
            Function1<File, Unit> function12 = this.deleteFile;
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                function12.invoke(it2.next());
            }
        }
    }

    public final void correctCoverImage(final SceneDraft draft, final Function1<? super SceneDraft, Unit> correctListener) {
        Intrinsics.checkParameterIsNotNull(draft, "draft");
        Intrinsics.checkParameterIsNotNull(correctListener, "correctListener");
        Log.d(TAG, "start correct draft cover >>> " + draft.draftId);
        if (draft.sceneInfos.size() == 0) {
            draft.coverImage = "";
            draft.coverImageInfo = null;
            correctListener.invoke(draft);
            return;
        }
        SceneCoverImageInfo sceneCoverImageInfo = draft.coverImageInfo;
        if (sceneCoverImageInfo != null && sceneCoverImageInfo.from != 0) {
            sceneCoverImageInfo.defaultUrl = "";
            correctListener.invoke(draft);
            return;
        }
        if (draft.isEmpty()) {
            correctListener.invoke(draft);
            return;
        }
        final String sceneCovImg = draft.getFirstSceneCoverImagePath();
        if (!TextUtils.isEmpty(sceneCovImg) && !FileUtils.isEmpty(new File(sceneCovImg))) {
            String str = draft.coverImage;
            Intrinsics.checkExpressionValueIsNotNull(sceneCovImg, "sceneCovImg");
            if (!TextUtils.equals(str, sceneCovImg2draftCovImg(sceneCovImg))) {
                getSingleThreadExecutor().execute(new Runnable() { // from class: com.narvii.scene.service.SceneDraftHelper.correctCoverImage.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Runnable runnable;
                        try {
                            try {
                                File file = new File(SceneDraftHelper.this.draftManager.getDir(draft.draftId), SceneConstant.COVER_IMAGE_FOLDER);
                                if (FileUtils.isEmpty(file)) {
                                    file.mkdirs();
                                }
                                Context context = SceneDraftHelper.this.nvContext.getContext();
                                Uri uriFromFile = Uri.fromFile(new File(sceneCovImg));
                                SceneDraftHelper sceneDraftHelper = SceneDraftHelper.this;
                                String sceneCovImg2 = sceneCovImg;
                                Intrinsics.checkExpressionValueIsNotNull(sceneCovImg2, "sceneCovImg");
                                File f = FileUtils.copyFile(context, uriFromFile, file, sceneDraftHelper.sceneCovImg2draftCovImgName(sceneCovImg2));
                                StringBuilder sb = new StringBuilder();
                                sb.append("create new draft coverImage : ");
                                Intrinsics.checkExpressionValueIsNotNull(f, "f");
                                sb.append(f.getAbsolutePath());
                                Log.d(SceneDraftHelper.TAG, sb.toString());
                                String uri = SceneDraftHelper.this.photoManager.getUri(new File(f.getAbsolutePath()));
                                if (draft.coverImageInfo == null) {
                                    draft.coverImageInfo = new SceneCoverImageInfo(uri, 0);
                                } else {
                                    draft.coverImageInfo.defaultUrl = uri;
                                }
                                draft.coverImage = uri;
                                runnable = new Runnable() { // from class: com.narvii.scene.service.SceneDraftHelper.correctCoverImage.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        correctListener.invoke(draft);
                                    }
                                };
                            } catch (IOException e) {
                                Log.e(SceneDraftHelper.TAG, "copy file error : " + e.getMessage());
                                runnable = new Runnable() { // from class: com.narvii.scene.service.SceneDraftHelper.correctCoverImage.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        correctListener.invoke(draft);
                                    }
                                };
                            }
                            Utils.post(runnable);
                        } catch (Throwable th) {
                            Utils.post(new Runnable() { // from class: com.narvii.scene.service.SceneDraftHelper.correctCoverImage.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    correctListener.invoke(draft);
                                }
                            });
                            throw th;
                        }
                    }
                });
                return;
            }
        }
        correctListener.invoke(draft);
    }

    public final List<Scene> getSceneList(List<? extends SceneInfo> list) {
        return getSceneList(list, false);
    }

    public final List<Scene> getSceneList(List<? extends SceneInfo> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (SceneInfo sceneInfo : list) {
                Scene scene = new Scene();
                scene.media = new Media();
                Media media = scene.media;
                media.type = 123;
                media.duration = sceneInfo.getPreviewDuration();
                if (!TextUtils.isEmpty(sceneInfo.outputUrl) && !FileUtils.isEmpty(new File(sceneInfo.outputUrl))) {
                    scene.media.url = this.photoManager.getUri(new File(sceneInfo.outputUrl));
                }
                if (!TextUtils.isEmpty(sceneInfo.coverImage) && !FileUtils.isEmpty(new File(sceneInfo.coverImage))) {
                    scene.media.coverImage = this.photoManager.getUri(new File(sceneInfo.coverImage));
                }
                scene.metadata = sceneInfo.generateMetadata();
                scene.question = sceneInfo.question;
                scene.pollAttach = sceneInfo.pollAttach;
                if (z) {
                    scene.sceneId = UUID.randomUUID().toString();
                }
                Scene sceneM48clone = scene.m48clone();
                Intrinsics.checkExpressionValueIsNotNull(sceneM48clone, "scene.clone()");
                arrayList.add(sceneM48clone);
            }
        }
        return arrayList;
    }

    public final List<Scene> removeSceneId(List<? extends Scene> list) {
        ArrayList list2 = JacksonUtils.readListAs(JacksonUtils.writeAsString(list), Scene.class);
        if (list2 != null) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                ((Scene) it.next()).sceneId = null;
            }
        }
        Intrinsics.checkExpressionValueIsNotNull(list2, "list");
        return list2;
    }

    private final List<String> getSourcePaths(SceneDraft sceneDraft) {
        ArrayList arrayList = new ArrayList();
        SceneCoverImageInfo sceneCoverImageInfo = sceneDraft.coverImageInfo;
        if (sceneCoverImageInfo != null) {
            String str = sceneCoverImageInfo.defaultUrl;
            if (str == null) {
                str = "";
            }
            arrayList.add(str);
            String str2 = sceneCoverImageInfo.customUrl;
            if (str2 == null) {
                str2 = "";
            }
            arrayList.add(str2);
            String str3 = sceneCoverImageInfo.screenshotUrl;
            if (str3 == null) {
                str3 = "";
            }
            arrayList.add(str3);
        }
        String str4 = sceneDraft.coverImage;
        if (str4 == null) {
            str4 = "";
        }
        arrayList.add(str4);
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(uri2Path((String) it.next()));
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList2) {
            if (!TextUtils.isEmpty((String) obj)) {
                arrayList3.add(obj);
            }
        }
        return arrayList3;
    }

    private final String uri2Path(String str) {
        File path;
        String absolutePath;
        return (TextUtils.isEmpty(str) || (path = this.photoManager.getPath(str)) == null || (absolutePath = path.getAbsolutePath()) == null) ? "" : absolutePath;
    }

    private final String sceneCovImg2draftCovImg(String str) {
        String uri = this.photoManager.getUri(new File(str));
        StringBuilder sb = new StringBuilder();
        Intrinsics.checkExpressionValueIsNotNull(uri, "uri");
        sb.append(StringsKt__StringsJVMKt.replace$default(uri, ".jpg", "", false, 4, null));
        sb.append("_scene_cover_image.jpg");
        return sb.toString();
    }

    private final String sceneCovImg2draftCovImgPath(String str) {
        return StringsKt__StringsJVMKt.replace$default(str, ".jpg", "", false, 4, null) + "_scene_cover_image.jpg";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String sceneCovImg2draftCovImgName(String str) {
        String name = new File(sceneCovImg2draftCovImgPath(str)).getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "File(this.sceneCovImg2draftCovImgPath()).name");
        return name;
    }
}
