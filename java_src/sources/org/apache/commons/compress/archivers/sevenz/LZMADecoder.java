package org.apache.commons.compress.archivers.sevenz;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.compress.utils.ByteUtils;
import org.apache.commons.compress.utils.FlushShieldFilterOutputStream;
import org.tukaani.xz.LZMA2Options;
import org.tukaani.xz.LZMAInputStream;
import org.tukaani.xz.LZMAOutputStream;

/* JADX INFO: loaded from: classes8.dex */
class LZMADecoder extends CoderBase {
    LZMADecoder() {
        super(LZMA2Options.class, Number.class);
    }

    private int getDictionarySize(Coder coder) throws IllegalArgumentException {
        return (int) ByteUtils.fromLittleEndian(coder.properties, 1, 4);
    }

    private LZMA2Options getOptions(Object obj) throws IOException {
        if (obj instanceof LZMA2Options) {
            return (LZMA2Options) obj;
        }
        LZMA2Options lZMA2Options = new LZMA2Options();
        lZMA2Options.setDictSize(numberOptionOrDefault(obj));
        return lZMA2Options;
    }

    private int numberOptionOrDefault(Object obj) {
        return CoderBase.numberOptionOrDefault(obj, 8388608);
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    InputStream decode(String str, InputStream inputStream, long j6, Coder coder, byte[] bArr) throws IOException {
        byte b7 = coder.properties[0];
        int dictionarySize = getDictionarySize(coder);
        if (dictionarySize <= 2147483632) {
            return new LZMAInputStream(inputStream, j6, b7, dictionarySize);
        }
        throw new IOException("Dictionary larger than 4GiB maximum size used in " + str);
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    OutputStream encode(OutputStream outputStream, Object obj) throws IOException {
        return new FlushShieldFilterOutputStream(new LZMAOutputStream(outputStream, getOptions(obj), false));
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    Object getOptionsFromCoder(Coder coder, InputStream inputStream) throws IOException {
        int i10 = coder.properties[0] & 255;
        int i11 = i10 / 45;
        int i12 = i10 - (i11 * 45);
        int i13 = i12 / 9;
        LZMA2Options lZMA2Options = new LZMA2Options();
        lZMA2Options.setPb(i11);
        lZMA2Options.setLcLp(i12 - (i13 * 9), i13);
        lZMA2Options.setDictSize(getDictionarySize(coder));
        return lZMA2Options;
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    byte[] getOptionsAsProperties(Object obj) throws IOException {
        LZMA2Options options = getOptions(obj);
        byte pb = (byte) ((((options.getPb() * 5) + options.getLp()) * 9) + options.getLc());
        int dictSize = options.getDictSize();
        byte[] bArr = new byte[5];
        bArr[0] = pb;
        ByteUtils.toLittleEndian(bArr, dictSize, 1, 4);
        return bArr;
    }
}
