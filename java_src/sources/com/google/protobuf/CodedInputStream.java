package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public abstract class CodedInputStream {
    private static final int DEFAULT_BUFFER_SIZE = 4096;
    private static final int DEFAULT_SIZE_LIMIT = Integer.MAX_VALUE;
    private static volatile int defaultRecursionLimit = 100;
    int recursionDepth;
    int recursionLimit;
    private boolean shouldDiscardUnknownFields;
    int sizeLimit;
    f wrapper;

    private static final class b extends CodedInputStream {
        private final byte[] buffer;
        private int bufferSizeAfterLimit;
        private int currentLimit;
        private boolean enableAliasing;
        private final boolean immutable;
        private int lastTag;
        private int limit;
        private int pos;
        private int startPos;

        private void recomputeBufferSizeAfterLimit() {
            int i10 = this.limit + this.bufferSizeAfterLimit;
            this.limit = i10;
            int i11 = i10 - this.startPos;
            int i12 = this.currentLimit;
            if (i11 <= i12) {
                this.bufferSizeAfterLimit = 0;
                return;
            }
            int i13 = i11 - i12;
            this.bufferSizeAfterLimit = i13;
            this.limit = i10 - i13;
        }

        private void skipRawVarintFastPath() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.buffer;
                int i11 = this.pos;
                this.pos = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void skipRawVarintSlowPath() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void enableAliasing(boolean z6) {
            this.enableAliasing = z6;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getLastTag() {
            return this.lastTag;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getTotalBytesRead() {
            return this.pos - this.startPos;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean isAtEnd() throws IOException {
            return this.pos == this.limit;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readGroup(int i10, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int rawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int iPushLimit = pushLimit(rawVarint32);
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() != 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            popLimit(iPushLimit);
        }

        @Override // com.google.protobuf.CodedInputStream
        public void resetSizeCounter() {
            this.startPos = this.pos;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                skipRawVarint();
                return true;
            }
            if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            }
            if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            }
            if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4));
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            skipRawBytes(4);
            return true;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage() throws IOException {
            int tag;
            do {
                tag = readTag();
                if (tag == 0) {
                    return;
                }
            } while (skipField(tag));
        }

        private b(byte[] bArr, int i10, int i11, boolean z6) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.buffer = bArr;
            this.limit = i11 + i10;
            this.pos = i10;
            this.startPos = i10;
            this.immutable = z6;
        }

        private void skipRawVarint() throws IOException {
            if (this.limit - this.pos >= 10) {
                skipRawVarintFastPath();
            } else {
                skipRawVarintSlowPath();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public void checkLastTagWas(int i10) throws InvalidProtocolBufferException {
            if (this.lastTag != i10) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getBytesUntilLimit() {
            int i10 = this.currentLimit;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - getTotalBytesRead();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void popLimit(int i10) {
            this.currentLimit = i10;
            recomputeBufferSizeAfterLimit();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int pushLimit(int i10) throws InvalidProtocolBufferException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int totalBytesRead = i10 + getTotalBytesRead();
            if (totalBytesRead < 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
            int i11 = this.currentLimit;
            if (totalBytesRead > i11) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.currentLimit = totalBytesRead;
            recomputeBufferSizeAfterLimit();
            return i11;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte readRawByte() throws IOException {
            int i10 = this.pos;
            if (i10 == this.limit) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.buffer;
            this.pos = i10 + 1;
            return bArr[i10];
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readRawBytes(int i10) throws IOException {
            if (i10 > 0) {
                int i11 = this.limit;
                int i12 = this.pos;
                if (i10 <= i11 - i12) {
                    int i13 = i10 + i12;
                    this.pos = i13;
                    return Arrays.copyOfRange(this.buffer, i12, i13);
                }
            }
            if (i10 > 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i10 == 0) {
                return Internal.EMPTY_BYTE_ARRAY;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawLittleEndian32() throws IOException {
            int i10 = this.pos;
            if (this.limit - i10 < 4) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.buffer;
            this.pos = i10 + 4;
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawLittleEndian64() throws IOException {
            int i10 = this.pos;
            if (this.limit - i10 < 8) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.buffer;
            this.pos = i10 + 8;
            return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawVarint32() throws IOException {
            int i10;
            int i11 = this.pos;
            int i12 = this.limit;
            if (i12 != i11) {
                byte[] bArr = this.buffer;
                int i13 = i11 + 1;
                byte b7 = bArr[i11];
                if (b7 >= 0) {
                    this.pos = i13;
                    return b7;
                }
                if (i12 - i13 >= 9) {
                    int i14 = i11 + 2;
                    int i15 = (bArr[i13] << 7) ^ b7;
                    if (i15 < 0) {
                        i10 = i15 ^ (-128);
                    } else {
                        int i16 = i11 + 3;
                        int i17 = (bArr[i14] << com.google.common.base.c.SO) ^ i15;
                        if (i17 >= 0) {
                            i10 = i17 ^ 16256;
                        } else {
                            int i18 = i11 + 4;
                            int i19 = i17 ^ (bArr[i16] << com.google.common.base.c.NAK);
                            if (i19 < 0) {
                                i10 = (-2080896) ^ i19;
                            } else {
                                i16 = i11 + 5;
                                byte b10 = bArr[i18];
                                int i20 = (i19 ^ (b10 << com.google.common.base.c.FS)) ^ 266354560;
                                if (b10 < 0) {
                                    i18 = i11 + 6;
                                    if (bArr[i16] < 0) {
                                        i16 = i11 + 7;
                                        if (bArr[i18] < 0) {
                                            i18 = i11 + 8;
                                            if (bArr[i16] < 0) {
                                                i16 = i11 + 9;
                                                if (bArr[i18] < 0) {
                                                    int i21 = i11 + 10;
                                                    if (bArr[i16] >= 0) {
                                                        i14 = i21;
                                                        i10 = i20;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i20;
                                }
                                i10 = i20;
                            }
                            i14 = i18;
                        }
                        i14 = i16;
                    }
                    this.pos = i14;
                    return i10;
                }
            }
            return (int) readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawVarint64() throws IOException {
            long j6;
            long j10;
            long j11;
            int i10 = this.pos;
            int i11 = this.limit;
            if (i11 != i10) {
                byte[] bArr = this.buffer;
                int i12 = i10 + 1;
                byte b7 = bArr[i10];
                if (b7 >= 0) {
                    this.pos = i12;
                    return b7;
                }
                if (i11 - i12 >= 9) {
                    int i13 = i10 + 2;
                    int i14 = (bArr[i12] << 7) ^ b7;
                    if (i14 < 0) {
                        j6 = i14 ^ (-128);
                    } else {
                        int i15 = i10 + 3;
                        int i16 = (bArr[i13] << com.google.common.base.c.SO) ^ i14;
                        if (i16 >= 0) {
                            j6 = i16 ^ 16256;
                            i13 = i15;
                        } else {
                            int i17 = i10 + 4;
                            int i18 = i16 ^ (bArr[i15] << com.google.common.base.c.NAK);
                            if (i18 < 0) {
                                long j12 = (-2080896) ^ i18;
                                i13 = i17;
                                j6 = j12;
                            } else {
                                long j13 = i18;
                                i13 = i10 + 5;
                                long j14 = j13 ^ (((long) bArr[i17]) << 28);
                                if (j14 >= 0) {
                                    j11 = 266354560;
                                } else {
                                    int i19 = i10 + 6;
                                    long j15 = j14 ^ (((long) bArr[i13]) << 35);
                                    if (j15 < 0) {
                                        j10 = -34093383808L;
                                    } else {
                                        i13 = i10 + 7;
                                        j14 = j15 ^ (((long) bArr[i19]) << 42);
                                        if (j14 >= 0) {
                                            j11 = 4363953127296L;
                                        } else {
                                            i19 = i10 + 8;
                                            j15 = j14 ^ (((long) bArr[i13]) << 49);
                                            if (j15 < 0) {
                                                j10 = -558586000294016L;
                                            } else {
                                                i13 = i10 + 9;
                                                long j16 = (j15 ^ (((long) bArr[i19]) << 56)) ^ 71499008037633920L;
                                                if (j16 < 0) {
                                                    int i20 = i10 + 10;
                                                    if (bArr[i13] >= 0) {
                                                        i13 = i20;
                                                    }
                                                }
                                                j6 = j16;
                                            }
                                        }
                                    }
                                    j6 = j15 ^ j10;
                                    i13 = i19;
                                }
                                j6 = j14 ^ j11;
                            }
                        }
                    }
                    this.pos = i13;
                    return j6;
                }
            }
            return readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        long readRawVarint64SlowPath() throws IOException {
            long j6 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte rawByte = readRawByte();
                j6 |= ((long) (rawByte & 127)) << i10;
                if ((rawByte & 128) == 0) {
                    return j6;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipRawBytes(int i10) throws IOException {
            if (i10 >= 0) {
                int i11 = this.limit;
                int i12 = this.pos;
                if (i10 <= i11 - i12) {
                    this.pos = i12 + i10;
                    return;
                }
            }
            if (i10 >= 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean readBool() throws IOException {
            if (readRawVarint64() != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readByteArray() throws IOException {
            return readRawBytes(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteBuffer readByteBuffer() throws IOException {
            ByteBuffer byteBufferWrap;
            int rawVarint32 = readRawVarint32();
            if (rawVarint32 > 0) {
                int i10 = this.limit;
                int i11 = this.pos;
                if (rawVarint32 <= i10 - i11) {
                    if (!this.immutable && this.enableAliasing) {
                        byteBufferWrap = ByteBuffer.wrap(this.buffer, i11, rawVarint32).slice();
                    } else {
                        byteBufferWrap = ByteBuffer.wrap(Arrays.copyOfRange(this.buffer, i11, i11 + rawVarint32));
                    }
                    this.pos += rawVarint32;
                    return byteBufferWrap;
                }
            }
            if (rawVarint32 == 0) {
                return Internal.EMPTY_BYTE_BUFFER;
            }
            if (rawVarint32 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteString readBytes() throws IOException {
            ByteString byteStringCopyFrom;
            int rawVarint32 = readRawVarint32();
            if (rawVarint32 > 0) {
                int i10 = this.limit;
                int i11 = this.pos;
                if (rawVarint32 <= i10 - i11) {
                    if (this.immutable && this.enableAliasing) {
                        byteStringCopyFrom = ByteString.wrap(this.buffer, i11, rawVarint32);
                    } else {
                        byteStringCopyFrom = ByteString.copyFrom(this.buffer, i11, rawVarint32);
                    }
                    this.pos += rawVarint32;
                    return byteStringCopyFrom;
                }
            }
            if (rawVarint32 == 0) {
                return ByteString.EMPTY;
            }
            return ByteString.wrap(readRawBytes(rawVarint32));
        }

        @Override // com.google.protobuf.CodedInputStream
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSInt32() throws IOException {
            return CodedInputStream.decodeZigZag32(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSInt64() throws IOException {
            return CodedInputStream.decodeZigZag64(readRawVarint64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readString() throws IOException {
            int rawVarint32 = readRawVarint32();
            if (rawVarint32 > 0) {
                int i10 = this.limit;
                int i11 = this.pos;
                if (rawVarint32 <= i10 - i11) {
                    String str = new String(this.buffer, i11, rawVarint32, Internal.UTF_8);
                    this.pos += rawVarint32;
                    return str;
                }
            }
            if (rawVarint32 == 0) {
                return "";
            }
            if (rawVarint32 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readStringRequireUtf8() throws IOException {
            int rawVarint32 = readRawVarint32();
            if (rawVarint32 > 0) {
                int i10 = this.limit;
                int i11 = this.pos;
                if (rawVarint32 <= i10 - i11) {
                    String strDecodeUtf8 = u0.decodeUtf8(this.buffer, i11, rawVarint32);
                    this.pos += rawVarint32;
                    return strDecodeUtf8;
                }
            }
            if (rawVarint32 == 0) {
                return "";
            }
            if (rawVarint32 <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readTag() throws IOException {
            if (isAtEnd()) {
                this.lastTag = 0;
                return 0;
            }
            int rawVarint32 = readRawVarint32();
            this.lastTag = rawVarint32;
            if (WireFormat.getTagFieldNumber(rawVarint32) != 0) {
                return this.lastTag;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void readUnknownGroup(int i10, MessageLite.Builder builder) throws IOException {
            readGroup(i10, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage(CodedOutputStream codedOutputStream) throws IOException {
            int tag;
            do {
                tag = readTag();
                if (tag == 0) {
                    return;
                }
            } while (skipField(tag, codedOutputStream));
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readGroup(int i10, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            T partialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
            return partialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int rawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int iPushLimit = pushLimit(rawVarint32);
            this.recursionDepth++;
            T partialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() == 0) {
                popLimit(iPushLimit);
                return partialFrom;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10, CodedOutputStream codedOutputStream) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                long int64 = readInt64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeUInt64NoTag(int64);
                return true;
            }
            if (tagWireType == 1) {
                long rawLittleEndian64 = readRawLittleEndian64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeFixed64NoTag(rawLittleEndian64);
                return true;
            }
            if (tagWireType == 2) {
                ByteString bytes = readBytes();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeBytesNoTag(bytes);
                return true;
            }
            if (tagWireType == 3) {
                codedOutputStream.writeUInt32NoTag(i10);
                skipMessage(codedOutputStream);
                int iMakeTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4);
                checkLastTagWas(iMakeTag);
                codedOutputStream.writeUInt32NoTag(iMakeTag);
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType == 5) {
                int rawLittleEndian32 = readRawLittleEndian32();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeFixed32NoTag(rawLittleEndian32);
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    private static final class c extends CodedInputStream {
        private int bufferSizeAfterCurrentLimit;
        private long currentAddress;
        private ByteBuffer currentByteBuffer;
        private long currentByteBufferLimit;
        private long currentByteBufferPos;
        private long currentByteBufferStartPos;
        private int currentLimit;
        private boolean enableAliasing;
        private final boolean immutable;
        private final Iterable<ByteBuffer> input;
        private final Iterator<ByteBuffer> iterator;
        private int lastTag;
        private int startOffset;
        private int totalBufferSize;
        private int totalBytesRead;

        private long currentRemaining() {
            return this.currentByteBufferLimit - this.currentByteBufferPos;
        }

        private void recomputeBufferSizeAfterLimit() {
            int i10 = this.totalBufferSize + this.bufferSizeAfterCurrentLimit;
            this.totalBufferSize = i10;
            int i11 = i10 - this.startOffset;
            int i12 = this.currentLimit;
            if (i11 <= i12) {
                this.bufferSizeAfterCurrentLimit = 0;
                return;
            }
            int i13 = i11 - i12;
            this.bufferSizeAfterCurrentLimit = i13;
            this.totalBufferSize = i10 - i13;
        }

        private int remaining() {
            return (int) ((((long) (this.totalBufferSize - this.totalBytesRead)) - this.currentByteBufferPos) + this.currentByteBufferStartPos);
        }

        private void skipRawVarint() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void enableAliasing(boolean z6) {
            this.enableAliasing = z6;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getLastTag() {
            return this.lastTag;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getTotalBytesRead() {
            return (int) ((((long) (this.totalBytesRead - this.startOffset)) + this.currentByteBufferPos) - this.currentByteBufferStartPos);
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean isAtEnd() throws IOException {
            return (((long) this.totalBytesRead) + this.currentByteBufferPos) - this.currentByteBufferStartPos == ((long) this.totalBufferSize);
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readGroup(int i10, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int rawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int iPushLimit = pushLimit(rawVarint32);
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() != 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            popLimit(iPushLimit);
        }

        @Override // com.google.protobuf.CodedInputStream
        public void resetSizeCounter() {
            this.startOffset = (int) ((((long) this.totalBytesRead) + this.currentByteBufferPos) - this.currentByteBufferStartPos);
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                skipRawVarint();
                return true;
            }
            if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            }
            if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            }
            if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4));
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            skipRawBytes(4);
            return true;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage() throws IOException {
            int tag;
            do {
                tag = readTag();
                if (tag == 0) {
                    return;
                }
            } while (skipField(tag));
        }

        private c(Iterable<ByteBuffer> iterable, int i10, boolean z6) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.totalBufferSize = i10;
            this.input = iterable;
            this.iterator = iterable.iterator();
            this.immutable = z6;
            this.totalBytesRead = 0;
            this.startOffset = 0;
            if (i10 != 0) {
                tryGetNextByteBuffer();
                return;
            }
            this.currentByteBuffer = Internal.EMPTY_BYTE_BUFFER;
            this.currentByteBufferPos = 0L;
            this.currentByteBufferStartPos = 0L;
            this.currentByteBufferLimit = 0L;
            this.currentAddress = 0L;
        }

        private void getNextByteBuffer() throws InvalidProtocolBufferException {
            if (!this.iterator.hasNext()) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            tryGetNextByteBuffer();
        }

        private void readRawBytesTo(byte[] bArr, int i10, int i11) throws IOException {
            if (i11 < 0 || i11 > remaining()) {
                if (i11 > 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i11 != 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                return;
            }
            int i12 = i11;
            while (i12 > 0) {
                if (currentRemaining() == 0) {
                    getNextByteBuffer();
                }
                int iMin = Math.min(i12, (int) currentRemaining());
                long j6 = iMin;
                t0.copyMemory(this.currentByteBufferPos, bArr, (i11 - i12) + i10, j6);
                i12 -= iMin;
                this.currentByteBufferPos += j6;
            }
        }

        private ByteBuffer slice(int i10, int i11) throws IOException {
            int iPosition = this.currentByteBuffer.position();
            int iLimit = this.currentByteBuffer.limit();
            ByteBuffer byteBuffer = this.currentByteBuffer;
            try {
                try {
                    byteBuffer.position(i10);
                    byteBuffer.limit(i11);
                    ByteBuffer byteBufferSlice = this.currentByteBuffer.slice();
                    byteBuffer.position(iPosition);
                    byteBuffer.limit(iLimit);
                    return byteBufferSlice;
                } catch (IllegalArgumentException unused) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } catch (Throwable th) {
                byteBuffer.position(iPosition);
                byteBuffer.limit(iLimit);
                throw th;
            }
        }

        private void tryGetNextByteBuffer() {
            ByteBuffer next = this.iterator.next();
            this.currentByteBuffer = next;
            this.totalBytesRead += (int) (this.currentByteBufferPos - this.currentByteBufferStartPos);
            long jPosition = next.position();
            this.currentByteBufferPos = jPosition;
            this.currentByteBufferStartPos = jPosition;
            this.currentByteBufferLimit = this.currentByteBuffer.limit();
            long jAddressOffset = t0.addressOffset(this.currentByteBuffer);
            this.currentAddress = jAddressOffset;
            this.currentByteBufferPos += jAddressOffset;
            this.currentByteBufferStartPos += jAddressOffset;
            this.currentByteBufferLimit += jAddressOffset;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void checkLastTagWas(int i10) throws InvalidProtocolBufferException {
            if (this.lastTag != i10) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getBytesUntilLimit() {
            int i10 = this.currentLimit;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - getTotalBytesRead();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void popLimit(int i10) {
            this.currentLimit = i10;
            recomputeBufferSizeAfterLimit();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int pushLimit(int i10) throws InvalidProtocolBufferException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int totalBytesRead = i10 + getTotalBytesRead();
            int i11 = this.currentLimit;
            if (totalBytesRead > i11) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.currentLimit = totalBytesRead;
            recomputeBufferSizeAfterLimit();
            return i11;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readRawBytes(int i10) throws IOException {
            if (i10 >= 0) {
                long j6 = i10;
                if (j6 <= currentRemaining()) {
                    byte[] bArr = new byte[i10];
                    t0.copyMemory(this.currentByteBufferPos, bArr, 0L, j6);
                    this.currentByteBufferPos += j6;
                    return bArr;
                }
            }
            if (i10 >= 0 && i10 <= remaining()) {
                byte[] bArr2 = new byte[i10];
                readRawBytesTo(bArr2, 0, i10);
                return bArr2;
            }
            if (i10 > 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i10 == 0) {
                return Internal.EMPTY_BYTE_ARRAY;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawLittleEndian64() throws IOException {
            long rawByte;
            byte rawByte2;
            if (currentRemaining() >= 8) {
                long j6 = this.currentByteBufferPos;
                this.currentByteBufferPos = 8 + j6;
                rawByte = (((long) t0.getByte(j6)) & 255) | ((((long) t0.getByte(1 + j6)) & 255) << 8) | ((((long) t0.getByte(2 + j6)) & 255) << 16) | ((((long) t0.getByte(3 + j6)) & 255) << 24) | ((((long) t0.getByte(4 + j6)) & 255) << 32) | ((((long) t0.getByte(5 + j6)) & 255) << 40) | ((((long) t0.getByte(6 + j6)) & 255) << 48);
                rawByte2 = t0.getByte(j6 + 7);
            } else {
                rawByte = (((long) readRawByte()) & 255) | ((((long) readRawByte()) & 255) << 8) | ((((long) readRawByte()) & 255) << 16) | ((((long) readRawByte()) & 255) << 24) | ((((long) readRawByte()) & 255) << 32) | ((((long) readRawByte()) & 255) << 40) | ((((long) readRawByte()) & 255) << 48);
                rawByte2 = readRawByte();
            }
            return ((((long) rawByte2) & 255) << 56) | rawByte;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawVarint32() throws IOException {
            int i10;
            long j6 = this.currentByteBufferPos;
            if (this.currentByteBufferLimit != j6) {
                long j10 = j6 + 1;
                byte b7 = t0.getByte(j6);
                if (b7 >= 0) {
                    this.currentByteBufferPos++;
                    return b7;
                }
                if (this.currentByteBufferLimit - this.currentByteBufferPos >= 10) {
                    long j11 = 2 + j6;
                    int i11 = (t0.getByte(j10) << 7) ^ b7;
                    if (i11 < 0) {
                        i10 = i11 ^ (-128);
                    } else {
                        long j12 = 3 + j6;
                        int i12 = (t0.getByte(j11) << com.google.common.base.c.SO) ^ i11;
                        if (i12 >= 0) {
                            i10 = i12 ^ 16256;
                        } else {
                            long j13 = 4 + j6;
                            int i13 = i12 ^ (t0.getByte(j12) << com.google.common.base.c.NAK);
                            if (i13 < 0) {
                                i10 = (-2080896) ^ i13;
                            } else {
                                j12 = 5 + j6;
                                byte b10 = t0.getByte(j13);
                                int i14 = (i13 ^ (b10 << com.google.common.base.c.FS)) ^ 266354560;
                                if (b10 < 0) {
                                    j13 = 6 + j6;
                                    if (t0.getByte(j12) < 0) {
                                        j12 = 7 + j6;
                                        if (t0.getByte(j13) < 0) {
                                            j13 = 8 + j6;
                                            if (t0.getByte(j12) < 0) {
                                                j12 = 9 + j6;
                                                if (t0.getByte(j13) < 0) {
                                                    long j14 = j6 + 10;
                                                    if (t0.getByte(j12) >= 0) {
                                                        i10 = i14;
                                                        j11 = j14;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i14;
                                }
                                i10 = i14;
                            }
                            j11 = j13;
                        }
                        j11 = j12;
                    }
                    this.currentByteBufferPos = j11;
                    return i10;
                }
            }
            return (int) readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawVarint64() throws IOException {
            long j6;
            long j10;
            long j11;
            long j12 = this.currentByteBufferPos;
            if (this.currentByteBufferLimit != j12) {
                long j13 = j12 + 1;
                byte b7 = t0.getByte(j12);
                if (b7 >= 0) {
                    this.currentByteBufferPos++;
                    return b7;
                }
                if (this.currentByteBufferLimit - this.currentByteBufferPos >= 10) {
                    long j14 = 2 + j12;
                    int i10 = (t0.getByte(j13) << 7) ^ b7;
                    if (i10 < 0) {
                        j6 = i10 ^ (-128);
                    } else {
                        long j15 = 3 + j12;
                        int i11 = (t0.getByte(j14) << com.google.common.base.c.SO) ^ i10;
                        if (i11 >= 0) {
                            j6 = i11 ^ 16256;
                            j14 = j15;
                        } else {
                            long j16 = 4 + j12;
                            int i12 = i11 ^ (t0.getByte(j15) << com.google.common.base.c.NAK);
                            if (i12 < 0) {
                                j6 = (-2080896) ^ i12;
                                j14 = j16;
                            } else {
                                long j17 = 5 + j12;
                                long j18 = (((long) t0.getByte(j16)) << 28) ^ ((long) i12);
                                if (j18 >= 0) {
                                    j11 = 266354560;
                                } else {
                                    long j19 = 6 + j12;
                                    long j20 = j18 ^ (((long) t0.getByte(j17)) << 35);
                                    if (j20 < 0) {
                                        j10 = -34093383808L;
                                    } else {
                                        j17 = 7 + j12;
                                        j18 = j20 ^ (((long) t0.getByte(j19)) << 42);
                                        if (j18 >= 0) {
                                            j11 = 4363953127296L;
                                        } else {
                                            j19 = 8 + j12;
                                            j20 = j18 ^ (((long) t0.getByte(j17)) << 49);
                                            if (j20 < 0) {
                                                j10 = -558586000294016L;
                                            } else {
                                                j17 = 9 + j12;
                                                long j21 = (j20 ^ (((long) t0.getByte(j19)) << 56)) ^ 71499008037633920L;
                                                if (j21 < 0) {
                                                    long j22 = j12 + 10;
                                                    if (t0.getByte(j17) >= 0) {
                                                        j6 = j21;
                                                        j14 = j22;
                                                    }
                                                } else {
                                                    j6 = j21;
                                                    j14 = j17;
                                                }
                                            }
                                        }
                                    }
                                    j6 = j10 ^ j20;
                                    j14 = j19;
                                }
                                j6 = j11 ^ j18;
                                j14 = j17;
                            }
                        }
                    }
                    this.currentByteBufferPos = j14;
                    return j6;
                }
            }
            return readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        long readRawVarint64SlowPath() throws IOException {
            long j6 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte rawByte = readRawByte();
                j6 |= ((long) (rawByte & 127)) << i10;
                if ((rawByte & 128) == 0) {
                    return j6;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipRawBytes(int i10) throws IOException {
            if (i10 < 0 || i10 > (((long) (this.totalBufferSize - this.totalBytesRead)) - this.currentByteBufferPos) + this.currentByteBufferStartPos) {
                if (i10 >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
            while (i10 > 0) {
                if (currentRemaining() == 0) {
                    getNextByteBuffer();
                }
                int iMin = Math.min(i10, (int) currentRemaining());
                i10 -= iMin;
                this.currentByteBufferPos += (long) iMin;
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean readBool() throws IOException {
            if (readRawVarint64() != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readByteArray() throws IOException {
            return readRawBytes(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteBuffer readByteBuffer() throws IOException {
            int rawVarint32 = readRawVarint32();
            if (rawVarint32 > 0) {
                long j6 = rawVarint32;
                if (j6 <= currentRemaining()) {
                    if (!this.immutable && this.enableAliasing) {
                        long j10 = this.currentByteBufferPos + j6;
                        this.currentByteBufferPos = j10;
                        long j11 = this.currentAddress;
                        return slice((int) ((j10 - j11) - j6), (int) (j10 - j11));
                    }
                    byte[] bArr = new byte[rawVarint32];
                    t0.copyMemory(this.currentByteBufferPos, bArr, 0L, j6);
                    this.currentByteBufferPos += j6;
                    return ByteBuffer.wrap(bArr);
                }
            }
            if (rawVarint32 > 0 && rawVarint32 <= remaining()) {
                byte[] bArr2 = new byte[rawVarint32];
                readRawBytesTo(bArr2, 0, rawVarint32);
                return ByteBuffer.wrap(bArr2);
            }
            if (rawVarint32 == 0) {
                return Internal.EMPTY_BYTE_BUFFER;
            }
            if (rawVarint32 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteString readBytes() throws IOException {
            int rawVarint32 = readRawVarint32();
            if (rawVarint32 > 0) {
                long j6 = rawVarint32;
                long j10 = this.currentByteBufferLimit;
                long j11 = this.currentByteBufferPos;
                if (j6 <= j10 - j11) {
                    if (this.immutable && this.enableAliasing) {
                        int i10 = (int) (j11 - this.currentAddress);
                        ByteString byteStringWrap = ByteString.wrap(slice(i10, rawVarint32 + i10));
                        this.currentByteBufferPos += j6;
                        return byteStringWrap;
                    }
                    byte[] bArr = new byte[rawVarint32];
                    t0.copyMemory(j11, bArr, 0L, j6);
                    this.currentByteBufferPos += j6;
                    return ByteString.wrap(bArr);
                }
            }
            if (rawVarint32 > 0 && rawVarint32 <= remaining()) {
                if (this.immutable && this.enableAliasing) {
                    ArrayList arrayList = new ArrayList();
                    while (rawVarint32 > 0) {
                        if (currentRemaining() == 0) {
                            getNextByteBuffer();
                        }
                        int iMin = Math.min(rawVarint32, (int) currentRemaining());
                        int i11 = (int) (this.currentByteBufferPos - this.currentAddress);
                        arrayList.add(ByteString.wrap(slice(i11, i11 + iMin)));
                        rawVarint32 -= iMin;
                        this.currentByteBufferPos += (long) iMin;
                    }
                    return ByteString.copyFrom(arrayList);
                }
                byte[] bArr2 = new byte[rawVarint32];
                readRawBytesTo(bArr2, 0, rawVarint32);
                return ByteString.wrap(bArr2);
            }
            if (rawVarint32 == 0) {
                return ByteString.EMPTY;
            }
            if (rawVarint32 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte readRawByte() throws IOException {
            if (currentRemaining() == 0) {
                getNextByteBuffer();
            }
            long j6 = this.currentByteBufferPos;
            this.currentByteBufferPos = 1 + j6;
            return t0.getByte(j6);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawLittleEndian32() throws IOException {
            if (currentRemaining() >= 4) {
                long j6 = this.currentByteBufferPos;
                this.currentByteBufferPos = 4 + j6;
                return ((t0.getByte(j6 + 3) & 255) << 24) | (t0.getByte(j6) & 255) | ((t0.getByte(1 + j6) & 255) << 8) | ((t0.getByte(2 + j6) & 255) << 16);
            }
            return (readRawByte() & 255) | ((readRawByte() & 255) << 8) | ((readRawByte() & 255) << 16) | ((readRawByte() & 255) << 24);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSInt32() throws IOException {
            return CodedInputStream.decodeZigZag32(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSInt64() throws IOException {
            return CodedInputStream.decodeZigZag64(readRawVarint64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readString() throws IOException {
            int rawVarint32 = readRawVarint32();
            if (rawVarint32 > 0) {
                long j6 = rawVarint32;
                long j10 = this.currentByteBufferLimit;
                long j11 = this.currentByteBufferPos;
                if (j6 <= j10 - j11) {
                    byte[] bArr = new byte[rawVarint32];
                    t0.copyMemory(j11, bArr, 0L, j6);
                    String str = new String(bArr, Internal.UTF_8);
                    this.currentByteBufferPos += j6;
                    return str;
                }
            }
            if (rawVarint32 > 0 && rawVarint32 <= remaining()) {
                byte[] bArr2 = new byte[rawVarint32];
                readRawBytesTo(bArr2, 0, rawVarint32);
                return new String(bArr2, Internal.UTF_8);
            }
            if (rawVarint32 == 0) {
                return "";
            }
            if (rawVarint32 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readStringRequireUtf8() throws IOException {
            int rawVarint32 = readRawVarint32();
            if (rawVarint32 > 0) {
                long j6 = rawVarint32;
                long j10 = this.currentByteBufferLimit;
                long j11 = this.currentByteBufferPos;
                if (j6 <= j10 - j11) {
                    String strDecodeUtf8 = u0.decodeUtf8(this.currentByteBuffer, (int) (j11 - this.currentByteBufferStartPos), rawVarint32);
                    this.currentByteBufferPos += j6;
                    return strDecodeUtf8;
                }
            }
            if (rawVarint32 >= 0 && rawVarint32 <= remaining()) {
                byte[] bArr = new byte[rawVarint32];
                readRawBytesTo(bArr, 0, rawVarint32);
                return u0.decodeUtf8(bArr, 0, rawVarint32);
            }
            if (rawVarint32 == 0) {
                return "";
            }
            if (rawVarint32 <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readTag() throws IOException {
            if (isAtEnd()) {
                this.lastTag = 0;
                return 0;
            }
            int rawVarint32 = readRawVarint32();
            this.lastTag = rawVarint32;
            if (WireFormat.getTagFieldNumber(rawVarint32) != 0) {
                return this.lastTag;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void readUnknownGroup(int i10, MessageLite.Builder builder) throws IOException {
            readGroup(i10, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage(CodedOutputStream codedOutputStream) throws IOException {
            int tag;
            do {
                tag = readTag();
                if (tag == 0) {
                    return;
                }
            } while (skipField(tag, codedOutputStream));
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readGroup(int i10, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            T partialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
            return partialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int rawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int iPushLimit = pushLimit(rawVarint32);
            this.recursionDepth++;
            T partialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() == 0) {
                popLimit(iPushLimit);
                return partialFrom;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10, CodedOutputStream codedOutputStream) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                long int64 = readInt64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeUInt64NoTag(int64);
                return true;
            }
            if (tagWireType == 1) {
                long rawLittleEndian64 = readRawLittleEndian64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeFixed64NoTag(rawLittleEndian64);
                return true;
            }
            if (tagWireType == 2) {
                ByteString bytes = readBytes();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeBytesNoTag(bytes);
                return true;
            }
            if (tagWireType == 3) {
                codedOutputStream.writeUInt32NoTag(i10);
                skipMessage(codedOutputStream);
                int iMakeTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4);
                checkLastTagWas(iMakeTag);
                codedOutputStream.writeUInt32NoTag(iMakeTag);
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType == 5) {
                int rawLittleEndian32 = readRawLittleEndian32();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeFixed32NoTag(rawLittleEndian32);
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    private static final class d extends CodedInputStream {
        private final byte[] buffer;
        private int bufferSize;
        private int bufferSizeAfterLimit;
        private int currentLimit;
        private final InputStream input;
        private int lastTag;
        private int pos;
        private a refillCallback;
        private int totalBytesRetired;

        private interface a {
            void onRefill();
        }

        private void recomputeBufferSizeAfterLimit() {
            int i10 = this.bufferSize + this.bufferSizeAfterLimit;
            this.bufferSize = i10;
            int i11 = this.totalBytesRetired + i10;
            int i12 = this.currentLimit;
            if (i11 <= i12) {
                this.bufferSizeAfterLimit = 0;
                return;
            }
            int i13 = i11 - i12;
            this.bufferSizeAfterLimit = i13;
            this.bufferSize = i10 - i13;
        }

        private void skipRawVarintFastPath() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.buffer;
                int i11 = this.pos;
                this.pos = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void skipRawVarintSlowPath() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void enableAliasing(boolean z6) {
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getBytesUntilLimit() {
            int i10 = this.currentLimit;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - (this.totalBytesRetired + this.pos);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getLastTag() {
            return this.lastTag;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getTotalBytesRead() {
            return this.totalBytesRetired + this.pos;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readGroup(int i10, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int rawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int iPushLimit = pushLimit(rawVarint32);
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() != 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            popLimit(iPushLimit);
        }

        @Override // com.google.protobuf.CodedInputStream
        public void resetSizeCounter() {
            this.totalBytesRetired = -this.pos;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                skipRawVarint();
                return true;
            }
            if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            }
            if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            }
            if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4));
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            skipRawBytes(4);
            return true;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage() throws IOException {
            int tag;
            do {
                tag = readTag();
                if (tag == 0) {
                    return;
                }
            } while (skipField(tag));
        }

        private d(InputStream inputStream, int i10) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.refillCallback = null;
            Internal.checkNotNull(inputStream, "input");
            this.input = inputStream;
            this.buffer = new byte[i10];
            this.bufferSize = 0;
            this.pos = 0;
            this.totalBytesRetired = 0;
        }

        private byte[] readRawBytesSlowPathOneChunk(int i10) throws IOException {
            if (i10 == 0) {
                return Internal.EMPTY_BYTE_ARRAY;
            }
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i11 = this.totalBytesRetired;
            int i12 = this.pos;
            int i13 = i11 + i12 + i10;
            if (i13 - this.sizeLimit > 0) {
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            int i14 = this.currentLimit;
            if (i13 > i14) {
                skipRawBytes((i14 - i11) - i12);
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            int i15 = this.bufferSize - i12;
            int i16 = i10 - i15;
            if (i16 >= 4096 && i16 > available(this.input)) {
                return null;
            }
            byte[] bArr = new byte[i10];
            System.arraycopy(this.buffer, this.pos, bArr, 0, i15);
            this.totalBytesRetired += this.bufferSize;
            this.pos = 0;
            this.bufferSize = 0;
            while (i15 < i10) {
                int i17 = read(this.input, bArr, i15, i10 - i15);
                if (i17 == -1) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.totalBytesRetired += i17;
                i15 += i17;
            }
            return bArr;
        }

        private List<byte[]> readRawBytesSlowPathRemainingChunks(int i10) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i10 > 0) {
                int iMin = Math.min(i10, 4096);
                byte[] bArr = new byte[iMin];
                int i11 = 0;
                while (i11 < iMin) {
                    int i12 = this.input.read(bArr, i11, iMin - i11);
                    if (i12 == -1) {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                    this.totalBytesRetired += i12;
                    i11 += i12;
                }
                i10 -= iMin;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        private void skipRawBytesSlowPath(int i10) throws IOException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i11 = this.totalBytesRetired;
            int i12 = this.pos;
            int i13 = i11 + i12 + i10;
            int i14 = this.currentLimit;
            if (i13 > i14) {
                skipRawBytes((i14 - i11) - i12);
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            int i15 = 0;
            if (this.refillCallback == null) {
                this.totalBytesRetired = i11 + i12;
                int i16 = this.bufferSize - i12;
                this.bufferSize = 0;
                this.pos = 0;
                i15 = i16;
                while (i15 < i10) {
                    try {
                        long j6 = i10 - i15;
                        long jSkip = skip(this.input, j6);
                        if (jSkip < 0 || jSkip > j6) {
                            throw new IllegalStateException(this.input.getClass() + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                        }
                        if (jSkip == 0) {
                            break;
                        } else {
                            i15 += (int) jSkip;
                        }
                    } finally {
                        this.totalBytesRetired += i15;
                        recomputeBufferSizeAfterLimit();
                    }
                }
            }
            if (i15 >= i10) {
                return;
            }
            int i17 = this.bufferSize;
            int i18 = i17 - this.pos;
            this.pos = i17;
            refillBuffer(1);
            while (true) {
                int i19 = i10 - i18;
                int i20 = this.bufferSize;
                if (i19 <= i20) {
                    this.pos = i19;
                    return;
                } else {
                    i18 += i20;
                    this.pos = i20;
                    refillBuffer(1);
                }
            }
        }

        private void skipRawVarint() throws IOException {
            if (this.bufferSize - this.pos >= 10) {
                skipRawVarintFastPath();
            } else {
                skipRawVarintSlowPath();
            }
        }

        private boolean tryRefillBuffer(int i10) throws IOException {
            int i11 = this.pos;
            if (i11 + i10 <= this.bufferSize) {
                throw new IllegalStateException("refillBuffer() called when " + i10 + " bytes were already available in buffer");
            }
            int i12 = this.sizeLimit;
            int i13 = this.totalBytesRetired;
            if (i10 > (i12 - i13) - i11 || i13 + i11 + i10 > this.currentLimit) {
                return false;
            }
            a aVar = this.refillCallback;
            if (aVar != null) {
                aVar.onRefill();
            }
            int i14 = this.pos;
            if (i14 > 0) {
                int i15 = this.bufferSize;
                if (i15 > i14) {
                    byte[] bArr = this.buffer;
                    System.arraycopy(bArr, i14, bArr, 0, i15 - i14);
                }
                this.totalBytesRetired += i14;
                this.bufferSize -= i14;
                this.pos = 0;
            }
            InputStream inputStream = this.input;
            byte[] bArr2 = this.buffer;
            int i16 = this.bufferSize;
            int i17 = read(inputStream, bArr2, i16, Math.min(bArr2.length - i16, (this.sizeLimit - this.totalBytesRetired) - i16));
            if (i17 == 0 || i17 < -1 || i17 > this.buffer.length) {
                throw new IllegalStateException(this.input.getClass() + "#read(byte[]) returned invalid result: " + i17 + "\nThe InputStream implementation is buggy.");
            }
            if (i17 <= 0) {
                return false;
            }
            this.bufferSize += i17;
            recomputeBufferSizeAfterLimit();
            if (this.bufferSize >= i10) {
                return true;
            }
            return tryRefillBuffer(i10);
        }

        @Override // com.google.protobuf.CodedInputStream
        public void checkLastTagWas(int i10) throws InvalidProtocolBufferException {
            if (this.lastTag != i10) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean isAtEnd() throws IOException {
            return this.pos == this.bufferSize && !tryRefillBuffer(1);
        }

        @Override // com.google.protobuf.CodedInputStream
        public void popLimit(int i10) {
            this.currentLimit = i10;
            recomputeBufferSizeAfterLimit();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int pushLimit(int i10) throws InvalidProtocolBufferException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i11 = i10 + this.totalBytesRetired + this.pos;
            int i12 = this.currentLimit;
            if (i11 > i12) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.currentLimit = i11;
            recomputeBufferSizeAfterLimit();
            return i12;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte readRawByte() throws IOException {
            if (this.pos == this.bufferSize) {
                refillBuffer(1);
            }
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            this.pos = i10 + 1;
            return bArr[i10];
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readRawBytes(int i10) throws IOException {
            int i11 = this.pos;
            if (i10 > this.bufferSize - i11 || i10 <= 0) {
                return readRawBytesSlowPath(i10, false);
            }
            int i12 = i10 + i11;
            this.pos = i12;
            return Arrays.copyOfRange(this.buffer, i11, i12);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawLittleEndian32() throws IOException {
            int i10 = this.pos;
            if (this.bufferSize - i10 < 4) {
                refillBuffer(4);
                i10 = this.pos;
            }
            byte[] bArr = this.buffer;
            this.pos = i10 + 4;
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawLittleEndian64() throws IOException {
            int i10 = this.pos;
            if (this.bufferSize - i10 < 8) {
                refillBuffer(8);
                i10 = this.pos;
            }
            byte[] bArr = this.buffer;
            this.pos = i10 + 8;
            return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawVarint32() throws IOException {
            int i10;
            int i11 = this.pos;
            int i12 = this.bufferSize;
            if (i12 != i11) {
                byte[] bArr = this.buffer;
                int i13 = i11 + 1;
                byte b7 = bArr[i11];
                if (b7 >= 0) {
                    this.pos = i13;
                    return b7;
                }
                if (i12 - i13 >= 9) {
                    int i14 = i11 + 2;
                    int i15 = (bArr[i13] << 7) ^ b7;
                    if (i15 < 0) {
                        i10 = i15 ^ (-128);
                    } else {
                        int i16 = i11 + 3;
                        int i17 = (bArr[i14] << com.google.common.base.c.SO) ^ i15;
                        if (i17 >= 0) {
                            i10 = i17 ^ 16256;
                        } else {
                            int i18 = i11 + 4;
                            int i19 = i17 ^ (bArr[i16] << com.google.common.base.c.NAK);
                            if (i19 < 0) {
                                i10 = (-2080896) ^ i19;
                            } else {
                                i16 = i11 + 5;
                                byte b10 = bArr[i18];
                                int i20 = (i19 ^ (b10 << com.google.common.base.c.FS)) ^ 266354560;
                                if (b10 < 0) {
                                    i18 = i11 + 6;
                                    if (bArr[i16] < 0) {
                                        i16 = i11 + 7;
                                        if (bArr[i18] < 0) {
                                            i18 = i11 + 8;
                                            if (bArr[i16] < 0) {
                                                i16 = i11 + 9;
                                                if (bArr[i18] < 0) {
                                                    int i21 = i11 + 10;
                                                    if (bArr[i16] >= 0) {
                                                        i14 = i21;
                                                        i10 = i20;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i20;
                                }
                                i10 = i20;
                            }
                            i14 = i18;
                        }
                        i14 = i16;
                    }
                    this.pos = i14;
                    return i10;
                }
            }
            return (int) readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawVarint64() throws IOException {
            long j6;
            long j10;
            long j11;
            int i10 = this.pos;
            int i11 = this.bufferSize;
            if (i11 != i10) {
                byte[] bArr = this.buffer;
                int i12 = i10 + 1;
                byte b7 = bArr[i10];
                if (b7 >= 0) {
                    this.pos = i12;
                    return b7;
                }
                if (i11 - i12 >= 9) {
                    int i13 = i10 + 2;
                    int i14 = (bArr[i12] << 7) ^ b7;
                    if (i14 < 0) {
                        j6 = i14 ^ (-128);
                    } else {
                        int i15 = i10 + 3;
                        int i16 = (bArr[i13] << com.google.common.base.c.SO) ^ i14;
                        if (i16 >= 0) {
                            j6 = i16 ^ 16256;
                            i13 = i15;
                        } else {
                            int i17 = i10 + 4;
                            int i18 = i16 ^ (bArr[i15] << com.google.common.base.c.NAK);
                            if (i18 < 0) {
                                long j12 = (-2080896) ^ i18;
                                i13 = i17;
                                j6 = j12;
                            } else {
                                long j13 = i18;
                                i13 = i10 + 5;
                                long j14 = j13 ^ (((long) bArr[i17]) << 28);
                                if (j14 >= 0) {
                                    j11 = 266354560;
                                } else {
                                    int i19 = i10 + 6;
                                    long j15 = j14 ^ (((long) bArr[i13]) << 35);
                                    if (j15 < 0) {
                                        j10 = -34093383808L;
                                    } else {
                                        i13 = i10 + 7;
                                        j14 = j15 ^ (((long) bArr[i19]) << 42);
                                        if (j14 >= 0) {
                                            j11 = 4363953127296L;
                                        } else {
                                            i19 = i10 + 8;
                                            j15 = j14 ^ (((long) bArr[i13]) << 49);
                                            if (j15 < 0) {
                                                j10 = -558586000294016L;
                                            } else {
                                                i13 = i10 + 9;
                                                long j16 = (j15 ^ (((long) bArr[i19]) << 56)) ^ 71499008037633920L;
                                                if (j16 < 0) {
                                                    int i20 = i10 + 10;
                                                    if (bArr[i13] >= 0) {
                                                        i13 = i20;
                                                    }
                                                }
                                                j6 = j16;
                                            }
                                        }
                                    }
                                    j6 = j15 ^ j10;
                                    i13 = i19;
                                }
                                j6 = j14 ^ j11;
                            }
                        }
                    }
                    this.pos = i13;
                    return j6;
                }
            }
            return readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        long readRawVarint64SlowPath() throws IOException {
            long j6 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte rawByte = readRawByte();
                j6 |= ((long) (rawByte & 127)) << i10;
                if ((rawByte & 128) == 0) {
                    return j6;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipRawBytes(int i10) throws IOException {
            int i11 = this.bufferSize;
            int i12 = this.pos;
            if (i10 > i11 - i12 || i10 < 0) {
                skipRawBytesSlowPath(i10);
            } else {
                this.pos = i12 + i10;
            }
        }

        private static int available(InputStream inputStream) throws IOException {
            try {
                return inputStream.available();
            } catch (InvalidProtocolBufferException e) {
                e.setThrownFromInputStream();
                throw e;
            }
        }

        private static int read(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
            try {
                return inputStream.read(bArr, i10, i11);
            } catch (InvalidProtocolBufferException e) {
                e.setThrownFromInputStream();
                throw e;
            }
        }

        private ByteString readBytesSlowPath(int i10) throws IOException {
            byte[] rawBytesSlowPathOneChunk = readRawBytesSlowPathOneChunk(i10);
            if (rawBytesSlowPathOneChunk != null) {
                return ByteString.copyFrom(rawBytesSlowPathOneChunk);
            }
            int i11 = this.pos;
            int i12 = this.bufferSize;
            int length = i12 - i11;
            this.totalBytesRetired += i12;
            this.pos = 0;
            this.bufferSize = 0;
            List<byte[]> rawBytesSlowPathRemainingChunks = readRawBytesSlowPathRemainingChunks(i10 - length);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.buffer, i11, bArr, 0, length);
            for (byte[] bArr2 : rawBytesSlowPathRemainingChunks) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return ByteString.wrap(bArr);
        }

        private byte[] readRawBytesSlowPath(int i10, boolean z6) throws IOException {
            byte[] rawBytesSlowPathOneChunk = readRawBytesSlowPathOneChunk(i10);
            if (rawBytesSlowPathOneChunk != null) {
                if (z6) {
                    return (byte[]) rawBytesSlowPathOneChunk.clone();
                }
                return rawBytesSlowPathOneChunk;
            }
            int i11 = this.pos;
            int i12 = this.bufferSize;
            int length = i12 - i11;
            this.totalBytesRetired += i12;
            this.pos = 0;
            this.bufferSize = 0;
            List<byte[]> rawBytesSlowPathRemainingChunks = readRawBytesSlowPathRemainingChunks(i10 - length);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.buffer, i11, bArr, 0, length);
            for (byte[] bArr2 : rawBytesSlowPathRemainingChunks) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return bArr;
        }

        private void refillBuffer(int i10) throws IOException {
            if (!tryRefillBuffer(i10)) {
                if (i10 > (this.sizeLimit - this.totalBytesRetired) - this.pos) {
                    throw InvalidProtocolBufferException.sizeLimitExceeded();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        private static long skip(InputStream inputStream, long j6) throws IOException {
            try {
                return inputStream.skip(j6);
            } catch (InvalidProtocolBufferException e) {
                e.setThrownFromInputStream();
                throw e;
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean readBool() throws IOException {
            if (readRawVarint64() != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readByteArray() throws IOException {
            int rawVarint32 = readRawVarint32();
            int i10 = this.bufferSize;
            int i11 = this.pos;
            if (rawVarint32 <= i10 - i11 && rawVarint32 > 0) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(this.buffer, i11, i11 + rawVarint32);
                this.pos += rawVarint32;
                return bArrCopyOfRange;
            }
            return readRawBytesSlowPath(rawVarint32, false);
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteBuffer readByteBuffer() throws IOException {
            int rawVarint32 = readRawVarint32();
            int i10 = this.bufferSize;
            int i11 = this.pos;
            if (rawVarint32 <= i10 - i11 && rawVarint32 > 0) {
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(Arrays.copyOfRange(this.buffer, i11, i11 + rawVarint32));
                this.pos += rawVarint32;
                return byteBufferWrap;
            }
            if (rawVarint32 == 0) {
                return Internal.EMPTY_BYTE_BUFFER;
            }
            return ByteBuffer.wrap(readRawBytesSlowPath(rawVarint32, true));
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteString readBytes() throws IOException {
            int rawVarint32 = readRawVarint32();
            int i10 = this.bufferSize;
            int i11 = this.pos;
            if (rawVarint32 <= i10 - i11 && rawVarint32 > 0) {
                ByteString byteStringCopyFrom = ByteString.copyFrom(this.buffer, i11, rawVarint32);
                this.pos += rawVarint32;
                return byteStringCopyFrom;
            }
            if (rawVarint32 == 0) {
                return ByteString.EMPTY;
            }
            return readBytesSlowPath(rawVarint32);
        }

        @Override // com.google.protobuf.CodedInputStream
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSInt32() throws IOException {
            return CodedInputStream.decodeZigZag32(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSInt64() throws IOException {
            return CodedInputStream.decodeZigZag64(readRawVarint64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readString() throws IOException {
            int rawVarint32 = readRawVarint32();
            if (rawVarint32 > 0) {
                int i10 = this.bufferSize;
                int i11 = this.pos;
                if (rawVarint32 <= i10 - i11) {
                    String str = new String(this.buffer, i11, rawVarint32, Internal.UTF_8);
                    this.pos += rawVarint32;
                    return str;
                }
            }
            if (rawVarint32 == 0) {
                return "";
            }
            if (rawVarint32 <= this.bufferSize) {
                refillBuffer(rawVarint32);
                String str2 = new String(this.buffer, this.pos, rawVarint32, Internal.UTF_8);
                this.pos += rawVarint32;
                return str2;
            }
            return new String(readRawBytesSlowPath(rawVarint32, false), Internal.UTF_8);
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readStringRequireUtf8() throws IOException {
            byte[] rawBytesSlowPath;
            int rawVarint32 = readRawVarint32();
            int i10 = this.pos;
            int i11 = this.bufferSize;
            if (rawVarint32 <= i11 - i10 && rawVarint32 > 0) {
                rawBytesSlowPath = this.buffer;
                this.pos = i10 + rawVarint32;
            } else {
                if (rawVarint32 == 0) {
                    return "";
                }
                i10 = 0;
                if (rawVarint32 <= i11) {
                    refillBuffer(rawVarint32);
                    rawBytesSlowPath = this.buffer;
                    this.pos = rawVarint32;
                } else {
                    rawBytesSlowPath = readRawBytesSlowPath(rawVarint32, false);
                }
            }
            return u0.decodeUtf8(rawBytesSlowPath, i10, rawVarint32);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readTag() throws IOException {
            if (isAtEnd()) {
                this.lastTag = 0;
                return 0;
            }
            int rawVarint32 = readRawVarint32();
            this.lastTag = rawVarint32;
            if (WireFormat.getTagFieldNumber(rawVarint32) != 0) {
                return this.lastTag;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void readUnknownGroup(int i10, MessageLite.Builder builder) throws IOException {
            readGroup(i10, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage(CodedOutputStream codedOutputStream) throws IOException {
            int tag;
            do {
                tag = readTag();
                if (tag == 0) {
                    return;
                }
            } while (skipField(tag, codedOutputStream));
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readGroup(int i10, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            T partialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
            return partialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int rawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int iPushLimit = pushLimit(rawVarint32);
            this.recursionDepth++;
            T partialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() == 0) {
                popLimit(iPushLimit);
                return partialFrom;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10, CodedOutputStream codedOutputStream) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                long int64 = readInt64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeUInt64NoTag(int64);
                return true;
            }
            if (tagWireType == 1) {
                long rawLittleEndian64 = readRawLittleEndian64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeFixed64NoTag(rawLittleEndian64);
                return true;
            }
            if (tagWireType == 2) {
                ByteString bytes = readBytes();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeBytesNoTag(bytes);
                return true;
            }
            if (tagWireType == 3) {
                codedOutputStream.writeUInt32NoTag(i10);
                skipMessage(codedOutputStream);
                int iMakeTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4);
                checkLastTagWas(iMakeTag);
                codedOutputStream.writeUInt32NoTag(iMakeTag);
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType == 5) {
                int rawLittleEndian32 = readRawLittleEndian32();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeFixed32NoTag(rawLittleEndian32);
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    private static final class e extends CodedInputStream {
        private final long address;
        private final ByteBuffer buffer;
        private int bufferSizeAfterLimit;
        private int currentLimit;
        private boolean enableAliasing;
        private final boolean immutable;
        private int lastTag;
        private long limit;
        private long pos;
        private long startPos;

        private int bufferPos(long j6) {
            return (int) (j6 - this.address);
        }

        private void recomputeBufferSizeAfterLimit() {
            long j6 = this.limit + ((long) this.bufferSizeAfterLimit);
            this.limit = j6;
            int i10 = (int) (j6 - this.startPos);
            int i11 = this.currentLimit;
            if (i10 <= i11) {
                this.bufferSizeAfterLimit = 0;
                return;
            }
            int i12 = i10 - i11;
            this.bufferSizeAfterLimit = i12;
            this.limit = j6 - ((long) i12);
        }

        private int remaining() {
            return (int) (this.limit - this.pos);
        }

        private void skipRawVarintFastPath() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                long j6 = this.pos;
                this.pos = 1 + j6;
                if (t0.getByte(j6) >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void skipRawVarintSlowPath() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void enableAliasing(boolean z6) {
            this.enableAliasing = z6;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getLastTag() {
            return this.lastTag;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getTotalBytesRead() {
            return (int) (this.pos - this.startPos);
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean isAtEnd() throws IOException {
            return this.pos == this.limit;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readGroup(int i10, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int rawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int iPushLimit = pushLimit(rawVarint32);
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() != 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            popLimit(iPushLimit);
        }

        @Override // com.google.protobuf.CodedInputStream
        public void resetSizeCounter() {
            this.startPos = this.pos;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                skipRawVarint();
                return true;
            }
            if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            }
            if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            }
            if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4));
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            skipRawBytes(4);
            return true;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage() throws IOException {
            int tag;
            do {
                tag = readTag();
                if (tag == 0) {
                    return;
                }
            } while (skipField(tag));
        }

        private e(ByteBuffer byteBuffer, boolean z6) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.buffer = byteBuffer;
            long jAddressOffset = t0.addressOffset(byteBuffer);
            this.address = jAddressOffset;
            this.limit = ((long) byteBuffer.limit()) + jAddressOffset;
            long jPosition = jAddressOffset + ((long) byteBuffer.position());
            this.pos = jPosition;
            this.startPos = jPosition;
            this.immutable = z6;
        }

        private ByteBuffer slice(long j6, long j10) throws IOException {
            int iPosition = this.buffer.position();
            int iLimit = this.buffer.limit();
            ByteBuffer byteBuffer = this.buffer;
            try {
                try {
                    byteBuffer.position(bufferPos(j6));
                    byteBuffer.limit(bufferPos(j10));
                    ByteBuffer byteBufferSlice = this.buffer.slice();
                    byteBuffer.position(iPosition);
                    byteBuffer.limit(iLimit);
                    return byteBufferSlice;
                } catch (IllegalArgumentException e) {
                    InvalidProtocolBufferException invalidProtocolBufferExceptionTruncatedMessage = InvalidProtocolBufferException.truncatedMessage();
                    invalidProtocolBufferExceptionTruncatedMessage.initCause(e);
                    throw invalidProtocolBufferExceptionTruncatedMessage;
                }
            } catch (Throwable th) {
                byteBuffer.position(iPosition);
                byteBuffer.limit(iLimit);
                throw th;
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public void checkLastTagWas(int i10) throws InvalidProtocolBufferException {
            if (this.lastTag != i10) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getBytesUntilLimit() {
            int i10 = this.currentLimit;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - getTotalBytesRead();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void popLimit(int i10) {
            this.currentLimit = i10;
            recomputeBufferSizeAfterLimit();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int pushLimit(int i10) throws InvalidProtocolBufferException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int totalBytesRead = i10 + getTotalBytesRead();
            int i11 = this.currentLimit;
            if (totalBytesRead > i11) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.currentLimit = totalBytesRead;
            recomputeBufferSizeAfterLimit();
            return i11;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte readRawByte() throws IOException {
            long j6 = this.pos;
            if (j6 == this.limit) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.pos = 1 + j6;
            return t0.getByte(j6);
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readRawBytes(int i10) throws IOException {
            if (i10 < 0 || i10 > remaining()) {
                if (i10 > 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i10 == 0) {
                    return Internal.EMPTY_BYTE_ARRAY;
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
            byte[] bArr = new byte[i10];
            long j6 = this.pos;
            long j10 = i10;
            slice(j6, j6 + j10).get(bArr);
            this.pos += j10;
            return bArr;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawLittleEndian32() throws IOException {
            long j6 = this.pos;
            if (this.limit - j6 < 4) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.pos = 4 + j6;
            return ((t0.getByte(j6 + 3) & 255) << 24) | (t0.getByte(j6) & 255) | ((t0.getByte(1 + j6) & 255) << 8) | ((t0.getByte(2 + j6) & 255) << 16);
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawLittleEndian64() throws IOException {
            long j6 = this.pos;
            if (this.limit - j6 < 8) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.pos = 8 + j6;
            return ((((long) t0.getByte(j6 + 7)) & 255) << 56) | (((long) t0.getByte(j6)) & 255) | ((((long) t0.getByte(1 + j6)) & 255) << 8) | ((((long) t0.getByte(2 + j6)) & 255) << 16) | ((((long) t0.getByte(3 + j6)) & 255) << 24) | ((((long) t0.getByte(4 + j6)) & 255) << 32) | ((((long) t0.getByte(5 + j6)) & 255) << 40) | ((((long) t0.getByte(6 + j6)) & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
        
            if (com.google.protobuf.t0.getByte(r3) < 0) goto L34;
         */
        @Override // com.google.protobuf.CodedInputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int readRawVarint32() throws IOException {
            int i10;
            long j6 = this.pos;
            if (this.limit != j6) {
                long j10 = 1 + j6;
                byte b7 = t0.getByte(j6);
                if (b7 >= 0) {
                    this.pos = j10;
                    return b7;
                }
                if (this.limit - j10 >= 9) {
                    long j11 = 2 + j6;
                    int i11 = (t0.getByte(j10) << 7) ^ b7;
                    if (i11 < 0) {
                        i10 = i11 ^ (-128);
                    } else {
                        long j12 = 3 + j6;
                        int i12 = i11 ^ (t0.getByte(j11) << com.google.common.base.c.SO);
                        if (i12 >= 0) {
                            i10 = i12 ^ 16256;
                        } else {
                            j11 = 4 + j6;
                            int i13 = i12 ^ (t0.getByte(j12) << com.google.common.base.c.NAK);
                            if (i13 < 0) {
                                i10 = (-2080896) ^ i13;
                            } else {
                                j12 = 5 + j6;
                                byte b10 = t0.getByte(j11);
                                int i14 = (i13 ^ (b10 << com.google.common.base.c.FS)) ^ 266354560;
                                if (b10 < 0) {
                                    j11 = 6 + j6;
                                    if (t0.getByte(j12) < 0) {
                                        j12 = 7 + j6;
                                        if (t0.getByte(j11) < 0) {
                                            j11 = 8 + j6;
                                            if (t0.getByte(j12) < 0) {
                                                j12 = j6 + 9;
                                                if (t0.getByte(j11) < 0) {
                                                    j11 = 10 + j6;
                                                }
                                            }
                                        }
                                    }
                                    i10 = i14;
                                }
                                i10 = i14;
                            }
                        }
                        j11 = j12;
                    }
                    this.pos = j11;
                    return i10;
                }
            }
            return (int) readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawVarint64() throws IOException {
            long j6;
            long j10;
            long j11;
            int i10;
            long j12 = this.pos;
            if (this.limit != j12) {
                long j13 = 1 + j12;
                byte b7 = t0.getByte(j12);
                if (b7 >= 0) {
                    this.pos = j13;
                    return b7;
                }
                if (this.limit - j13 >= 9) {
                    long j14 = 2 + j12;
                    int i11 = (t0.getByte(j13) << 7) ^ b7;
                    if (i11 >= 0) {
                        long j15 = 3 + j12;
                        int i12 = i11 ^ (t0.getByte(j14) << com.google.common.base.c.SO);
                        if (i12 >= 0) {
                            j6 = i12 ^ 16256;
                            j14 = j15;
                        } else {
                            j14 = 4 + j12;
                            int i13 = i12 ^ (t0.getByte(j15) << com.google.common.base.c.NAK);
                            if (i13 < 0) {
                                i10 = (-2080896) ^ i13;
                            } else {
                                long j16 = 5 + j12;
                                long j17 = ((long) i13) ^ (((long) t0.getByte(j14)) << 28);
                                if (j17 >= 0) {
                                    j11 = 266354560;
                                } else {
                                    long j18 = 6 + j12;
                                    long j19 = j17 ^ (((long) t0.getByte(j16)) << 35);
                                    if (j19 < 0) {
                                        j10 = -34093383808L;
                                    } else {
                                        j16 = 7 + j12;
                                        j17 = j19 ^ (((long) t0.getByte(j18)) << 42);
                                        if (j17 >= 0) {
                                            j11 = 4363953127296L;
                                        } else {
                                            j18 = 8 + j12;
                                            j19 = j17 ^ (((long) t0.getByte(j16)) << 49);
                                            if (j19 < 0) {
                                                j10 = -558586000294016L;
                                            } else {
                                                long j20 = j12 + 9;
                                                long j21 = (j19 ^ (((long) t0.getByte(j18)) << 56)) ^ 71499008037633920L;
                                                if (j21 < 0) {
                                                    long j22 = j12 + 10;
                                                    if (t0.getByte(j20) >= 0) {
                                                        j14 = j22;
                                                        j6 = j21;
                                                    }
                                                } else {
                                                    j6 = j21;
                                                    j14 = j20;
                                                }
                                            }
                                        }
                                    }
                                    j6 = j10 ^ j19;
                                    j14 = j18;
                                }
                                j6 = j11 ^ j17;
                                j14 = j16;
                            }
                        }
                        this.pos = j14;
                        return j6;
                    }
                    i10 = i11 ^ (-128);
                    j6 = i10;
                    this.pos = j14;
                    return j6;
                }
            }
            return readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        long readRawVarint64SlowPath() throws IOException {
            long j6 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte rawByte = readRawByte();
                j6 |= ((long) (rawByte & 127)) << i10;
                if ((rawByte & 128) == 0) {
                    return j6;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipRawBytes(int i10) throws IOException {
            if (i10 >= 0 && i10 <= remaining()) {
                this.pos += (long) i10;
            } else {
                if (i10 >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        static boolean isSupported() {
            return t0.hasUnsafeByteBufferOperations();
        }

        private void skipRawVarint() throws IOException {
            if (remaining() >= 10) {
                skipRawVarintFastPath();
            } else {
                skipRawVarintSlowPath();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean readBool() throws IOException {
            if (readRawVarint64() != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readByteArray() throws IOException {
            return readRawBytes(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteBuffer readByteBuffer() throws IOException {
            int rawVarint32 = readRawVarint32();
            if (rawVarint32 > 0 && rawVarint32 <= remaining()) {
                if (!this.immutable && this.enableAliasing) {
                    long j6 = this.pos;
                    long j10 = rawVarint32;
                    ByteBuffer byteBufferSlice = slice(j6, j6 + j10);
                    this.pos += j10;
                    return byteBufferSlice;
                }
                byte[] bArr = new byte[rawVarint32];
                long j11 = rawVarint32;
                t0.copyMemory(this.pos, bArr, 0L, j11);
                this.pos += j11;
                return ByteBuffer.wrap(bArr);
            }
            if (rawVarint32 == 0) {
                return Internal.EMPTY_BYTE_BUFFER;
            }
            if (rawVarint32 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteString readBytes() throws IOException {
            int rawVarint32 = readRawVarint32();
            if (rawVarint32 > 0 && rawVarint32 <= remaining()) {
                if (this.immutable && this.enableAliasing) {
                    long j6 = this.pos;
                    long j10 = rawVarint32;
                    ByteBuffer byteBufferSlice = slice(j6, j6 + j10);
                    this.pos += j10;
                    return ByteString.wrap(byteBufferSlice);
                }
                byte[] bArr = new byte[rawVarint32];
                long j11 = rawVarint32;
                t0.copyMemory(this.pos, bArr, 0L, j11);
                this.pos += j11;
                return ByteString.wrap(bArr);
            }
            if (rawVarint32 == 0) {
                return ByteString.EMPTY;
            }
            if (rawVarint32 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSInt32() throws IOException {
            return CodedInputStream.decodeZigZag32(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSInt64() throws IOException {
            return CodedInputStream.decodeZigZag64(readRawVarint64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readString() throws IOException {
            int rawVarint32 = readRawVarint32();
            if (rawVarint32 > 0 && rawVarint32 <= remaining()) {
                byte[] bArr = new byte[rawVarint32];
                long j6 = rawVarint32;
                t0.copyMemory(this.pos, bArr, 0L, j6);
                String str = new String(bArr, Internal.UTF_8);
                this.pos += j6;
                return str;
            }
            if (rawVarint32 == 0) {
                return "";
            }
            if (rawVarint32 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readStringRequireUtf8() throws IOException {
            int rawVarint32 = readRawVarint32();
            if (rawVarint32 > 0 && rawVarint32 <= remaining()) {
                String strDecodeUtf8 = u0.decodeUtf8(this.buffer, bufferPos(this.pos), rawVarint32);
                this.pos += (long) rawVarint32;
                return strDecodeUtf8;
            }
            if (rawVarint32 == 0) {
                return "";
            }
            if (rawVarint32 <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readTag() throws IOException {
            if (isAtEnd()) {
                this.lastTag = 0;
                return 0;
            }
            int rawVarint32 = readRawVarint32();
            this.lastTag = rawVarint32;
            if (WireFormat.getTagFieldNumber(rawVarint32) != 0) {
                return this.lastTag;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void readUnknownGroup(int i10, MessageLite.Builder builder) throws IOException {
            readGroup(i10, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage(CodedOutputStream codedOutputStream) throws IOException {
            int tag;
            do {
                tag = readTag();
                if (tag == 0) {
                    return;
                }
            } while (skipField(tag, codedOutputStream));
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readGroup(int i10, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            T partialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
            return partialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int rawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int iPushLimit = pushLimit(rawVarint32);
            this.recursionDepth++;
            T partialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() == 0) {
                popLimit(iPushLimit);
                return partialFrom;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10, CodedOutputStream codedOutputStream) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                long int64 = readInt64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeUInt64NoTag(int64);
                return true;
            }
            if (tagWireType == 1) {
                long rawLittleEndian64 = readRawLittleEndian64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeFixed64NoTag(rawLittleEndian64);
                return true;
            }
            if (tagWireType == 2) {
                ByteString bytes = readBytes();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeBytesNoTag(bytes);
                return true;
            }
            if (tagWireType == 3) {
                codedOutputStream.writeUInt32NoTag(i10);
                skipMessage(codedOutputStream);
                int iMakeTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4);
                checkLastTagWas(iMakeTag);
                codedOutputStream.writeUInt32NoTag(iMakeTag);
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType == 5) {
                int rawLittleEndian32 = readRawLittleEndian32();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeFixed32NoTag(rawLittleEndian32);
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    public static int decodeZigZag32(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    public static long decodeZigZag64(long j6) {
        return (-(j6 & 1)) ^ (j6 >>> 1);
    }

    public static CodedInputStream newInstance(InputStream inputStream) {
        return newInstance(inputStream, 4096);
    }

    public static int readRawVarint32(int i10, InputStream inputStream) throws IOException {
        if ((i10 & 128) == 0) {
            return i10;
        }
        int i11 = i10 & 127;
        int i12 = 7;
        while (i12 < 32) {
            int i13 = inputStream.read();
            if (i13 == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            i11 |= (i13 & 127) << i12;
            if ((i13 & 128) == 0) {
                return i11;
            }
            i12 += 7;
        }
        while (i12 < 64) {
            int i14 = inputStream.read();
            if (i14 == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if ((i14 & 128) == 0) {
                return i11;
            }
            i12 += 7;
        }
        throw InvalidProtocolBufferException.malformedVarint();
    }

    public abstract void checkLastTagWas(int i10) throws InvalidProtocolBufferException;

    final void discardUnknownFields() {
        this.shouldDiscardUnknownFields = true;
    }

    public abstract void enableAliasing(boolean z6);

    public abstract int getBytesUntilLimit();

    public abstract int getLastTag();

    public abstract int getTotalBytesRead();

    public abstract boolean isAtEnd() throws IOException;

    public abstract void popLimit(int i10);

    public abstract int pushLimit(int i10) throws InvalidProtocolBufferException;

    public abstract boolean readBool() throws IOException;

    public abstract byte[] readByteArray() throws IOException;

    public abstract ByteBuffer readByteBuffer() throws IOException;

    public abstract ByteString readBytes() throws IOException;

    public abstract double readDouble() throws IOException;

    public abstract int readEnum() throws IOException;

    public abstract int readFixed32() throws IOException;

    public abstract long readFixed64() throws IOException;

    public abstract float readFloat() throws IOException;

    public abstract <T extends MessageLite> T readGroup(int i10, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    public abstract void readGroup(int i10, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    public abstract int readInt32() throws IOException;

    public abstract long readInt64() throws IOException;

    public abstract <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    public abstract void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    public abstract byte readRawByte() throws IOException;

    public abstract byte[] readRawBytes(int i10) throws IOException;

    public abstract int readRawLittleEndian32() throws IOException;

    public abstract long readRawLittleEndian64() throws IOException;

    public abstract int readRawVarint32() throws IOException;

    public abstract long readRawVarint64() throws IOException;

    abstract long readRawVarint64SlowPath() throws IOException;

    public abstract int readSFixed32() throws IOException;

    public abstract long readSFixed64() throws IOException;

    public abstract int readSInt32() throws IOException;

    public abstract long readSInt64() throws IOException;

    public abstract String readString() throws IOException;

    public abstract String readStringRequireUtf8() throws IOException;

    public abstract int readTag() throws IOException;

    public abstract int readUInt32() throws IOException;

    public abstract long readUInt64() throws IOException;

    @Deprecated
    public abstract void readUnknownGroup(int i10, MessageLite.Builder builder) throws IOException;

    public abstract void resetSizeCounter();

    final boolean shouldDiscardUnknownFields() {
        return this.shouldDiscardUnknownFields;
    }

    public abstract boolean skipField(int i10) throws IOException;

    @Deprecated
    public abstract boolean skipField(int i10, CodedOutputStream codedOutputStream) throws IOException;

    public abstract void skipMessage() throws IOException;

    public abstract void skipMessage(CodedOutputStream codedOutputStream) throws IOException;

    public abstract void skipRawBytes(int i10) throws IOException;

    final void unsetDiscardUnknownFields() {
        this.shouldDiscardUnknownFields = false;
    }

    private CodedInputStream() {
        this.recursionLimit = defaultRecursionLimit;
        this.sizeLimit = Integer.MAX_VALUE;
        this.shouldDiscardUnknownFields = false;
    }

    public static CodedInputStream newInstance(InputStream inputStream, int i10) {
        if (i10 > 0) {
            return inputStream == null ? newInstance(Internal.EMPTY_BYTE_ARRAY) : new d(inputStream, i10);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    public void checkRecursionLimit() throws InvalidProtocolBufferException {
        if (this.recursionDepth >= this.recursionLimit) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
    }

    public final int setRecursionLimit(int i10) {
        if (i10 >= 0) {
            int i11 = this.recursionLimit;
            this.recursionLimit = i10;
            return i11;
        }
        throw new IllegalArgumentException("Recursion limit cannot be negative: " + i10);
    }

    public final int setSizeLimit(int i10) {
        if (i10 >= 0) {
            int i11 = this.sizeLimit;
            this.sizeLimit = i10;
            return i11;
        }
        throw new IllegalArgumentException("Size limit cannot be negative: " + i10);
    }

    public static CodedInputStream newInstance(Iterable<ByteBuffer> iterable) {
        if (!e.isSupported()) {
            return newInstance(new p(iterable));
        }
        return newInstance(iterable, false);
    }

    static int readRawVarint32(InputStream inputStream) throws IOException {
        int i10 = inputStream.read();
        if (i10 != -1) {
            return readRawVarint32(i10, inputStream);
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static CodedInputStream newInstance(Iterable<ByteBuffer> iterable, boolean z6) {
        int i10 = 0;
        int iRemaining = 0;
        for (ByteBuffer byteBuffer : iterable) {
            iRemaining += byteBuffer.remaining();
            if (byteBuffer.hasArray()) {
                i10 |= 1;
            } else {
                i10 = byteBuffer.isDirect() ? i10 | 2 : i10 | 4;
            }
        }
        if (i10 == 2) {
            return new c(iterable, iRemaining, z6);
        }
        return newInstance(new p(iterable));
    }

    public static CodedInputStream newInstance(byte[] bArr) {
        return newInstance(bArr, 0, bArr.length);
    }

    public static CodedInputStream newInstance(byte[] bArr, int i10, int i11) {
        return newInstance(bArr, i10, i11, false);
    }

    static CodedInputStream newInstance(byte[] bArr, int i10, int i11, boolean z6) {
        b bVar = new b(bArr, i10, i11, z6);
        try {
            bVar.pushLimit(i11);
            return bVar;
        } catch (InvalidProtocolBufferException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static CodedInputStream newInstance(ByteBuffer byteBuffer) {
        return newInstance(byteBuffer, false);
    }

    static CodedInputStream newInstance(ByteBuffer byteBuffer, boolean z6) {
        if (byteBuffer.hasArray()) {
            return newInstance(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), z6);
        }
        if (byteBuffer.isDirect() && e.isSupported()) {
            return new e(byteBuffer, z6);
        }
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = new byte[iRemaining];
        byteBuffer.duplicate().get(bArr);
        return newInstance(bArr, 0, iRemaining, true);
    }
}
