package androidx.media3.exoplayer.source.mediaparser;

import android.annotation.SuppressLint;
import android.media.MediaParser$SeekableInputReader;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.DataReader;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
@SuppressLint({"Override"})
@UnstableApi
public final class InputReaderAdapterV30 implements MediaParser$SeekableInputReader {
    private long currentPosition;

    @Nullable
    private DataReader dataReader;
    private long lastSeekPosition;
    private long resourceLength;

    public long a() {
        long j6 = this.lastSeekPosition;
        this.lastSeekPosition = -1L;
        return j6;
    }

    public void b(long j6) {
        this.currentPosition = j6;
    }

    public void c(DataReader dataReader, long j6) {
        this.dataReader = dataReader;
        this.resourceLength = j6;
        this.lastSeekPosition = -1L;
    }

    public long getLength() {
        return this.resourceLength;
    }

    public long getPosition() {
        return this.currentPosition;
    }

    public void seekToPosition(long j6) {
        this.lastSeekPosition = j6;
    }

    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = ((DataReader) Util.j(this.dataReader)).read(bArr, i10, i11);
        this.currentPosition += (long) i12;
        return i12;
    }
}
