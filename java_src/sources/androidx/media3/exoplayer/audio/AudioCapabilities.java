package androidx.media3.exoplayer.audio;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.net.Uri;
import android.provider.Settings;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.collect.b0;
import com.google.common.collect.d0;
import com.google.common.collect.l1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class AudioCapabilities {
    private static final int DEFAULT_MAX_CHANNEL_COUNT = 10;

    @VisibleForTesting
    static final int DEFAULT_SAMPLE_RATE_HZ = 48000;
    private static final String EXTERNAL_SURROUND_SOUND_KEY = "external_surround_sound_enabled";
    private final int maxChannelCount;
    private final int[] supportedEncodings;
    public static final AudioCapabilities DEFAULT_AUDIO_CAPABILITIES = new AudioCapabilities(new int[]{2}, 10);
    private static final com.google.common.collect.a0<Integer> EXTERNAL_SURROUND_SOUND_ENCODINGS = com.google.common.collect.a0.A(2, 5, 6);
    private static final b0<Integer, Integer> ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS = new b0.a().f(5, 6).f(17, 6).f(7, 6).f(30, 10).f(18, 6).f(6, 8).f(8, 8).f(14, 8).c();

    @RequiresApi
    private static final class Api23 {
        @DoNotInline
        private static final d0<Integer> a() {
            d0.a aVarI = new d0.a().i(8, 7);
            int i10 = Util.SDK_INT;
            if (i10 >= 31) {
                aVarI.i(26, 27);
            }
            if (i10 >= 33) {
                aVarI.a(30);
            }
            return aVarI.l();
        }

        @DoNotInline
        public static final boolean b(Context context) {
            AudioDeviceInfo[] devices = ((AudioManager) Assertions.e((AudioManager) context.getSystemService("audio"))).getDevices(2);
            d0<Integer> d0VarA = a();
            for (AudioDeviceInfo audioDeviceInfo : devices) {
                if (d0VarA.contains(Integer.valueOf(audioDeviceInfo.getType()))) {
                    return true;
                }
            }
            return false;
        }

        private Api23() {
        }
    }

    @RequiresApi
    private static final class Api29 {
        private static final AudioAttributes DEFAULT_AUDIO_ATTRIBUTES = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

        @DoNotInline
        public static int b(int i10, int i11) {
            for (int i12 = 10; i12 > 0; i12--) {
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i10).setSampleRate(i11).setChannelMask(Util.H(i12)).build(), DEFAULT_AUDIO_ATTRIBUTES)) {
                    return i12;
                }
            }
            return 0;
        }

        private Api29() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @DoNotInline
        public static com.google.common.collect.a0<Integer> a() {
            com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
            l1 it = AudioCapabilities.ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.keySet().iterator();
            while (it.hasNext()) {
                int iIntValue = ((Integer) it.next()).intValue();
                if (Util.SDK_INT >= 34 || iIntValue != 30) {
                    if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(iIntValue).setSampleRate(48000).build(), DEFAULT_AUDIO_ATTRIBUTES)) {
                        aVarR.d(Integer.valueOf(iIntValue));
                    }
                }
            }
            aVarR.d(2);
            return aVarR.k();
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioCapabilities)) {
            return false;
        }
        AudioCapabilities audioCapabilities = (AudioCapabilities) obj;
        return Arrays.equals(this.supportedEncodings, audioCapabilities.supportedEncodings) && this.maxChannelCount == audioCapabilities.maxChannelCount;
    }

    private static boolean b() {
        if (Util.SDK_INT >= 17) {
            String str = Util.MANUFACTURER;
            if ("Amazon".equals(str) || "Xiaomi".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static AudioCapabilities c(Context context) {
        return d(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    @SuppressLint({"InlinedApi"})
    static AudioCapabilities d(Context context, @Nullable Intent intent) {
        int i10 = Util.SDK_INT;
        if (i10 >= 23 && Api23.b(context)) {
            return DEFAULT_AUDIO_CAPABILITIES;
        }
        d0.a aVar = new d0.a();
        if (b() && Settings.Global.getInt(context.getContentResolver(), EXTERNAL_SURROUND_SOUND_KEY, 0) == 1) {
            aVar.j(EXTERNAL_SURROUND_SOUND_ENCODINGS);
        }
        if (i10 >= 29 && (Util.F0(context) || Util.A0(context))) {
            aVar.j(Api29.a());
            return new AudioCapabilities(com.google.common.primitives.e.l(aVar.l()), 10);
        }
        if (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 1) {
            d0 d0VarL = aVar.l();
            return !d0VarL.isEmpty() ? new AudioCapabilities(com.google.common.primitives.e.l(d0VarL), 10) : DEFAULT_AUDIO_CAPABILITIES;
        }
        int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
        if (intArrayExtra != null) {
            aVar.j(com.google.common.primitives.e.c(intArrayExtra));
        }
        return new AudioCapabilities(com.google.common.primitives.e.l(aVar.l()), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10));
    }

    private static int e(int i10) {
        int i11 = Util.SDK_INT;
        if (i11 <= 28) {
            if (i10 == 7) {
                i10 = 8;
            } else if (i10 == 3 || i10 == 4 || i10 == 5) {
                i10 = 6;
            }
        }
        if (i11 <= 26 && "fugu".equals(Util.DEVICE) && i10 == 1) {
            i10 = 2;
        }
        return Util.H(i10);
    }

    private static int h(int i10, int i11) {
        return Util.SDK_INT >= 29 ? Api29.b(i10, i11) : ((Integer) Assertions.e(ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.getOrDefault(Integer.valueOf(i10), 0))).intValue();
    }

    @Nullable
    public Pair<Integer, Integer> f(Format format) {
        int iF = MimeTypes.f((String) Assertions.e(format.sampleMimeType), format.codecs);
        if (!ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.containsKey(Integer.valueOf(iF))) {
            return null;
        }
        if (iF == 18 && !j(18)) {
            iF = 6;
        } else if ((iF == 8 && !j(8)) || (iF == 30 && !j(30))) {
            iF = 7;
        }
        if (!j(iF)) {
            return null;
        }
        int iH = format.channelCount;
        if (iH == -1 || iF == 18) {
            int i10 = format.sampleRate;
            if (i10 == -1) {
                i10 = 48000;
            }
            iH = h(iF, i10);
        } else if (format.sampleMimeType.equals("audio/vnd.dts.uhd;profile=p2")) {
            if (iH > 10) {
                return null;
            }
        } else if (iH > this.maxChannelCount) {
            return null;
        }
        int iE = e(iH);
        if (iE == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iF), Integer.valueOf(iE));
    }

    public int hashCode() {
        return this.maxChannelCount + (Arrays.hashCode(this.supportedEncodings) * 31);
    }

    public boolean j(int i10) {
        return Arrays.binarySearch(this.supportedEncodings, i10) >= 0;
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.maxChannelCount + ", supportedEncodings=" + Arrays.toString(this.supportedEncodings) + "]";
    }

    public AudioCapabilities(@Nullable int[] iArr, int i10) {
        if (iArr != null) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.supportedEncodings = iArrCopyOf;
            Arrays.sort(iArrCopyOf);
        } else {
            this.supportedEncodings = new int[0];
        }
        this.maxChannelCount = i10;
    }

    @Nullable
    static Uri g() {
        if (b()) {
            return Settings.Global.getUriFor(EXTERNAL_SURROUND_SOUND_KEY);
        }
        return null;
    }

    public boolean i(Format format) {
        if (f(format) != null) {
            return true;
        }
        return false;
    }
}
