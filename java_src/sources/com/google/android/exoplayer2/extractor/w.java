package com.google.android.exoplayer2.extractor;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class w implements m {
    private final m input;

    @Override // com.google.android.exoplayer2.extractor.m
    public boolean advancePeekPosition(int i10, boolean z6) throws IOException {
        return this.input.advancePeekPosition(i10, z6);
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public boolean peekFully(byte[] bArr, int i10, int i11, boolean z6) throws IOException {
        return this.input.peekFully(bArr, i10, i11, z6);
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public boolean readFully(byte[] bArr, int i10, int i11, boolean z6) throws IOException {
        return this.input.readFully(bArr, i10, i11, z6);
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public int a(byte[] bArr, int i10, int i11) throws IOException {
        return this.input.a(bArr, i10, i11);
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public void advancePeekPosition(int i10) throws IOException {
        this.input.advancePeekPosition(i10);
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long getLength() {
        return this.input.getLength();
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long getPeekPosition() {
        return this.input.getPeekPosition();
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long getPosition() {
        return this.input.getPosition();
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public void peekFully(byte[] bArr, int i10, int i11) throws IOException {
        this.input.peekFully(bArr, i10, i11);
    }

    @Override // com.google.android.exoplayer2.extractor.m, com.google.android.exoplayer2.upstream.h
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        return this.input.read(bArr, i10, i11);
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public void readFully(byte[] bArr, int i10, int i11) throws IOException {
        this.input.readFully(bArr, i10, i11);
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public void resetPeekPosition() {
        this.input.resetPeekPosition();
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public int skip(int i10) throws IOException {
        return this.input.skip(i10);
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public void skipFully(int i10) throws IOException {
        this.input.skipFully(i10);
    }

    public w(m mVar) {
        this.input = mVar;
    }
}
