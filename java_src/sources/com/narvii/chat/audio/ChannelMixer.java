package com.narvii.chat.audio;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ChannelMixer {
    public short[] buffer;
    public int length;

    private static class MonoMixer extends ChannelMixer {
        private MonoMixer() {
            super();
        }

        @Override // com.narvii.chat.audio.ChannelMixer
        public int write(short[] sArr, int i10, int i11, int i12) {
            if (i12 == 1 && i10 == 0) {
                this.buffer = sArr;
                this.length = i11;
                return i11;
            }
            int i13 = i11 / i12;
            if (this.buffer.length < i13) {
                this.buffer = new short[i13];
            }
            for (int i14 = 0; i14 < i13; i14++) {
                this.buffer[i14] = sArr[(i14 * i12) + i10];
            }
            this.length = i13;
            return i13;
        }
    }

    private static class StereoMixer extends ChannelMixer {
        private StereoMixer() {
            super();
        }

        @Override // com.narvii.chat.audio.ChannelMixer
        public int write(short[] sArr, int i10, int i11, int i12) {
            if (i12 == 2 && i10 == 0) {
                this.buffer = sArr;
                this.length = i11;
                return i11;
            }
            int i13 = 0;
            if (i12 == 1) {
                int i14 = i11 * 2;
                if (this.buffer.length < i14) {
                    this.buffer = new short[i14];
                }
                while (i13 < i14) {
                    this.buffer[i13] = sArr[(i13 / 2) + i10];
                    i13++;
                }
                this.length = i14;
                return i14;
            }
            int i15 = (i11 / i12) * 2;
            if (this.buffer.length < i15) {
                this.buffer = new short[i15];
            }
            int i16 = i15 / 2;
            while (i13 < i16) {
                short[] sArr2 = this.buffer;
                int i17 = i13 * 2;
                int i18 = (i13 * i12) + i10;
                sArr2[i17] = sArr[i18];
                sArr2[i17 + 1] = sArr[i18 + 1];
                i13++;
            }
            this.length = i15;
            return i15;
        }
    }

    public static ChannelMixer getMixer(int i10) {
        if (i10 == 1) {
            return new MonoMixer();
        }
        if (i10 == 2) {
            return new StereoMixer();
        }
        throw new IllegalArgumentException();
    }

    public abstract int write(short[] sArr, int i10, int i11, int i12);

    private ChannelMixer() {
        this.buffer = new short[0];
    }
}
