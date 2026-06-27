package com.narvii.scene.helper;

import android.content.Context;
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
import java.io.File;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: SceneMediaPickerHelper.kt */
/* loaded from: classes3.dex */
public final class SceneMediaPickerHelper implements SceneMediaPickerDialog.OnPickerListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneMediaPickerHelper.class), "templateChooseService", "getTemplateChooseService()Lcom/narvii/scene/service/ChooseSceneTemplateService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneMediaPickerHelper.class), "sceneMediaPickerDialog", "getSceneMediaPickerDialog()Lcom/narvii/scene/dialog/SceneMediaPickerDialog;"))};
    private final NVContext ctx;
    private String draftId;
    private final MediaPickerFragment mediaPicker;
    private final String path;
    private SceneInfo sceneInfo;
    private final Lazy sceneMediaPickerDialog$delegate;
    private final Lazy templateChooseService$delegate;

    private final SceneMediaPickerDialog getSceneMediaPickerDialog() {
        Lazy lazy = this.sceneMediaPickerDialog$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (SceneMediaPickerDialog) lazy.getValue();
    }

    private final ChooseSceneTemplateService getTemplateChooseService() {
        Lazy lazy = this.templateChooseService$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ChooseSceneTemplateService) lazy.getValue();
    }

    public SceneMediaPickerHelper(NVContext ctx, String path, MediaPickerFragment mediaPicker) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(path, "path");
        Intrinsics.checkParameterIsNotNull(mediaPicker, "mediaPicker");
        this.ctx = ctx;
        this.path = path;
        this.mediaPicker = mediaPicker;
        this.templateChooseService$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ChooseSceneTemplateService>() { // from class: com.narvii.scene.helper.SceneMediaPickerHelper$templateChooseService$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ChooseSceneTemplateService invoke() {
                ChooseSceneTemplateService chooseSceneTemplateService = (ChooseSceneTemplateService) this.this$0.getCtx().getService("chooseSceneTemplate");
                chooseSceneTemplateService.setFrom(2);
                return chooseSceneTemplateService;
            }
        });
        this.sceneMediaPickerDialog$delegate = LazyKt__LazyJVMKt.lazy(new Function0<SceneMediaPickerDialog>() { // from class: com.narvii.scene.helper.SceneMediaPickerHelper$sceneMediaPickerDialog$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SceneMediaPickerDialog invoke() {
                SceneMediaPickerDialog sceneMediaPickerDialog = new SceneMediaPickerDialog(this.this$0.getCtx());
                sceneMediaPickerDialog.setOnPickerListener(this.this$0);
                return sceneMediaPickerDialog;
            }
        });
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final MediaPickerFragment getMediaPicker() {
        return this.mediaPicker;
    }

    public final String getPath() {
        return this.path;
    }

    public final SceneInfo getSceneInfo() {
        return this.sceneInfo;
    }

    public final void setSceneInfo(SceneInfo sceneInfo) {
        this.sceneInfo = sceneInfo;
    }

    public final String getDraftId() {
        return this.draftId;
    }

    public final void setDraftId(String str) {
        this.draftId = str;
    }

    public final void showPickerDialog(SceneInfo sceneInfo, String draftId) {
        Intrinsics.checkParameterIsNotNull(sceneInfo, "sceneInfo");
        Intrinsics.checkParameterIsNotNull(draftId, "draftId");
        this.sceneInfo = sceneInfo;
        this.draftId = draftId;
        getSceneMediaPickerDialog().show();
    }

    @Override // com.narvii.scene.dialog.SceneMediaPickerDialog.OnPickerListener
    public void onPickRecentMedia(Media media) {
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

    @Override // com.narvii.scene.dialog.SceneMediaPickerDialog.OnPickerListener
    public void onPickPhoto() {
        Bundle bundle = new Bundle();
        bundle.putString("type", "video");
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.maximum = 10;
        mediaPickerConfiguration.optionList = 24;
        mediaPickerConfiguration.galleryVideoMode = 0;
        mediaPickerConfiguration.galleryPhotoMode = 1;
        MediaPickerFragment mediaPickerFragment = this.mediaPicker;
        mediaPickerFragment.pickCallback = null;
        mediaPickerFragment.pickCallbackParams = null;
        mediaPickerFragment.pickMedia((File) null, bundle, mediaPickerConfiguration);
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
    public void onPickVideoTemplate() {
        getTemplateChooseService().setOnChooseTemplateListener(new TemplateListFragment.OnChooseTemplateListener() { // from class: com.narvii.scene.helper.SceneMediaPickerHelper.onPickVideoTemplate.1
            @Override // com.narvii.scene.TemplateListFragment.OnChooseTemplateListener
            public void onDismiss() {
            }

            @Override // com.narvii.scene.TemplateListFragment.OnChooseTemplateListener
            public void onChoose(TemplateConfig template) {
                Intrinsics.checkParameterIsNotNull(template, "template");
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + SceneTemplateGeneratorFragment.class.getName()));
                intent.putExtra("templateConfig", JacksonUtils.writeAsString(template));
                intent.putExtra("draftId", SceneMediaPickerHelper.this.getDraftId());
                intent.putExtra("sceneInfo", JacksonUtils.writeAsString(SceneMediaPickerHelper.this.getSceneInfo()));
                SceneMediaPickerHelper.this.getCtx().startActivity(intent);
            }
        });
        getTemplateChooseService().show();
    }

    public final void dismissTemplate() {
        getTemplateChooseService().dismiss();
    }

    private final File getCacheDir() {
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        File file = new File(context.getCacheDir(), "storyTemplate");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }
}
