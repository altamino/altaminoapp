package androidx.media3.extractor.text;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.SimpleDecoder;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public abstract class SimpleSubtitleDecoder extends SimpleDecoder<SubtitleInputBuffer, SubtitleOutputBuffer, SubtitleDecoderException> implements SubtitleDecoder {
    private final String name;

    protected SimpleSubtitleDecoder(String str) {
        super(new SubtitleInputBuffer[2], new SubtitleOutputBuffer[2]);
        this.name = str;
        q(1024);
    }

    @Override // androidx.media3.decoder.Decoder
    public final String getName() {
        return this.name;
    }

    @Override // androidx.media3.extractor.text.SubtitleDecoder
    public void setPositionUs(long j6) {
    }

    protected abstract Subtitle v(byte[] bArr, int i10, boolean z6) throws SubtitleDecoderException;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final SubtitleInputBuffer c() {
        return new SubtitleInputBuffer();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public final SubtitleOutputBuffer d() {
        return new SubtitleOutputBuffer() { // from class: androidx.media3.extractor.text.SimpleSubtitleDecoder.1
            @Override // androidx.media3.decoder.DecoderOutputBuffer
            public void n() {
                SimpleSubtitleDecoder.this.n(this);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public final SubtitleDecoderException e(Throwable th) {
        return new SubtitleDecoderException("Unexpected decode error", th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    @Nullable
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public final SubtitleDecoderException f(SubtitleInputBuffer subtitleInputBuffer, SubtitleOutputBuffer subtitleOutputBuffer, boolean z6) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) Assertions.e(subtitleInputBuffer.data);
            subtitleOutputBuffer.o(subtitleInputBuffer.timeUs, v(byteBuffer.array(), byteBuffer.limit(), z6), subtitleInputBuffer.subsampleOffsetUs);
            subtitleOutputBuffer.c(Integer.MIN_VALUE);
            return null;
        } catch (SubtitleDecoderException e) {
            return e;
        }
    }
}
