package com.narvii.media.giphy;

import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class GiphyStickerService$giphyLoader$2 extends v implements a<GiphyStickerLoader> {
    final /* synthetic */ GiphyStickerService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GiphyStickerService$giphyLoader$2(GiphyStickerService giphyStickerService) {
        super(0);
        this.this$0 = giphyStickerService;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final GiphyStickerLoader invoke() {
        return new GiphyStickerLoader(this.this$0.getNvContext(), this.this$0.GIPHY_STICKER_DOWNLOAD_DIR_PATH);
    }
}
