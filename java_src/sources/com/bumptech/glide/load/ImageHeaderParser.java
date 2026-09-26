package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public interface ImageHeaderParser {
    public static final int UNKNOWN_ORIENTATION = -1;

    @NonNull
    ImageType a(@NonNull InputStream inputStream) throws IOException;

    int b(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException;

    @NonNull
    ImageType c(@NonNull ByteBuffer byteBuffer) throws IOException;

    public enum ImageType {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        UNKNOWN(false);

        private final boolean hasAlpha;

        public boolean hasAlpha() {
            return this.hasAlpha;
        }

        ImageType(boolean z6) {
            this.hasAlpha = z6;
        }
    }
}
