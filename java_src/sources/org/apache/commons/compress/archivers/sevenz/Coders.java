package org.apache.commons.compress.archivers.sevenz;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import org.apache.commons.compress.compressors.bzip2.BZip2CompressorInputStream;
import org.apache.commons.compress.compressors.bzip2.BZip2CompressorOutputStream;
import org.apache.commons.compress.compressors.deflate64.Deflate64CompressorInputStream;
import org.apache.commons.compress.utils.FlushShieldFilterOutputStream;
import org.tukaani.xz.ARMOptions;
import org.tukaani.xz.ARMThumbOptions;
import org.tukaani.xz.FilterOptions;
import org.tukaani.xz.FinishableWrapperOutputStream;
import org.tukaani.xz.IA64Options;
import org.tukaani.xz.PowerPCOptions;
import org.tukaani.xz.SPARCOptions;
import org.tukaani.xz.X86Options;

/* JADX INFO: loaded from: classes4.dex */
class Coders {
    private static final Map<SevenZMethod, CoderBase> CODER_MAP = new HashMap<SevenZMethod, CoderBase>() { // from class: org.apache.commons.compress.archivers.sevenz.Coders.1
        private static final long serialVersionUID = 1664829131806520867L;

        {
            put(SevenZMethod.COPY, new CopyDecoder());
            put(SevenZMethod.LZMA, new LZMADecoder());
            put(SevenZMethod.LZMA2, new LZMA2Decoder());
            put(SevenZMethod.DEFLATE, new DeflateDecoder());
            put(SevenZMethod.DEFLATE64, new Deflate64Decoder());
            put(SevenZMethod.BZIP2, new BZIP2Decoder());
            put(SevenZMethod.AES256SHA256, new AES256SHA256Decoder());
            put(SevenZMethod.BCJ_X86_FILTER, new BCJDecoder(new X86Options()));
            put(SevenZMethod.BCJ_PPC_FILTER, new BCJDecoder(new PowerPCOptions()));
            put(SevenZMethod.BCJ_IA64_FILTER, new BCJDecoder(new IA64Options()));
            put(SevenZMethod.BCJ_ARM_FILTER, new BCJDecoder(new ARMOptions()));
            put(SevenZMethod.BCJ_ARM_THUMB_FILTER, new BCJDecoder(new ARMThumbOptions()));
            put(SevenZMethod.BCJ_SPARC_FILTER, new BCJDecoder(new SPARCOptions()));
            put(SevenZMethod.DELTA_FILTER, new DeltaDecoder());
        }
    };

    static class BCJDecoder extends CoderBase {
        private final FilterOptions opts;

        BCJDecoder(FilterOptions filterOptions) {
            super(new Class[0]);
            this.opts = filterOptions;
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        InputStream decode(String str, InputStream inputStream, long j6, Coder coder, byte[] bArr) throws IOException {
            try {
                return this.opts.getInputStream(inputStream);
            } catch (AssertionError e) {
                throw new IOException("BCJ filter used in " + str + " needs XZ for Java > 1.4 - see http://commons.apache.org/proper/commons-compress/limitations.html#7Z", e);
            }
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        OutputStream encode(OutputStream outputStream, Object obj) {
            return new FlushShieldFilterOutputStream(this.opts.getOutputStream(new FinishableWrapperOutputStream(outputStream)));
        }
    }

    static class BZIP2Decoder extends CoderBase {
        BZIP2Decoder() {
            super(Number.class);
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        InputStream decode(String str, InputStream inputStream, long j6, Coder coder, byte[] bArr) throws IOException {
            return new BZip2CompressorInputStream(inputStream);
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        OutputStream encode(OutputStream outputStream, Object obj) throws IOException {
            return new BZip2CompressorOutputStream(outputStream, CoderBase.numberOptionOrDefault(obj, 9));
        }
    }

    static class CopyDecoder extends CoderBase {
        CopyDecoder() {
            super(new Class[0]);
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        InputStream decode(String str, InputStream inputStream, long j6, Coder coder, byte[] bArr) throws IOException {
            return inputStream;
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        OutputStream encode(OutputStream outputStream, Object obj) {
            return outputStream;
        }
    }

    static class Deflate64Decoder extends CoderBase {
        Deflate64Decoder() {
            super(Number.class);
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        InputStream decode(String str, InputStream inputStream, long j6, Coder coder, byte[] bArr) throws IOException {
            return new Deflate64CompressorInputStream(inputStream);
        }
    }

    static class DeflateDecoder extends CoderBase {
        private static final byte[] ONE_ZERO_BYTE = new byte[1];

        static class DeflateDecoderInputStream extends InputStream {
            Inflater inflater;
            InflaterInputStream inflaterInputStream;

            @Override // java.io.InputStream
            public int read() throws IOException {
                return this.inflaterInputStream.read();
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                try {
                    this.inflaterInputStream.close();
                } finally {
                    this.inflater.end();
                }
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i10, int i11) throws IOException {
                return this.inflaterInputStream.read(bArr, i10, i11);
            }

            public DeflateDecoderInputStream(InflaterInputStream inflaterInputStream, Inflater inflater) {
                this.inflaterInputStream = inflaterInputStream;
                this.inflater = inflater;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr) throws IOException {
                return this.inflaterInputStream.read(bArr);
            }
        }

        static class DeflateDecoderOutputStream extends OutputStream {
            Deflater deflater;
            DeflaterOutputStream deflaterOutputStream;

            @Override // java.io.OutputStream
            public void write(int i10) throws IOException {
                this.deflaterOutputStream.write(i10);
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                try {
                    this.deflaterOutputStream.close();
                } finally {
                    this.deflater.end();
                }
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr) throws IOException {
                this.deflaterOutputStream.write(bArr);
            }

            public DeflateDecoderOutputStream(DeflaterOutputStream deflaterOutputStream, Deflater deflater) {
                this.deflaterOutputStream = deflaterOutputStream;
                this.deflater = deflater;
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i10, int i11) throws IOException {
                this.deflaterOutputStream.write(bArr, i10, i11);
            }
        }

        DeflateDecoder() {
            super(Number.class);
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        InputStream decode(String str, InputStream inputStream, long j6, Coder coder, byte[] bArr) throws IOException {
            Inflater inflater = new Inflater(true);
            return new DeflateDecoderInputStream(new InflaterInputStream(new SequenceInputStream(inputStream, new ByteArrayInputStream(ONE_ZERO_BYTE)), inflater), inflater);
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        OutputStream encode(OutputStream outputStream, Object obj) {
            Deflater deflater = new Deflater(CoderBase.numberOptionOrDefault(obj, 9), true);
            return new DeflateDecoderOutputStream(new DeflaterOutputStream(outputStream, deflater), deflater);
        }
    }

    static InputStream addDecoder(String str, InputStream inputStream, long j6, Coder coder, byte[] bArr) throws IOException {
        CoderBase coderBaseFindByMethod = findByMethod(SevenZMethod.byId(coder.decompressionMethodId));
        if (coderBaseFindByMethod != null) {
            return coderBaseFindByMethod.decode(str, inputStream, j6, coder, bArr);
        }
        throw new IOException("Unsupported compression method " + Arrays.toString(coder.decompressionMethodId) + " used in " + str);
    }

    static CoderBase findByMethod(SevenZMethod sevenZMethod) {
        return CODER_MAP.get(sevenZMethod);
    }

    Coders() {
    }

    static OutputStream addEncoder(OutputStream outputStream, SevenZMethod sevenZMethod, Object obj) throws IOException {
        CoderBase coderBaseFindByMethod = findByMethod(sevenZMethod);
        if (coderBaseFindByMethod != null) {
            return coderBaseFindByMethod.encode(outputStream, obj);
        }
        throw new IOException("Unsupported compression method " + sevenZMethod);
    }
}
