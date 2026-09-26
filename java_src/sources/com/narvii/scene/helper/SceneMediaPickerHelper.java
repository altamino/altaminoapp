package com.narvii.scene.helper;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.narvii.app.NVContext;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.scene.TemplateListFragment;
import com.narvii.scene.dialog.SceneMediaPickerDialog;
import com.narvii.scene.model.SceneInfo;
import com.narvii.scene.model.TemplateConfig;
import com.narvii.scene.service.ChooseSceneTemplateService;
import com.narvii.scene.template.SceneTemplateGeneratorFragment;
import com.narvii.util.JacksonUtils;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes5.dex */
public final class SceneMediaPickerHelper implements SceneMediaPickerDialog.OnPickerListener {

    @NotNull
    private final NVContext ctx;

    @Nullable
    private String draftId;

    @NotNull
    private final MediaPickerFragment mediaPicker;

    @NotNull
    private final String path;

    @Nullable
    private SceneInfo sceneInfo;

    @NotNull
    private final m sceneMediaPickerDialog$delegate;

    @NotNull
    private final m templateChooseService$delegate;

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @Nullable
    public final String getDraftId() {
        return this.draftId;
    }

    @NotNull
    public final MediaPickerFragment getMediaPicker() {
        return this.mediaPicker;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @Nullable
    public final SceneInfo getSceneInfo() {
        return this.sceneInfo;
    }

    public final void setDraftId(@Nullable String str) {
        this.draftId = str;
    }

    public final void setSceneInfo(@Nullable SceneInfo sceneInfo) {
        this.sceneInfo = sceneInfo;
    }

    public SceneMediaPickerHelper(@NotNull NVContext ctx, @NotNull String path, @NotNull MediaPickerFragment mediaPicker) {
        t.j(ctx, "ctx");
        t.j(path, "path");
        t.j(mediaPicker, "mediaPicker");
        this.ctx = ctx;
        this.path = path;
        this.mediaPicker = mediaPicker;
        this.templateChooseService$delegate = o.a(new SceneMediaPickerHelper$templateChooseService$2(this));
        this.sceneMediaPickerDialog$delegate = o.a(new SceneMediaPickerHelper$sceneMediaPickerDialog$2(this));
    }

    private final File getCacheDir() {
        File file = new File(this.ctx.getContext().getCacheDir(), "storyTemplate");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private final SceneMediaPickerDialog getSceneMediaPickerDialog() {
        return (SceneMediaPickerDialog) this.sceneMediaPickerDialog$delegate.getValue();
    }

    private final ChooseSceneTemplateService getTemplateChooseService() {
        return (ChooseSceneTemplateService) this.templateChooseService$delegate.getValue();
    }

    @Override // com.narvii.scene.dialog.SceneMediaPickerDialog.OnPickerListener
    public void onPickOnlineVideo() {
        Bundle bundle = new Bundle();
        bundle.putString("type", "video");
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.optionList = 32;
        mediaPickerConfiguration.galleryVideoMode = 0;
        mediaPickerConfiguration.galleryPhotoMode = 1;
        mediaPickerConfiguration.isGoogleVideoSearch = true;
        MediaPickerFragment mediaPickerFragment = this.mediaPicker;
        mediaPickerFragment.pickCallback = null;
        mediaPickerFragment.pickCallbackParams = null;
        mediaPickerFragment.pickMedia((File) null, bundle, mediaPickerConfiguration);
    }

    @Override // com.narvii.scene.dialog.SceneMediaPickerDialog.OnPickerListener
    public void onPickPhoto() {
        Bundle bundle = new Bundle();
        bundle.putString("type", "video");
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.maximum = 10;
        mediaPickerConfiguration.optionList = 16;
        mediaPickerConfiguration.galleryVideoMode = 0;
        mediaPickerConfiguration.galleryPhotoMode = 1;
        MediaPickerFragment mediaPickerFragment = this.mediaPicker;
        mediaPickerFragment.pickCallback = null;
        mediaPickerFragment.pickCallbackParams = null;
        mediaPickerFragment.pickMedia((File) null, bundle, mediaPickerConfiguration);
    }

    @Override // com.narvii.scene.dialog.SceneMediaPickerDialog.OnPickerListener
    public void onPickRecentMedia(@Nullable Media media) {
        if (this.ctx instanceof MediaPickerFragment.OnResultListener) {
            Bundle bundle = new Bundle();
            bundle.putString("type", "video");
            ArrayList arrayList = new ArrayList();
            if (media != null) {
                arrayList.add(media);
            }
            ((MediaPickerFragment.OnResultListener) this.ctx).onPickMediaResult(arrayList, bundle);
        }
    }

    public final void showPickerDialog(@NotNull SceneInfo sceneInfo, @NotNull String draftId) {
        t.j(sceneInfo, "sceneInfo");
        t.j(draftId, "draftId");
        this.sceneInfo = sceneInfo;
        this.draftId = draftId;
        getSceneMediaPickerDialog().show();
    }

    public final void dismissTemplate() {
        getTemplateChooseService().dismiss();
    }

    @Override // com.narvii.scene.dialog.SceneMediaPickerDialog.OnPickerListener
    public void onPickVideoTemplate() {
        getTemplateChooseService().setOnChooseTemplateListener(new TemplateListFragment.OnChooseTemplateListener() { // from class: com.narvii.scene.helper.SceneMediaPickerHelper.onPickVideoTemplate.1
            public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.scene.TemplateListFragment.OnChooseTemplateListener
            public void onDismiss() {
            }

            @Override // com.narvii.scene.TemplateListFragment.OnChooseTemplateListener
            public void onChoose(@NotNull TemplateConfig template) {
                t.j(template, "template");
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + SceneTemplateGeneratorFragment.class.getName()));
                intent.putExtra("templateConfig", JacksonUtils.writeAsString(template));
                intent.putExtra("draftId", SceneMediaPickerHelper.this.getDraftId());
                intent.putExtra("sceneInfo", JacksonUtils.writeAsString(SceneMediaPickerHelper.this.getSceneInfo()));
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(SceneMediaPickerHelper.this.getCtx(), intent);
            }
        });
        getTemplateChooseService().show();
    }
}
