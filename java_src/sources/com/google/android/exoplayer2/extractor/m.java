package com.google.android.exoplayer2.extractor;

import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
public interface m extends com.google.android.exoplayer2.upstream.h {
    int a(byte[] bArr, int i10, int i11) throws IOException;

    void advancePeekPosition(int i10) throws IOException;

    boolean advancePeekPosition(int i10, boolean z6) throws IOException;

    long getLength();

    long getPeekPosition();

    long getPosition();

    void peekFully(byte[] bArr, int i10, int i11) throws IOException;

    boolean peekFully(byte[] bArr, int i10, int i11, boolean z6) throws IOException;

    @Override // com.google.android.exoplayer2.upstream.h
    int read(byte[] bArr, int i10, int i11) throws IOException;

    void readFully(byte[] bArr, int i10, int i11) throws IOException;

    boolean readFully(byte[] bArr, int i10, int i11, boolean z6) throws IOException;

    void resetPeekPosition();

    int skip(int i10) throws IOException;

    void skipFully(int i10) throws IOException;
}
