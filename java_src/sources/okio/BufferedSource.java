package okio;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface BufferedSource extends Source, ReadableByteChannel {
    @NotNull
    Buffer buffer();

    boolean exhausted() throws IOException;

    @NotNull
    Buffer getBuffer();

    long indexOf(byte b7) throws IOException;

    long indexOf(byte b7, long j6) throws IOException;

    long indexOf(byte b7, long j6, long j10) throws IOException;

    long indexOf(@NotNull ByteString byteString) throws IOException;

    long indexOf(@NotNull ByteString byteString, long j6) throws IOException;

    long indexOfElement(@NotNull ByteString byteString) throws IOException;

    long indexOfElement(@NotNull ByteString byteString, long j6) throws IOException;

    @NotNull
    InputStream inputStream();

    @NotNull
    BufferedSource peek();

    boolean rangeEquals(long j6, @NotNull ByteString byteString) throws IOException;

    boolean rangeEquals(long j6, @NotNull ByteString byteString, int i10, int i11) throws IOException;

    int read(@NotNull byte[] bArr) throws IOException;

    int read(@NotNull byte[] bArr, int i10, int i11) throws IOException;

    long readAll(@NotNull Sink sink) throws IOException;

    byte readByte() throws IOException;

    @NotNull
    byte[] readByteArray() throws IOException;

    @NotNull
    byte[] readByteArray(long j6) throws IOException;

    @NotNull
    ByteString readByteString() throws IOException;

    @NotNull
    ByteString readByteString(long j6) throws IOException;

    long readDecimalLong() throws IOException;

    void readFully(@NotNull Buffer buffer, long j6) throws IOException;

    void readFully(@NotNull byte[] bArr) throws IOException;

    long readHexadecimalUnsignedLong() throws IOException;

    int readInt() throws IOException;

    int readIntLe() throws IOException;

    long readLong() throws IOException;

    long readLongLe() throws IOException;

    short readShort() throws IOException;

    short readShortLe() throws IOException;

    @NotNull
    String readString(long j6, @NotNull Charset charset) throws IOException;

    @NotNull
    String readString(@NotNull Charset charset) throws IOException;

    @NotNull
    String readUtf8() throws IOException;

    @NotNull
    String readUtf8(long j6) throws IOException;

    int readUtf8CodePoint() throws IOException;

    @Nullable
    String readUtf8Line() throws IOException;

    @NotNull
    String readUtf8LineStrict() throws IOException;

    @NotNull
    String readUtf8LineStrict(long j6) throws IOException;

    boolean request(long j6) throws IOException;

    void require(long j6) throws IOException;

    int select(@NotNull Options options) throws IOException;

    void skip(long j6) throws IOException;
}
