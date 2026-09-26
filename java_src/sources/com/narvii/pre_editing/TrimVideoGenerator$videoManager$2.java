package com.narvii.pre_editing;

import com.narvii.video.services.VideoManager;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class TrimVideoGenerator$videoManager$2 extends v implements e8.a<VideoManager> {
    final /* synthetic */ TrimVideoGenerator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TrimVideoGenerator$videoManager$2(TrimVideoGenerator trimVideoGenerator) {
        super(0);
        this.this$0 = trimVideoGenerator;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final VideoManager invoke() {
        Object service = this.this$0.getCtx().getService("videoManager");
        t.h(service, "null cannot be cast to non-null type com.narvii.video.services.VideoManager");
        return (VideoManager) service;
    }
}
