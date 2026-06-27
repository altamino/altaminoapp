package com.narvii.scene.callback;

import android.view.View;
import com.narvii.app.NVActivity;
import com.narvii.media.MediaPickCallback;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.notification.Notification;
import com.narvii.scene.SceneConstant;
import com.narvii.scene.helper.SceneListHelper;
import com.narvii.scene.model.SceneInfo;
import com.narvii.scene.model.TemplateConfig;
import com.narvii.scene.notification.CloseSceneTemplateObject;
import com.narvii.scene.template.SceneTemplateHelper;
import com.narvii.scene.view.ProgressRingDialog;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NotificationUtils;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.StreamInfo;
import com.narvii.videotemplate.Template;
import com.narvii.widget.ACMAlertDialog;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: SceneMediaPickerCallback.kt */
/* loaded from: classes3.dex */
public final class SceneMediaPickerCallback implements MediaPickCallback {
    @Override // com.narvii.media.MediaPickCallback
    public void onPick(HashMap<String, Object> map, NVActivity nVActivity, boolean z) {
        if (nVActivity == null || map == null) {
            return;
        }
        ArrayList listAs = JacksonUtils.readListAs((String) map.get("mediaList"), Media.class);
        TemplateConfig templateConfig = (TemplateConfig) JacksonUtils.readAs((String) map.get("templateConfig"), TemplateConfig.class);
        Object obj = map.get("sceneDraftPath");
        if (obj == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.String");
        }
        String str = (String) obj;
        SceneInfo sceneInfo = (SceneInfo) JacksonUtils.readAs((String) map.get("sceneInfo"), SceneInfo.class);
        if (listAs == null || listAs.size() < templateConfig.minInputCount || listAs.size() > templateConfig.maxInputCount) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(nVActivity);
            aCMAlertDialog.setMessage(nVActivity.getString(R.string.choose_template_media_count_hint, new Object[]{Integer.valueOf(templateConfig.minInputCount), Integer.valueOf(templateConfig.maxInputCount)}));
            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.scene.callback.SceneMediaPickerCallback$onPick$1$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                }
            });
            aCMAlertDialog.show();
            return;
        }
        SceneTemplateHelper sceneTemplateHelper = new SceneTemplateHelper(nVActivity, getDraftIntermediaPath(str));
        sceneTemplateHelper.setOnCompileListener(new AnonymousClass2(sceneInfo, z, nVActivity, str, sceneTemplateHelper));
    }

    /* compiled from: SceneMediaPickerCallback.kt */
    /* renamed from: com.narvii.scene.callback.SceneMediaPickerCallback$onPick$2, reason: invalid class name */
    public static final class AnonymousClass2 implements SceneTemplateHelper.OnCompileListener {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(AnonymousClass2.class), "progressDialog", "getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(AnonymousClass2.class), "errorDialog", "getErrorDialog()Lcom/narvii/widget/ACMAlertDialog;"))};
        final /* synthetic */ NVActivity $activity;
        final /* synthetic */ String $draftPath;
        final /* synthetic */ boolean $finishActivity;
        final /* synthetic */ SceneInfo $sceneInfo;
        final /* synthetic */ SceneTemplateHelper $sceneTemplateHelper;
        private final Lazy progressDialog$delegate = LazyKt__LazyJVMKt.lazy(new SceneMediaPickerCallback$onPick$2$progressDialog$2(this));
        private final Lazy errorDialog$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ACMAlertDialog>() { // from class: com.narvii.scene.callback.SceneMediaPickerCallback$onPick$2$errorDialog$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ACMAlertDialog invoke() {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.this$0.$activity);
                aCMAlertDialog.addButton(R.string.got_it, null);
                return aCMAlertDialog;
            }
        });

        public final ACMAlertDialog getErrorDialog() {
            Lazy lazy = this.errorDialog$delegate;
            KProperty kProperty = $$delegatedProperties[1];
            return (ACMAlertDialog) lazy.getValue();
        }

        public final ProgressRingDialog getProgressDialog() {
            Lazy lazy = this.progressDialog$delegate;
            KProperty kProperty = $$delegatedProperties[0];
            return (ProgressRingDialog) lazy.getValue();
        }

        AnonymousClass2(SceneInfo sceneInfo, boolean z, NVActivity nVActivity, String str, SceneTemplateHelper sceneTemplateHelper) {
            this.$sceneInfo = sceneInfo;
            this.$finishActivity = z;
            this.$activity = nVActivity;
            this.$draftPath = str;
            this.$sceneTemplateHelper = sceneTemplateHelper;
        }

        @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
        public void onCompileStart(SceneTemplateHelper helper) {
            Intrinsics.checkParameterIsNotNull(helper, "helper");
            getProgressDialog().show();
        }

        @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
        public void onCompileProgress(SceneTemplateHelper helper, int i, int i2) {
            Intrinsics.checkParameterIsNotNull(helper, "helper");
            getProgressDialog().updateProgress(i);
        }

        @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
        public void onCompileFinished(SceneTemplateHelper helper, Template template, String videoFilePath, StreamInfo videoStreamInfo) {
            Intrinsics.checkParameterIsNotNull(helper, "helper");
            Intrinsics.checkParameterIsNotNull(template, "template");
            Intrinsics.checkParameterIsNotNull(videoFilePath, "videoFilePath");
            Intrinsics.checkParameterIsNotNull(videoStreamInfo, "videoStreamInfo");
            if (isDestroy()) {
                return;
            }
            if (getProgressDialog().isShowing()) {
                getProgressDialog().dismiss();
            }
            if (this.$sceneInfo == null) {
                return;
            }
            AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
            aVClipInfoPack.inputPath = videoFilePath;
            aVClipInfoPack.originalInputPath = videoFilePath;
            aVClipInfoPack.fileName = new File(videoFilePath).getName();
            aVClipInfoPack.trimStartInMs = 0;
            aVClipInfoPack.trimEndInMs = Math.min(videoStreamInfo.durationInMs, SceneConstant.getMaxSceneLengthMs());
            aVClipInfoPack.videoSource = 16;
            this.$sceneInfo.videoClips = CollectionsKt__CollectionsKt.arrayListOf(aVClipInfoPack);
            SceneInfo sceneInfo = this.$sceneInfo;
            sceneInfo.template = template;
            if (this.$finishActivity) {
                sendNotification(sceneInfo);
                new SceneListHelper(this.$activity).launchSceneEditor(this.$sceneInfo, false, this.$draftPath, 3, "");
                this.$activity.finish();
            }
        }

        @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
        public void onCompileFail(SceneTemplateHelper helper, int i, String str, Throwable th) {
            Intrinsics.checkParameterIsNotNull(helper, "helper");
            if (isDestroy()) {
                return;
            }
            if (getProgressDialog().isShowing()) {
                getProgressDialog().dismiss();
            }
            if (getErrorDialog().isShowing()) {
                return;
            }
            getErrorDialog().setMessage(str);
            getErrorDialog().show();
        }

        private final boolean isDestroy() {
            return this.$activity.isDestoryed();
        }

        private final void sendNotification(SceneInfo sceneInfo) {
            CloseSceneTemplateObject closeSceneTemplateObject = new CloseSceneTemplateObject();
            closeSceneTemplateObject.id = sceneInfo.id;
            NotificationUtils.sendNotification(this.$activity, new Notification("new", closeSceneTemplateObject), false);
        }
    }

    private final File getDraftIntermediaPath(String str) {
        File file = new File(str + "/" + SceneConstant.SCENE_INTERMEDIATE_FILE + "/");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }
}
