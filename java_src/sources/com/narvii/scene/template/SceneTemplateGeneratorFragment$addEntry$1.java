package com.narvii.scene.template;

import com.narvii.model.Media;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class SceneTemplateGeneratorFragment$addEntry$1 extends v implements q<Media, Boolean, Boolean, l0> {
    final /* synthetic */ SceneTemplateGeneratorFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneTemplateGeneratorFragment$addEntry$1(SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment) {
        super(3);
        this.this$0 = sceneTemplateGeneratorFragment;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Media media, Boolean bool, Boolean bool2) {
        invoke(media, bool.booleanValue(), bool2.booleanValue());
        return l0.INSTANCE;
    }

    public final void invoke(@NotNull Media media, boolean z6, boolean z10) {
        t.j(media, "media");
        boolean z11 = z10 && this.this$0.isSupportFormat(media);
        SceneTemplateGeneratorFragment.Entry entry = new SceneTemplateGeneratorFragment.Entry(null, media, z11, 0, z11, 1, null);
        this.this$0.getEntryList().add(this.this$0.getEntryList().size() - 1, entry);
        if (z6) {
            this.this$0.selectedEntry(entry);
        }
    }
}
