package com.narvii.scene.helper;

import com.narvii.photos.PhotoManager;
import e8.a;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes7.dex */
final class SceneSpHelper$photoManager$2 extends v implements a<PhotoManager> {
    final /* synthetic */ SceneSpHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneSpHelper$photoManager$2(SceneSpHelper sceneSpHelper) {
        super(0);
        this.this$0 = sceneSpHelper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final PhotoManager invoke() {
        return (PhotoManager) this.this$0.getCtx().getService("photo");
    }
}
