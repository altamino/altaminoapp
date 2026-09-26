package com.narvii.scene.template;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class SceneTemplateGeneratorFragment$sceneTemplateHelper$2 extends v implements e8.a<SceneTemplateHelper> {
    final /* synthetic */ SceneTemplateGeneratorFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneTemplateGeneratorFragment$sceneTemplateHelper$2(SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment) {
        super(0);
        this.this$0 = sceneTemplateGeneratorFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final SceneTemplateHelper invoke() {
        SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment = this.this$0;
        return new SceneTemplateHelper(sceneTemplateGeneratorFragment, sceneTemplateGeneratorFragment.getDraftFile());
    }
}
