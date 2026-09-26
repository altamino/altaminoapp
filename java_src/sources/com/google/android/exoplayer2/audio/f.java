package com.google.android.exoplayer2.audio;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.provider.Settings;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.a2;
import com.google.common.collect.l1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class f {
    private static final int DEFAULT_MAX_CHANNEL_COUNT = 8;
    private static final int DEFAULT_SAMPLE_RATE_HZ = 48000;
    private static final String EXTERNAL_SURROUND_SOUND_KEY = "external_surround_sound_enabled";
    private final int maxChannelCount;
    private final int[] supportedEncodings;
    public static final f DEFAULT_AUDIO_CAPABILITIES = new f(new int[]{2}, 8);
    private static final f EXTERNAL_SURROUND_SOUND_CAPABILITIES = new f(new int[]{2, 5, 6}, 8);
    private static final com.google.common.collect.b0<Integer, Integer> ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS = new com.google.common.collect.b0.a().f(5, 6).f(17, 6).f(7, 6).f(18, 6).f(6, 8).f(8, 8).f(14, 8).c();

    @RequiresApi
    private static final class a {
        private static final AudioAttributes DEFAULT_AUDIO_ATTRIBUTES = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

        @DoNotInline
        public static int b(int i10, int i11) {
            for (int i12 = 8; i12 > 0; i12--) {
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i10).setSampleRate(i11).setChannelMask(com.google.android.exoplayer2.util.o0.D(i12)).build(), DEFAULT_AUDIO_ATTRIBUTES)) {
                    return i12;
                }
            }
            return 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @DoNotInline
        public static int[] a() {
            com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
            l1 it = f.ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.keySet().iterator();
            while (it.hasNext()) {
                int iIntValue = ((Integer) it.next()).intValue();
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(iIntValue).setSampleRate(48000).build(), DEFAULT_AUDIO_ATTRIBUTES)) {
                    aVarR.d(Integer.valueOf(iIntValue));
                }
            }
            aVarR.d(2);
            return com.google.common.primitives.e.l(aVarR.k());
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Arrays.equals(this.supportedEncodings, fVar.supportedEncodings) && this.maxChannelCount == fVar.maxChannelCount;
    }

    private static boolean b() {
        if (com.google.android.exoplayer2.util.o0.SDK_INT >= 17) {
            String str = com.google.android.exoplayer2.util.o0.MANUFACTURER;
            if ("Amazon".equals(str) || "Xiaomi".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static f c(Context context) {
        return d(context, com.google.android.exoplayer2.util.o0.E0(context, null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    private static int e(int i10) {
        int i11 = com.google.android.exoplayer2.util.o0.SDK_INT;
        if (i11 <= 28) {
            if (i10 == 7) {
                i10 = 8;
            } else if (i10 == 3 || i10 == 4 || i10 == 5) {
                i10 = 6;
            }
        }
        if (i11 <= 26 && "fugu".equals(com.google.android.exoplayer2.util.o0.DEVICE) && i10 == 1) {
            i10 = 2;
        }
        return com.google.android.exoplayer2.util.o0.D(i10);
    }

    private static int g(int i10, int i11) {
        return com.google.android.exoplayer2.util.o0.SDK_INT >= 29 ? a.b(i10, i11) : ((Integer) com.google.android.exoplayer2.util.a.e(ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.getOrDefault(Integer.valueOf(i10), 0))).intValue();
    }

    @Nullable
    public Pair<Integer, Integer> f(a2 a2Var) {
        int iD = com.google.android.exoplayer2.util.x.d((String) com.google.android.exoplayer2.util.a.e(a2Var.sampleMimeType), a2Var.codecs);
        if (!ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.containsKey(Integer.valueOf(iD))) {
            return null;
        }
        if (iD == 18 && !i(18)) {
            iD = 6;
        } else if (iD == 8 && !i(8)) {
            iD = 7;
        }
        if (!i(iD)) {
            return null;
        }
        int iG = a2Var.channelCount;
        if (iG == -1 || iD == 18) {
            int i10 = a2Var.sampleRate;
            if (i10 == -1) {
                i10 = 48000;
            }
            iG = g(iD, i10);
        } else if (iG > this.maxChannelCount) {
            return null;
        }
        int iE = e(iG);
        if (iE == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iD), Integer.valueOf(iE));
    }

    public int hashCode() {
        return this.maxChannelCount + (Arrays.hashCode(this.supportedEncodings) * 31);
    }

    public boolean i(int i10) {
        return Arrays.binarySearch(this.supportedEncodings, i10) >= 0;
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.maxChannelCount + ", supportedEncodings=" + Arrays.toString(this.supportedEncodings) + "]";
    }

    public f(@Nullable int[] iArr, int i10) {
        if (iArr != null) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.supportedEncodings = iArrCopyOf;
            Arrays.sort(iArrCopyOf);
        } else {
            this.supportedEncodings = new int[0];
        }
        this.maxChannelCount = i10;
    }

    @SuppressLint({"InlinedApi"})
    static f d(Context context, @Nullable Intent intent) {
        if (b() && Settings.Global.getInt(context.getContentResolver(), EXTERNAL_SURROUND_SOUND_KEY, 0) == 1) {
            return EXTERNAL_SURROUND_SOUND_CAPABILITIES;
        }
        if (com.google.android.exoplayer2.util.o0.SDK_INT >= 29 && (com.google.android.exoplayer2.util.o0.r0(context) || com.google.android.exoplayer2.util.o0.m0(context))) {
            return new f(a.a(), 8);
        }
        if (intent != null && intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 0) {
            return new f(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
        }
        return DEFAULT_AUDIO_CAPABILITIES;
    }

    public boolean h(a2 a2Var) {
        if (f(a2Var) != null) {
            return true;
        }
        return false;
    }
}
