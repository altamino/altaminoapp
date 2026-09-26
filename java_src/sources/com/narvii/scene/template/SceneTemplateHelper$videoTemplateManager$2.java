package com.narvii.scene.template;

import com.narvii.videotemplate.VideoTemplateManager;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class SceneTemplateHelper$videoTemplateManager$2 extends v implements e8.a<VideoTemplateManager> {
    final /* synthetic */ SceneTemplateHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneTemplateHelper$videoTemplateManager$2(SceneTemplateHelper sceneTemplateHelper) {
        super(0);
        this.this$0 = sceneTemplateHelper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final VideoTemplateManager invoke() {
        VideoTemplateManager videoTemplateManager = new VideoTemplateManager(this.this$0.ctx);
        videoTemplateManager.cancel();
        return videoTemplateManager;
    }
}
