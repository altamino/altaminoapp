package com.narvii.scene.template;

import com.narvii.pre_editing.TrimVideoGenerator;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class SceneTemplateHelper$trimVideoGenerator$2 extends v implements e8.a<TrimVideoGenerator> {
    final /* synthetic */ SceneTemplateHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneTemplateHelper$trimVideoGenerator$2(SceneTemplateHelper sceneTemplateHelper) {
        super(0);
        this.this$0 = sceneTemplateHelper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final TrimVideoGenerator invoke() {
        TrimVideoGenerator trimVideoGenerator = new TrimVideoGenerator(this.this$0.ctx);
        trimVideoGenerator.setSingleTask(false);
        trimVideoGenerator.setDropNegativeTs(false);
        return trimVideoGenerator;
    }
}
