package com.narvii.pre_editing;

import com.narvii.video.MediaPreloadService;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class TrimVideoGenerator$preloadService$2 extends v implements e8.a<MediaPreloadService> {
    final /* synthetic */ TrimVideoGenerator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TrimVideoGenerator$preloadService$2(TrimVideoGenerator trimVideoGenerator) {
        super(0);
        this.this$0 = trimVideoGenerator;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final MediaPreloadService invoke() {
        Object service = this.this$0.getCtx().getService("mediapreload");
        t.h(service, "null cannot be cast to non-null type com.narvii.video.MediaPreloadService");
        return (MediaPreloadService) service;
    }
}
