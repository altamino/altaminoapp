package com.narvii.scene.template;

import com.narvii.scene.helper.SceneListHelper;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class SceneTemplateGeneratorFragment$sceneListHelper$2 extends v implements e8.a<SceneListHelper> {
    final /* synthetic */ SceneTemplateGeneratorFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneTemplateGeneratorFragment$sceneListHelper$2(SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment) {
        super(0);
        this.this$0 = sceneTemplateGeneratorFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final SceneListHelper invoke() {
        return new SceneListHelper(this.this$0);
    }
}
