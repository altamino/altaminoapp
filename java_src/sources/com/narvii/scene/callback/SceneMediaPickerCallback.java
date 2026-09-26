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
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes8.dex */
public final class SceneMediaPickerCallback implements MediaPickCallback {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPick$lambda$1$lambda$0(View view) {
    }

    private final File getDraftIntermediaPath(String str) {
        File file = new File(str + "/scene_intermediate_file/");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @Override // com.narvii.media.MediaPickCallback
    public void onPick(@Nullable HashMap<String, Object> map, @Nullable NVActivity nVActivity, boolean z6) {
        if (nVActivity == null || map == null) {
            return;
        }
        ArrayList listAs = JacksonUtils.readListAs((String) map.get("mediaList"), Media.class);
        TemplateConfig templateConfig = (TemplateConfig) JacksonUtils.readAs((String) map.get("templateConfig"), TemplateConfig.class);
        Object obj = map.get("sceneDraftPath");
        t.h(obj, "null cannot be cast to non-null type kotlin.String");
        String str = (String) obj;
        SceneInfo sceneInfo = (SceneInfo) JacksonUtils.readAs((String) map.get("sceneInfo"), SceneInfo.class);
        if (listAs != null && listAs.size() >= templateConfig.minInputCount && listAs.size() <= templateConfig.maxInputCount) {
            SceneTemplateHelper sceneTemplateHelper = new SceneTemplateHelper(nVActivity, getDraftIntermediaPath(str));
            sceneTemplateHelper.setOnCompileListener(new SceneTemplateHelper.OnCompileListener(sceneTemplateHelper, sceneInfo, z6, str) { // from class: com.narvii.scene.callback.SceneMediaPickerCallback.onPick.2
                final /* synthetic */ String $draftPath;
                final /* synthetic */ boolean $finishActivity;
                final /* synthetic */ SceneInfo $sceneInfo;

                @NotNull
                private final m errorDialog$delegate;

                @NotNull
                private final m progressDialog$delegate;

                {
                    this.$sceneInfo = sceneInfo;
                    this.$finishActivity = z6;
                    this.$draftPath = str;
                    this.progressDialog$delegate = o.a(new SceneMediaPickerCallback$onPick$2$progressDialog$2(this.$activity, sceneTemplateHelper));
                    this.errorDialog$delegate = o.a(new SceneMediaPickerCallback$onPick$2$errorDialog$2(this.$activity));
                }

                private final boolean isDestroy() {
                    return this.$activity.isDestoryed();
                }

                private final void sendNotification(SceneInfo sceneInfo2) {
                    CloseSceneTemplateObject closeSceneTemplateObject = new CloseSceneTemplateObject();
                    closeSceneTemplateObject.id = sceneInfo2.id;
                    NotificationUtils.sendNotification(this.$activity, new Notification("new", closeSceneTemplateObject), false);
                }

                @NotNull
                public final ACMAlertDialog getErrorDialog() {
                    return (ACMAlertDialog) this.errorDialog$delegate.getValue();
                }

                @NotNull
                public final ProgressRingDialog getProgressDialog() {
                    return (ProgressRingDialog) this.progressDialog$delegate.getValue();
                }

                @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
                public void onCompileFail(@NotNull SceneTemplateHelper helper, int i10, @Nullable String str2, @Nullable Throwable th) {
                    t.j(helper, "helper");
                    if (isDestroy()) {
                        return;
                    }
                    if (getProgressDialog().isShowing()) {
                        getProgressDialog().dismiss();
                    }
                    if (getErrorDialog().isShowing()) {
                        return;
                    }
                    getErrorDialog().setMessage(str2);
                    getErrorDialog().show();
                }

                @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
                public void onCompileFinished(@NotNull SceneTemplateHelper helper, @NotNull Template template, @NotNull String videoFilePath, @NotNull StreamInfo videoStreamInfo) {
                    t.j(helper, "helper");
                    t.j(template, "template");
                    t.j(videoFilePath, "videoFilePath");
                    t.j(videoStreamInfo, "videoStreamInfo");
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
                    this.$sceneInfo.videoClips = v.g(aVClipInfoPack);
                    SceneInfo sceneInfo2 = this.$sceneInfo;
                    sceneInfo2.template = template;
                    if (this.$finishActivity) {
                        t.i(sceneInfo2, "$sceneInfo");
                        sendNotification(sceneInfo2);
                        new SceneListHelper(this.$activity).launchSceneEditor(this.$sceneInfo, false, this.$draftPath, 3, "");
                        this.$activity.finish();
                    }
                }

                @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
                public void onCompileProgress(@NotNull SceneTemplateHelper helper, int i10, int i11) {
                    t.j(helper, "helper");
                    getProgressDialog().updateProgress(i10);
                }

                @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
                public void onCompileStart(@NotNull SceneTemplateHelper helper) {
                    t.j(helper, "helper");
                    getProgressDialog().show();
                }
            });
        } else {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(nVActivity);
            aCMAlertDialog.setMessage(nVActivity.getString(R.string.choose_template_media_count_hint, Integer.valueOf(templateConfig.minInputCount), Integer.valueOf(templateConfig.maxInputCount)));
            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.scene.callback.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SceneMediaPickerCallback.onPick$lambda$1$lambda$0(view);
                }
            });
            aCMAlertDialog.show();
        }
    }
}
