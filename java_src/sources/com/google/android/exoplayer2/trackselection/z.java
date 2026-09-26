package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.source.f1;
import com.google.android.exoplayer2.util.o0;
import com.google.common.collect.d0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public class z implements com.google.android.exoplayer2.h {

    @Deprecated
    public static final com.google.android.exoplayer2.h.a<z> CREATOR;

    @Deprecated
    public static final z DEFAULT;
    public static final z DEFAULT_WITHOUT_CONTEXT;
    protected static final int FIELD_CUSTOM_ID_BASE = 1000;
    private static final int FIELD_DISABLED_TRACK_TYPE = 24;
    private static final int FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE = 22;
    private static final int FIELD_FORCE_LOWEST_BITRATE = 21;
    private static final int FIELD_IGNORED_TEXT_SELECTION_FLAGS = 26;
    private static final int FIELD_MAX_AUDIO_BITRATE = 19;
    private static final int FIELD_MAX_AUDIO_CHANNEL_COUNT = 18;
    private static final int FIELD_MAX_VIDEO_BITRATE = 9;
    private static final int FIELD_MAX_VIDEO_FRAMERATE = 8;
    private static final int FIELD_MAX_VIDEO_HEIGHT = 7;
    private static final int FIELD_MAX_VIDEO_WIDTH = 6;
    private static final int FIELD_MIN_VIDEO_BITRATE = 13;
    private static final int FIELD_MIN_VIDEO_FRAMERATE = 12;
    private static final int FIELD_MIN_VIDEO_HEIGHT = 11;
    private static final int FIELD_MIN_VIDEO_WIDTH = 10;
    private static final int FIELD_PREFERRED_AUDIO_LANGUAGES = 1;
    private static final int FIELD_PREFERRED_AUDIO_MIME_TYPES = 20;
    private static final int FIELD_PREFERRED_AUDIO_ROLE_FLAGS = 2;
    private static final int FIELD_PREFERRED_TEXT_LANGUAGES = 3;
    private static final int FIELD_PREFERRED_TEXT_ROLE_FLAGS = 4;
    private static final int FIELD_PREFERRED_VIDEO_MIMETYPES = 17;
    private static final int FIELD_PREFERRED_VIDEO_ROLE_FLAGS = 25;
    private static final int FIELD_SELECTION_OVERRIDES = 23;
    private static final int FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE = 5;
    private static final int FIELD_VIEWPORT_HEIGHT = 15;
    private static final int FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE = 16;
    private static final int FIELD_VIEWPORT_WIDTH = 14;
    public final d0<Integer> disabledTrackTypes;
    public final boolean forceHighestSupportedBitrate;
    public final boolean forceLowestBitrate;
    public final int ignoredTextSelectionFlags;
    public final int maxAudioBitrate;
    public final int maxAudioChannelCount;
    public final int maxVideoBitrate;
    public final int maxVideoFrameRate;
    public final int maxVideoHeight;
    public final int maxVideoWidth;
    public final int minVideoBitrate;
    public final int minVideoFrameRate;
    public final int minVideoHeight;
    public final int minVideoWidth;
    public final com.google.common.collect.b0<f1, x> overrides;
    public final com.google.common.collect.a0<String> preferredAudioLanguages;
    public final com.google.common.collect.a0<String> preferredAudioMimeTypes;
    public final int preferredAudioRoleFlags;
    public final com.google.common.collect.a0<String> preferredTextLanguages;
    public final int preferredTextRoleFlags;
    public final com.google.common.collect.a0<String> preferredVideoMimeTypes;
    public final int preferredVideoRoleFlags;
    public final boolean selectUndeterminedTextLanguage;
    public final int viewportHeight;
    public final boolean viewportOrientationMayChange;
    public final int viewportWidth;

    public static class a {
        private HashSet<Integer> disabledTrackTypes;
        private boolean forceHighestSupportedBitrate;
        private boolean forceLowestBitrate;
        private int ignoredTextSelectionFlags;
        private int maxAudioBitrate;
        private int maxAudioChannelCount;
        private int maxVideoBitrate;
        private int maxVideoFrameRate;
        private int maxVideoHeight;
        private int maxVideoWidth;
        private int minVideoBitrate;
        private int minVideoFrameRate;
        private int minVideoHeight;
        private int minVideoWidth;
        private HashMap<f1, x> overrides;
        private com.google.common.collect.a0<String> preferredAudioLanguages;
        private com.google.common.collect.a0<String> preferredAudioMimeTypes;
        private int preferredAudioRoleFlags;
        private com.google.common.collect.a0<String> preferredTextLanguages;
        private int preferredTextRoleFlags;
        private com.google.common.collect.a0<String> preferredVideoMimeTypes;
        private int preferredVideoRoleFlags;
        private boolean selectUndeterminedTextLanguage;
        private int viewportHeight;
        private boolean viewportOrientationMayChange;
        private int viewportWidth;

        @Deprecated
        public a() {
            this.maxVideoWidth = Integer.MAX_VALUE;
            this.maxVideoHeight = Integer.MAX_VALUE;
            this.maxVideoFrameRate = Integer.MAX_VALUE;
            this.maxVideoBitrate = Integer.MAX_VALUE;
            this.viewportWidth = Integer.MAX_VALUE;
            this.viewportHeight = Integer.MAX_VALUE;
            this.viewportOrientationMayChange = true;
            this.preferredVideoMimeTypes = com.google.common.collect.a0.x();
            this.preferredVideoRoleFlags = 0;
            this.preferredAudioLanguages = com.google.common.collect.a0.x();
            this.preferredAudioRoleFlags = 0;
            this.maxAudioChannelCount = Integer.MAX_VALUE;
            this.maxAudioBitrate = Integer.MAX_VALUE;
            this.preferredAudioMimeTypes = com.google.common.collect.a0.x();
            this.preferredTextLanguages = com.google.common.collect.a0.x();
            this.preferredTextRoleFlags = 0;
            this.ignoredTextSelectionFlags = 0;
            this.selectUndeterminedTextLanguage = false;
            this.forceLowestBitrate = false;
            this.forceHighestSupportedBitrate = false;
            this.overrides = new HashMap<>();
            this.disabledTrackTypes = new HashSet<>();
        }

        public a F(int i10) {
            this.ignoredTextSelectionFlags = i10;
            return this;
        }

        public a K(int i10, int i11, boolean z6) {
            this.viewportWidth = i10;
            this.viewportHeight = i11;
            this.viewportOrientationMayChange = z6;
            return this;
        }

        private void C(z zVar) {
            this.maxVideoWidth = zVar.maxVideoWidth;
            this.maxVideoHeight = zVar.maxVideoHeight;
            this.maxVideoFrameRate = zVar.maxVideoFrameRate;
            this.maxVideoBitrate = zVar.maxVideoBitrate;
            this.minVideoWidth = zVar.minVideoWidth;
            this.minVideoHeight = zVar.minVideoHeight;
            this.minVideoFrameRate = zVar.minVideoFrameRate;
            this.minVideoBitrate = zVar.minVideoBitrate;
            this.viewportWidth = zVar.viewportWidth;
            this.viewportHeight = zVar.viewportHeight;
            this.viewportOrientationMayChange = zVar.viewportOrientationMayChange;
            this.preferredVideoMimeTypes = zVar.preferredVideoMimeTypes;
            this.preferredVideoRoleFlags = zVar.preferredVideoRoleFlags;
            this.preferredAudioLanguages = zVar.preferredAudioLanguages;
            this.preferredAudioRoleFlags = zVar.preferredAudioRoleFlags;
            this.maxAudioChannelCount = zVar.maxAudioChannelCount;
            this.maxAudioBitrate = zVar.maxAudioBitrate;
            this.preferredAudioMimeTypes = zVar.preferredAudioMimeTypes;
            this.preferredTextLanguages = zVar.preferredTextLanguages;
            this.preferredTextRoleFlags = zVar.preferredTextRoleFlags;
            this.ignoredTextSelectionFlags = zVar.ignoredTextSelectionFlags;
            this.selectUndeterminedTextLanguage = zVar.selectUndeterminedTextLanguage;
            this.forceLowestBitrate = zVar.forceLowestBitrate;
            this.forceHighestSupportedBitrate = zVar.forceHighestSupportedBitrate;
            this.disabledTrackTypes = new HashSet<>(zVar.disabledTrackTypes);
            this.overrides = new HashMap<>(zVar.overrides);
        }

        @RequiresApi
        private void I(Context context) {
            CaptioningManager captioningManager;
            if ((o0.SDK_INT >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                this.preferredTextRoleFlags = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.preferredTextLanguages = com.google.common.collect.a0.y(o0.S(locale));
                }
            }
        }

        public z A() {
            return new z(this);
        }

        public a B(int i10) {
            Iterator<x> it = this.overrides.values().iterator();
            while (it.hasNext()) {
                if (it.next().b() == i10) {
                    it.remove();
                }
            }
            return this;
        }

        public a H(Context context) {
            if (o0.SDK_INT >= 19) {
                I(context);
            }
            return this;
        }

        public a J(int i10, boolean z6) {
            if (z6) {
                this.disabledTrackTypes.add(Integer.valueOf(i10));
            } else {
                this.disabledTrackTypes.remove(Integer.valueOf(i10));
            }
            return this;
        }

        private static com.google.common.collect.a0<String> D(String[] strArr) {
            com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
            for (String str : (String[]) com.google.android.exoplayer2.util.a.e(strArr)) {
                aVarR.d(o0.y0((String) com.google.android.exoplayer2.util.a.e(str)));
            }
            return aVarR.k();
        }

        protected a E(z zVar) {
            C(zVar);
            return this;
        }

        public a G(x xVar) {
            B(xVar.b());
            this.overrides.put(xVar.mediaTrackGroup, xVar);
            return this;
        }

        public a L(Context context, boolean z6) {
            Point pointI = o0.I(context);
            return K(pointI.x, pointI.y, z6);
        }

        public a(Context context) {
            this();
            H(context);
            L(context, true);
        }

        protected a(z zVar) {
            C(zVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected a(Bundle bundle) {
            com.google.common.collect.a0 a0VarB;
            String strC = z.c(6);
            z zVar = z.DEFAULT_WITHOUT_CONTEXT;
            this.maxVideoWidth = bundle.getInt(strC, zVar.maxVideoWidth);
            this.maxVideoHeight = bundle.getInt(z.c(7), zVar.maxVideoHeight);
            this.maxVideoFrameRate = bundle.getInt(z.c(8), zVar.maxVideoFrameRate);
            this.maxVideoBitrate = bundle.getInt(z.c(9), zVar.maxVideoBitrate);
            this.minVideoWidth = bundle.getInt(z.c(10), zVar.minVideoWidth);
            this.minVideoHeight = bundle.getInt(z.c(11), zVar.minVideoHeight);
            this.minVideoFrameRate = bundle.getInt(z.c(12), zVar.minVideoFrameRate);
            this.minVideoBitrate = bundle.getInt(z.c(13), zVar.minVideoBitrate);
            this.viewportWidth = bundle.getInt(z.c(14), zVar.viewportWidth);
            this.viewportHeight = bundle.getInt(z.c(15), zVar.viewportHeight);
            this.viewportOrientationMayChange = bundle.getBoolean(z.c(16), zVar.viewportOrientationMayChange);
            this.preferredVideoMimeTypes = com.google.common.collect.a0.u((String[]) com.google.common.base.i.a(bundle.getStringArray(z.c(17)), new String[0]));
            this.preferredVideoRoleFlags = bundle.getInt(z.c(25), zVar.preferredVideoRoleFlags);
            this.preferredAudioLanguages = D((String[]) com.google.common.base.i.a(bundle.getStringArray(z.c(1)), new String[0]));
            this.preferredAudioRoleFlags = bundle.getInt(z.c(2), zVar.preferredAudioRoleFlags);
            this.maxAudioChannelCount = bundle.getInt(z.c(18), zVar.maxAudioChannelCount);
            this.maxAudioBitrate = bundle.getInt(z.c(19), zVar.maxAudioBitrate);
            this.preferredAudioMimeTypes = com.google.common.collect.a0.u((String[]) com.google.common.base.i.a(bundle.getStringArray(z.c(20)), new String[0]));
            this.preferredTextLanguages = D((String[]) com.google.common.base.i.a(bundle.getStringArray(z.c(3)), new String[0]));
            this.preferredTextRoleFlags = bundle.getInt(z.c(4), zVar.preferredTextRoleFlags);
            this.ignoredTextSelectionFlags = bundle.getInt(z.c(26), zVar.ignoredTextSelectionFlags);
            this.selectUndeterminedTextLanguage = bundle.getBoolean(z.c(5), zVar.selectUndeterminedTextLanguage);
            this.forceLowestBitrate = bundle.getBoolean(z.c(21), zVar.forceLowestBitrate);
            this.forceHighestSupportedBitrate = bundle.getBoolean(z.c(22), zVar.forceHighestSupportedBitrate);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(z.c(23));
            if (parcelableArrayList == null) {
                a0VarB = com.google.common.collect.a0.x();
            } else {
                a0VarB = com.google.android.exoplayer2.util.c.b(x.CREATOR, parcelableArrayList);
            }
            this.overrides = new HashMap<>();
            for (int i10 = 0; i10 < a0VarB.size(); i10++) {
                x xVar = (x) a0VarB.get(i10);
                this.overrides.put(xVar.mediaTrackGroup, xVar);
            }
            int[] iArr = (int[]) com.google.common.base.i.a(bundle.getIntArray(z.c(24)), new int[0]);
            this.disabledTrackTypes = new HashSet<>();
            for (int i11 : iArr) {
                this.disabledTrackTypes.add(Integer.valueOf(i11));
            }
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        z zVar = (z) obj;
        return this.maxVideoWidth == zVar.maxVideoWidth && this.maxVideoHeight == zVar.maxVideoHeight && this.maxVideoFrameRate == zVar.maxVideoFrameRate && this.maxVideoBitrate == zVar.maxVideoBitrate && this.minVideoWidth == zVar.minVideoWidth && this.minVideoHeight == zVar.minVideoHeight && this.minVideoFrameRate == zVar.minVideoFrameRate && this.minVideoBitrate == zVar.minVideoBitrate && this.viewportOrientationMayChange == zVar.viewportOrientationMayChange && this.viewportWidth == zVar.viewportWidth && this.viewportHeight == zVar.viewportHeight && this.preferredVideoMimeTypes.equals(zVar.preferredVideoMimeTypes) && this.preferredVideoRoleFlags == zVar.preferredVideoRoleFlags && this.preferredAudioLanguages.equals(zVar.preferredAudioLanguages) && this.preferredAudioRoleFlags == zVar.preferredAudioRoleFlags && this.maxAudioChannelCount == zVar.maxAudioChannelCount && this.maxAudioBitrate == zVar.maxAudioBitrate && this.preferredAudioMimeTypes.equals(zVar.preferredAudioMimeTypes) && this.preferredTextLanguages.equals(zVar.preferredTextLanguages) && this.preferredTextRoleFlags == zVar.preferredTextRoleFlags && this.ignoredTextSelectionFlags == zVar.ignoredTextSelectionFlags && this.selectUndeterminedTextLanguage == zVar.selectUndeterminedTextLanguage && this.forceLowestBitrate == zVar.forceLowestBitrate && this.forceHighestSupportedBitrate == zVar.forceHighestSupportedBitrate && this.overrides.equals(zVar.overrides) && this.disabledTrackTypes.equals(zVar.disabledTrackTypes);
    }

    static {
        z zVarA = new a().A();
        DEFAULT_WITHOUT_CONTEXT = zVarA;
        DEFAULT = zVarA;
        CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.trackselection.y
            @Override // com.google.android.exoplayer2.h.a
            public final com.google.android.exoplayer2.h a(Bundle bundle) {
                return z.b(bundle);
            }
        };
    }

    public static z b(Bundle bundle) {
        return new a(bundle).A();
    }

    protected static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public a a() {
        return new a(this);
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((((((((((((((((this.maxVideoWidth + 31) * 31) + this.maxVideoHeight) * 31) + this.maxVideoFrameRate) * 31) + this.maxVideoBitrate) * 31) + this.minVideoWidth) * 31) + this.minVideoHeight) * 31) + this.minVideoFrameRate) * 31) + this.minVideoBitrate) * 31) + (this.viewportOrientationMayChange ? 1 : 0)) * 31) + this.viewportWidth) * 31) + this.viewportHeight) * 31) + this.preferredVideoMimeTypes.hashCode()) * 31) + this.preferredVideoRoleFlags) * 31) + this.preferredAudioLanguages.hashCode()) * 31) + this.preferredAudioRoleFlags) * 31) + this.maxAudioChannelCount) * 31) + this.maxAudioBitrate) * 31) + this.preferredAudioMimeTypes.hashCode()) * 31) + this.preferredTextLanguages.hashCode()) * 31) + this.preferredTextRoleFlags) * 31) + this.ignoredTextSelectionFlags) * 31) + (this.selectUndeterminedTextLanguage ? 1 : 0)) * 31) + (this.forceLowestBitrate ? 1 : 0)) * 31) + (this.forceHighestSupportedBitrate ? 1 : 0)) * 31) + this.overrides.hashCode()) * 31) + this.disabledTrackTypes.hashCode();
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(6), this.maxVideoWidth);
        bundle.putInt(c(7), this.maxVideoHeight);
        bundle.putInt(c(8), this.maxVideoFrameRate);
        bundle.putInt(c(9), this.maxVideoBitrate);
        bundle.putInt(c(10), this.minVideoWidth);
        bundle.putInt(c(11), this.minVideoHeight);
        bundle.putInt(c(12), this.minVideoFrameRate);
        bundle.putInt(c(13), this.minVideoBitrate);
        bundle.putInt(c(14), this.viewportWidth);
        bundle.putInt(c(15), this.viewportHeight);
        bundle.putBoolean(c(16), this.viewportOrientationMayChange);
        bundle.putStringArray(c(17), (String[]) this.preferredVideoMimeTypes.toArray(new String[0]));
        bundle.putInt(c(25), this.preferredVideoRoleFlags);
        bundle.putStringArray(c(1), (String[]) this.preferredAudioLanguages.toArray(new String[0]));
        bundle.putInt(c(2), this.preferredAudioRoleFlags);
        bundle.putInt(c(18), this.maxAudioChannelCount);
        bundle.putInt(c(19), this.maxAudioBitrate);
        bundle.putStringArray(c(20), (String[]) this.preferredAudioMimeTypes.toArray(new String[0]));
        bundle.putStringArray(c(3), (String[]) this.preferredTextLanguages.toArray(new String[0]));
        bundle.putInt(c(4), this.preferredTextRoleFlags);
        bundle.putInt(c(26), this.ignoredTextSelectionFlags);
        bundle.putBoolean(c(5), this.selectUndeterminedTextLanguage);
        bundle.putBoolean(c(21), this.forceLowestBitrate);
        bundle.putBoolean(c(22), this.forceHighestSupportedBitrate);
        bundle.putParcelableArrayList(c(23), com.google.android.exoplayer2.util.c.d(this.overrides.values()));
        bundle.putIntArray(c(24), com.google.common.primitives.e.l(this.disabledTrackTypes));
        return bundle;
    }

    protected z(a aVar) {
        this.maxVideoWidth = aVar.maxVideoWidth;
        this.maxVideoHeight = aVar.maxVideoHeight;
        this.maxVideoFrameRate = aVar.maxVideoFrameRate;
        this.maxVideoBitrate = aVar.maxVideoBitrate;
        this.minVideoWidth = aVar.minVideoWidth;
        this.minVideoHeight = aVar.minVideoHeight;
        this.minVideoFrameRate = aVar.minVideoFrameRate;
        this.minVideoBitrate = aVar.minVideoBitrate;
        this.viewportWidth = aVar.viewportWidth;
        this.viewportHeight = aVar.viewportHeight;
        this.viewportOrientationMayChange = aVar.viewportOrientationMayChange;
        this.preferredVideoMimeTypes = aVar.preferredVideoMimeTypes;
        this.preferredVideoRoleFlags = aVar.preferredVideoRoleFlags;
        this.preferredAudioLanguages = aVar.preferredAudioLanguages;
        this.preferredAudioRoleFlags = aVar.preferredAudioRoleFlags;
        this.maxAudioChannelCount = aVar.maxAudioChannelCount;
        this.maxAudioBitrate = aVar.maxAudioBitrate;
        this.preferredAudioMimeTypes = aVar.preferredAudioMimeTypes;
        this.preferredTextLanguages = aVar.preferredTextLanguages;
        this.preferredTextRoleFlags = aVar.preferredTextRoleFlags;
        this.ignoredTextSelectionFlags = aVar.ignoredTextSelectionFlags;
        this.selectUndeterminedTextLanguage = aVar.selectUndeterminedTextLanguage;
        this.forceLowestBitrate = aVar.forceLowestBitrate;
        this.forceHighestSupportedBitrate = aVar.forceHighestSupportedBitrate;
        this.overrides = com.google.common.collect.b0.f(aVar.overrides);
        this.disabledTrackTypes = d0.t(aVar.disabledTrackTypes);
    }
}
