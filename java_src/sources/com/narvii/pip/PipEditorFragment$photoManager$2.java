package com.narvii.pip;

import com.narvii.photos.PhotoManager;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes7.dex */
final class PipEditorFragment$photoManager$2 extends v implements e8.a<PhotoManager> {
    final /* synthetic */ PipEditorFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PipEditorFragment$photoManager$2(PipEditorFragment pipEditorFragment) {
        super(0);
        this.this$0 = pipEditorFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final PhotoManager invoke() {
        return (PhotoManager) this.this$0.getService("photo");
    }
}
