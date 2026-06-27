package com.google.android.exoplayer2.extractor.wav;

import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes.dex */
final class WavHeader implements SeekMap {
    private final int averageBytesPerSecond;
    private final int bitsPerSample;
    private final int blockAlignment;
    private final int encoding;
    private final int numChannels;
    private final int sampleRateHz;
    private int dataStartPosition = -1;
    private long dataEndPosition = -1;

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    public WavHeader(int i, int i2, int i3, int i4, int i5, int i6) {
        this.numChannels = i;
        this.sampleRateHz = i2;
        this.averageBytesPerSecond = i3;
        this.blockAlignment = i4;
        this.bitsPerSample = i5;
        this.encoding = i6;
    }

    public void setDataBounds(int i, long j) {
        this.dataStartPosition = i;
        this.dataEndPosition = j;
    }

    public int getDataStartPosition() {
        return this.dataStartPosition;
    }

    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    public boolean hasDataBounds() {
        return this.dataStartPosition != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return (((this.dataEndPosition - this.dataStartPosition) / this.blockAlignment) * 1000000) / this.sampleRateHz;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        long j2 = this.dataEndPosition - this.dataStartPosition;
        int i = this.blockAlignment;
        long jConstrainValue = Util.constrainValue((((this.averageBytesPerSecond * j) / 1000000) / i) * i, 0L, j2 - i);
        long j3 = this.dataStartPosition + jConstrainValue;
        long timeUs = getTimeUs(j3);
        SeekPoint seekPoint = new SeekPoint(timeUs, j3);
        if (timeUs < j) {
            int i2 = this.blockAlignment;
            if (jConstrainValue != j2 - i2) {
                long j4 = j3 + i2;
                return new SeekMap.SeekPoints(seekPoint, new SeekPoint(getTimeUs(j4), j4));
            }
        }
        return new SeekMap.SeekPoints(seekPoint);
    }

    public long getTimeUs(long j) {
        return (Math.max(0L, j - this.dataStartPosition) * 1000000) / this.averageBytesPerSecond;
    }

    public int getBytesPerFrame() {
        return this.blockAlignment;
    }

    public int getBitrate() {
        return this.sampleRateHz * this.bitsPerSample * this.numChannels;
    }

    public int getSampleRateHz() {
        return this.sampleRateHz;
    }

    public int getNumChannels() {
        return this.numChannels;
    }

    public int getEncoding() {
        return this.encoding;
    }
}
