package com.narvii.scene.helper;

import com.narvii.scene.service.ChooseSceneTemplateService;
import e8.a;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes5.dex */
final class SceneMediaPickerHelper$templateChooseService$2 extends v implements a<ChooseSceneTemplateService> {
    final /* synthetic */ SceneMediaPickerHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneMediaPickerHelper$templateChooseService$2(SceneMediaPickerHelper sceneMediaPickerHelper) {
        super(0);
        this.this$0 = sceneMediaPickerHelper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final ChooseSceneTemplateService invoke() {
        ChooseSceneTemplateService chooseSceneTemplateService = (ChooseSceneTemplateService) this.this$0.getCtx().getService("chooseSceneTemplate");
        chooseSceneTemplateService.setFrom(2);
        return chooseSceneTemplateService;
    }
}
