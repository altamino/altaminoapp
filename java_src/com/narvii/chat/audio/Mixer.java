package com.narvii.chat.audio;

import android.media.AudioRecord;
import android.media.audiofx.AcousticEchoCanceler;
import android.os.Build;
import android.os.SystemClock;

/* loaded from: classes2.dex */
public class Mixer {
    public static final int LEVEL_INTERVAL = 200;
    static final float[] PERM = {0.0f, 0.1f, 0.2f, 0.3f, 0.4f, 0.4f, 0.5f, 0.5f, 0.5f, 0.5f, 0.6f, 0.6f, 0.6f, 0.6f, 0.6f, 0.7f, 0.7f, 0.7f, 0.7f, 0.8f, 0.8f, 0.8f, 0.9f, 0.9f, 0.9f, 0.9f, 0.9f, 0.9f, 0.9f, 0.9f, 0.9f, 0.9f, 0.9f};
    int audioFormat;
    int audioSource;
    short[] buffer;
    short[] buffer2;
    int bufferCount;
    int channels;
    AcousticEchoCanceler echoCancler;
    public float level;
    int levelMax;
    long levelTime;
    public MixerListener listener;
    int minBufferSize;
    AudioRecord record;
    int sampleRate;
    boolean started;
    Thread thread;
    final Object bufferLock = new Object();
    public float micVolumn = 1.0f;
    public float audioVolumn = 1.0f;

    public interface MixerListener {
        void onLevelIndicator(float f);

        void onMixedBuffer(short[] sArr, int i, int i2);
    }

    public Mixer(int i, int i2, int i3) {
        this.sampleRate = i;
        this.audioSource = i2;
        this.channels = i3;
        if (i3 == 1) {
            this.audioFormat = 16;
        } else if (i3 == 2) {
            this.audioFormat = 12;
        } else {
            throw new IllegalArgumentException();
        }
        this.minBufferSize = AudioRecord.getMinBufferSize(i, this.audioFormat, 2);
    }

    public boolean start() throws IllegalStateException {
        if (this.record == null) {
            this.record = new AudioRecord(this.audioSource, this.sampleRate, this.audioFormat, 2, this.minBufferSize);
        }
        AcousticEchoCanceler acousticEchoCanceler = this.echoCancler;
        if (acousticEchoCanceler != null) {
            acousticEchoCanceler.release();
            this.echoCancler = null;
        }
        if (this.record.getState() == 1) {
            if (this.audioSource == 7 && Build.VERSION.SDK_INT >= 16 && AcousticEchoCanceler.isAvailable()) {
                this.echoCancler = AcousticEchoCanceler.create(this.record.getAudioSessionId());
                AcousticEchoCanceler acousticEchoCanceler2 = this.echoCancler;
                if (acousticEchoCanceler2 != null) {
                    acousticEchoCanceler2.setEnabled(true);
                }
            }
            this.record.startRecording();
            this.thread = new RecordThread(this.record);
            this.thread.start();
            this.started = true;
            return true;
        }
        this.record = null;
        this.thread = null;
        this.started = false;
        return false;
    }

    public void stop() throws IllegalStateException {
        this.thread = null;
        AcousticEchoCanceler acousticEchoCanceler = this.echoCancler;
        if (acousticEchoCanceler != null) {
            acousticEchoCanceler.release();
            this.echoCancler = null;
        }
        AudioRecord audioRecord = this.record;
        if (audioRecord != null) {
            audioRecord.stop();
            this.record.release();
            this.record = null;
        }
        synchronized (this.bufferLock) {
            this.bufferCount = 0;
            this.buffer = null;
            this.buffer2 = null;
        }
        this.started = false;
    }

    public void pushMixBuffer(short[] sArr, int i, int i2) {
        if (i2 == 0) {
            return;
        }
        synchronized (this.bufferLock) {
            if (this.micVolumn == 0.0f || !this.started) {
                short[] sArr2 = this.buffer;
                this.bufferCount = 0;
                if (sArr2 == null || sArr2.length < i2) {
                    sArr2 = new short[i2];
                    this.buffer = sArr2;
                }
                System.arraycopy(sArr, i, sArr2, 0, i2);
                for (int i3 = 0; i3 < i2; i3++) {
                    int i4 = (int) (sArr[i + i3] * this.audioVolumn);
                    if (i4 < -32768) {
                        i4 = -32768;
                    } else if (i4 > 32767) {
                        i4 = 32767;
                    }
                    sArr2[i3] = (short) i4;
                }
                onMixedBuffer(sArr2, 0, i2);
            } else {
                short[] sArr3 = this.buffer2;
                int iMax = Math.max(this.minBufferSize / 2, ((this.sampleRate * this.channels) * 200) / 1000);
                int i5 = i2 + iMax;
                if (sArr3 == null || sArr3.length < i5) {
                    sArr3 = new short[i5];
                }
                int iMin = Math.min(iMax, this.bufferCount);
                if (iMin > 0) {
                    System.arraycopy(this.buffer, this.bufferCount - iMin, sArr3, 0, iMin);
                }
                System.arraycopy(sArr, i, sArr3, iMin, i2);
                this.buffer2 = this.buffer;
                this.buffer = sArr3;
                this.bufferCount = iMin + i2;
            }
        }
    }

    private class RecordThread extends Thread {
        final AudioRecord record;

        public RecordThread(AudioRecord audioRecord) {
            super("audio-record");
            this.record = audioRecord;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            short s;
            int i = Mixer.this.minBufferSize / 2;
            short[] sArr = new short[i];
            while (Mixer.this.thread == this) {
                int i2 = 0;
                int i3 = this.record.read(sArr, 0, i);
                if (i3 < 0) {
                    return;
                }
                Mixer mixer = Mixer.this;
                if (mixer.micVolumn == 0.0f) {
                    short s2 = 0;
                    while (i2 < i3) {
                        short s3 = sArr[i2];
                        Mixer mixer2 = Mixer.this;
                        if (s3 > mixer2.levelMax) {
                            mixer2.levelMax = s3;
                        } else if (s3 < s2) {
                            s2 = s3;
                        }
                        i2++;
                    }
                    i2 = s2;
                } else if (i3 > 0) {
                    synchronized (mixer.bufferLock) {
                        int i4 = 0;
                        s = 0;
                        while (i4 < i3) {
                            short s4 = sArr[i4];
                            if (s4 > Mixer.this.levelMax) {
                                Mixer.this.levelMax = s4;
                            } else if (s4 < s) {
                                s = s4;
                            }
                            int i5 = ((int) (s4 * Mixer.this.micVolumn)) + ((int) ((i4 < Mixer.this.bufferCount ? Mixer.this.buffer[i4] : (short) 0) * Mixer.this.audioVolumn));
                            if (i5 < -32768) {
                                i5 = -32768;
                            } else if (i5 > 32767) {
                                i5 = 32767;
                            }
                            sArr[i4] = (short) i5;
                            i4++;
                        }
                        int iMin = Math.min(i3, Mixer.this.bufferCount);
                        if (iMin > 0) {
                            short[] sArr2 = Mixer.this.buffer2;
                            if (sArr2 == null || sArr2.length != Mixer.this.buffer.length) {
                                sArr2 = new short[Mixer.this.buffer.length];
                            }
                            System.arraycopy(Mixer.this.buffer, iMin, sArr2, 0, Mixer.this.bufferCount - iMin);
                            Mixer.this.buffer2 = Mixer.this.buffer;
                            Mixer.this.buffer = sArr2;
                            Mixer.this.bufferCount -= iMin;
                        }
                    }
                    Mixer.this.onMixedBuffer(sArr, 0, i3);
                    i2 = s;
                }
                int i6 = -i2;
                Mixer mixer3 = Mixer.this;
                if (i6 > mixer3.levelMax) {
                    mixer3.levelMax = i6;
                }
                long jUptimeMillis = SystemClock.uptimeMillis();
                Mixer mixer4 = Mixer.this;
                if (jUptimeMillis > mixer4.levelTime + 200) {
                    int i7 = mixer4.levelMax / 1000;
                    float[] fArr = Mixer.PERM;
                    if (i7 < fArr.length) {
                        mixer4.level = fArr[i7];
                    } else {
                        mixer4.level = fArr[fArr.length - 1];
                    }
                    Mixer mixer5 = Mixer.this;
                    mixer5.onLevelIndicator(mixer5.level);
                    Mixer mixer6 = Mixer.this;
                    mixer6.levelMax /= 2;
                    mixer6.levelTime = jUptimeMillis;
                }
            }
        }
    }

    protected void onMixedBuffer(short[] sArr, int i, int i2) {
        MixerListener mixerListener = this.listener;
        if (mixerListener != null) {
            mixerListener.onMixedBuffer(sArr, i, i2);
        }
    }

    protected void onLevelIndicator(float f) {
        MixerListener mixerListener = this.listener;
        if (mixerListener != null) {
            mixerListener.onLevelIndicator(f);
        }
    }
}
