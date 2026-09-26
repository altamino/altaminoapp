package com.narvii.scene.template;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class SceneTemplateHelper$fileLoader$2 extends v implements e8.a<SceneTemplateHelper.SceneFileLoader> {
    final /* synthetic */ SceneTemplateHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneTemplateHelper$fileLoader$2(SceneTemplateHelper sceneTemplateHelper) {
        super(0);
        this.this$0 = sceneTemplateHelper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final SceneTemplateHelper.SceneFileLoader invoke() {
        SceneTemplateHelper sceneTemplateHelper = this.this$0;
        return new SceneTemplateHelper.SceneFileLoader(sceneTemplateHelper, sceneTemplateHelper.ctx, this.this$0.getPath());
    }
}
