package com.narvii.chat.audio;

/* loaded from: classes2.dex */
public abstract class ChannelMixer {
    public short[] buffer;
    public int length;

    public abstract int write(short[] sArr, int i, int i2, int i3);

    private ChannelMixer() {
        this.buffer = new short[0];
    }

    public static ChannelMixer getMixer(int i) {
        if (i == 1) {
            return new MonoMixer();
        }
        if (i == 2) {
            return new StereoMixer();
        }
        throw new IllegalArgumentException();
    }

    private static class MonoMixer extends ChannelMixer {
        private MonoMixer() {
            super();
        }

        @Override // com.narvii.chat.audio.ChannelMixer
        public int write(short[] sArr, int i, int i2, int i3) {
            if (i3 == 1 && i == 0) {
                this.buffer = sArr;
                this.length = i2;
                return i2;
            }
            int i4 = i2 / i3;
            if (this.buffer.length < i4) {
                this.buffer = new short[i4];
            }
            for (int i5 = 0; i5 < i4; i5++) {
                this.buffer[i5] = sArr[(i5 * i3) + i];
            }
            this.length = i4;
            return i4;
        }
    }

    private static class StereoMixer extends ChannelMixer {
        private StereoMixer() {
            super();
        }

        @Override // com.narvii.chat.audio.ChannelMixer
        public int write(short[] sArr, int i, int i2, int i3) {
            if (i3 == 2 && i == 0) {
                this.buffer = sArr;
                this.length = i2;
                return i2;
            }
            int i4 = 0;
            if (i3 == 1) {
                int i5 = i2 * 2;
                if (this.buffer.length < i5) {
                    this.buffer = new short[i5];
                }
                while (i4 < i5) {
                    this.buffer[i4] = sArr[(i4 / 2) + i];
                    i4++;
                }
                this.length = i5;
                return i5;
            }
            int i6 = (i2 / i3) * 2;
            if (this.buffer.length < i6) {
                this.buffer = new short[i6];
            }
            int i7 = i6 / 2;
            while (i4 < i7) {
                short[] sArr2 = this.buffer;
                int i8 = i4 * 2;
                int i9 = (i4 * i3) + i;
                sArr2[i8] = sArr[i9];
                sArr2[i8 + 1] = sArr[i9 + 1];
                i4++;
            }
            this.length = i6;
            return i6;
        }
    }
}
