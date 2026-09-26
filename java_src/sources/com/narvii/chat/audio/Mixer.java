package com.narvii.chat.audio;

import android.media.AudioRecord;
import android.media.audiofx.AcousticEchoCanceler;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes9.dex */
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

        void onMixedBuffer(short[] sArr, int i10, int i11);
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
            int i10 = Mixer.this.minBufferSize / 2;
            short[] sArr = new short[i10];
            while (Mixer.this.thread == this) {
                int i11 = 0;
                int i12 = this.record.read(sArr, 0, i10);
                if (i12 < 0) {
                    return;
                }
                Mixer mixer = Mixer.this;
                if (mixer.micVolumn == 0.0f) {
                    short s5 = 0;
                    while (i11 < i12) {
                        short s10 = sArr[i11];
                        Mixer mixer2 = Mixer.this;
                        if (s10 > mixer2.levelMax) {
                            mixer2.levelMax = s10;
                        } else if (s10 < s5) {
                            s5 = s10;
                        }
                        i11++;
                    }
                    i11 = s5;
                } else if (i12 > 0) {
                    synchronized (mixer.bufferLock) {
                        int i13 = 0;
                        s = 0;
                        while (i13 < i12) {
                            try {
                                short s11 = sArr[i13];
                                Mixer mixer3 = Mixer.this;
                                if (s11 > mixer3.levelMax) {
                                    mixer3.levelMax = s11;
                                } else if (s11 < s) {
                                    s = s11;
                                }
                                int i14 = ((int) (s11 * mixer3.micVolumn)) + ((int) ((i13 < mixer3.bufferCount ? mixer3.buffer[i13] : (short) 0) * mixer3.audioVolumn));
                                int i15 = -32768;
                                if (i14 < -32768) {
                                    i14 = i15;
                                } else {
                                    i15 = 32767;
                                    if (i14 > 32767) {
                                        i14 = i15;
                                    }
                                }
                                sArr[i13] = (short) i14;
                                i13++;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        int iMin = Math.min(i12, Mixer.this.bufferCount);
                        if (iMin > 0) {
                            Mixer mixer4 = Mixer.this;
                            short[] sArr2 = mixer4.buffer2;
                            if (sArr2 == null || sArr2.length != mixer4.buffer.length) {
                                sArr2 = new short[mixer4.buffer.length];
                            }
                            System.arraycopy(mixer4.buffer, iMin, sArr2, 0, mixer4.bufferCount - iMin);
                            Mixer mixer5 = Mixer.this;
                            mixer5.buffer2 = mixer5.buffer;
                            mixer5.buffer = sArr2;
                            mixer5.bufferCount -= iMin;
                        }
                    }
                    Mixer.this.onMixedBuffer(sArr, 0, i12);
                    i11 = s;
                }
                int i16 = -i11;
                Mixer mixer6 = Mixer.this;
                if (i16 > mixer6.levelMax) {
                    mixer6.levelMax = i16;
                }
                long jUptimeMillis = SystemClock.uptimeMillis();
                Mixer mixer7 = Mixer.this;
                if (jUptimeMillis > mixer7.levelTime + 200) {
                    int i17 = mixer7.levelMax / 1000;
                    float[] fArr = Mixer.PERM;
                    if (i17 < fArr.length) {
                        mixer7.level = fArr[i17];
                    } else {
                        mixer7.level = fArr[fArr.length - 1];
                    }
                    mixer7.onLevelIndicator(mixer7.level);
                    Mixer mixer8 = Mixer.this;
                    mixer8.levelMax /= 2;
                    mixer8.levelTime = jUptimeMillis;
                }
            }
        }
    }

    public void stop() {
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

    protected void onLevelIndicator(float f) {
        MixerListener mixerListener = this.listener;
        if (mixerListener != null) {
            mixerListener.onLevelIndicator(f);
        }
    }

    protected void onMixedBuffer(short[] sArr, int i10, int i11) {
        MixerListener mixerListener = this.listener;
        if (mixerListener != null) {
            mixerListener.onMixedBuffer(sArr, i10, i11);
        }
    }

    public void pushMixBuffer(short[] sArr, int i10, int i11) {
        if (i11 == 0) {
            return;
        }
        synchronized (this.bufferLock) {
            try {
                if (this.micVolumn == 0.0f || !this.started) {
                    short[] sArr2 = this.buffer;
                    this.bufferCount = 0;
                    if (sArr2 == null || sArr2.length < i11) {
                        sArr2 = new short[i11];
                        this.buffer = sArr2;
                    }
                    System.arraycopy(sArr, i10, sArr2, 0, i11);
                    for (int i12 = 0; i12 < i11; i12++) {
                        int i13 = (int) (sArr[i10 + i12] * this.audioVolumn);
                        int i14 = -32768;
                        if (i13 < -32768) {
                            i13 = i14;
                        } else {
                            i14 = 32767;
                            if (i13 > 32767) {
                                i13 = i14;
                            }
                        }
                        sArr2[i12] = (short) i13;
                    }
                    onMixedBuffer(sArr2, 0, i11);
                } else {
                    short[] sArr3 = this.buffer2;
                    int iMax = Math.max(this.minBufferSize / 2, ((this.sampleRate * this.channels) * 200) / 1000);
                    int i15 = i11 + iMax;
                    if (sArr3 == null || sArr3.length < i15) {
                        sArr3 = new short[i15];
                    }
                    int iMin = Math.min(iMax, this.bufferCount);
                    if (iMin > 0) {
                        System.arraycopy(this.buffer, this.bufferCount - iMin, sArr3, 0, iMin);
                    }
                    System.arraycopy(sArr, i10, sArr3, iMin, i11);
                    this.buffer2 = this.buffer;
                    this.buffer = sArr3;
                    this.bufferCount = iMin + i11;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean start() {
        if (this.record == null) {
            this.record = new AudioRecord(this.audioSource, this.sampleRate, this.audioFormat, 2, this.minBufferSize);
        }
        AcousticEchoCanceler acousticEchoCanceler = this.echoCancler;
        if (acousticEchoCanceler != null) {
            acousticEchoCanceler.release();
            this.echoCancler = null;
        }
        if (this.record.getState() != 1) {
            this.record = null;
            this.thread = null;
            this.started = false;
            return false;
        }
        if (this.audioSource == 7 && AcousticEchoCanceler.isAvailable()) {
            AcousticEchoCanceler acousticEchoCancelerCreate = AcousticEchoCanceler.create(this.record.getAudioSessionId());
            this.echoCancler = acousticEchoCancelerCreate;
            if (acousticEchoCancelerCreate != null) {
                acousticEchoCancelerCreate.setEnabled(true);
            }
        }
        this.record.startRecording();
        RecordThread recordThread = new RecordThread(this.record);
        this.thread = recordThread;
        recordThread.start();
        this.started = true;
        return true;
    }

    public Mixer(int i10, int i11, int i12) {
        this.sampleRate = i10;
        this.audioSource = i11;
        this.channels = i12;
        if (i12 != 1) {
            if (i12 == 2) {
                this.audioFormat = 12;
            } else {
                throw new IllegalArgumentException();
            }
        } else {
            this.audioFormat = 16;
        }
        this.minBufferSize = AudioRecord.getMinBufferSize(i10, this.audioFormat, 2);
    }
}
