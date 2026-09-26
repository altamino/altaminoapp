package io.agora.rtc.audio;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import android.media.MediaRouter;
import android.media.audiofx.AcousticEchoCanceler;
import android.media.audiofx.AudioEffect;
import android.os.Build;
import android.os.LocaleList;
import android.os.Process;
import android.util.DisplayMetrics;
import com.narvii.chat.video.RtcChatManager;
import io.agora.rtc.internal.Logging;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
class AudioDevice {
    private AudioManager _audioManager;
    private Context _context;
    private ByteBuffer _playBuffer;
    private ByteBuffer _recBuffer;
    private byte[] _tempBufPlay;
    private byte[] _tempBufRec;
    final String TAG = "AudioDevice Java";
    private final int _MaxRecPlay10msBlocks = 4;
    private AudioTrack _audioTrack = null;
    private AudioRecord _audioRecord = null;
    private final ReentrantLock _playLock = new ReentrantLock();
    private final ReentrantLock _recLock = new ReentrantLock();
    private boolean _doPlayInit = true;
    private boolean _doRecInit = true;
    private boolean _isRecording = false;
    private boolean _isPlaying = false;
    private int _bufferedRecSamples = 0;
    private int _bufferedPlaySamples = 0;
    private int _playPosition = 0;
    private int _playbackSampleRate = 0;
    private int _playBufSize = 0;
    private int _playbackRestartCount = 0;
    private int _recordSampleRate = 0;
    private int _recordChannel = 0;
    private int _playChannel = 0;
    private int _recordBufSize = 0;
    private int _recordSource = 0;
    private int _recordRestartCount = 0;
    private boolean _renderStart = false;
    private long _firstRenderTS = 0;
    private int _playPreviousUnderrun = 0;
    private long _recDelay = 10;
    private long _lastRecDelay = 0;
    private long _recStartTS = 0;
    private int _recStartDelay = 0;
    private AcousticEchoCanceler aec = null;
    private boolean useBuiltInAEC = false;
    private int _streamType = 0;
    private int playWriten = 0;
    private int maxDelay = 0;
    private int totalDelay = 0;

    private boolean BuiltInAECIsEnabled() {
        return this.useBuiltInAEC;
    }

    private int GetNativePlayDelay() {
        if (this._recDelay < 0) {
            this._recDelay = -1L;
        }
        if (this.totalDelay < 0) {
            this.totalDelay = -1;
        }
        return this.totalDelay + ((int) this._recDelay);
    }

    private int GetUnderrunCountOnLowerThanNougat() {
        return -1;
    }

    private int InitPlayback(int sampleRate, int playChannel, int streamType, int profiledMiniOutBufferMs) {
        Context context;
        this._streamType = streamType;
        int i10 = (((profiledMiniOutBufferMs * sampleRate) * playChannel) * 2) / 1000;
        int i11 = 12;
        int minBufferSize = AudioTrack.getMinBufferSize(sampleRate, playChannel == 2 ? 12 : 4, 2);
        Logging.d("AudioDevice Java", "Java minimum playback buffer size is " + minBufferSize + ", profiledMiniOutBufferSize is " + i10 + " stream type " + this._streamType);
        int i12 = minBufferSize < i10 ? i10 : minBufferSize;
        this._bufferedPlaySamples = 0;
        Logging.d("AudioDevice Java", "Java playback buffer size is " + i12 + ", duration is " + ((i12 * 1000) / ((sampleRate * playChannel) * 2)) + " ms");
        AudioTrack audioTrack = this._audioTrack;
        if (audioTrack != null) {
            audioTrack.release();
            this._audioTrack = null;
        }
        try {
            int i13 = this._streamType;
            if (playChannel != 2) {
                i11 = 4;
            }
            AudioTrack audioTrack2 = new AudioTrack(i13, sampleRate, i11, 2, i12, 1);
            this._audioTrack = audioTrack2;
            this._playbackSampleRate = sampleRate;
            this._playChannel = playChannel;
            this._playBufSize = i12;
            this._playbackRestartCount = 0;
            if (audioTrack2.getState() != 1) {
                Logging.e("AudioDevice Java", "Java playback not initialized " + sampleRate);
                return -1;
            }
            Logging.d("AudioDevice Java", "Java play sample rate is set to " + sampleRate);
            if (this._audioManager == null && (context = this._context) != null) {
                this._audioManager = (AudioManager) context.getSystemService("audio");
            }
            AudioManager audioManager = this._audioManager;
            if (audioManager == null) {
                return 0;
            }
            return audioManager.getStreamMaxVolume(this._streamType);
        } catch (Exception e) {
            Logging.e("AudioDevice Java", "Unable to new AudioTrack: ", e);
            return -1;
        }
    }

    private boolean BuiltInAECIsAvailable() {
        try {
            return AcousticEchoCanceler.isAvailable();
        } catch (Exception unused) {
            Logging.e("AudioDevice Java", "Unable to query Audio Effect: Acoustic Echo Cancellation");
            return false;
        } catch (ExceptionInInitializerError e) {
            Logging.e("AudioDevice Java", "Unable to create AEC object ", e);
            return false;
        }
    }

    private int CheckAudioStatus(int isPlayOut) {
        int i10 = 0;
        if (Build.VERSION.SDK_INT >= 24) {
            if (this._audioManager == null) {
                Context context = this._context;
                if (context == null) {
                    Logging.e("AudioDevice Java", "CheckAudioStatus error");
                    return -1;
                }
                this._audioManager = (AudioManager) context.getSystemService("audio");
            }
            if (isPlayOut == 0) {
                if (this._context.checkPermission("android.permission.RECORD_AUDIO", Process.myPid(), Process.myUid()) != 0) {
                    Logging.e("AudioDevice Java", "CheckAudioStatus Microphone Permission denied");
                    return 1027;
                }
                if (this._audioManager == null) {
                    Logging.e("AudioDevice Java", "CheckAudioStatus unkonwn error");
                    return -1;
                }
                AudioRecord audioRecord = this._audioRecord;
                int audioSessionId = audioRecord != null ? audioRecord.getAudioSessionId() : -1;
                Iterator it = this._audioManager.getActiveRecordingConfigurations().iterator();
                while (it.hasNext()) {
                    if (c.a(it.next()).getClientAudioSessionId() != audioSessionId) {
                        i10 = 1033;
                    }
                }
            }
        }
        return i10;
    }

    private boolean EnableBuiltInAEC(boolean enable) {
        this.useBuiltInAEC = enable;
        AcousticEchoCanceler acousticEchoCanceler = this.aec;
        if (acousticEchoCanceler == null) {
            return true;
        }
        if (acousticEchoCanceler.setEnabled(enable) != 0) {
            Logging.e("AudioDevice Java", "AcousticEchoCanceler.setEnabled failed");
            return false;
        }
        Logging.e("AudioDevice Java", "AcousticEchoCanceler.getEnabled: " + this.aec.getEnabled());
        return true;
    }

    private int GetAudioMode() {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager != null) {
            return audioManager.getMode();
        }
        Logging.e("AudioDevice Java", "Could not change audio routing - no audio manager");
        return -1;
    }

    private int GetNativeSampleRate() {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager == null) {
            Logging.w("AudioDevice Java", "Could not set audio mode - no audio manager");
            return RtcChatManager.SAMPLE_RATE;
        }
        String property = audioManager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE");
        return property != null ? Integer.parseInt(property) : RtcChatManager.SAMPLE_RATE;
    }

    private int GetPlayoutMaxVolume() {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager != null) {
            return audioManager.getStreamMaxVolume(this._streamType);
        }
        return -1;
    }

    private int GetPlayoutVolume() {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager != null) {
            return audioManager.getStreamVolume(this._streamType);
        }
        return -1;
    }

    private int GetPreferedSampleRate() {
        int i10;
        Context context;
        try {
            if (this._audioManager == null && (context = this._context) != null) {
                this._audioManager = (AudioManager) context.getSystemService("audio");
            }
            i10 = Integer.parseInt(this._audioManager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE"));
        } catch (Exception e) {
            Logging.e("AudioDevice Java", "GetPreferedSampleRate error", e);
            i10 = 0;
        }
        if (i10 == 0) {
            return 16000;
        }
        return i10;
    }

    private int GetUnderrunCount() {
        return Build.VERSION.SDK_INT >= 24 ? GetUnderrunCountOnNougatOrHigher() : GetUnderrunCountOnLowerThanNougat();
    }

    @TargetApi(24)
    private int GetUnderrunCountOnNougatOrHigher() {
        int underrunCount;
        int i10 = 0;
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                underrunCount = this._audioTrack.getUnderrunCount();
            } catch (Exception e) {
                Logging.e("AudioDevice Java", "getUnderrun fail ", e);
                underrunCount = 0;
            }
            int i11 = underrunCount - this._playPreviousUnderrun;
            i10 = i11 >= 0 ? i11 : 0;
            this._playPreviousUnderrun = underrunCount;
            if (i10 > 0) {
                Logging.d("AudioDevice Java", "Android AudioTrack underrun count: " + i10);
            }
        }
        return i10;
    }

    private int InitRecording(int audioSource, int sampleRate, int recChannel) {
        int minBufferSize = AudioRecord.getMinBufferSize(sampleRate, recChannel == 2 ? 12 : 16, 2);
        Logging.d("AudioDevice Java", "Java minimum recording buffer size is " + minBufferSize);
        this._bufferedRecSamples = (sampleRate * 5) / 200;
        AcousticEchoCanceler acousticEchoCanceler = this.aec;
        if (acousticEchoCanceler != null) {
            acousticEchoCanceler.release();
            this.aec = null;
        }
        AudioRecord audioRecord = this._audioRecord;
        if (audioRecord != null) {
            audioRecord.release();
            this._audioRecord = null;
        }
        try {
            AudioRecord audioRecord2 = new AudioRecord(audioSource, sampleRate, recChannel == 2 ? 12 : 16, 2, minBufferSize);
            this._audioRecord = audioRecord2;
            if (audioRecord2.getState() != 1) {
                Logging.e("AudioDevice Java", "Java recording not initialized " + sampleRate);
                return -2;
            }
            this._recordSampleRate = sampleRate;
            this._recordChannel = recChannel;
            this._recordSource = audioSource;
            this._recordBufSize = minBufferSize;
            this._recordRestartCount = 0;
            Logging.d("AudioDevice Java", "Java recording sample rate set to " + sampleRate);
            Logging.d("AudioDevice Java", "AcousticEchoCanceler.isAvailable: " + BuiltInAECIsAvailable());
            if (!BuiltInAECIsAvailable()) {
                return this._bufferedRecSamples;
            }
            AcousticEchoCanceler acousticEchoCancelerCreate = AcousticEchoCanceler.create(this._audioRecord.getAudioSessionId());
            this.aec = acousticEchoCancelerCreate;
            if (acousticEchoCancelerCreate == null) {
                Logging.e("AudioDevice Java", "AcousticEchoCanceler.create failed");
            } else {
                AudioEffect.Descriptor descriptor = acousticEchoCancelerCreate.getDescriptor();
                if (descriptor == null) {
                    Logging.e("AudioDevice Java", "getDescriptor() failed");
                } else {
                    Logging.d("AudioDevice Java", "AcousticEchoCanceler name: " + descriptor.name + ", implementor: " + descriptor.implementor + ", uuid: " + descriptor.uuid);
                }
                EnableBuiltInAEC(this.useBuiltInAEC);
            }
            return this._bufferedRecSamples;
        } catch (Exception e) {
            Logging.e("AudioDevice Java", "Unable to new AudioRecord: ", e);
            return -1;
        }
    }

    private int PlayAudio(int lengthInBytes) {
        this._playLock.lock();
        int i10 = 0;
        try {
            try {
                if (this._audioTrack == null) {
                    return -2;
                }
                if (this._doPlayInit) {
                    try {
                        Process.setThreadPriority(-19);
                    } catch (Exception e) {
                        Logging.e("AudioDevice Java", "Set play thread priority failed: ", e);
                    }
                    this._doPlayInit = false;
                }
                this._playBuffer.get(this._tempBufPlay);
                int iWrite = this._audioTrack.write(this._tempBufPlay, 0, lengthInBytes);
                this._playBuffer.rewind();
                this._bufferedPlaySamples += iWrite >> 1;
                this.playWriten += iWrite;
                int playbackHeadPosition = this._audioTrack.getPlaybackHeadPosition() * this._playChannel;
                int i11 = this.playWriten;
                int i12 = (((i11 / 2) - playbackHeadPosition) / 2) / 48;
                int i13 = this.maxDelay;
                if (i12 > i13) {
                    i13 = (((i11 / 2) - playbackHeadPosition) / 2) / 48;
                }
                this.maxDelay = i13;
                if (this._firstRenderTS == 0) {
                    this._firstRenderTS = System.currentTimeMillis();
                }
                if (playbackHeadPosition > 0 && !this._renderStart) {
                    this._firstRenderTS = System.currentTimeMillis() - this._firstRenderTS;
                    Logging.e("AudioDevice Java", "caculated the first render TS = " + this._firstRenderTS + " pos = " + ((playbackHeadPosition / 2) / 48) + "ms delay " + (this._firstRenderTS + ((long) this.maxDelay)));
                    this._renderStart = true;
                }
                if (this._renderStart) {
                    this.totalDelay = ((int) this._firstRenderTS) + this.maxDelay;
                }
                if (playbackHeadPosition < this._playPosition) {
                    this._playPosition = 0;
                }
                int i14 = this._bufferedPlaySamples - (playbackHeadPosition - this._playPosition);
                this._bufferedPlaySamples = i14;
                this._playPosition = playbackHeadPosition;
                i10 = this._isRecording ? 0 : i14;
                if (iWrite != lengthInBytes) {
                    if (this._playbackRestartCount <= 20) {
                        Logging.e("AudioDevice Java", "Error writing AudioTrack! Restart AudioTrack " + this._playbackRestartCount);
                        this._playbackRestartCount = this._playbackRestartCount + 1;
                        this._audioTrack.stop();
                        this._audioTrack.release();
                        this._audioTrack = null;
                        try {
                            AudioTrack audioTrack = new AudioTrack(this._streamType, this._playbackSampleRate, this._playChannel == 2 ? 12 : 4, 2, this._playBufSize, 1);
                            this._audioTrack = audioTrack;
                            audioTrack.play();
                        } catch (Exception e2) {
                            Logging.e("AudioDevice Java", "restart audio fail", e2);
                        }
                    }
                    return iWrite;
                }
            } catch (Exception e6) {
                Logging.e("AudioDevice Java", "PlayAudio got fatal error ", e6);
            }
            return i10;
        } finally {
            this._playLock.unlock();
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00b6 A[RETURN] */
    private int QuerySpeakerStatus() {
        int i10;
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                MediaRouter.RouteInfo selectedRoute = ((MediaRouter) this._context.getSystemService("media_router")).getSelectedRoute(1);
                selectedRoute.getName().toString().compareToIgnoreCase("phone");
                Configuration configuration = this._context.getResources().getConfiguration();
                LocaleList locales = configuration.getLocales();
                DisplayMetrics displayMetrics = this._context.getResources().getDisplayMetrics();
                configuration.setLocale(Locale.ENGLISH);
                this._context.getResources().updateConfiguration(configuration, displayMetrics);
                if (selectedRoute.getName(this._context).toString().compareToIgnoreCase("phone") == 0) {
                    Logging.e("AudioDevice Java", "speaker");
                } else {
                    if (selectedRoute.getName(this._context).toString().compareToIgnoreCase("headset") == 0) {
                        Logging.e("AudioDevice Java", "headset");
                        i10 = 0;
                    } else if (selectedRoute.getName(this._context).toString().compareToIgnoreCase("bluetooth") == 0) {
                        Logging.e("AudioDevice Java", "bluetooth");
                        i10 = 5;
                    }
                    configuration.setLocales(locales);
                    this._context.getResources().updateConfiguration(configuration, displayMetrics);
                    if (i10 != -1) {
                        return i10;
                    }
                }
                i10 = -1;
                configuration.setLocales(locales);
                this._context.getResources().updateConfiguration(configuration, displayMetrics);
                if (i10 != -1) {
                    return i10;
                }
            }
        } catch (Exception e) {
            Logging.e("error in Query audio route ");
            e.printStackTrace();
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager == null) {
            Logging.e("AudioDevice Java", "Could not get audio routing - no audio manager");
            return -1;
        }
        if (audioManager.isBluetoothA2dpOn()) {
            return 5;
        }
        if (this._audioManager.isSpeakerphoneOn()) {
            return 3;
        }
        if (this._audioManager.isBluetoothScoOn()) {
            return 5;
        }
        return this._audioManager.isWiredHeadsetOn() ? 0 : 1;
    }

    private int RecordAudio(int lengthInBytes) {
        ReentrantLock reentrantLock;
        this._recLock.lock();
        int i10 = this._bufferedPlaySamples;
        try {
            if (this._audioRecord == null) {
                return -4;
            }
            if (this._doRecInit) {
                try {
                    Process.setThreadPriority(-19);
                } catch (Exception e) {
                    Logging.e("AudioDevice Java", "Set rec thread priority failed: ", e);
                }
                this._doRecInit = false;
            }
            this._recBuffer.rewind();
            int i11 = this._audioRecord.read(this._tempBufRec, 0, lengthInBytes);
            this._recBuffer.put(this._tempBufRec);
            if (this._recDelay == 10) {
                if (Build.VERSION.SDK_INT >= 24) {
                    AudioTimestamp audioTimestamp = new AudioTimestamp();
                    this._audioRecord.getTimestamp(audioTimestamp, 0);
                    long jNanoTime = ((System.nanoTime() - audioTimestamp.nanoTime) / 1000) / 1000;
                    this._recDelay = jNanoTime;
                    if (jNanoTime > 50) {
                        this._recDelay = 10L;
                    }
                } else {
                    this._recDelay = 10L;
                }
                if (this._recStartDelay == 0) {
                    this._recStartDelay = (((int) (System.nanoTime() - this._recStartTS)) / 1000) / 1000;
                }
                this._recDelay += (long) this._recStartDelay;
            }
            if (this._lastRecDelay != this._recDelay) {
                int bufferSizeInFrames = this._audioRecord.getBufferSizeInFrames();
                Logging.i("AudioDevice Java", "frames  " + bufferSizeInFrames + " recDelay " + this._recDelay + " caculated frames delay " + (bufferSizeInFrames / (this._audioRecord.getSampleRate() / 1000)));
                this._lastRecDelay = this._recDelay;
            }
            if (i11 == lengthInBytes) {
                return i10;
            }
            if (this._recordRestartCount % 10 == 0) {
                Logging.e("AudioDevice Java", "Error reading AudioRecord! AudioRecord.read returns " + i11);
            }
            this._recordRestartCount++;
            this._audioRecord.stop();
            this._audioRecord.release();
            this._audioRecord = null;
            AudioRecord audioRecord = new AudioRecord(this._recordSource, this._recordSampleRate, this._recordChannel == 2 ? 12 : 16, 2, this._recordBufSize);
            this._audioRecord = audioRecord;
            audioRecord.startRecording();
            this._recStartTS = System.nanoTime();
            this._recStartDelay = 0;
            return i11;
        } catch (Exception e2) {
            Logging.e("AudioDevice Java", "RecordAudio try failed: ", e2);
            return -10;
        } finally {
            this._recLock.unlock();
        }
    }

    private int SetAudioMode(int mode) {
        int i10;
        Context context;
        try {
            if (this._audioManager == null && (context = this._context) != null) {
                this._audioManager = (AudioManager) context.getSystemService("audio");
            }
            AudioManager audioManager = this._audioManager;
            if (audioManager == null) {
                Logging.e("AudioDevice Java", "Could not change audio routing - no audio manager");
                return -1;
            }
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            int streamVolume = this._audioManager.getStreamVolume(3);
            int streamMaxVolume2 = this._audioManager.getStreamMaxVolume(0);
            int streamVolume2 = this._audioManager.getStreamVolume(0);
            int i11 = streamMaxVolume - streamMaxVolume2;
            double d = ((double) streamMaxVolume2) / ((double) streamMaxVolume);
            if (this._audioManager.getMode() == mode) {
                Logging.d("[Java AudioDevice] audioManager.getmode is the same as SetAudioMode = " + mode);
                return 0;
            }
            if (this._isPlaying) {
                Logging.e("AudioDevice Java", "_audioManager.getMode() = " + this._audioManager.getMode() + " target mode = " + mode + "factorX = " + i11 + "mMediaMaxVolume=" + streamMaxVolume + "mCommMaxVolume=" + streamMaxVolume2 + "mCurrMediaVolume=" + streamVolume + "mCurrCommVolume=" + streamVolume2 + "delta" + d);
                if (mode == 3) {
                    if (i11 < 12) {
                        i10 = streamVolume - i11;
                        if (i10 < 1) {
                            i10 = 1;
                        }
                    } else {
                        i10 = (int) ((((double) streamVolume) * d) + 0.5d);
                    }
                    if (i10 < 1) {
                        i10 = 1;
                    }
                    Logging.d("[Java AudioDevice] set voice call vol = " + i10);
                    this._audioManager.setStreamVolume(0, i10, 0);
                } else if (mode == 0) {
                    if (i11 < 12) {
                        int i12 = streamVolume2 + i11;
                        if (i12 < streamMaxVolume) {
                            streamMaxVolume = i12;
                        }
                    } else {
                        streamMaxVolume = (int) ((((double) streamVolume2) / d) + 0.5d);
                    }
                    if (streamMaxVolume < 1) {
                        streamMaxVolume = 1;
                    }
                    this._audioManager.setStreamVolume(3, streamMaxVolume, 0);
                    Logging.d("[Java AudioDevice] set music vol = " + streamMaxVolume);
                }
            }
            if (mode == 0) {
                this._audioManager.setMode(0);
            } else if (mode == 1) {
                this._audioManager.setMode(1);
            } else if (mode == 2) {
                this._audioManager.setMode(2);
            } else if (mode != 3) {
                this._audioManager.setMode(0);
            } else {
                this._audioManager.setMode(3);
            }
            Logging.d("[Java AudioDevice] set audio mode = " + mode);
            return 0;
        } catch (Exception unused) {
            Logging.e("AudioDevice Java", "set audio mode failed! ");
        }
    }

    private int SetPlayoutSpeaker(boolean loudspeakerOn) {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager == null) {
            Logging.e("AudioDevice Java", "Could not change audio routing - no audio manager");
            return -1;
        }
        audioManager.setSpeakerphoneOn(loudspeakerOn);
        return 0;
    }

    private int SetPlayoutVolume(int level) {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager == null) {
            return -1;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(this._streamType);
        if (level < 255) {
            streamMaxVolume = (level * streamMaxVolume) / 255;
        }
        this._audioManager.setStreamVolume(this._streamType, streamMaxVolume, 0);
        return 0;
    }

    private int StartPlayback() {
        this._firstRenderTS = 0L;
        this._renderStart = false;
        try {
            this.playWriten = 0;
            this._audioTrack.play();
            this.maxDelay = 0;
            this.totalDelay = 0;
            this._isPlaying = true;
            return 0;
        } catch (IllegalStateException e) {
            e.printStackTrace();
            return -1;
        } catch (Exception e2) {
            Logging.e("AudioDevice Java", "startplayback fail", e2);
            return -1;
        }
    }

    private int StartRecording() {
        try {
            AudioRecord audioRecord = this._audioRecord;
            if (audioRecord == null) {
                return -2;
            }
            audioRecord.startRecording();
            Logging.e("AudioDevice Java", "Recording start time " + System.nanoTime());
            this._recStartTS = System.nanoTime();
            this._recStartDelay = 0;
            this._recDelay = 10L;
            this._isRecording = true;
            return 0;
        } catch (IllegalStateException e) {
            Logging.e("AudioDevice Java", "failed to startRecording", e);
            return -1;
        } catch (Exception e2) {
            Logging.e("AudioDevice Java", "failed to startRecording Exception", e2);
            return -2;
        }
    }

    private int StopPlayback() {
        this._firstRenderTS = 0L;
        this._playLock.lock();
        try {
            try {
                this._audioTrack.setVolume(0.0f);
                if (this._audioTrack.getPlayState() == 3) {
                    this._audioTrack.stop();
                    this._audioTrack.flush();
                }
                this._audioTrack.release();
                this._audioTrack = null;
            } catch (IllegalStateException e) {
                Logging.e("AudioDevice Java", "Unable to stop playback: ", e);
                AudioTrack audioTrack = this._audioTrack;
                if (audioTrack != null) {
                    audioTrack.flush();
                    this._audioTrack.release();
                    this._audioTrack = null;
                }
                this._doPlayInit = true;
                this._playLock.unlock();
                return -1;
            } catch (Exception e2) {
                Logging.e("AudioDevice Java", "Stop playback fail", e2);
                AudioTrack audioTrack2 = this._audioTrack;
                if (audioTrack2 != null) {
                    audioTrack2.flush();
                    this._audioTrack.release();
                    this._audioTrack = null;
                }
            }
            this._doPlayInit = true;
            this._playLock.unlock();
            this._isPlaying = false;
            return 0;
        } catch (Throwable th) {
            AudioTrack audioTrack3 = this._audioTrack;
            if (audioTrack3 != null) {
                audioTrack3.flush();
                this._audioTrack.release();
                this._audioTrack = null;
            }
            this._doPlayInit = true;
            this._playLock.unlock();
            throw th;
        }
    }

    private int StopRecording() {
        this._recLock.lock();
        try {
            try {
                if (this._audioRecord.getRecordingState() == 3) {
                    this._audioRecord.stop();
                }
                AcousticEchoCanceler acousticEchoCanceler = this.aec;
                if (acousticEchoCanceler != null) {
                    acousticEchoCanceler.release();
                    this.aec = null;
                }
                this._audioRecord.release();
                this._audioRecord = null;
            } catch (Exception e) {
                Logging.e("AudioDevice Java", "error in StopRecording ", e);
                AudioRecord audioRecord = this._audioRecord;
                if (audioRecord != null) {
                    audioRecord.release();
                    this._audioRecord = null;
                }
            }
            this._doRecInit = true;
            this._recLock.unlock();
            this._isRecording = false;
            return 0;
        } catch (Throwable th) {
            AudioRecord audioRecord2 = this._audioRecord;
            if (audioRecord2 != null) {
                audioRecord2.release();
                this._audioRecord = null;
            }
            this._doRecInit = true;
            this._recLock.unlock();
            throw th;
        }
    }

    private int enableHardwareEarback(boolean enable) {
        Logging.i("AudioDevice Java", "enableHardwareEarback " + enable);
        int iEnableHardwareEarback = HardwareEarbackController.getInstance(this._context).enableHardwareEarback(enable);
        Logging.i("AudioDevice Java", "enableHardwareEarback " + enable + " ret " + iEnableHardwareEarback);
        return iEnableHardwareEarback;
    }

    private boolean isHardwareEarbackSupported() {
        Context context = this._context;
        if (context != null) {
            return HardwareEarbackController.getInstance(context).isHardwareEarbackSupported();
        }
        return false;
    }

    private int setHardwareEarbackVolume(int volume) {
        Context context = this._context;
        if (context != null) {
            return HardwareEarbackController.getInstance(context).setHardwareEarbackVolume(volume);
        }
        return -1;
    }

    AudioDevice() {
        try {
            this._playBuffer = ByteBuffer.allocateDirect(7680);
            this._recBuffer = ByteBuffer.allocateDirect(7680);
        } catch (Exception e) {
            Logging.e("AudioDevice Java", "failed to allocate bytebuffer", e);
        }
        this._tempBufPlay = new byte[7680];
        this._tempBufRec = new byte[7680];
        Context context = this._context;
        if (context != null) {
            HardwareEarbackController.getInstance(context);
        }
    }
}
