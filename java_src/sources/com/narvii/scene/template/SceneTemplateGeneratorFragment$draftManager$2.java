package com.narvii.scene.template;

import com.narvii.modulization.entry.EntryManager;
import com.narvii.post.DraftManager;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes2.dex */
final class SceneTemplateGeneratorFragment$draftManager$2 extends v implements e8.a<DraftManager> {
    final /* synthetic */ SceneTemplateGeneratorFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneTemplateGeneratorFragment$draftManager$2(SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment) {
        super(0);
        this.this$0 = sceneTemplateGeneratorFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final DraftManager invoke() {
        return (DraftManager) this.this$0.getService(EntryManager.ENTRY_DRAFT);
    }
}
