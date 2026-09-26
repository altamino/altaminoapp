package org.apache.commons.compress.archivers.zip;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import okio.Utf8;
import org.bouncycastle.pqc.math.linearalgebra.h;

/* JADX INFO: loaded from: classes6.dex */
class NioZipEncoding implements ZipEncoding, CharsetAccessor {
    private final Charset charset;
    private final boolean useReplacement;
    private static final byte[] REPLACEMENT_BYTES = {Utf8.REPLACEMENT_BYTE};
    private static final char REPLACEMENT = '?';
    private static final String REPLACEMENT_STRING = String.valueOf(REPLACEMENT);
    private static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private static CharBuffer encodeSurrogate(CharBuffer charBuffer, char c7) {
        charBuffer.position(0).limit(6);
        charBuffer.put('%');
        charBuffer.put(h.MATRIX_TYPE_RANDOM_UT);
        char[] cArr = HEX_CHARS;
        charBuffer.put(cArr[(c7 >> '\f') & 15]);
        charBuffer.put(cArr[(c7 >> '\b') & 15]);
        charBuffer.put(cArr[(c7 >> 4) & 15]);
        charBuffer.put(cArr[c7 & 15]);
        charBuffer.flip();
        return charBuffer;
    }

    private static int estimateIncrementalEncodingSize(CharsetEncoder charsetEncoder, int i10) {
        return (int) Math.ceil(i10 * charsetEncoder.averageBytesPerChar());
    }

    @Override // org.apache.commons.compress.archivers.zip.CharsetAccessor
    public Charset getCharset() {
        return this.charset;
    }

    private CharsetDecoder newDecoder() {
        if (this.useReplacement) {
            CharsetDecoder charsetDecoderNewDecoder = this.charset.newDecoder();
            CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
            return charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).replaceWith(REPLACEMENT_STRING);
        }
        CharsetDecoder charsetDecoderNewDecoder2 = this.charset.newDecoder();
        CodingErrorAction codingErrorAction2 = CodingErrorAction.REPORT;
        return charsetDecoderNewDecoder2.onMalformedInput(codingErrorAction2).onUnmappableCharacter(codingErrorAction2);
    }

    private CharsetEncoder newEncoder() {
        if (this.useReplacement) {
            CharsetEncoder charsetEncoderNewEncoder = this.charset.newEncoder();
            CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
            return charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).replaceWith(REPLACEMENT_BYTES);
        }
        CharsetEncoder charsetEncoderNewEncoder2 = this.charset.newEncoder();
        CodingErrorAction codingErrorAction2 = CodingErrorAction.REPORT;
        return charsetEncoderNewEncoder2.onMalformedInput(codingErrorAction2).onUnmappableCharacter(codingErrorAction2);
    }

    NioZipEncoding(Charset charset, boolean z6) {
        this.charset = charset;
        this.useReplacement = z6;
    }

    private static ByteBuffer encodeFully(CharsetEncoder charsetEncoder, CharBuffer charBuffer, ByteBuffer byteBuffer) {
        while (charBuffer.hasRemaining()) {
            if (charsetEncoder.encode(charBuffer, byteBuffer, false).isOverflow()) {
                byteBuffer = ZipEncodingHelper.growBufferBy(byteBuffer, estimateIncrementalEncodingSize(charsetEncoder, charBuffer.remaining()));
            }
        }
        return byteBuffer;
    }

    private static int estimateInitialBufferSize(CharsetEncoder charsetEncoder, int i10) {
        return (int) Math.ceil(charsetEncoder.maxBytesPerChar() + ((i10 - 1) * charsetEncoder.averageBytesPerChar()));
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
    public boolean canEncode(String str) {
        return newEncoder().canEncode(str);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
    public String decode(byte[] bArr) throws IOException {
        return newDecoder().decode(ByteBuffer.wrap(bArr)).toString();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
    public ByteBuffer encode(String str) {
        int i10;
        CharsetEncoder charsetEncoderNewEncoder = newEncoder();
        CharBuffer charBufferWrap = CharBuffer.wrap(str);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(estimateInitialBufferSize(charsetEncoderNewEncoder, charBufferWrap.remaining()));
        CharBuffer charBufferAllocate = null;
        while (charBufferWrap.remaining() > 0) {
            CoderResult coderResultEncode = charsetEncoderNewEncoder.encode(charBufferWrap, byteBufferAllocate, false);
            if (!coderResultEncode.isUnmappable() && !coderResultEncode.isMalformed()) {
                if (coderResultEncode.isOverflow()) {
                    byteBufferAllocate = ZipEncodingHelper.growBufferBy(byteBufferAllocate, estimateIncrementalEncodingSize(charsetEncoderNewEncoder, charBufferWrap.remaining()));
                }
            } else {
                if (estimateIncrementalEncodingSize(charsetEncoderNewEncoder, coderResultEncode.length() * 6) > byteBufferAllocate.remaining()) {
                    int i11 = 0;
                    for (int iPosition = charBufferWrap.position(); iPosition < charBufferWrap.limit(); iPosition++) {
                        if (!charsetEncoderNewEncoder.canEncode(charBufferWrap.get(iPosition))) {
                            i10 = 6;
                        } else {
                            i10 = 1;
                        }
                        i11 += i10;
                    }
                    byteBufferAllocate = ZipEncodingHelper.growBufferBy(byteBufferAllocate, estimateIncrementalEncodingSize(charsetEncoderNewEncoder, i11) - byteBufferAllocate.remaining());
                }
                if (charBufferAllocate == null) {
                    charBufferAllocate = CharBuffer.allocate(6);
                }
                for (int i12 = 0; i12 < coderResultEncode.length(); i12++) {
                    byteBufferAllocate = encodeFully(charsetEncoderNewEncoder, encodeSurrogate(charBufferAllocate, charBufferWrap.get()), byteBufferAllocate);
                }
            }
        }
        charsetEncoderNewEncoder.encode(charBufferWrap, byteBufferAllocate, true);
        byteBufferAllocate.limit(byteBufferAllocate.position());
        byteBufferAllocate.rewind();
        return byteBufferAllocate;
    }
}
