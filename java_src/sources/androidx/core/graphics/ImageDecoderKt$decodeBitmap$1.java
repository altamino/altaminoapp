package androidx.core.graphics;

import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import e8.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class ImageDecoderKt$decodeBitmap$1 implements ImageDecoder$OnHeaderDecodedListener {
    final /* synthetic */ q<ImageDecoder, ImageDecoder.ImageInfo, ImageDecoder.Source, l0> $action;

    /* JADX WARN: Multi-variable type inference failed */
    public ImageDecoderKt$decodeBitmap$1(q<? super ImageDecoder, ? super ImageDecoder.ImageInfo, ? super ImageDecoder.Source, l0> qVar) {
        this.$action = qVar;
    }

    public final void onHeaderDecoded(@NotNull ImageDecoder decoder, @NotNull ImageDecoder.ImageInfo info, @NotNull ImageDecoder.Source source) {
        t.j(decoder, "decoder");
        t.j(info, "info");
        t.j(source, "source");
        this.$action.invoke(decoder, info, source);
    }
}
