package com.google.android.exoplayer2.audio;

import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes11.dex */
final class l0 {
    private static final int AMDF_FREQUENCY = 4000;
    private static final int BYTES_PER_SAMPLE = 2;
    private static final int MAXIMUM_PITCH = 400;
    private static final int MINIMUM_PITCH = 65;
    private final int channelCount;
    private final short[] downSampleBuffer;
    private short[] inputBuffer;
    private int inputFrameCount;
    private final int inputSampleRateHz;
    private int maxDiff;
    private final int maxPeriod;
    private final int maxRequiredFrameCount;
    private int minDiff;
    private final int minPeriod;
    private int newRatePosition;
    private int oldRatePosition;
    private short[] outputBuffer;
    private int outputFrameCount;
    private final float pitch;
    private short[] pitchBuffer;
    private int pitchFrameCount;
    private int prevMinDiff;
    private int prevPeriod;
    private final float rate;
    private int remainingInputToCopyFrameCount;
    private final float speed;

    private short[] f(short[] sArr, int i10, int i11) {
        int length = sArr.length;
        int i12 = this.channelCount;
        int i13 = length / i12;
        return i10 + i11 <= i13 ? sArr : Arrays.copyOf(sArr, (((i13 * 3) / 2) + i11) * i12);
    }

    private static void p(int i10, int i11, short[] sArr, int i12, short[] sArr2, int i13, short[] sArr3, int i14) {
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = (i12 * i11) + i15;
            int i17 = (i14 * i11) + i15;
            int i18 = (i13 * i11) + i15;
            for (int i19 = 0; i19 < i10; i19++) {
                sArr[i16] = (short) (((sArr2[i18] * (i10 - i19)) + (sArr3[i17] * i19)) / i10);
                i16 += i11;
                i18 += i11;
                i17 += i11;
            }
        }
    }

    private boolean q(int i10, int i11) {
        return i10 != 0 && this.prevPeriod != 0 && i11 <= i10 * 3 && i10 * 2 > this.prevMinDiff * 3;
    }

    public void i() {
        this.inputFrameCount = 0;
        this.outputFrameCount = 0;
        this.pitchFrameCount = 0;
        this.oldRatePosition = 0;
        this.newRatePosition = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.prevPeriod = 0;
        this.prevMinDiff = 0;
        this.minDiff = 0;
        this.maxDiff = 0;
    }

    public int k() {
        return this.outputFrameCount * this.channelCount * 2;
    }

    public int l() {
        return this.inputFrameCount * this.channelCount * 2;
    }

    private void a(float f, int i10) {
        int i11;
        int i12;
        if (this.outputFrameCount == i10) {
            return;
        }
        int i13 = this.inputSampleRateHz;
        int i14 = (int) (i13 / f);
        while (true) {
            if (i14 <= 16384 && i13 <= 16384) {
                break;
            }
            i14 /= 2;
            i13 /= 2;
        }
        o(i10);
        int i15 = 0;
        while (true) {
            int i16 = this.pitchFrameCount;
            if (i15 >= i16 - 1) {
                u(i16 - 1);
                return;
            }
            while (true) {
                i11 = this.oldRatePosition;
                int i17 = (i11 + 1) * i14;
                i12 = this.newRatePosition;
                if (i17 <= i12 * i13) {
                    break;
                }
                this.outputBuffer = f(this.outputBuffer, this.outputFrameCount, 1);
                int i18 = 0;
                while (true) {
                    int i19 = this.channelCount;
                    if (i18 < i19) {
                        this.outputBuffer[(this.outputFrameCount * i19) + i18] = n(this.pitchBuffer, (i19 * i15) + i18, i13, i14);
                        i18++;
                    }
                }
                this.newRatePosition++;
                this.outputFrameCount++;
            }
            int i20 = i11 + 1;
            this.oldRatePosition = i20;
            if (i20 == i13) {
                this.oldRatePosition = 0;
                com.google.android.exoplayer2.util.a.g(i12 == i14);
                this.newRatePosition = 0;
            }
            i15++;
        }
    }

    private void b(float f) {
        int iW;
        int i10 = this.inputFrameCount;
        if (i10 < this.maxRequiredFrameCount) {
            return;
        }
        int i11 = 0;
        do {
            if (this.remainingInputToCopyFrameCount > 0) {
                iW = c(i11);
            } else {
                int iG = g(this.inputBuffer, i11);
                iW = ((double) f) > 1.0d ? iG + w(this.inputBuffer, i11, f, iG) : m(this.inputBuffer, i11, f, iG);
            }
            i11 += iW;
        } while (this.maxRequiredFrameCount + i11 <= i10);
        v(i11);
    }

    private int c(int i10) {
        int iMin = Math.min(this.maxRequiredFrameCount, this.remainingInputToCopyFrameCount);
        d(this.inputBuffer, i10, iMin);
        this.remainingInputToCopyFrameCount -= iMin;
        return iMin;
    }

    private void d(short[] sArr, int i10, int i11) {
        short[] sArrF = f(this.outputBuffer, this.outputFrameCount, i11);
        this.outputBuffer = sArrF;
        int i12 = this.channelCount;
        System.arraycopy(sArr, i10 * i12, sArrF, this.outputFrameCount * i12, i12 * i11);
        this.outputFrameCount += i11;
    }

    private void e(short[] sArr, int i10, int i11) {
        int i12 = this.maxRequiredFrameCount / i11;
        int i13 = this.channelCount;
        int i14 = i11 * i13;
        int i15 = i10 * i13;
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = 0;
            for (int i18 = 0; i18 < i14; i18++) {
                i17 += sArr[(i16 * i14) + i15 + i18];
            }
            this.downSampleBuffer[i16] = (short) (i17 / i14);
        }
    }

    private int g(short[] sArr, int i10) {
        int iH;
        int i11 = this.inputSampleRateHz;
        int i12 = i11 > 4000 ? i11 / 4000 : 1;
        if (this.channelCount == 1 && i12 == 1) {
            iH = h(sArr, i10, this.minPeriod, this.maxPeriod);
        } else {
            e(sArr, i10, i12);
            int iH2 = h(this.downSampleBuffer, 0, this.minPeriod / i12, this.maxPeriod / i12);
            if (i12 != 1) {
                int i13 = iH2 * i12;
                int i14 = i12 * 4;
                int i15 = i13 - i14;
                int i16 = i13 + i14;
                int i17 = this.minPeriod;
                if (i15 < i17) {
                    i15 = i17;
                }
                int i18 = this.maxPeriod;
                if (i16 > i18) {
                    i16 = i18;
                }
                if (this.channelCount == 1) {
                    iH = h(sArr, i10, i15, i16);
                } else {
                    e(sArr, i10, 1);
                    iH = h(this.downSampleBuffer, 0, i15, i16);
                }
            } else {
                iH = iH2;
            }
        }
        int i19 = q(this.minDiff, this.maxDiff) ? this.prevPeriod : iH;
        this.prevMinDiff = this.minDiff;
        this.prevPeriod = iH;
        return i19;
    }

    private int h(short[] sArr, int i10, int i11, int i12) {
        int i13 = i10 * this.channelCount;
        int i14 = 255;
        int i15 = 1;
        int i16 = 0;
        int i17 = 0;
        while (i11 <= i12) {
            int iAbs = 0;
            for (int i18 = 0; i18 < i11; i18++) {
                iAbs += Math.abs(sArr[i13 + i18] - sArr[(i13 + i11) + i18]);
            }
            if (iAbs * i16 < i15 * i11) {
                i16 = i11;
                i15 = iAbs;
            }
            if (iAbs * i14 > i17 * i11) {
                i14 = i11;
                i17 = iAbs;
            }
            i11++;
        }
        this.minDiff = i15 / i16;
        this.maxDiff = i17 / i14;
        return i16;
    }

    private int m(short[] sArr, int i10, float f, int i11) {
        int i12;
        if (f < 0.5f) {
            i12 = (int) ((i11 * f) / (1.0f - f));
        } else {
            this.remainingInputToCopyFrameCount = (int) ((i11 * ((2.0f * f) - 1.0f)) / (1.0f - f));
            i12 = i11;
        }
        int i13 = i11 + i12;
        short[] sArrF = f(this.outputBuffer, this.outputFrameCount, i13);
        this.outputBuffer = sArrF;
        int i14 = this.channelCount;
        System.arraycopy(sArr, i10 * i14, sArrF, this.outputFrameCount * i14, i14 * i11);
        p(i12, this.channelCount, this.outputBuffer, this.outputFrameCount + i11, sArr, i10 + i11, sArr, i10);
        this.outputFrameCount += i13;
        return i12;
    }

    private short n(short[] sArr, int i10, int i11, int i12) {
        short s = sArr[i10];
        short s5 = sArr[i10 + this.channelCount];
        int i13 = this.newRatePosition * i11;
        int i14 = this.oldRatePosition;
        int i15 = i14 * i12;
        int i16 = (i14 + 1) * i12;
        int i17 = i16 - i13;
        int i18 = i16 - i15;
        return (short) (((s * i17) + ((i18 - i17) * s5)) / i18);
    }

    private void o(int i10) {
        int i11 = this.outputFrameCount - i10;
        short[] sArrF = f(this.pitchBuffer, this.pitchFrameCount, i11);
        this.pitchBuffer = sArrF;
        short[] sArr = this.outputBuffer;
        int i12 = this.channelCount;
        System.arraycopy(sArr, i10 * i12, sArrF, this.pitchFrameCount * i12, i12 * i11);
        this.outputFrameCount = i10;
        this.pitchFrameCount += i11;
    }

    private void r() {
        int i10 = this.outputFrameCount;
        float f = this.speed;
        float f6 = this.pitch;
        float f7 = f / f6;
        float f10 = this.rate * f6;
        double d = f7;
        if (d > 1.00001d || d < 0.99999d) {
            b(f7);
        } else {
            d(this.inputBuffer, 0, this.inputFrameCount);
            this.inputFrameCount = 0;
        }
        if (f10 != 1.0f) {
            a(f10, i10);
        }
    }

    private void u(int i10) {
        if (i10 == 0) {
            return;
        }
        short[] sArr = this.pitchBuffer;
        int i11 = this.channelCount;
        System.arraycopy(sArr, i10 * i11, sArr, 0, (this.pitchFrameCount - i10) * i11);
        this.pitchFrameCount -= i10;
    }

    private void v(int i10) {
        int i11 = this.inputFrameCount - i10;
        short[] sArr = this.inputBuffer;
        int i12 = this.channelCount;
        System.arraycopy(sArr, i10 * i12, sArr, 0, i12 * i11);
        this.inputFrameCount = i11;
    }

    private int w(short[] sArr, int i10, float f, int i11) {
        int i12;
        if (f >= 2.0f) {
            i12 = (int) (i11 / (f - 1.0f));
        } else {
            this.remainingInputToCopyFrameCount = (int) ((i11 * (2.0f - f)) / (f - 1.0f));
            i12 = i11;
        }
        short[] sArrF = f(this.outputBuffer, this.outputFrameCount, i12);
        this.outputBuffer = sArrF;
        p(i12, this.channelCount, sArrF, this.outputFrameCount, sArr, i10, sArr, i10 + i11);
        this.outputFrameCount += i12;
        return i12;
    }

    public void s() {
        int i10;
        int i11 = this.inputFrameCount;
        float f = this.speed;
        float f6 = this.pitch;
        int i12 = this.outputFrameCount + ((int) ((((i11 / (f / f6)) + this.pitchFrameCount) / (this.rate * f6)) + 0.5f));
        this.inputBuffer = f(this.inputBuffer, i11, (this.maxRequiredFrameCount * 2) + i11);
        int i13 = 0;
        while (true) {
            i10 = this.maxRequiredFrameCount;
            int i14 = this.channelCount;
            if (i13 >= i10 * 2 * i14) {
                break;
            }
            this.inputBuffer[(i14 * i11) + i13] = 0;
            i13++;
        }
        this.inputFrameCount += i10 * 2;
        r();
        if (this.outputFrameCount > i12) {
            this.outputFrameCount = i12;
        }
        this.inputFrameCount = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.pitchFrameCount = 0;
    }

    public l0(int i10, int i11, float f, float f6, int i12) {
        this.inputSampleRateHz = i10;
        this.channelCount = i11;
        this.speed = f;
        this.pitch = f6;
        this.rate = i10 / i12;
        this.minPeriod = i10 / 400;
        int i13 = i10 / 65;
        this.maxPeriod = i13;
        int i14 = i13 * 2;
        this.maxRequiredFrameCount = i14;
        this.downSampleBuffer = new short[i14];
        this.inputBuffer = new short[i14 * i11];
        this.outputBuffer = new short[i14 * i11];
        this.pitchBuffer = new short[i14 * i11];
    }

    public void j(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.channelCount, this.outputFrameCount);
        shortBuffer.put(this.outputBuffer, 0, this.channelCount * iMin);
        int i10 = this.outputFrameCount - iMin;
        this.outputFrameCount = i10;
        short[] sArr = this.outputBuffer;
        int i11 = this.channelCount;
        System.arraycopy(sArr, iMin * i11, sArr, 0, i10 * i11);
    }

    public void t(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i10 = this.channelCount;
        int i11 = iRemaining / i10;
        short[] sArrF = f(this.inputBuffer, this.inputFrameCount, i11);
        this.inputBuffer = sArrF;
        shortBuffer.get(sArrF, this.inputFrameCount * this.channelCount, ((i10 * i11) * 2) / 2);
        this.inputFrameCount += i11;
        r();
    }
}
