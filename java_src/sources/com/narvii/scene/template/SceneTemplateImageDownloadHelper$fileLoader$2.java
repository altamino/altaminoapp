package com.narvii.scene.template;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class SceneTemplateImageDownloadHelper$fileLoader$2 extends v implements e8.a<SceneTemplateImageDownloadHelper.SceneFileLoader> {
    final /* synthetic */ SceneTemplateImageDownloadHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneTemplateImageDownloadHelper$fileLoader$2(SceneTemplateImageDownloadHelper sceneTemplateImageDownloadHelper) {
        super(0);
        this.this$0 = sceneTemplateImageDownloadHelper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final SceneTemplateImageDownloadHelper.SceneFileLoader invoke() {
        SceneTemplateImageDownloadHelper sceneTemplateImageDownloadHelper = this.this$0;
        return new SceneTemplateImageDownloadHelper.SceneFileLoader(sceneTemplateImageDownloadHelper, sceneTemplateImageDownloadHelper.ctx, this.this$0.getPath());
    }
}
