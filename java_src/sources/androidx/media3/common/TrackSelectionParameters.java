package androidx.media3.common;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BundleableUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes8.dex */
public class TrackSelectionParameters implements Bundleable {

    @UnstableApi
    @Deprecated
    public static final Bundleable.Creator<TrackSelectionParameters> CREATOR;

    @UnstableApi
    @Deprecated
    public static final TrackSelectionParameters DEFAULT;

    @UnstableApi
    public static final TrackSelectionParameters DEFAULT_WITHOUT_CONTEXT;

    @UnstableApi
    protected static final int FIELD_CUSTOM_ID_BASE = 1000;
    private static final String FIELD_DISABLED_TRACK_TYPE;
    private static final String FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE;
    private static final String FIELD_FORCE_LOWEST_BITRATE;
    private static final String FIELD_IGNORED_TEXT_SELECTION_FLAGS;
    private static final String FIELD_MAX_AUDIO_BITRATE;
    private static final String FIELD_MAX_AUDIO_CHANNEL_COUNT;
    private static final String FIELD_MAX_VIDEO_BITRATE;
    private static final String FIELD_MAX_VIDEO_FRAMERATE;
    private static final String FIELD_MAX_VIDEO_HEIGHT;
    private static final String FIELD_MAX_VIDEO_WIDTH;
    private static final String FIELD_MIN_VIDEO_BITRATE;
    private static final String FIELD_MIN_VIDEO_FRAMERATE;
    private static final String FIELD_MIN_VIDEO_HEIGHT;
    private static final String FIELD_MIN_VIDEO_WIDTH;
    private static final String FIELD_PREFERRED_AUDIO_LANGUAGES;
    private static final String FIELD_PREFERRED_AUDIO_MIME_TYPES;
    private static final String FIELD_PREFERRED_AUDIO_ROLE_FLAGS;
    private static final String FIELD_PREFERRED_TEXT_LANGUAGES;
    private static final String FIELD_PREFERRED_TEXT_ROLE_FLAGS;
    private static final String FIELD_PREFERRED_VIDEO_MIMETYPES;
    private static final String FIELD_PREFERRED_VIDEO_ROLE_FLAGS;
    private static final String FIELD_SELECTION_OVERRIDES;
    private static final String FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE;
    private static final String FIELD_VIEWPORT_HEIGHT;
    private static final String FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE;
    private static final String FIELD_VIEWPORT_WIDTH;
    public final com.google.common.collect.d0<Integer> disabledTrackTypes;
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
    public final com.google.common.collect.b0<TrackGroup, TrackSelectionOverride> overrides;
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

    public static class Builder {
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
        private HashMap<TrackGroup, TrackSelectionOverride> overrides;
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

        @UnstableApi
        @Deprecated
        public Builder() {
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

        public Builder F(boolean z6) {
            this.forceHighestSupportedBitrate = z6;
            return this;
        }

        public Builder G(int i10) {
            this.ignoredTextSelectionFlags = i10;
            return this;
        }

        public Builder L(int i10, int i11, boolean z6) {
            this.viewportWidth = i10;
            this.viewportHeight = i11;
            this.viewportOrientationMayChange = z6;
            return this;
        }

        private void C(TrackSelectionParameters trackSelectionParameters) {
            this.maxVideoWidth = trackSelectionParameters.maxVideoWidth;
            this.maxVideoHeight = trackSelectionParameters.maxVideoHeight;
            this.maxVideoFrameRate = trackSelectionParameters.maxVideoFrameRate;
            this.maxVideoBitrate = trackSelectionParameters.maxVideoBitrate;
            this.minVideoWidth = trackSelectionParameters.minVideoWidth;
            this.minVideoHeight = trackSelectionParameters.minVideoHeight;
            this.minVideoFrameRate = trackSelectionParameters.minVideoFrameRate;
            this.minVideoBitrate = trackSelectionParameters.minVideoBitrate;
            this.viewportWidth = trackSelectionParameters.viewportWidth;
            this.viewportHeight = trackSelectionParameters.viewportHeight;
            this.viewportOrientationMayChange = trackSelectionParameters.viewportOrientationMayChange;
            this.preferredVideoMimeTypes = trackSelectionParameters.preferredVideoMimeTypes;
            this.preferredVideoRoleFlags = trackSelectionParameters.preferredVideoRoleFlags;
            this.preferredAudioLanguages = trackSelectionParameters.preferredAudioLanguages;
            this.preferredAudioRoleFlags = trackSelectionParameters.preferredAudioRoleFlags;
            this.maxAudioChannelCount = trackSelectionParameters.maxAudioChannelCount;
            this.maxAudioBitrate = trackSelectionParameters.maxAudioBitrate;
            this.preferredAudioMimeTypes = trackSelectionParameters.preferredAudioMimeTypes;
            this.preferredTextLanguages = trackSelectionParameters.preferredTextLanguages;
            this.preferredTextRoleFlags = trackSelectionParameters.preferredTextRoleFlags;
            this.ignoredTextSelectionFlags = trackSelectionParameters.ignoredTextSelectionFlags;
            this.selectUndeterminedTextLanguage = trackSelectionParameters.selectUndeterminedTextLanguage;
            this.forceLowestBitrate = trackSelectionParameters.forceLowestBitrate;
            this.forceHighestSupportedBitrate = trackSelectionParameters.forceHighestSupportedBitrate;
            this.disabledTrackTypes = new HashSet<>(trackSelectionParameters.disabledTrackTypes);
            this.overrides = new HashMap<>(trackSelectionParameters.overrides);
        }

        @RequiresApi
        private void J(Context context) {
            CaptioningManager captioningManager;
            if ((Util.SDK_INT >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                this.preferredTextRoleFlags = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.preferredTextLanguages = com.google.common.collect.a0.y(Util.a0(locale));
                }
            }
        }

        public TrackSelectionParameters A() {
            return new TrackSelectionParameters(this);
        }

        public Builder B(int i10) {
            Iterator<TrackSelectionOverride> it = this.overrides.values().iterator();
            while (it.hasNext()) {
                if (it.next().b() == i10) {
                    it.remove();
                }
            }
            return this;
        }

        public Builder I(Context context) {
            if (Util.SDK_INT >= 19) {
                J(context);
            }
            return this;
        }

        public Builder K(int i10, boolean z6) {
            if (z6) {
                this.disabledTrackTypes.add(Integer.valueOf(i10));
            } else {
                this.disabledTrackTypes.remove(Integer.valueOf(i10));
            }
            return this;
        }

        private static com.google.common.collect.a0<String> D(String[] strArr) {
            com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
            for (String str : (String[]) Assertions.e(strArr)) {
                aVarR.d(Util.M0((String) Assertions.e(str)));
            }
            return aVarR.k();
        }

        @UnstableApi
        protected Builder E(TrackSelectionParameters trackSelectionParameters) {
            C(trackSelectionParameters);
            return this;
        }

        public Builder H(TrackSelectionOverride trackSelectionOverride) {
            B(trackSelectionOverride.b());
            this.overrides.put(trackSelectionOverride.mediaTrackGroup, trackSelectionOverride);
            return this;
        }

        public Builder M(Context context, boolean z6) {
            Point pointP = Util.P(context);
            return L(pointP.x, pointP.y, z6);
        }

        public Builder(Context context) {
            this();
            I(context);
            M(context, true);
        }

        @UnstableApi
        protected Builder(TrackSelectionParameters trackSelectionParameters) {
            C(trackSelectionParameters);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @UnstableApi
        protected Builder(Bundle bundle) {
            com.google.common.collect.a0 a0VarD;
            String str = TrackSelectionParameters.FIELD_MAX_VIDEO_WIDTH;
            TrackSelectionParameters trackSelectionParameters = TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT;
            this.maxVideoWidth = bundle.getInt(str, trackSelectionParameters.maxVideoWidth);
            this.maxVideoHeight = bundle.getInt(TrackSelectionParameters.FIELD_MAX_VIDEO_HEIGHT, trackSelectionParameters.maxVideoHeight);
            this.maxVideoFrameRate = bundle.getInt(TrackSelectionParameters.FIELD_MAX_VIDEO_FRAMERATE, trackSelectionParameters.maxVideoFrameRate);
            this.maxVideoBitrate = bundle.getInt(TrackSelectionParameters.FIELD_MAX_VIDEO_BITRATE, trackSelectionParameters.maxVideoBitrate);
            this.minVideoWidth = bundle.getInt(TrackSelectionParameters.FIELD_MIN_VIDEO_WIDTH, trackSelectionParameters.minVideoWidth);
            this.minVideoHeight = bundle.getInt(TrackSelectionParameters.FIELD_MIN_VIDEO_HEIGHT, trackSelectionParameters.minVideoHeight);
            this.minVideoFrameRate = bundle.getInt(TrackSelectionParameters.FIELD_MIN_VIDEO_FRAMERATE, trackSelectionParameters.minVideoFrameRate);
            this.minVideoBitrate = bundle.getInt(TrackSelectionParameters.FIELD_MIN_VIDEO_BITRATE, trackSelectionParameters.minVideoBitrate);
            this.viewportWidth = bundle.getInt(TrackSelectionParameters.FIELD_VIEWPORT_WIDTH, trackSelectionParameters.viewportWidth);
            this.viewportHeight = bundle.getInt(TrackSelectionParameters.FIELD_VIEWPORT_HEIGHT, trackSelectionParameters.viewportHeight);
            this.viewportOrientationMayChange = bundle.getBoolean(TrackSelectionParameters.FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE, trackSelectionParameters.viewportOrientationMayChange);
            this.preferredVideoMimeTypes = com.google.common.collect.a0.u((String[]) com.google.common.base.i.a(bundle.getStringArray(TrackSelectionParameters.FIELD_PREFERRED_VIDEO_MIMETYPES), new String[0]));
            this.preferredVideoRoleFlags = bundle.getInt(TrackSelectionParameters.FIELD_PREFERRED_VIDEO_ROLE_FLAGS, trackSelectionParameters.preferredVideoRoleFlags);
            this.preferredAudioLanguages = D((String[]) com.google.common.base.i.a(bundle.getStringArray(TrackSelectionParameters.FIELD_PREFERRED_AUDIO_LANGUAGES), new String[0]));
            this.preferredAudioRoleFlags = bundle.getInt(TrackSelectionParameters.FIELD_PREFERRED_AUDIO_ROLE_FLAGS, trackSelectionParameters.preferredAudioRoleFlags);
            this.maxAudioChannelCount = bundle.getInt(TrackSelectionParameters.FIELD_MAX_AUDIO_CHANNEL_COUNT, trackSelectionParameters.maxAudioChannelCount);
            this.maxAudioBitrate = bundle.getInt(TrackSelectionParameters.FIELD_MAX_AUDIO_BITRATE, trackSelectionParameters.maxAudioBitrate);
            this.preferredAudioMimeTypes = com.google.common.collect.a0.u((String[]) com.google.common.base.i.a(bundle.getStringArray(TrackSelectionParameters.FIELD_PREFERRED_AUDIO_MIME_TYPES), new String[0]));
            this.preferredTextLanguages = D((String[]) com.google.common.base.i.a(bundle.getStringArray(TrackSelectionParameters.FIELD_PREFERRED_TEXT_LANGUAGES), new String[0]));
            this.preferredTextRoleFlags = bundle.getInt(TrackSelectionParameters.FIELD_PREFERRED_TEXT_ROLE_FLAGS, trackSelectionParameters.preferredTextRoleFlags);
            this.ignoredTextSelectionFlags = bundle.getInt(TrackSelectionParameters.FIELD_IGNORED_TEXT_SELECTION_FLAGS, trackSelectionParameters.ignoredTextSelectionFlags);
            this.selectUndeterminedTextLanguage = bundle.getBoolean(TrackSelectionParameters.FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE, trackSelectionParameters.selectUndeterminedTextLanguage);
            this.forceLowestBitrate = bundle.getBoolean(TrackSelectionParameters.FIELD_FORCE_LOWEST_BITRATE, trackSelectionParameters.forceLowestBitrate);
            this.forceHighestSupportedBitrate = bundle.getBoolean(TrackSelectionParameters.FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE, trackSelectionParameters.forceHighestSupportedBitrate);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(TrackSelectionParameters.FIELD_SELECTION_OVERRIDES);
            if (parcelableArrayList == null) {
                a0VarD = com.google.common.collect.a0.x();
            } else {
                a0VarD = BundleableUtil.d(TrackSelectionOverride.CREATOR, parcelableArrayList);
            }
            this.overrides = new HashMap<>();
            for (int i10 = 0; i10 < a0VarD.size(); i10++) {
                TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) a0VarD.get(i10);
                this.overrides.put(trackSelectionOverride.mediaTrackGroup, trackSelectionOverride);
            }
            int[] iArr = (int[]) com.google.common.base.i.a(bundle.getIntArray(TrackSelectionParameters.FIELD_DISABLED_TRACK_TYPE), new int[0]);
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
        TrackSelectionParameters trackSelectionParameters = (TrackSelectionParameters) obj;
        return this.maxVideoWidth == trackSelectionParameters.maxVideoWidth && this.maxVideoHeight == trackSelectionParameters.maxVideoHeight && this.maxVideoFrameRate == trackSelectionParameters.maxVideoFrameRate && this.maxVideoBitrate == trackSelectionParameters.maxVideoBitrate && this.minVideoWidth == trackSelectionParameters.minVideoWidth && this.minVideoHeight == trackSelectionParameters.minVideoHeight && this.minVideoFrameRate == trackSelectionParameters.minVideoFrameRate && this.minVideoBitrate == trackSelectionParameters.minVideoBitrate && this.viewportOrientationMayChange == trackSelectionParameters.viewportOrientationMayChange && this.viewportWidth == trackSelectionParameters.viewportWidth && this.viewportHeight == trackSelectionParameters.viewportHeight && this.preferredVideoMimeTypes.equals(trackSelectionParameters.preferredVideoMimeTypes) && this.preferredVideoRoleFlags == trackSelectionParameters.preferredVideoRoleFlags && this.preferredAudioLanguages.equals(trackSelectionParameters.preferredAudioLanguages) && this.preferredAudioRoleFlags == trackSelectionParameters.preferredAudioRoleFlags && this.maxAudioChannelCount == trackSelectionParameters.maxAudioChannelCount && this.maxAudioBitrate == trackSelectionParameters.maxAudioBitrate && this.preferredAudioMimeTypes.equals(trackSelectionParameters.preferredAudioMimeTypes) && this.preferredTextLanguages.equals(trackSelectionParameters.preferredTextLanguages) && this.preferredTextRoleFlags == trackSelectionParameters.preferredTextRoleFlags && this.ignoredTextSelectionFlags == trackSelectionParameters.ignoredTextSelectionFlags && this.selectUndeterminedTextLanguage == trackSelectionParameters.selectUndeterminedTextLanguage && this.forceLowestBitrate == trackSelectionParameters.forceLowestBitrate && this.forceHighestSupportedBitrate == trackSelectionParameters.forceHighestSupportedBitrate && this.overrides.equals(trackSelectionParameters.overrides) && this.disabledTrackTypes.equals(trackSelectionParameters.disabledTrackTypes);
    }

    static {
        TrackSelectionParameters trackSelectionParametersA = new Builder().A();
        DEFAULT_WITHOUT_CONTEXT = trackSelectionParametersA;
        DEFAULT = trackSelectionParametersA;
        FIELD_PREFERRED_AUDIO_LANGUAGES = Util.z0(1);
        FIELD_PREFERRED_AUDIO_ROLE_FLAGS = Util.z0(2);
        FIELD_PREFERRED_TEXT_LANGUAGES = Util.z0(3);
        FIELD_PREFERRED_TEXT_ROLE_FLAGS = Util.z0(4);
        FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE = Util.z0(5);
        FIELD_MAX_VIDEO_WIDTH = Util.z0(6);
        FIELD_MAX_VIDEO_HEIGHT = Util.z0(7);
        FIELD_MAX_VIDEO_FRAMERATE = Util.z0(8);
        FIELD_MAX_VIDEO_BITRATE = Util.z0(9);
        FIELD_MIN_VIDEO_WIDTH = Util.z0(10);
        FIELD_MIN_VIDEO_HEIGHT = Util.z0(11);
        FIELD_MIN_VIDEO_FRAMERATE = Util.z0(12);
        FIELD_MIN_VIDEO_BITRATE = Util.z0(13);
        FIELD_VIEWPORT_WIDTH = Util.z0(14);
        FIELD_VIEWPORT_HEIGHT = Util.z0(15);
        FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE = Util.z0(16);
        FIELD_PREFERRED_VIDEO_MIMETYPES = Util.z0(17);
        FIELD_MAX_AUDIO_CHANNEL_COUNT = Util.z0(18);
        FIELD_MAX_AUDIO_BITRATE = Util.z0(19);
        FIELD_PREFERRED_AUDIO_MIME_TYPES = Util.z0(20);
        FIELD_FORCE_LOWEST_BITRATE = Util.z0(21);
        FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE = Util.z0(22);
        FIELD_SELECTION_OVERRIDES = Util.z0(23);
        FIELD_DISABLED_TRACK_TYPE = Util.z0(24);
        FIELD_PREFERRED_VIDEO_ROLE_FLAGS = Util.z0(25);
        FIELD_IGNORED_TEXT_SELECTION_FLAGS = Util.z0(26);
        CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.j2
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return TrackSelectionParameters.B(bundle);
            }
        };
    }

    public static TrackSelectionParameters B(Bundle bundle) {
        return new Builder(bundle).A();
    }

    public Builder A() {
        return new Builder(this);
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((((((((((((((((this.maxVideoWidth + 31) * 31) + this.maxVideoHeight) * 31) + this.maxVideoFrameRate) * 31) + this.maxVideoBitrate) * 31) + this.minVideoWidth) * 31) + this.minVideoHeight) * 31) + this.minVideoFrameRate) * 31) + this.minVideoBitrate) * 31) + (this.viewportOrientationMayChange ? 1 : 0)) * 31) + this.viewportWidth) * 31) + this.viewportHeight) * 31) + this.preferredVideoMimeTypes.hashCode()) * 31) + this.preferredVideoRoleFlags) * 31) + this.preferredAudioLanguages.hashCode()) * 31) + this.preferredAudioRoleFlags) * 31) + this.maxAudioChannelCount) * 31) + this.maxAudioBitrate) * 31) + this.preferredAudioMimeTypes.hashCode()) * 31) + this.preferredTextLanguages.hashCode()) * 31) + this.preferredTextRoleFlags) * 31) + this.ignoredTextSelectionFlags) * 31) + (this.selectUndeterminedTextLanguage ? 1 : 0)) * 31) + (this.forceLowestBitrate ? 1 : 0)) * 31) + (this.forceHighestSupportedBitrate ? 1 : 0)) * 31) + this.overrides.hashCode()) * 31) + this.disabledTrackTypes.hashCode();
    }

    @Override // androidx.media3.common.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_MAX_VIDEO_WIDTH, this.maxVideoWidth);
        bundle.putInt(FIELD_MAX_VIDEO_HEIGHT, this.maxVideoHeight);
        bundle.putInt(FIELD_MAX_VIDEO_FRAMERATE, this.maxVideoFrameRate);
        bundle.putInt(FIELD_MAX_VIDEO_BITRATE, this.maxVideoBitrate);
        bundle.putInt(FIELD_MIN_VIDEO_WIDTH, this.minVideoWidth);
        bundle.putInt(FIELD_MIN_VIDEO_HEIGHT, this.minVideoHeight);
        bundle.putInt(FIELD_MIN_VIDEO_FRAMERATE, this.minVideoFrameRate);
        bundle.putInt(FIELD_MIN_VIDEO_BITRATE, this.minVideoBitrate);
        bundle.putInt(FIELD_VIEWPORT_WIDTH, this.viewportWidth);
        bundle.putInt(FIELD_VIEWPORT_HEIGHT, this.viewportHeight);
        bundle.putBoolean(FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE, this.viewportOrientationMayChange);
        bundle.putStringArray(FIELD_PREFERRED_VIDEO_MIMETYPES, (String[]) this.preferredVideoMimeTypes.toArray(new String[0]));
        bundle.putInt(FIELD_PREFERRED_VIDEO_ROLE_FLAGS, this.preferredVideoRoleFlags);
        bundle.putStringArray(FIELD_PREFERRED_AUDIO_LANGUAGES, (String[]) this.preferredAudioLanguages.toArray(new String[0]));
        bundle.putInt(FIELD_PREFERRED_AUDIO_ROLE_FLAGS, this.preferredAudioRoleFlags);
        bundle.putInt(FIELD_MAX_AUDIO_CHANNEL_COUNT, this.maxAudioChannelCount);
        bundle.putInt(FIELD_MAX_AUDIO_BITRATE, this.maxAudioBitrate);
        bundle.putStringArray(FIELD_PREFERRED_AUDIO_MIME_TYPES, (String[]) this.preferredAudioMimeTypes.toArray(new String[0]));
        bundle.putStringArray(FIELD_PREFERRED_TEXT_LANGUAGES, (String[]) this.preferredTextLanguages.toArray(new String[0]));
        bundle.putInt(FIELD_PREFERRED_TEXT_ROLE_FLAGS, this.preferredTextRoleFlags);
        bundle.putInt(FIELD_IGNORED_TEXT_SELECTION_FLAGS, this.ignoredTextSelectionFlags);
        bundle.putBoolean(FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE, this.selectUndeterminedTextLanguage);
        bundle.putBoolean(FIELD_FORCE_LOWEST_BITRATE, this.forceLowestBitrate);
        bundle.putBoolean(FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE, this.forceHighestSupportedBitrate);
        bundle.putParcelableArrayList(FIELD_SELECTION_OVERRIDES, BundleableUtil.i(this.overrides.values()));
        bundle.putIntArray(FIELD_DISABLED_TRACK_TYPE, com.google.common.primitives.e.l(this.disabledTrackTypes));
        return bundle;
    }

    @UnstableApi
    protected TrackSelectionParameters(Builder builder) {
        this.maxVideoWidth = builder.maxVideoWidth;
        this.maxVideoHeight = builder.maxVideoHeight;
        this.maxVideoFrameRate = builder.maxVideoFrameRate;
        this.maxVideoBitrate = builder.maxVideoBitrate;
        this.minVideoWidth = builder.minVideoWidth;
        this.minVideoHeight = builder.minVideoHeight;
        this.minVideoFrameRate = builder.minVideoFrameRate;
        this.minVideoBitrate = builder.minVideoBitrate;
        this.viewportWidth = builder.viewportWidth;
        this.viewportHeight = builder.viewportHeight;
        this.viewportOrientationMayChange = builder.viewportOrientationMayChange;
        this.preferredVideoMimeTypes = builder.preferredVideoMimeTypes;
        this.preferredVideoRoleFlags = builder.preferredVideoRoleFlags;
        this.preferredAudioLanguages = builder.preferredAudioLanguages;
        this.preferredAudioRoleFlags = builder.preferredAudioRoleFlags;
        this.maxAudioChannelCount = builder.maxAudioChannelCount;
        this.maxAudioBitrate = builder.maxAudioBitrate;
        this.preferredAudioMimeTypes = builder.preferredAudioMimeTypes;
        this.preferredTextLanguages = builder.preferredTextLanguages;
        this.preferredTextRoleFlags = builder.preferredTextRoleFlags;
        this.ignoredTextSelectionFlags = builder.ignoredTextSelectionFlags;
        this.selectUndeterminedTextLanguage = builder.selectUndeterminedTextLanguage;
        this.forceLowestBitrate = builder.forceLowestBitrate;
        this.forceHighestSupportedBitrate = builder.forceHighestSupportedBitrate;
        this.overrides = com.google.common.collect.b0.f(builder.overrides);
        this.disabledTrackTypes = com.google.common.collect.d0.t(builder.disabledTrackTypes);
    }
}
