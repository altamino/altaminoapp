package com.narvii.video;

import com.narvii.app.FragmentRegister;

/* JADX INFO: loaded from: classes.dex */
final class SceneEditorFragment$fragmentRegister$2 extends kotlin.jvm.internal.v implements e8.a<FragmentRegister> {
    final /* synthetic */ SceneEditorFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneEditorFragment$fragmentRegister$2(SceneEditorFragment sceneEditorFragment) {
        super(0);
        this.this$0 = sceneEditorFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final FragmentRegister invoke() {
        return (FragmentRegister) this.this$0.getService("fragmentRegister");
    }
}
