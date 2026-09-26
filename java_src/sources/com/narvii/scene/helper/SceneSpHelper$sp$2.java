package com.narvii.scene.helper;

import android.content.SharedPreferences;
import e8.a;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes7.dex */
final class SceneSpHelper$sp$2 extends v implements a<SharedPreferences> {
    final /* synthetic */ SceneSpHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneSpHelper$sp$2(SceneSpHelper sceneSpHelper) {
        super(0);
        this.this$0 = sceneSpHelper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final SharedPreferences invoke() {
        return this.this$0.getCtx().getContext().getSharedPreferences(SceneSpHelper.SP_RECENT_MEDIA, 0);
    }
}
