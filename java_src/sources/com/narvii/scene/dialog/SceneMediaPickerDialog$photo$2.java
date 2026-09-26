package com.narvii.scene.dialog;

import com.narvii.app.NVContext;
import com.narvii.photos.PhotoManager;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes2.dex */
final class SceneMediaPickerDialog$photo$2 extends v implements e8.a<PhotoManager> {
    final /* synthetic */ NVContext $ctx;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneMediaPickerDialog$photo$2(NVContext nVContext) {
        super(0);
        this.$ctx = nVContext;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final PhotoManager invoke() {
        return (PhotoManager) this.$ctx.getService("photo");
    }
}
