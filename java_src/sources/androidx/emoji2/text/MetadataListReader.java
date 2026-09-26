package androidx.emoji2.text;

import androidx.annotation.AnyThread;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.flatbuffer.MetadataList;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import w7.i0;

/* JADX INFO: loaded from: classes7.dex */
@AnyThread
@RequiresApi
@RestrictTo
class MetadataListReader {
    private static final int EMJI_TAG = 1164798569;
    private static final int EMJI_TAG_DEPRECATED = 1701669481;
    private static final int META_TABLE_NAME = 1835365473;

    private static class ByteBufferReader implements OpenTypeReader {

        @NonNull
        private final ByteBuffer mByteBuffer;

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public int a() throws IOException {
            return this.mByteBuffer.getInt();
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public long b() throws IOException {
            return MetadataListReader.c(this.mByteBuffer.getInt());
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public long getPosition() {
            return this.mByteBuffer.position();
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public int readUnsignedShort() throws IOException {
            return MetadataListReader.d(this.mByteBuffer.getShort());
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public void skip(int i10) throws IOException {
            ByteBuffer byteBuffer = this.mByteBuffer;
            byteBuffer.position(byteBuffer.position() + i10);
        }

        ByteBufferReader(@NonNull ByteBuffer byteBuffer) {
            this.mByteBuffer = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }
    }

    private static class InputStreamOpenTypeReader implements OpenTypeReader {

        @NonNull
        private final byte[] mByteArray;

        @NonNull
        private final ByteBuffer mByteBuffer;

        @NonNull
        private final InputStream mInputStream;
        private long mPosition;

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public long getPosition() {
            return this.mPosition;
        }

        private void c(@IntRange int i10) throws IOException {
            if (this.mInputStream.read(this.mByteArray, 0, i10) != i10) {
                throw new IOException("read failed");
            }
            this.mPosition += (long) i10;
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public int a() throws IOException {
            this.mByteBuffer.position(0);
            c(4);
            return this.mByteBuffer.getInt();
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public long b() throws IOException {
            this.mByteBuffer.position(0);
            c(4);
            return MetadataListReader.c(this.mByteBuffer.getInt());
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public int readUnsignedShort() throws IOException {
            this.mByteBuffer.position(0);
            c(2);
            return MetadataListReader.d(this.mByteBuffer.getShort());
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public void skip(int i10) throws IOException {
            while (i10 > 0) {
                int iSkip = (int) this.mInputStream.skip(i10);
                if (iSkip < 1) {
                    throw new IOException("Skip didn't move at least 1 byte forward");
                }
                i10 -= iSkip;
                this.mPosition += (long) iSkip;
            }
        }
    }

    private interface OpenTypeReader {
        public static final int UINT16_BYTE_COUNT = 2;
        public static final int UINT32_BYTE_COUNT = 4;

        int a() throws IOException;

        long b() throws IOException;

        long getPosition();

        int readUnsignedShort() throws IOException;

        void skip(int i10) throws IOException;
    }

    private static OffsetInfo a(OpenTypeReader openTypeReader) throws IOException {
        long jB;
        openTypeReader.skip(4);
        int unsignedShort = openTypeReader.readUnsignedShort();
        if (unsignedShort > 100) {
            throw new IOException("Cannot read metadata.");
        }
        openTypeReader.skip(6);
        int i10 = 0;
        while (true) {
            if (i10 >= unsignedShort) {
                jB = -1;
                break;
            }
            int iA = openTypeReader.a();
            openTypeReader.skip(4);
            jB = openTypeReader.b();
            openTypeReader.skip(4);
            if (1835365473 == iA) {
                break;
            }
            i10++;
        }
        if (jB != -1) {
            openTypeReader.skip((int) (jB - openTypeReader.getPosition()));
            openTypeReader.skip(12);
            long jB2 = openTypeReader.b();
            for (int i11 = 0; i11 < jB2; i11++) {
                int iA2 = openTypeReader.a();
                long jB3 = openTypeReader.b();
                long jB4 = openTypeReader.b();
                if (EMJI_TAG == iA2 || EMJI_TAG_DEPRECATED == iA2) {
                    return new OffsetInfo(jB3 + jB, jB4);
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    static long c(int i10) {
        return ((long) i10) & 4294967295L;
    }

    static int d(short s) {
        return s & i0.MAX_VALUE;
    }

    private static class OffsetInfo {
        private final long mLength;
        private final long mStartOffset;

        long a() {
            return this.mStartOffset;
        }

        OffsetInfo(long j6, long j10) {
            this.mStartOffset = j6;
            this.mLength = j10;
        }
    }

    private MetadataListReader() {
    }

    static MetadataList b(ByteBuffer byteBuffer) throws IOException {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.position((int) a(new ByteBufferReader(byteBufferDuplicate)).a());
        return MetadataList.i(byteBufferDuplicate);
    }
}
