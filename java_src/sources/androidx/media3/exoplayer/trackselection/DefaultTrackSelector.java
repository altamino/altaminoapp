package androidx.media3.exoplayer.trackselection;

import android.content.Context;
import android.graphics.Point;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Bundleable;
import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BundleableUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.RendererConfiguration;
import androidx.media3.exoplayer.h2;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import com.google.common.collect.a0;
import com.google.common.collect.t0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public class DefaultTrackSelector extends MappingTrackSelector implements RendererCapabilities.Listener {
    private static final String AUDIO_CHANNEL_COUNT_CONSTRAINTS_WARN_MESSAGE = "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.";
    private static final float FRACTION_TO_CONSIDER_FULLSCREEN = 0.98f;
    protected static final int SELECTION_ELIGIBILITY_ADAPTIVE = 2;
    protected static final int SELECTION_ELIGIBILITY_FIXED = 1;
    protected static final int SELECTION_ELIGIBILITY_NO = 0;
    private static final String TAG = "DefaultTrackSelector";

    @GuardedBy
    private AudioAttributes audioAttributes;

    @Nullable
    public final Context context;
    private final boolean deviceIsTV;
    private final Object lock;

    @GuardedBy
    private Parameters parameters;

    @Nullable
    @GuardedBy
    private SpatializerWrapperV32 spatializer;
    private final ExoTrackSelection.Factory trackSelectionFactory;
    private static final t0<Integer> FORMAT_VALUE_ORDERING = t0.a(new Comparator() { // from class: androidx.media3.exoplayer.trackselection.h
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return DefaultTrackSelector.T((Integer) obj, (Integer) obj2);
        }
    });
    private static final t0<Integer> NO_ORDER = t0.a(new Comparator() { // from class: androidx.media3.exoplayer.trackselection.i
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return DefaultTrackSelector.U((Integer) obj, (Integer) obj2);
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    static final class AudioTrackInfo extends TrackInfo<AudioTrackInfo> implements Comparable<AudioTrackInfo> {
        private final int bitrate;
        private final int channelCount;
        private final boolean hasMainOrNoRoleFlag;
        private final boolean isDefaultSelectionFlag;
        private final boolean isWithinConstraints;
        private final boolean isWithinRendererCapabilities;

        @Nullable
        private final String language;
        private final int localeLanguageMatchIndex;
        private final int localeLanguageScore;
        private final Parameters parameters;
        private final int preferredLanguageIndex;
        private final int preferredLanguageScore;
        private final int preferredMimeTypeMatchIndex;
        private final int preferredRoleFlagsScore;
        private final int sampleRate;
        private final int selectionEligibility;
        private final boolean usesHardwareAcceleration;
        private final boolean usesPrimaryDecoder;

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public int a() {
            return this.selectionEligibility;
        }

        private int f(int i10, boolean z6) {
            if (!DefaultTrackSelector.P(i10, this.parameters.exceedRendererCapabilitiesIfNecessary)) {
                return 0;
            }
            if (!this.isWithinConstraints && !this.parameters.exceedAudioConstraintsIfNecessary) {
                return 0;
            }
            if (DefaultTrackSelector.P(i10, false) && this.isWithinConstraints && this.format.bitrate != -1) {
                Parameters parameters = this.parameters;
                if (!parameters.forceHighestSupportedBitrate && !parameters.forceLowestBitrate && (parameters.allowMultipleAdaptiveSelections || !z6)) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public int compareTo(AudioTrackInfo audioTrackInfo) {
            t0 t0VarF = (this.isWithinConstraints && this.isWithinRendererCapabilities) ? DefaultTrackSelector.FORMAT_VALUE_ORDERING : DefaultTrackSelector.FORMAT_VALUE_ORDERING.f();
            com.google.common.collect.p pVarF = com.google.common.collect.p.j().g(this.isWithinRendererCapabilities, audioTrackInfo.isWithinRendererCapabilities).f(Integer.valueOf(this.preferredLanguageIndex), Integer.valueOf(audioTrackInfo.preferredLanguageIndex), t0.c().f()).d(this.preferredLanguageScore, audioTrackInfo.preferredLanguageScore).d(this.preferredRoleFlagsScore, audioTrackInfo.preferredRoleFlagsScore).g(this.isDefaultSelectionFlag, audioTrackInfo.isDefaultSelectionFlag).g(this.hasMainOrNoRoleFlag, audioTrackInfo.hasMainOrNoRoleFlag).f(Integer.valueOf(this.localeLanguageMatchIndex), Integer.valueOf(audioTrackInfo.localeLanguageMatchIndex), t0.c().f()).d(this.localeLanguageScore, audioTrackInfo.localeLanguageScore).g(this.isWithinConstraints, audioTrackInfo.isWithinConstraints).f(Integer.valueOf(this.preferredMimeTypeMatchIndex), Integer.valueOf(audioTrackInfo.preferredMimeTypeMatchIndex), t0.c().f()).f(Integer.valueOf(this.bitrate), Integer.valueOf(audioTrackInfo.bitrate), this.parameters.forceLowestBitrate ? DefaultTrackSelector.FORMAT_VALUE_ORDERING.f() : DefaultTrackSelector.NO_ORDER).g(this.usesPrimaryDecoder, audioTrackInfo.usesPrimaryDecoder).g(this.usesHardwareAcceleration, audioTrackInfo.usesHardwareAcceleration).f(Integer.valueOf(this.channelCount), Integer.valueOf(audioTrackInfo.channelCount), t0VarF).f(Integer.valueOf(this.sampleRate), Integer.valueOf(audioTrackInfo.sampleRate), t0VarF);
            Integer numValueOf = Integer.valueOf(this.bitrate);
            Integer numValueOf2 = Integer.valueOf(audioTrackInfo.bitrate);
            if (!Util.c(this.language, audioTrackInfo.language)) {
                t0VarF = DefaultTrackSelector.NO_ORDER;
            }
            return pVarF.f(numValueOf, numValueOf2, t0VarF).i();
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public boolean b(AudioTrackInfo audioTrackInfo) {
            int i10;
            String str;
            int i11;
            Parameters parameters = this.parameters;
            if ((parameters.allowAudioMixedChannelCountAdaptiveness || ((i11 = this.format.channelCount) != -1 && i11 == audioTrackInfo.format.channelCount)) && (parameters.allowAudioMixedMimeTypeAdaptiveness || ((str = this.format.sampleMimeType) != null && TextUtils.equals(str, audioTrackInfo.format.sampleMimeType)))) {
                Parameters parameters2 = this.parameters;
                if ((parameters2.allowAudioMixedSampleRateAdaptiveness || ((i10 = this.format.sampleRate) != -1 && i10 == audioTrackInfo.format.sampleRate)) && (parameters2.allowAudioMixedDecoderSupportAdaptiveness || (this.usesPrimaryDecoder == audioTrackInfo.usesPrimaryDecoder && this.usesHardwareAcceleration == audioTrackInfo.usesHardwareAcceleration))) {
                    return true;
                }
            }
            return false;
        }

        public AudioTrackInfo(int i10, TrackGroup trackGroup, int i11, Parameters parameters, int i12, boolean z6, com.google.common.base.p<Format> pVar) {
            int i13;
            int iH;
            boolean z10;
            boolean z11;
            boolean z12;
            int iH2;
            boolean z13;
            super(i10, trackGroup, i11);
            this.parameters = parameters;
            this.language = DefaultTrackSelector.Y(this.format.language);
            this.isWithinRendererCapabilities = DefaultTrackSelector.P(i12, false);
            int i14 = 0;
            while (true) {
                i13 = Integer.MAX_VALUE;
                if (i14 < parameters.preferredAudioLanguages.size()) {
                    iH = DefaultTrackSelector.H(this.format, parameters.preferredAudioLanguages.get(i14), false);
                    if (iH > 0) {
                        break;
                    } else {
                        i14++;
                    }
                } else {
                    iH = 0;
                    i14 = Integer.MAX_VALUE;
                    break;
                }
            }
            this.preferredLanguageIndex = i14;
            this.preferredLanguageScore = iH;
            this.preferredRoleFlagsScore = DefaultTrackSelector.L(this.format.roleFlags, parameters.preferredAudioRoleFlags);
            Format format = this.format;
            int i15 = format.roleFlags;
            if (i15 != 0 && (i15 & 1) == 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            this.hasMainOrNoRoleFlag = z10;
            if ((format.selectionFlags & 1) != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.isDefaultSelectionFlag = z11;
            int i16 = format.channelCount;
            this.channelCount = i16;
            this.sampleRate = format.sampleRate;
            int i17 = format.bitrate;
            this.bitrate = i17;
            if ((i17 == -1 || i17 <= parameters.maxAudioBitrate) && ((i16 == -1 || i16 <= parameters.maxAudioChannelCount) && pVar.apply(format))) {
                z12 = true;
            } else {
                z12 = false;
            }
            this.isWithinConstraints = z12;
            String[] strArrL0 = Util.l0();
            int i18 = 0;
            while (true) {
                if (i18 < strArrL0.length) {
                    iH2 = DefaultTrackSelector.H(this.format, strArrL0[i18], false);
                    if (iH2 > 0) {
                        break;
                    } else {
                        i18++;
                    }
                } else {
                    iH2 = 0;
                    i18 = Integer.MAX_VALUE;
                    break;
                }
            }
            this.localeLanguageMatchIndex = i18;
            this.localeLanguageScore = iH2;
            for (int i19 = 0; i19 < parameters.preferredAudioMimeTypes.size(); i19++) {
                String str = this.format.sampleMimeType;
                if (str != null && str.equals(parameters.preferredAudioMimeTypes.get(i19))) {
                    i13 = i19;
                    break;
                }
            }
            this.preferredMimeTypeMatchIndex = i13;
            if (h2.g(i12) == 128) {
                z13 = true;
            } else {
                z13 = false;
            }
            this.usesPrimaryDecoder = z13;
            this.usesHardwareAcceleration = h2.i(i12) == 64;
            this.selectionEligibility = f(i12, z6);
        }

        public static int c(List<AudioTrackInfo> list, List<AudioTrackInfo> list2) {
            return ((AudioTrackInfo) Collections.max(list)).compareTo((AudioTrackInfo) Collections.max(list2));
        }

        public static a0<AudioTrackInfo> e(int i10, TrackGroup trackGroup, Parameters parameters, int[] iArr, boolean z6, com.google.common.base.p<Format> pVar) {
            a0.a aVarR = a0.r();
            for (int i11 = 0; i11 < trackGroup.length; i11++) {
                aVarR.d(new AudioTrackInfo(i10, trackGroup, i11, parameters, iArr[i11], z6, pVar));
            }
            return aVarR.k();
        }
    }

    public static final class Parameters extends TrackSelectionParameters {
        public static final Bundleable.Creator<Parameters> CREATOR;

        @Deprecated
        public static final Parameters DEFAULT;
        public static final Parameters DEFAULT_WITHOUT_CONTEXT;
        private static final String FIELD_ALLOW_AUDIO_MIXED_CHANNEL_COUNT_ADAPTIVENESS;
        private static final String FIELD_ALLOW_AUDIO_MIXED_DECODER_SUPPORT_ADAPTIVENESS;
        private static final String FIELD_ALLOW_AUDIO_MIXED_MIME_TYPE_ADAPTIVENESS;
        private static final String FIELD_ALLOW_AUDIO_MIXED_SAMPLE_RATE_ADAPTIVENESS;
        private static final String FIELD_ALLOW_INVALIDATE_SELECTIONS_ON_RENDERER_CAPABILITIES_CHANGE;
        private static final String FIELD_ALLOW_MULTIPLE_ADAPTIVE_SELECTIONS;
        private static final String FIELD_ALLOW_VIDEO_MIXED_DECODER_SUPPORT_ADAPTIVENESS;
        private static final String FIELD_ALLOW_VIDEO_MIXED_MIME_TYPE_ADAPTIVENESS;
        private static final String FIELD_ALLOW_VIDEO_NON_SEAMLESS_ADAPTIVENESS;
        private static final String FIELD_CONSTRAIN_AUDIO_CHANNEL_COUNT_TO_DEVICE_CAPABILITIES;
        private static final String FIELD_EXCEED_AUDIO_CONSTRAINTS_IF_NECESSARY;
        private static final String FIELD_EXCEED_RENDERER_CAPABILITIES_IF_NECESSARY;
        private static final String FIELD_EXCEED_VIDEO_CONSTRAINTS_IF_NECESSARY;
        private static final String FIELD_RENDERER_DISABLED_INDICES;
        private static final String FIELD_SELECTION_OVERRIDES;
        private static final String FIELD_SELECTION_OVERRIDES_RENDERER_INDICES;
        private static final String FIELD_SELECTION_OVERRIDES_TRACK_GROUP_ARRAYS;
        private static final String FIELD_TUNNELING_ENABLED;
        public final boolean allowAudioMixedChannelCountAdaptiveness;
        public final boolean allowAudioMixedDecoderSupportAdaptiveness;
        public final boolean allowAudioMixedMimeTypeAdaptiveness;
        public final boolean allowAudioMixedSampleRateAdaptiveness;
        public final boolean allowInvalidateSelectionsOnRendererCapabilitiesChange;
        public final boolean allowMultipleAdaptiveSelections;
        public final boolean allowVideoMixedDecoderSupportAdaptiveness;
        public final boolean allowVideoMixedMimeTypeAdaptiveness;
        public final boolean allowVideoNonSeamlessAdaptiveness;
        public final boolean constrainAudioChannelCountToDeviceCapabilities;
        public final boolean exceedAudioConstraintsIfNecessary;
        public final boolean exceedRendererCapabilitiesIfNecessary;
        public final boolean exceedVideoConstraintsIfNecessary;
        private final SparseBooleanArray rendererDisabledFlags;
        private final SparseArray<Map<TrackGroupArray, SelectionOverride>> selectionOverrides;
        public final boolean tunnelingEnabled;

        public static final class Builder extends TrackSelectionParameters.Builder {
            private boolean allowAudioMixedChannelCountAdaptiveness;
            private boolean allowAudioMixedDecoderSupportAdaptiveness;
            private boolean allowAudioMixedMimeTypeAdaptiveness;
            private boolean allowAudioMixedSampleRateAdaptiveness;
            private boolean allowInvalidateSelectionsOnRendererCapabilitiesChange;
            private boolean allowMultipleAdaptiveSelections;
            private boolean allowVideoMixedDecoderSupportAdaptiveness;
            private boolean allowVideoMixedMimeTypeAdaptiveness;
            private boolean allowVideoNonSeamlessAdaptiveness;
            private boolean constrainAudioChannelCountToDeviceCapabilities;
            private boolean exceedAudioConstraintsIfNecessary;
            private boolean exceedRendererCapabilitiesIfNecessary;
            private boolean exceedVideoConstraintsIfNecessary;
            private final SparseBooleanArray rendererDisabledFlags;
            private final SparseArray<Map<TrackGroupArray, SelectionOverride>> selectionOverrides;
            private boolean tunnelingEnabled;

            private void g0() {
                this.exceedVideoConstraintsIfNecessary = true;
                this.allowVideoMixedMimeTypeAdaptiveness = false;
                this.allowVideoNonSeamlessAdaptiveness = true;
                this.allowVideoMixedDecoderSupportAdaptiveness = false;
                this.exceedAudioConstraintsIfNecessary = true;
                this.allowAudioMixedMimeTypeAdaptiveness = false;
                this.allowAudioMixedSampleRateAdaptiveness = false;
                this.allowAudioMixedChannelCountAdaptiveness = false;
                this.allowAudioMixedDecoderSupportAdaptiveness = false;
                this.constrainAudioChannelCountToDeviceCapabilities = true;
                this.exceedRendererCapabilitiesIfNecessary = true;
                this.tunnelingEnabled = false;
                this.allowMultipleAdaptiveSelections = true;
                this.allowInvalidateSelectionsOnRendererCapabilitiesChange = false;
            }

            public Builder D0(boolean z6) {
                this.tunnelingEnabled = z6;
                return this;
            }

            public Builder j0(boolean z6) {
                this.allowAudioMixedChannelCountAdaptiveness = z6;
                return this;
            }

            public Builder k0(boolean z6) {
                this.allowAudioMixedDecoderSupportAdaptiveness = z6;
                return this;
            }

            public Builder l0(boolean z6) {
                this.allowAudioMixedMimeTypeAdaptiveness = z6;
                return this;
            }

            public Builder m0(boolean z6) {
                this.allowAudioMixedSampleRateAdaptiveness = z6;
                return this;
            }

            public Builder n0(boolean z6) {
                this.allowInvalidateSelectionsOnRendererCapabilitiesChange = z6;
                return this;
            }

            public Builder o0(boolean z6) {
                this.allowMultipleAdaptiveSelections = z6;
                return this;
            }

            public Builder p0(boolean z6) {
                this.allowVideoMixedDecoderSupportAdaptiveness = z6;
                return this;
            }

            public Builder q0(boolean z6) {
                this.allowVideoMixedMimeTypeAdaptiveness = z6;
                return this;
            }

            public Builder r0(boolean z6) {
                this.allowVideoNonSeamlessAdaptiveness = z6;
                return this;
            }

            public Builder s0(boolean z6) {
                this.constrainAudioChannelCountToDeviceCapabilities = z6;
                return this;
            }

            public Builder t0(boolean z6) {
                this.exceedAudioConstraintsIfNecessary = z6;
                return this;
            }

            public Builder u0(boolean z6) {
                this.exceedRendererCapabilitiesIfNecessary = z6;
                return this;
            }

            public Builder v0(boolean z6) {
                this.exceedVideoConstraintsIfNecessary = z6;
                return this;
            }

            private static SparseArray<Map<TrackGroupArray, SelectionOverride>> f0(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
                SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2 = new SparseArray<>();
                for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                    sparseArray2.put(sparseArray.keyAt(i10), new HashMap(sparseArray.valueAt(i10)));
                }
                return sparseArray2;
            }

            private SparseBooleanArray h0(@Nullable int[] iArr) {
                if (iArr == null) {
                    return new SparseBooleanArray();
                }
                SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
                for (int i10 : iArr) {
                    sparseBooleanArray.append(i10, true);
                }
                return sparseBooleanArray;
            }

            @Deprecated
            public Builder A0(int i10, TrackGroupArray trackGroupArray, @Nullable SelectionOverride selectionOverride) {
                Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i10);
                if (map == null) {
                    map = new HashMap<>();
                    this.selectionOverrides.put(i10, map);
                }
                if (map.containsKey(trackGroupArray) && Util.c(map.get(trackGroupArray), selectionOverride)) {
                    return this;
                }
                map.put(trackGroupArray, selectionOverride);
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
            public Parameters A() {
                return new Parameters(this);
            }

            @Deprecated
            public Builder() {
                this.selectionOverrides = new SparseArray<>();
                this.rendererDisabledFlags = new SparseBooleanArray();
                g0();
            }

            /* JADX WARN: Multi-variable type inference failed */
            private void B0(Bundle bundle) {
                a0 a0VarD;
                SparseArray sparseArrayE;
                int[] intArray = bundle.getIntArray(Parameters.FIELD_SELECTION_OVERRIDES_RENDERER_INDICES);
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(Parameters.FIELD_SELECTION_OVERRIDES_TRACK_GROUP_ARRAYS);
                if (parcelableArrayList == null) {
                    a0VarD = a0.x();
                } else {
                    a0VarD = BundleableUtil.d(TrackGroupArray.CREATOR, parcelableArrayList);
                }
                SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(Parameters.FIELD_SELECTION_OVERRIDES);
                if (sparseParcelableArray == null) {
                    sparseArrayE = new SparseArray();
                } else {
                    sparseArrayE = BundleableUtil.e(SelectionOverride.CREATOR, sparseParcelableArray);
                }
                if (intArray != null && intArray.length == a0VarD.size()) {
                    for (int i10 = 0; i10 < intArray.length; i10++) {
                        A0(intArray[i10], (TrackGroupArray) a0VarD.get(i10), (SelectionOverride) sparseArrayE.get(i10));
                    }
                }
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            /* JADX INFO: renamed from: C0, reason: merged with bridge method [inline-methods] */
            public Builder K(int i10, boolean z6) {
                super.K(i10, z6);
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            /* JADX INFO: renamed from: E0, reason: merged with bridge method [inline-methods] */
            public Builder L(int i10, int i11, boolean z6) {
                super.L(i10, i11, z6);
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            /* JADX INFO: renamed from: F0, reason: merged with bridge method [inline-methods] */
            public Builder M(Context context, boolean z6) {
                super.M(context, z6);
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
            public Builder B(int i10) {
                super.B(i10);
                return this;
            }

            protected Builder i0(TrackSelectionParameters trackSelectionParameters) {
                super.E(trackSelectionParameters);
                return this;
            }

            public Builder w0(boolean z6) {
                super.F(z6);
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            /* JADX INFO: renamed from: x0, reason: merged with bridge method [inline-methods] */
            public Builder G(int i10) {
                super.G(i10);
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            /* JADX INFO: renamed from: y0, reason: merged with bridge method [inline-methods] */
            public Builder H(TrackSelectionOverride trackSelectionOverride) {
                super.H(trackSelectionOverride);
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
            public Builder I(Context context) {
                super.I(context);
                return this;
            }

            public Builder(Context context) {
                super(context);
                this.selectionOverrides = new SparseArray<>();
                this.rendererDisabledFlags = new SparseBooleanArray();
                g0();
            }

            private Builder(Parameters parameters) {
                super(parameters);
                this.exceedVideoConstraintsIfNecessary = parameters.exceedVideoConstraintsIfNecessary;
                this.allowVideoMixedMimeTypeAdaptiveness = parameters.allowVideoMixedMimeTypeAdaptiveness;
                this.allowVideoNonSeamlessAdaptiveness = parameters.allowVideoNonSeamlessAdaptiveness;
                this.allowVideoMixedDecoderSupportAdaptiveness = parameters.allowVideoMixedDecoderSupportAdaptiveness;
                this.exceedAudioConstraintsIfNecessary = parameters.exceedAudioConstraintsIfNecessary;
                this.allowAudioMixedMimeTypeAdaptiveness = parameters.allowAudioMixedMimeTypeAdaptiveness;
                this.allowAudioMixedSampleRateAdaptiveness = parameters.allowAudioMixedSampleRateAdaptiveness;
                this.allowAudioMixedChannelCountAdaptiveness = parameters.allowAudioMixedChannelCountAdaptiveness;
                this.allowAudioMixedDecoderSupportAdaptiveness = parameters.allowAudioMixedDecoderSupportAdaptiveness;
                this.constrainAudioChannelCountToDeviceCapabilities = parameters.constrainAudioChannelCountToDeviceCapabilities;
                this.exceedRendererCapabilitiesIfNecessary = parameters.exceedRendererCapabilitiesIfNecessary;
                this.tunnelingEnabled = parameters.tunnelingEnabled;
                this.allowMultipleAdaptiveSelections = parameters.allowMultipleAdaptiveSelections;
                this.allowInvalidateSelectionsOnRendererCapabilitiesChange = parameters.allowInvalidateSelectionsOnRendererCapabilitiesChange;
                this.selectionOverrides = f0(parameters.selectionOverrides);
                this.rendererDisabledFlags = parameters.rendererDisabledFlags.clone();
            }

            private Builder(Bundle bundle) {
                super(bundle);
                g0();
                Parameters parameters = Parameters.DEFAULT_WITHOUT_CONTEXT;
                v0(bundle.getBoolean(Parameters.FIELD_EXCEED_VIDEO_CONSTRAINTS_IF_NECESSARY, parameters.exceedVideoConstraintsIfNecessary));
                q0(bundle.getBoolean(Parameters.FIELD_ALLOW_VIDEO_MIXED_MIME_TYPE_ADAPTIVENESS, parameters.allowVideoMixedMimeTypeAdaptiveness));
                r0(bundle.getBoolean(Parameters.FIELD_ALLOW_VIDEO_NON_SEAMLESS_ADAPTIVENESS, parameters.allowVideoNonSeamlessAdaptiveness));
                p0(bundle.getBoolean(Parameters.FIELD_ALLOW_VIDEO_MIXED_DECODER_SUPPORT_ADAPTIVENESS, parameters.allowVideoMixedDecoderSupportAdaptiveness));
                t0(bundle.getBoolean(Parameters.FIELD_EXCEED_AUDIO_CONSTRAINTS_IF_NECESSARY, parameters.exceedAudioConstraintsIfNecessary));
                l0(bundle.getBoolean(Parameters.FIELD_ALLOW_AUDIO_MIXED_MIME_TYPE_ADAPTIVENESS, parameters.allowAudioMixedMimeTypeAdaptiveness));
                m0(bundle.getBoolean(Parameters.FIELD_ALLOW_AUDIO_MIXED_SAMPLE_RATE_ADAPTIVENESS, parameters.allowAudioMixedSampleRateAdaptiveness));
                j0(bundle.getBoolean(Parameters.FIELD_ALLOW_AUDIO_MIXED_CHANNEL_COUNT_ADAPTIVENESS, parameters.allowAudioMixedChannelCountAdaptiveness));
                k0(bundle.getBoolean(Parameters.FIELD_ALLOW_AUDIO_MIXED_DECODER_SUPPORT_ADAPTIVENESS, parameters.allowAudioMixedDecoderSupportAdaptiveness));
                s0(bundle.getBoolean(Parameters.FIELD_CONSTRAIN_AUDIO_CHANNEL_COUNT_TO_DEVICE_CAPABILITIES, parameters.constrainAudioChannelCountToDeviceCapabilities));
                u0(bundle.getBoolean(Parameters.FIELD_EXCEED_RENDERER_CAPABILITIES_IF_NECESSARY, parameters.exceedRendererCapabilitiesIfNecessary));
                D0(bundle.getBoolean(Parameters.FIELD_TUNNELING_ENABLED, parameters.tunnelingEnabled));
                o0(bundle.getBoolean(Parameters.FIELD_ALLOW_MULTIPLE_ADAPTIVE_SELECTIONS, parameters.allowMultipleAdaptiveSelections));
                n0(bundle.getBoolean(Parameters.FIELD_ALLOW_INVALIDATE_SELECTIONS_ON_RENDERER_CAPABILITIES_CHANGE, parameters.allowInvalidateSelectionsOnRendererCapabilitiesChange));
                this.selectionOverrides = new SparseArray<>();
                B0(bundle);
                this.rendererDisabledFlags = h0(bundle.getIntArray(Parameters.FIELD_RENDERER_DISABLED_INDICES));
            }
        }

        @Override // androidx.media3.common.TrackSelectionParameters
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Parameters.class != obj.getClass()) {
                return false;
            }
            Parameters parameters = (Parameters) obj;
            return super.equals(parameters) && this.exceedVideoConstraintsIfNecessary == parameters.exceedVideoConstraintsIfNecessary && this.allowVideoMixedMimeTypeAdaptiveness == parameters.allowVideoMixedMimeTypeAdaptiveness && this.allowVideoNonSeamlessAdaptiveness == parameters.allowVideoNonSeamlessAdaptiveness && this.allowVideoMixedDecoderSupportAdaptiveness == parameters.allowVideoMixedDecoderSupportAdaptiveness && this.exceedAudioConstraintsIfNecessary == parameters.exceedAudioConstraintsIfNecessary && this.allowAudioMixedMimeTypeAdaptiveness == parameters.allowAudioMixedMimeTypeAdaptiveness && this.allowAudioMixedSampleRateAdaptiveness == parameters.allowAudioMixedSampleRateAdaptiveness && this.allowAudioMixedChannelCountAdaptiveness == parameters.allowAudioMixedChannelCountAdaptiveness && this.allowAudioMixedDecoderSupportAdaptiveness == parameters.allowAudioMixedDecoderSupportAdaptiveness && this.constrainAudioChannelCountToDeviceCapabilities == parameters.constrainAudioChannelCountToDeviceCapabilities && this.exceedRendererCapabilitiesIfNecessary == parameters.exceedRendererCapabilitiesIfNecessary && this.tunnelingEnabled == parameters.tunnelingEnabled && this.allowMultipleAdaptiveSelections == parameters.allowMultipleAdaptiveSelections && this.allowInvalidateSelectionsOnRendererCapabilitiesChange == parameters.allowInvalidateSelectionsOnRendererCapabilitiesChange && F(this.rendererDisabledFlags, parameters.rendererDisabledFlags) && G(this.selectionOverrides, parameters.selectionOverrides);
        }

        static {
            Parameters parametersA = new Builder().A();
            DEFAULT_WITHOUT_CONTEXT = parametersA;
            DEFAULT = parametersA;
            FIELD_EXCEED_VIDEO_CONSTRAINTS_IF_NECESSARY = Util.z0(1000);
            FIELD_ALLOW_VIDEO_MIXED_MIME_TYPE_ADAPTIVENESS = Util.z0(1001);
            FIELD_ALLOW_VIDEO_NON_SEAMLESS_ADAPTIVENESS = Util.z0(1002);
            FIELD_EXCEED_AUDIO_CONSTRAINTS_IF_NECESSARY = Util.z0(1003);
            FIELD_ALLOW_AUDIO_MIXED_MIME_TYPE_ADAPTIVENESS = Util.z0(1004);
            FIELD_ALLOW_AUDIO_MIXED_SAMPLE_RATE_ADAPTIVENESS = Util.z0(1005);
            FIELD_ALLOW_AUDIO_MIXED_CHANNEL_COUNT_ADAPTIVENESS = Util.z0(1006);
            FIELD_EXCEED_RENDERER_CAPABILITIES_IF_NECESSARY = Util.z0(1007);
            FIELD_TUNNELING_ENABLED = Util.z0(1008);
            FIELD_ALLOW_MULTIPLE_ADAPTIVE_SELECTIONS = Util.z0(1009);
            FIELD_SELECTION_OVERRIDES_RENDERER_INDICES = Util.z0(1010);
            FIELD_SELECTION_OVERRIDES_TRACK_GROUP_ARRAYS = Util.z0(1011);
            FIELD_SELECTION_OVERRIDES = Util.z0(1012);
            FIELD_RENDERER_DISABLED_INDICES = Util.z0(1013);
            FIELD_ALLOW_VIDEO_MIXED_DECODER_SUPPORT_ADAPTIVENESS = Util.z0(1014);
            FIELD_ALLOW_AUDIO_MIXED_DECODER_SUPPORT_ADAPTIVENESS = Util.z0(1015);
            FIELD_CONSTRAIN_AUDIO_CHANNEL_COUNT_TO_DEVICE_CAPABILITIES = Util.z0(1016);
            FIELD_ALLOW_INVALIDATE_SELECTIONS_ON_RENDERER_CAPABILITIES_CHANGE = Util.z0(1017);
            CREATOR = new Bundleable.Creator() { // from class: androidx.media3.exoplayer.trackselection.k
                @Override // androidx.media3.common.Bundleable.Creator
                public final Bundleable a(Bundle bundle) {
                    return DefaultTrackSelector.Parameters.O(bundle);
                }
            };
        }

        private Parameters(Builder builder) {
            super(builder);
            this.exceedVideoConstraintsIfNecessary = builder.exceedVideoConstraintsIfNecessary;
            this.allowVideoMixedMimeTypeAdaptiveness = builder.allowVideoMixedMimeTypeAdaptiveness;
            this.allowVideoNonSeamlessAdaptiveness = builder.allowVideoNonSeamlessAdaptiveness;
            this.allowVideoMixedDecoderSupportAdaptiveness = builder.allowVideoMixedDecoderSupportAdaptiveness;
            this.exceedAudioConstraintsIfNecessary = builder.exceedAudioConstraintsIfNecessary;
            this.allowAudioMixedMimeTypeAdaptiveness = builder.allowAudioMixedMimeTypeAdaptiveness;
            this.allowAudioMixedSampleRateAdaptiveness = builder.allowAudioMixedSampleRateAdaptiveness;
            this.allowAudioMixedChannelCountAdaptiveness = builder.allowAudioMixedChannelCountAdaptiveness;
            this.allowAudioMixedDecoderSupportAdaptiveness = builder.allowAudioMixedDecoderSupportAdaptiveness;
            this.constrainAudioChannelCountToDeviceCapabilities = builder.constrainAudioChannelCountToDeviceCapabilities;
            this.exceedRendererCapabilitiesIfNecessary = builder.exceedRendererCapabilitiesIfNecessary;
            this.tunnelingEnabled = builder.tunnelingEnabled;
            this.allowMultipleAdaptiveSelections = builder.allowMultipleAdaptiveSelections;
            this.allowInvalidateSelectionsOnRendererCapabilitiesChange = builder.allowInvalidateSelectionsOnRendererCapabilitiesChange;
            this.selectionOverrides = builder.selectionOverrides;
            this.rendererDisabledFlags = builder.rendererDisabledFlags;
        }

        public static Parameters J(Context context) {
            return new Builder(context).A();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Parameters O(Bundle bundle) {
            return new Builder(bundle).A();
        }

        private static void P(Bundle bundle, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            SparseArray sparseArray2 = new SparseArray();
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                int iKeyAt = sparseArray.keyAt(i10);
                for (Map.Entry<TrackGroupArray, SelectionOverride> entry : sparseArray.valueAt(i10).entrySet()) {
                    SelectionOverride value = entry.getValue();
                    if (value != null) {
                        sparseArray2.put(arrayList2.size(), value);
                    }
                    arrayList2.add(entry.getKey());
                    arrayList.add(Integer.valueOf(iKeyAt));
                }
                bundle.putIntArray(FIELD_SELECTION_OVERRIDES_RENDERER_INDICES, com.google.common.primitives.e.l(arrayList));
                bundle.putParcelableArrayList(FIELD_SELECTION_OVERRIDES_TRACK_GROUP_ARRAYS, BundleableUtil.i(arrayList2));
                bundle.putSparseParcelableArray(FIELD_SELECTION_OVERRIDES, BundleableUtil.j(sparseArray2));
            }
        }

        @Override // androidx.media3.common.TrackSelectionParameters
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public Builder A() {
            return new Builder();
        }

        public boolean L(int i10) {
            return this.rendererDisabledFlags.get(i10);
        }

        @Nullable
        @Deprecated
        public SelectionOverride M(int i10, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i10);
            if (map != null) {
                return map.get(trackGroupArray);
            }
            return null;
        }

        @Deprecated
        public boolean N(int i10, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i10);
            return map != null && map.containsKey(trackGroupArray);
        }

        private static boolean F(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i10)) < 0) {
                    return false;
                }
            }
            return true;
        }

        private static boolean G(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i10));
                if (iIndexOfKey < 0 || !H(sparseArray.valueAt(i10), sparseArray2.valueAt(iIndexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        private static boolean H(Map<TrackGroupArray, SelectionOverride> map, Map<TrackGroupArray, SelectionOverride> map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (Map.Entry<TrackGroupArray, SelectionOverride> entry : map.entrySet()) {
                TrackGroupArray key = entry.getKey();
                if (!map2.containsKey(key) || !Util.c(entry.getValue(), map2.get(key))) {
                    return false;
                }
            }
            return true;
        }

        private static int[] K(SparseBooleanArray sparseBooleanArray) {
            int[] iArr = new int[sparseBooleanArray.size()];
            for (int i10 = 0; i10 < sparseBooleanArray.size(); i10++) {
                iArr[i10] = sparseBooleanArray.keyAt(i10);
            }
            return iArr;
        }

        @Override // androidx.media3.common.TrackSelectionParameters
        public int hashCode() {
            return ((((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.exceedVideoConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowVideoMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowVideoNonSeamlessAdaptiveness ? 1 : 0)) * 31) + (this.allowVideoMixedDecoderSupportAdaptiveness ? 1 : 0)) * 31) + (this.exceedAudioConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowAudioMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedSampleRateAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedChannelCountAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedDecoderSupportAdaptiveness ? 1 : 0)) * 31) + (this.constrainAudioChannelCountToDeviceCapabilities ? 1 : 0)) * 31) + (this.exceedRendererCapabilitiesIfNecessary ? 1 : 0)) * 31) + (this.tunnelingEnabled ? 1 : 0)) * 31) + (this.allowMultipleAdaptiveSelections ? 1 : 0)) * 31) + (this.allowInvalidateSelectionsOnRendererCapabilitiesChange ? 1 : 0);
        }

        @Override // androidx.media3.common.TrackSelectionParameters, androidx.media3.common.Bundleable
        public Bundle toBundle() {
            Bundle bundle = super.toBundle();
            bundle.putBoolean(FIELD_EXCEED_VIDEO_CONSTRAINTS_IF_NECESSARY, this.exceedVideoConstraintsIfNecessary);
            bundle.putBoolean(FIELD_ALLOW_VIDEO_MIXED_MIME_TYPE_ADAPTIVENESS, this.allowVideoMixedMimeTypeAdaptiveness);
            bundle.putBoolean(FIELD_ALLOW_VIDEO_NON_SEAMLESS_ADAPTIVENESS, this.allowVideoNonSeamlessAdaptiveness);
            bundle.putBoolean(FIELD_ALLOW_VIDEO_MIXED_DECODER_SUPPORT_ADAPTIVENESS, this.allowVideoMixedDecoderSupportAdaptiveness);
            bundle.putBoolean(FIELD_EXCEED_AUDIO_CONSTRAINTS_IF_NECESSARY, this.exceedAudioConstraintsIfNecessary);
            bundle.putBoolean(FIELD_ALLOW_AUDIO_MIXED_MIME_TYPE_ADAPTIVENESS, this.allowAudioMixedMimeTypeAdaptiveness);
            bundle.putBoolean(FIELD_ALLOW_AUDIO_MIXED_SAMPLE_RATE_ADAPTIVENESS, this.allowAudioMixedSampleRateAdaptiveness);
            bundle.putBoolean(FIELD_ALLOW_AUDIO_MIXED_CHANNEL_COUNT_ADAPTIVENESS, this.allowAudioMixedChannelCountAdaptiveness);
            bundle.putBoolean(FIELD_ALLOW_AUDIO_MIXED_DECODER_SUPPORT_ADAPTIVENESS, this.allowAudioMixedDecoderSupportAdaptiveness);
            bundle.putBoolean(FIELD_CONSTRAIN_AUDIO_CHANNEL_COUNT_TO_DEVICE_CAPABILITIES, this.constrainAudioChannelCountToDeviceCapabilities);
            bundle.putBoolean(FIELD_EXCEED_RENDERER_CAPABILITIES_IF_NECESSARY, this.exceedRendererCapabilitiesIfNecessary);
            bundle.putBoolean(FIELD_TUNNELING_ENABLED, this.tunnelingEnabled);
            bundle.putBoolean(FIELD_ALLOW_MULTIPLE_ADAPTIVE_SELECTIONS, this.allowMultipleAdaptiveSelections);
            bundle.putBoolean(FIELD_ALLOW_INVALIDATE_SELECTIONS_ON_RENDERER_CAPABILITIES_CHANGE, this.allowInvalidateSelectionsOnRendererCapabilitiesChange);
            P(bundle, this.selectionOverrides);
            bundle.putIntArray(FIELD_RENDERER_DISABLED_INDICES, K(this.rendererDisabledFlags));
            return bundle;
        }
    }

    @Deprecated
    public static final class ParametersBuilder extends TrackSelectionParameters.Builder {
        private final Parameters.Builder delegate;

        @Deprecated
        public ParametersBuilder() {
            this.delegate = new Parameters.Builder();
        }

        @Override // androidx.media3.common.TrackSelectionParameters.Builder
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public Parameters A() {
            return this.delegate.A();
        }

        @Override // androidx.media3.common.TrackSelectionParameters.Builder
        /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
        public ParametersBuilder B(int i10) {
            this.delegate.B(i10);
            return this;
        }

        @Override // androidx.media3.common.TrackSelectionParameters.Builder
        /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
        public ParametersBuilder G(int i10) {
            this.delegate.G(i10);
            return this;
        }

        @Override // androidx.media3.common.TrackSelectionParameters.Builder
        /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
        public ParametersBuilder H(TrackSelectionOverride trackSelectionOverride) {
            this.delegate.H(trackSelectionOverride);
            return this;
        }

        @Override // androidx.media3.common.TrackSelectionParameters.Builder
        /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
        public ParametersBuilder I(Context context) {
            this.delegate.I(context);
            return this;
        }

        @Override // androidx.media3.common.TrackSelectionParameters.Builder
        /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
        public ParametersBuilder K(int i10, boolean z6) {
            this.delegate.K(i10, z6);
            return this;
        }

        @Override // androidx.media3.common.TrackSelectionParameters.Builder
        /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
        public ParametersBuilder L(int i10, int i11, boolean z6) {
            this.delegate.L(i10, i11, z6);
            return this;
        }

        @Override // androidx.media3.common.TrackSelectionParameters.Builder
        /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
        public ParametersBuilder M(Context context, boolean z6) {
            this.delegate.M(context, z6);
            return this;
        }

        public ParametersBuilder(Context context) {
            this.delegate = new Parameters.Builder(context);
        }
    }

    public static final class SelectionOverride implements Bundleable {
        public final int groupIndex;
        public final int length;
        public final int[] tracks;
        public final int type;
        private static final String FIELD_GROUP_INDEX = Util.z0(0);
        private static final String FIELD_TRACKS = Util.z0(1);
        private static final String FIELD_TRACK_TYPE = Util.z0(2);

        @UnstableApi
        public static final Bundleable.Creator<SelectionOverride> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.exoplayer.trackselection.l
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return DefaultTrackSelector.SelectionOverride.b(bundle);
            }
        };

        public SelectionOverride(int i10, int... iArr) {
            this(i10, iArr, 0);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SelectionOverride.class != obj.getClass()) {
                return false;
            }
            SelectionOverride selectionOverride = (SelectionOverride) obj;
            return this.groupIndex == selectionOverride.groupIndex && Arrays.equals(this.tracks, selectionOverride.tracks) && this.type == selectionOverride.type;
        }

        @UnstableApi
        public SelectionOverride(int i10, int[] iArr, int i11) {
            this.groupIndex = i10;
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.tracks = iArrCopyOf;
            this.length = iArr.length;
            this.type = i11;
            Arrays.sort(iArrCopyOf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ SelectionOverride b(Bundle bundle) {
            int i10 = bundle.getInt(FIELD_GROUP_INDEX, -1);
            int[] intArray = bundle.getIntArray(FIELD_TRACKS);
            int i11 = bundle.getInt(FIELD_TRACK_TYPE, -1);
            Assertions.a(i10 >= 0 && i11 >= 0);
            Assertions.e(intArray);
            return new SelectionOverride(i10, intArray, i11);
        }

        public int hashCode() {
            return (((this.groupIndex * 31) + Arrays.hashCode(this.tracks)) * 31) + this.type;
        }

        @Override // androidx.media3.common.Bundleable
        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(FIELD_GROUP_INDEX, this.groupIndex);
            bundle.putIntArray(FIELD_TRACKS, this.tracks);
            bundle.putInt(FIELD_TRACK_TYPE, this.type);
            return bundle;
        }
    }

    @RequiresApi
    private static class SpatializerWrapperV32 {

        @Nullable
        private Handler handler;

        @Nullable
        private Spatializer$OnSpatializerStateChangedListener listener;
        private final boolean spatializationSupported;
        private final Spatializer spatializer;

        public boolean e() {
            return this.spatializationSupported;
        }

        @Nullable
        public static SpatializerWrapperV32 g(Context context) {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager == null) {
                return null;
            }
            return new SpatializerWrapperV32(audioManager.getSpatializer());
        }

        public boolean a(AudioAttributes audioAttributes, Format format) {
            AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(Util.H(("audio/eac3-joc".equals(format.sampleMimeType) && format.channelCount == 16) ? 12 : format.channelCount));
            int i10 = format.sampleRate;
            if (i10 != -1) {
                channelMask.setSampleRate(i10);
            }
            return this.spatializer.canBeSpatialized(audioAttributes.b().audioAttributes, channelMask.build());
        }

        public void b(final DefaultTrackSelector defaultTrackSelector, Looper looper) {
            if (this.listener == null && this.handler == null) {
                this.listener = new Spatializer$OnSpatializerStateChangedListener() { // from class: androidx.media3.exoplayer.trackselection.DefaultTrackSelector.SpatializerWrapperV32.1
                    public void onSpatializerAvailableChanged(Spatializer spatializer, boolean z6) {
                        defaultTrackSelector.W();
                    }

                    public void onSpatializerEnabledChanged(Spatializer spatializer, boolean z6) {
                        defaultTrackSelector.W();
                    }
                };
                Handler handler = new Handler(looper);
                this.handler = handler;
                Spatializer spatializer = this.spatializer;
                Objects.requireNonNull(handler);
                spatializer.addOnSpatializerStateChangedListener(new androidx.media3.exoplayer.audio.a0(handler), this.listener);
            }
        }

        public boolean c() {
            return this.spatializer.isAvailable();
        }

        public boolean d() {
            return this.spatializer.isEnabled();
        }

        public void f() {
            Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener = this.listener;
            if (spatializer$OnSpatializerStateChangedListener == null || this.handler == null) {
                return;
            }
            this.spatializer.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
            ((Handler) Util.j(this.handler)).removeCallbacksAndMessages(null);
            this.handler = null;
            this.listener = null;
        }

        private SpatializerWrapperV32(Spatializer spatializer) {
            boolean z6;
            this.spatializer = spatializer;
            if (spatializer.getImmersiveAudioLevel() != 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.spatializationSupported = z6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class VideoTrackInfo extends TrackInfo<VideoTrackInfo> {
        private final boolean allowMixedMimeTypes;
        private final int bitrate;
        private final int codecPreferenceScore;
        private final boolean hasMainOrNoRoleFlag;
        private final boolean isWithinMaxConstraints;
        private final boolean isWithinMinConstraints;
        private final boolean isWithinRendererCapabilities;
        private final Parameters parameters;
        private final int pixelCount;
        private final int preferredMimeTypeMatchIndex;
        private final int preferredRoleFlagsScore;
        private final int selectionEligibility;
        private final boolean usesHardwareAcceleration;
        private final boolean usesPrimaryDecoder;

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public int a() {
            return this.selectionEligibility;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int f(VideoTrackInfo videoTrackInfo, VideoTrackInfo videoTrackInfo2) {
            t0 t0VarF = (videoTrackInfo.isWithinMaxConstraints && videoTrackInfo.isWithinRendererCapabilities) ? DefaultTrackSelector.FORMAT_VALUE_ORDERING : DefaultTrackSelector.FORMAT_VALUE_ORDERING.f();
            return com.google.common.collect.p.j().f(Integer.valueOf(videoTrackInfo.bitrate), Integer.valueOf(videoTrackInfo2.bitrate), videoTrackInfo.parameters.forceLowestBitrate ? DefaultTrackSelector.FORMAT_VALUE_ORDERING.f() : DefaultTrackSelector.NO_ORDER).f(Integer.valueOf(videoTrackInfo.pixelCount), Integer.valueOf(videoTrackInfo2.pixelCount), t0VarF).f(Integer.valueOf(videoTrackInfo.bitrate), Integer.valueOf(videoTrackInfo2.bitrate), t0VarF).i();
        }

        public static a0<VideoTrackInfo> i(int i10, TrackGroup trackGroup, Parameters parameters, int[] iArr, int i11) {
            int I = DefaultTrackSelector.I(trackGroup, parameters.viewportWidth, parameters.viewportHeight, parameters.viewportOrientationMayChange);
            a0.a aVarR = a0.r();
            for (int i12 = 0; i12 < trackGroup.length; i12++) {
                int iF = trackGroup.c(i12).f();
                aVarR.d(new VideoTrackInfo(i10, trackGroup, i12, parameters, iArr[i12], i11, I == Integer.MAX_VALUE || (iF != -1 && iF <= I)));
            }
            return aVarR.k();
        }

        private int j(int i10, int i11) {
            if ((this.format.roleFlags & 16384) != 0 || !DefaultTrackSelector.P(i10, this.parameters.exceedRendererCapabilitiesIfNecessary)) {
                return 0;
            }
            if (!this.isWithinMaxConstraints && !this.parameters.exceedVideoConstraintsIfNecessary) {
                return 0;
            }
            if (DefaultTrackSelector.P(i10, false) && this.isWithinMinConstraints && this.isWithinMaxConstraints && this.format.bitrate != -1) {
                Parameters parameters = this.parameters;
                if (!parameters.forceHighestSupportedBitrate && !parameters.forceLowestBitrate && (i10 & i11) != 0) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean b(VideoTrackInfo videoTrackInfo) {
            return (this.allowMixedMimeTypes || Util.c(this.format.sampleMimeType, videoTrackInfo.format.sampleMimeType)) && (this.parameters.allowVideoMixedDecoderSupportAdaptiveness || (this.usesPrimaryDecoder == videoTrackInfo.usesPrimaryDecoder && this.usesHardwareAcceleration == videoTrackInfo.usesHardwareAcceleration));
        }

        /* JADX WARN: Code duplicated, block: B:31:0x004b  */
        /* JADX WARN: Code duplicated, block: B:51:0x0079  */
        public VideoTrackInfo(int i10, TrackGroup trackGroup, int i11, Parameters parameters, int i12, int i13, boolean z6) {
            int i14;
            boolean z10;
            boolean z11;
            boolean z12;
            boolean z13;
            boolean z14;
            Format format;
            int i15;
            int i16;
            int i17;
            Format format2;
            int i18;
            int i19;
            int i20;
            super(i10, trackGroup, i11);
            this.parameters = parameters;
            if (parameters.allowVideoNonSeamlessAdaptiveness) {
                i14 = 24;
            } else {
                i14 = 16;
            }
            if (parameters.allowVideoMixedMimeTypeAdaptiveness && (i13 & i14) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.allowMixedMimeTypes = z10;
            if (z6 && (((i18 = (format2 = this.format).width) == -1 || i18 <= parameters.maxVideoWidth) && ((i19 = format2.height) == -1 || i19 <= parameters.maxVideoHeight))) {
                float f = format2.frameRate;
                if ((f == -1.0f || f <= parameters.maxVideoFrameRate) && ((i20 = format2.bitrate) == -1 || i20 <= parameters.maxVideoBitrate)) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            } else {
                z11 = false;
            }
            this.isWithinMaxConstraints = z11;
            if (z6 && (((i15 = (format = this.format).width) == -1 || i15 >= parameters.minVideoWidth) && ((i16 = format.height) == -1 || i16 >= parameters.minVideoHeight))) {
                float f6 = format.frameRate;
                if ((f6 == -1.0f || f6 >= parameters.minVideoFrameRate) && ((i17 = format.bitrate) == -1 || i17 >= parameters.minVideoBitrate)) {
                    z12 = true;
                } else {
                    z12 = false;
                }
            } else {
                z12 = false;
            }
            this.isWithinMinConstraints = z12;
            this.isWithinRendererCapabilities = DefaultTrackSelector.P(i12, false);
            Format format3 = this.format;
            this.bitrate = format3.bitrate;
            this.pixelCount = format3.f();
            this.preferredRoleFlagsScore = DefaultTrackSelector.L(this.format.roleFlags, parameters.preferredVideoRoleFlags);
            int i21 = this.format.roleFlags;
            if (i21 != 0 && (i21 & 1) == 0) {
                z13 = false;
            } else {
                z13 = true;
            }
            this.hasMainOrNoRoleFlag = z13;
            int i22 = 0;
            while (true) {
                if (i22 < parameters.preferredVideoMimeTypes.size()) {
                    String str = this.format.sampleMimeType;
                    if (str != null && str.equals(parameters.preferredVideoMimeTypes.get(i22))) {
                        break;
                    } else {
                        i22++;
                    }
                } else {
                    i22 = Integer.MAX_VALUE;
                    break;
                }
            }
            this.preferredMimeTypeMatchIndex = i22;
            if (h2.g(i12) == 128) {
                z14 = true;
            } else {
                z14 = false;
            }
            this.usesPrimaryDecoder = z14;
            this.usesHardwareAcceleration = h2.i(i12) == 64;
            this.codecPreferenceScore = DefaultTrackSelector.M(this.format.sampleMimeType);
            this.selectionEligibility = j(i12, i14);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int e(VideoTrackInfo videoTrackInfo, VideoTrackInfo videoTrackInfo2) {
            com.google.common.collect.p pVarG = com.google.common.collect.p.j().g(videoTrackInfo.isWithinRendererCapabilities, videoTrackInfo2.isWithinRendererCapabilities).d(videoTrackInfo.preferredRoleFlagsScore, videoTrackInfo2.preferredRoleFlagsScore).g(videoTrackInfo.hasMainOrNoRoleFlag, videoTrackInfo2.hasMainOrNoRoleFlag).g(videoTrackInfo.isWithinMaxConstraints, videoTrackInfo2.isWithinMaxConstraints).g(videoTrackInfo.isWithinMinConstraints, videoTrackInfo2.isWithinMinConstraints).f(Integer.valueOf(videoTrackInfo.preferredMimeTypeMatchIndex), Integer.valueOf(videoTrackInfo2.preferredMimeTypeMatchIndex), t0.c().f()).g(videoTrackInfo.usesPrimaryDecoder, videoTrackInfo2.usesPrimaryDecoder).g(videoTrackInfo.usesHardwareAcceleration, videoTrackInfo2.usesHardwareAcceleration);
            if (videoTrackInfo.usesPrimaryDecoder && videoTrackInfo.usesHardwareAcceleration) {
                pVarG = pVarG.d(videoTrackInfo.codecPreferenceScore, videoTrackInfo2.codecPreferenceScore);
            }
            return pVarG.i();
        }

        public static int h(List<VideoTrackInfo> list, List<VideoTrackInfo> list2) {
            return com.google.common.collect.p.j().f((VideoTrackInfo) Collections.max(list, new Comparator() { // from class: androidx.media3.exoplayer.trackselection.t
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return DefaultTrackSelector.VideoTrackInfo.e((DefaultTrackSelector.VideoTrackInfo) obj, (DefaultTrackSelector.VideoTrackInfo) obj2);
                }
            }), (VideoTrackInfo) Collections.max(list2, new Comparator() { // from class: androidx.media3.exoplayer.trackselection.t
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return DefaultTrackSelector.VideoTrackInfo.e((DefaultTrackSelector.VideoTrackInfo) obj, (DefaultTrackSelector.VideoTrackInfo) obj2);
                }
            }), new Comparator() { // from class: androidx.media3.exoplayer.trackselection.t
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return DefaultTrackSelector.VideoTrackInfo.e((DefaultTrackSelector.VideoTrackInfo) obj, (DefaultTrackSelector.VideoTrackInfo) obj2);
                }
            }).d(list.size(), list2.size()).f((VideoTrackInfo) Collections.max(list, new Comparator() { // from class: androidx.media3.exoplayer.trackselection.u
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return DefaultTrackSelector.VideoTrackInfo.f((DefaultTrackSelector.VideoTrackInfo) obj, (DefaultTrackSelector.VideoTrackInfo) obj2);
                }
            }), (VideoTrackInfo) Collections.max(list2, new Comparator() { // from class: androidx.media3.exoplayer.trackselection.u
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return DefaultTrackSelector.VideoTrackInfo.f((DefaultTrackSelector.VideoTrackInfo) obj, (DefaultTrackSelector.VideoTrackInfo) obj2);
                }
            }), new Comparator() { // from class: androidx.media3.exoplayer.trackselection.u
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return DefaultTrackSelector.VideoTrackInfo.f((DefaultTrackSelector.VideoTrackInfo) obj, (DefaultTrackSelector.VideoTrackInfo) obj2);
                }
            }).i();
        }
    }

    public DefaultTrackSelector(Context context) {
        this(context, new AdaptiveTrackSelection.Factory());
    }

    private static void G(TrackGroupArray trackGroupArray, TrackSelectionParameters trackSelectionParameters, Map<Integer, TrackSelectionOverride> map) {
        TrackSelectionOverride trackSelectionOverride;
        for (int i10 = 0; i10 < trackGroupArray.length; i10++) {
            TrackSelectionOverride trackSelectionOverride2 = trackSelectionParameters.overrides.get(trackGroupArray.b(i10));
            if (trackSelectionOverride2 != null && ((trackSelectionOverride = map.get(Integer.valueOf(trackSelectionOverride2.b()))) == null || (trackSelectionOverride.trackIndices.isEmpty() && !trackSelectionOverride2.trackIndices.isEmpty()))) {
                map.put(Integer.valueOf(trackSelectionOverride2.b()), trackSelectionOverride2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int M(@Nullable String str) {
        if (str == null) {
            return 0;
        }
        switch (str) {
            case "video/dolby-vision":
                return 5;
            case "video/av01":
                return 4;
            case "video/hevc":
                return 3;
            case "video/avc":
                return 1;
            case "video/x-vnd.on2.vp9":
                return 2;
            default:
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int U(Integer num, Integer num2) {
        return 0;
    }

    private static void V(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, RendererConfiguration[] rendererConfigurationArr, ExoTrackSelection[] exoTrackSelectionArr) {
        boolean z6;
        boolean z10 = false;
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        while (true) {
            if (i12 >= mappedTrackInfo.d()) {
                z6 = true;
                break;
            }
            int iE = mappedTrackInfo.e(i12);
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i12];
            if ((iE == 1 || iE == 2) && exoTrackSelection != null && Z(iArr[i12], mappedTrackInfo.f(i12), exoTrackSelection)) {
                if (iE == 1) {
                    if (i11 != -1) {
                        z6 = false;
                        break;
                    }
                    i11 = i12;
                } else {
                    if (i10 != -1) {
                        z6 = false;
                        break;
                    }
                    i10 = i12;
                }
            }
            i12++;
        }
        if (i11 != -1 && i10 != -1) {
            z10 = true;
        }
        if (z6 && z10) {
            RendererConfiguration rendererConfiguration = new RendererConfiguration(true);
            rendererConfigurationArr[i11] = rendererConfiguration;
            rendererConfigurationArr[i10] = rendererConfiguration;
        }
    }

    private static boolean Z(int[][] iArr, TrackGroupArray trackGroupArray, ExoTrackSelection exoTrackSelection) {
        if (exoTrackSelection == null) {
            return false;
        }
        int iC = trackGroupArray.c(exoTrackSelection.getTrackGroup());
        for (int i10 = 0; i10 < exoTrackSelection.length(); i10++) {
            if (h2.j(iArr[iC][exoTrackSelection.getIndexInTrackGroup(i10)]) != 32) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    protected Pair<ExoTrackSelection.Definition, Integer> b0(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, final Parameters parameters) throws ExoPlaybackException {
        final boolean z6 = false;
        for (int i10 = 0; i10 < mappedTrackInfo.d(); i10++) {
            if (2 == mappedTrackInfo.e(i10) && mappedTrackInfo.f(i10).length > 0) {
                z6 = true;
                break;
            }
        }
        return e0(1, mappedTrackInfo, iArr, new TrackInfo.Factory() { // from class: androidx.media3.exoplayer.trackselection.b
            @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
            public final List a(int i11, TrackGroup trackGroup, int[] iArr3) {
                return this.f642a.Q(parameters, z6, i11, trackGroup, iArr3);
            }
        }, new Comparator() { // from class: androidx.media3.exoplayer.trackselection.c
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return DefaultTrackSelector.AudioTrackInfo.c((List) obj, (List) obj2);
            }
        });
    }

    @Nullable
    protected ExoTrackSelection.Definition c0(int i10, TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) throws ExoPlaybackException {
        TrackGroup trackGroup = null;
        OtherTrackScore otherTrackScore = null;
        int i11 = 0;
        for (int i12 = 0; i12 < trackGroupArray.length; i12++) {
            TrackGroup trackGroupB = trackGroupArray.b(i12);
            int[] iArr2 = iArr[i12];
            for (int i13 = 0; i13 < trackGroupB.length; i13++) {
                if (P(iArr2[i13], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    OtherTrackScore otherTrackScore2 = new OtherTrackScore(trackGroupB.c(i13), iArr2[i13]);
                    if (otherTrackScore == null || otherTrackScore2.compareTo(otherTrackScore) > 0) {
                        trackGroup = trackGroupB;
                        i11 = i13;
                        otherTrackScore = otherTrackScore2;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new ExoTrackSelection.Definition(trackGroup, i11);
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    @Nullable
    public RendererCapabilities.Listener d() {
        return this;
    }

    @Nullable
    protected Pair<ExoTrackSelection.Definition, Integer> d0(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, final Parameters parameters, @Nullable final String str) throws ExoPlaybackException {
        return e0(3, mappedTrackInfo, iArr, new TrackInfo.Factory() { // from class: androidx.media3.exoplayer.trackselection.f
            @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
            public final List a(int i10, TrackGroup trackGroup, int[] iArr2) {
                return DefaultTrackSelector.R(parameters, str, i10, trackGroup, iArr2);
            }
        }, new Comparator() { // from class: androidx.media3.exoplayer.trackselection.g
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return DefaultTrackSelector.TextTrackInfo.c((List) obj, (List) obj2);
            }
        });
    }

    @Nullable
    protected Pair<ExoTrackSelection.Definition, Integer> f0(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, final int[] iArr2, final Parameters parameters) throws ExoPlaybackException {
        return e0(2, mappedTrackInfo, iArr, new TrackInfo.Factory() { // from class: androidx.media3.exoplayer.trackselection.d
            @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
            public final List a(int i10, TrackGroup trackGroup, int[] iArr3) {
                return DefaultTrackSelector.S(parameters, iArr2, i10, trackGroup, iArr3);
            }
        }, new Comparator() { // from class: androidx.media3.exoplayer.trackselection.e
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return DefaultTrackSelector.VideoTrackInfo.h((List) obj, (List) obj2);
            }
        });
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public boolean h() {
        return true;
    }

    private static final class OtherTrackScore implements Comparable<OtherTrackScore> {
        private final boolean isDefault;
        private final boolean isWithinRendererCapabilities;

        public OtherTrackScore(Format format, int i10) {
            this.isDefault = (format.selectionFlags & 1) != 0;
            this.isWithinRendererCapabilities = DefaultTrackSelector.P(i10, false);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(OtherTrackScore otherTrackScore) {
            return com.google.common.collect.p.j().g(this.isWithinRendererCapabilities, otherTrackScore.isWithinRendererCapabilities).g(this.isDefault, otherTrackScore.isDefault).i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class TextTrackInfo extends TrackInfo<TextTrackInfo> implements Comparable<TextTrackInfo> {
        private final boolean hasCaptionRoleFlags;
        private final boolean isDefault;
        private final boolean isForced;
        private final boolean isWithinRendererCapabilities;
        private final int preferredLanguageIndex;
        private final int preferredLanguageScore;
        private final int preferredRoleFlagsScore;
        private final int selectedAudioLanguageScore;
        private final int selectionEligibility;

        public static int c(List<TextTrackInfo> list, List<TextTrackInfo> list2) {
            return list.get(0).compareTo(list2.get(0));
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public int a() {
            return this.selectionEligibility;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public boolean b(TextTrackInfo textTrackInfo) {
            return false;
        }

        public TextTrackInfo(int i10, TrackGroup trackGroup, int i11, Parameters parameters, int i12, @Nullable String str) {
            boolean z6;
            boolean z10;
            a0<String> a0VarY;
            int iH;
            boolean z11;
            boolean z12;
            boolean z13;
            super(i10, trackGroup, i11);
            int i13 = 0;
            this.isWithinRendererCapabilities = DefaultTrackSelector.P(i12, false);
            int i14 = this.format.selectionFlags & (~parameters.ignoredTextSelectionFlags);
            if ((i14 & 1) != 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.isDefault = z6;
            if ((i14 & 2) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.isForced = z10;
            if (parameters.preferredTextLanguages.isEmpty()) {
                a0VarY = a0.y("");
            } else {
                a0VarY = parameters.preferredTextLanguages;
            }
            int i15 = 0;
            while (true) {
                if (i15 < a0VarY.size()) {
                    iH = DefaultTrackSelector.H(this.format, a0VarY.get(i15), parameters.selectUndeterminedTextLanguage);
                    if (iH > 0) {
                        break;
                    } else {
                        i15++;
                    }
                } else {
                    i15 = Integer.MAX_VALUE;
                    iH = 0;
                    break;
                }
            }
            this.preferredLanguageIndex = i15;
            this.preferredLanguageScore = iH;
            int iL = DefaultTrackSelector.L(this.format.roleFlags, parameters.preferredTextRoleFlags);
            this.preferredRoleFlagsScore = iL;
            if ((this.format.roleFlags & 1088) != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.hasCaptionRoleFlags = z11;
            if (DefaultTrackSelector.Y(str) == null) {
                z12 = true;
            } else {
                z12 = false;
            }
            int iH2 = DefaultTrackSelector.H(this.format, str, z12);
            this.selectedAudioLanguageScore = iH2;
            if (iH <= 0 && ((!parameters.preferredTextLanguages.isEmpty() || iL <= 0) && !this.isDefault && (!this.isForced || iH2 <= 0))) {
                z13 = false;
            } else {
                z13 = true;
            }
            if (DefaultTrackSelector.P(i12, parameters.exceedRendererCapabilitiesIfNecessary) && z13) {
                i13 = 1;
            }
            this.selectionEligibility = i13;
        }

        public static a0<TextTrackInfo> e(int i10, TrackGroup trackGroup, Parameters parameters, int[] iArr, @Nullable String str) {
            a0.a aVarR = a0.r();
            for (int i11 = 0; i11 < trackGroup.length; i11++) {
                aVarR.d(new TextTrackInfo(i10, trackGroup, i11, parameters, iArr[i11], str));
            }
            return aVarR.k();
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public int compareTo(TextTrackInfo textTrackInfo) {
            t0 t0VarF;
            com.google.common.collect.p pVarG = com.google.common.collect.p.j().g(this.isWithinRendererCapabilities, textTrackInfo.isWithinRendererCapabilities).f(Integer.valueOf(this.preferredLanguageIndex), Integer.valueOf(textTrackInfo.preferredLanguageIndex), t0.c().f()).d(this.preferredLanguageScore, textTrackInfo.preferredLanguageScore).d(this.preferredRoleFlagsScore, textTrackInfo.preferredRoleFlagsScore).g(this.isDefault, textTrackInfo.isDefault);
            Boolean boolValueOf = Boolean.valueOf(this.isForced);
            Boolean boolValueOf2 = Boolean.valueOf(textTrackInfo.isForced);
            if (this.preferredLanguageScore == 0) {
                t0VarF = t0.c();
            } else {
                t0VarF = t0.c().f();
            }
            com.google.common.collect.p pVarD = pVarG.f(boolValueOf, boolValueOf2, t0VarF).d(this.selectedAudioLanguageScore, textTrackInfo.selectedAudioLanguageScore);
            if (this.preferredRoleFlagsScore == 0) {
                pVarD = pVarD.h(this.hasCaptionRoleFlags, textTrackInfo.hasCaptionRoleFlags);
            }
            return pVarD.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static abstract class TrackInfo<T extends TrackInfo<T>> {
        public final Format format;
        public final int rendererIndex;
        public final TrackGroup trackGroup;
        public final int trackIndex;

        public interface Factory<T extends TrackInfo<T>> {
            List<T> a(int i10, TrackGroup trackGroup, int[] iArr);
        }

        public abstract int a();

        public abstract boolean b(T t5);

        public TrackInfo(int i10, TrackGroup trackGroup, int i11) {
            this.rendererIndex = i10;
            this.trackGroup = trackGroup;
            this.trackIndex = i11;
            this.format = trackGroup.c(i11);
        }
    }

    public DefaultTrackSelector(Context context, ExoTrackSelection.Factory factory) {
        this(context, Parameters.J(context), factory);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x000f  */
    private static Point J(boolean z6, int i10, int i11, int i12, int i13) {
        if (z6) {
            if ((i12 > i13) == (i10 > i11)) {
                i11 = i10;
                i10 = i11;
            }
        } else {
            i11 = i10;
            i10 = i11;
        }
        int i14 = i12 * i10;
        int i15 = i13 * i11;
        return i14 >= i15 ? new Point(i11, Util.l(i15, i12)) : new Point(Util.l(i14, i13), i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int L(int i10, int i11) {
        if (i10 == 0 || i10 != i11) {
            return Integer.bitCount(i10 & i11);
        }
        return Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean N(Format format) {
        boolean z6;
        SpatializerWrapperV32 spatializerWrapperV32;
        SpatializerWrapperV32 spatializerWrapperV33;
        synchronized (this.lock) {
            try {
                if (this.parameters.constrainAudioChannelCountToDeviceCapabilities && !this.deviceIsTV && format.channelCount > 2 && (!O(format) || (Util.SDK_INT >= 32 && (spatializerWrapperV33 = this.spatializer) != null && spatializerWrapperV33.e()))) {
                    z6 = Util.SDK_INT >= 32 && (spatializerWrapperV32 = this.spatializer) != null && spatializerWrapperV32.e() && this.spatializer.c() && this.spatializer.d() && this.spatializer.a(this.audioAttributes, format);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    private static boolean O(Format format) {
        String str = format.sampleMimeType;
        if (str == null) {
            return false;
        }
        str.hashCode();
        switch (str) {
            case "audio/eac3-joc":
            case "audio/ac3":
            case "audio/ac4":
            case "audio/eac3":
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List Q(Parameters parameters, boolean z6, int i10, TrackGroup trackGroup, int[] iArr) {
        return AudioTrackInfo.e(i10, trackGroup, parameters, iArr, z6, new com.google.common.base.p() { // from class: androidx.media3.exoplayer.trackselection.j
            @Override // com.google.common.base.p
            public final boolean apply(Object obj) {
                return this.f649a.N((Format) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List S(Parameters parameters, int[] iArr, int i10, TrackGroup trackGroup, int[] iArr2) {
        return VideoTrackInfo.i(i10, trackGroup, parameters, iArr2, iArr[i10]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        boolean z6;
        SpatializerWrapperV32 spatializerWrapperV32;
        synchronized (this.lock) {
            try {
                z6 = this.parameters.constrainAudioChannelCountToDeviceCapabilities && !this.deviceIsTV && Util.SDK_INT >= 32 && (spatializerWrapperV32 = this.spatializer) != null && spatializerWrapperV32.e();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z6) {
            f();
        }
    }

    private void X(Renderer renderer) {
        boolean z6;
        synchronized (this.lock) {
            z6 = this.parameters.allowInvalidateSelectionsOnRendererCapabilitiesChange;
        }
        if (z6) {
            g(renderer);
        }
    }

    @Nullable
    private <T extends TrackInfo<T>> Pair<ExoTrackSelection.Definition, Integer> e0(int i10, MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, TrackInfo.Factory<T> factory, Comparator<List<T>> comparator) {
        int i11;
        RandomAccess randomAccessY;
        ArrayList arrayList = new ArrayList();
        int iD = mappedTrackInfo.d();
        int i12 = 0;
        while (i12 < iD) {
            if (i10 == mappedTrackInfo.e(i12)) {
                TrackGroupArray trackGroupArrayF = mappedTrackInfo.f(i12);
                for (int i13 = 0; i13 < trackGroupArrayF.length; i13++) {
                    TrackGroup trackGroupB = trackGroupArrayF.b(i13);
                    List<T> listA = factory.a(i12, trackGroupB, iArr[i12][i13]);
                    boolean[] zArr = new boolean[trackGroupB.length];
                    int i14 = 0;
                    while (i14 < trackGroupB.length) {
                        T t5 = listA.get(i14);
                        int iA = t5.a();
                        if (zArr[i14] || iA == 0) {
                            i11 = iD;
                        } else {
                            if (iA == 1) {
                                randomAccessY = a0.y(t5);
                                i11 = iD;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(t5);
                                int i15 = i14 + 1;
                                while (i15 < trackGroupB.length) {
                                    T t10 = listA.get(i15);
                                    int i16 = iD;
                                    if (t10.a() == 2 && t5.b(t10)) {
                                        arrayList2.add(t10);
                                        zArr[i15] = true;
                                    }
                                    i15++;
                                    iD = i16;
                                }
                                i11 = iD;
                                randomAccessY = arrayList2;
                            }
                            arrayList.add(randomAccessY);
                        }
                        i14++;
                        iD = i11;
                    }
                }
            }
            i12++;
            iD = iD;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i17 = 0; i17 < list.size(); i17++) {
            iArr2[i17] = ((TrackInfo) list.get(i17)).trackIndex;
        }
        TrackInfo trackInfo = (TrackInfo) list.get(0);
        return Pair.create(new ExoTrackSelection.Definition(trackInfo.trackGroup, iArr2), Integer.valueOf(trackInfo.rendererIndex));
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public Parameters c() {
        Parameters parameters;
        synchronized (this.lock) {
            parameters = this.parameters;
        }
        return parameters;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public void j() {
        SpatializerWrapperV32 spatializerWrapperV32;
        synchronized (this.lock) {
            try {
                if (Util.SDK_INT >= 32 && (spatializerWrapperV32 = this.spatializer) != null) {
                    spatializerWrapperV32.f();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        super.j();
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public void l(AudioAttributes audioAttributes) {
        boolean z6;
        synchronized (this.lock) {
            z6 = !this.audioAttributes.equals(audioAttributes);
            this.audioAttributes = audioAttributes;
        }
        if (z6) {
            W();
        }
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public void m(TrackSelectionParameters trackSelectionParameters) {
        if (trackSelectionParameters instanceof Parameters) {
            g0((Parameters) trackSelectionParameters);
        }
        g0(new Parameters.Builder().i0(trackSelectionParameters).A());
    }

    @Override // androidx.media3.exoplayer.trackselection.MappingTrackSelector
    protected final Pair<RendererConfiguration[], ExoTrackSelection[]> r(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) throws ExoPlaybackException {
        Parameters parameters;
        SpatializerWrapperV32 spatializerWrapperV32;
        synchronized (this.lock) {
            try {
                parameters = this.parameters;
                if (parameters.constrainAudioChannelCountToDeviceCapabilities && Util.SDK_INT >= 32 && (spatializerWrapperV32 = this.spatializer) != null) {
                    spatializerWrapperV32.b(this, (Looper) Assertions.i(Looper.myLooper()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int iD = mappedTrackInfo.d();
        ExoTrackSelection.Definition[] definitionArrA0 = a0(mappedTrackInfo, iArr, iArr2, parameters);
        F(mappedTrackInfo, parameters, definitionArrA0);
        E(mappedTrackInfo, parameters, definitionArrA0);
        for (int i10 = 0; i10 < iD; i10++) {
            int iE = mappedTrackInfo.e(i10);
            if (parameters.L(i10) || parameters.disabledTrackTypes.contains(Integer.valueOf(iE))) {
                definitionArrA0[i10] = null;
            }
        }
        ExoTrackSelection[] exoTrackSelectionArrA = this.trackSelectionFactory.a(definitionArrA0, a(), mediaPeriodId, timeline);
        RendererConfiguration[] rendererConfigurationArr = new RendererConfiguration[iD];
        for (int i11 = 0; i11 < iD; i11++) {
            rendererConfigurationArr[i11] = (parameters.L(i11) || parameters.disabledTrackTypes.contains(Integer.valueOf(mappedTrackInfo.e(i11))) || (mappedTrackInfo.e(i11) != -2 && exoTrackSelectionArrA[i11] == null)) ? null : RendererConfiguration.DEFAULT;
        }
        if (parameters.tunnelingEnabled) {
            V(mappedTrackInfo, iArr, rendererConfigurationArr, exoTrackSelectionArrA);
        }
        return Pair.create(rendererConfigurationArr, exoTrackSelectionArrA);
    }

    public DefaultTrackSelector(Context context, TrackSelectionParameters trackSelectionParameters) {
        this(context, trackSelectionParameters, new AdaptiveTrackSelection.Factory());
    }

    private static void E(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, Parameters parameters, ExoTrackSelection.Definition[] definitionArr) {
        ExoTrackSelection.Definition definition;
        int iD = mappedTrackInfo.d();
        for (int i10 = 0; i10 < iD; i10++) {
            TrackGroupArray trackGroupArrayF = mappedTrackInfo.f(i10);
            if (parameters.N(i10, trackGroupArrayF)) {
                SelectionOverride selectionOverrideM = parameters.M(i10, trackGroupArrayF);
                if (selectionOverrideM != null && selectionOverrideM.tracks.length != 0) {
                    definition = new ExoTrackSelection.Definition(trackGroupArrayF.b(selectionOverrideM.groupIndex), selectionOverrideM.tracks, selectionOverrideM.type);
                } else {
                    definition = null;
                }
                definitionArr[i10] = definition;
            }
        }
    }

    private static void F(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, TrackSelectionParameters trackSelectionParameters, ExoTrackSelection.Definition[] definitionArr) {
        ExoTrackSelection.Definition definition;
        int iD = mappedTrackInfo.d();
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < iD; i10++) {
            G(mappedTrackInfo.f(i10), trackSelectionParameters, map);
        }
        G(mappedTrackInfo.h(), trackSelectionParameters, map);
        for (int i11 = 0; i11 < iD; i11++) {
            TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) map.get(Integer.valueOf(mappedTrackInfo.e(i11)));
            if (trackSelectionOverride != null) {
                if (!trackSelectionOverride.trackIndices.isEmpty() && mappedTrackInfo.f(i11).c(trackSelectionOverride.mediaTrackGroup) != -1) {
                    definition = new ExoTrackSelection.Definition(trackSelectionOverride.mediaTrackGroup, com.google.common.primitives.e.l(trackSelectionOverride.trackIndices));
                } else {
                    definition = null;
                }
                definitionArr[i11] = definition;
            }
        }
    }

    protected static int H(Format format, @Nullable String str, boolean z6) {
        if (!TextUtils.isEmpty(str) && str.equals(format.language)) {
            return 4;
        }
        String strY = Y(str);
        String strY2 = Y(format.language);
        if (strY2 != null && strY != null) {
            if (!strY2.startsWith(strY) && !strY.startsWith(strY2)) {
                if (!Util.e1(strY2, "-")[0].equals(Util.e1(strY, "-")[0])) {
                    return 0;
                }
                return 2;
            }
            return 3;
        }
        if (!z6 || strY2 != null) {
            return 0;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int I(TrackGroup trackGroup, int i10, int i11, boolean z6) {
        int i12;
        int i13 = Integer.MAX_VALUE;
        if (i10 != Integer.MAX_VALUE && i11 != Integer.MAX_VALUE) {
            for (int i14 = 0; i14 < trackGroup.length; i14++) {
                Format formatC = trackGroup.c(i14);
                int i15 = formatC.width;
                if (i15 > 0 && (i12 = formatC.height) > 0) {
                    Point pointJ = J(z6, i10, i11, i15, i12);
                    int i16 = formatC.width;
                    int i17 = formatC.height;
                    int i18 = i16 * i17;
                    if (i16 >= ((int) (pointJ.x * 0.98f)) && i17 >= ((int) (pointJ.y * 0.98f)) && i18 < i13) {
                        i13 = i18;
                    }
                }
            }
        }
        return i13;
    }

    protected static boolean P(int i10, boolean z6) {
        int iH = h2.h(i10);
        if (iH != 4 && (!z6 || iH != 3)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List R(Parameters parameters, String str, int i10, TrackGroup trackGroup, int[] iArr) {
        return TextTrackInfo.e(i10, trackGroup, parameters, iArr, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int T(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            if (num2.intValue() != -1) {
                return -1;
            }
            return 0;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        return num.intValue() - num2.intValue();
    }

    @Nullable
    protected static String Y(@Nullable String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    private void g0(Parameters parameters) {
        boolean z6;
        Assertions.e(parameters);
        synchronized (this.lock) {
            z6 = !this.parameters.equals(parameters);
            this.parameters = parameters;
        }
        if (z6) {
            if (parameters.constrainAudioChannelCountToDeviceCapabilities && this.context == null) {
                Log.i(TAG, AUDIO_CHANNEL_COUNT_CONSTRAINTS_WARN_MESSAGE);
            }
            f();
        }
    }

    protected ExoTrackSelection.Definition[] a0(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, Parameters parameters) throws ExoPlaybackException {
        String str;
        int iD = mappedTrackInfo.d();
        ExoTrackSelection.Definition[] definitionArr = new ExoTrackSelection.Definition[iD];
        Pair<ExoTrackSelection.Definition, Integer> pairF0 = f0(mappedTrackInfo, iArr, iArr2, parameters);
        if (pairF0 != null) {
            definitionArr[((Integer) pairF0.second).intValue()] = (ExoTrackSelection.Definition) pairF0.first;
        }
        Pair<ExoTrackSelection.Definition, Integer> pairB0 = b0(mappedTrackInfo, iArr, iArr2, parameters);
        if (pairB0 != null) {
            definitionArr[((Integer) pairB0.second).intValue()] = (ExoTrackSelection.Definition) pairB0.first;
        }
        if (pairB0 == null) {
            str = null;
        } else {
            Object obj = pairB0.first;
            str = ((ExoTrackSelection.Definition) obj).group.c(((ExoTrackSelection.Definition) obj).tracks[0]).language;
        }
        Pair<ExoTrackSelection.Definition, Integer> pairD0 = d0(mappedTrackInfo, iArr, parameters, str);
        if (pairD0 != null) {
            definitionArr[((Integer) pairD0.second).intValue()] = (ExoTrackSelection.Definition) pairD0.first;
        }
        for (int i10 = 0; i10 < iD; i10++) {
            int iE = mappedTrackInfo.e(i10);
            if (iE != 2 && iE != 1 && iE != 3) {
                definitionArr[i10] = c0(iE, mappedTrackInfo.f(i10), iArr[i10], parameters);
            }
        }
        return definitionArr;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities.Listener
    public void b(Renderer renderer) {
        X(renderer);
    }

    @Deprecated
    public DefaultTrackSelector(TrackSelectionParameters trackSelectionParameters, ExoTrackSelection.Factory factory) {
        this(trackSelectionParameters, factory, (Context) null);
    }

    public DefaultTrackSelector(Context context, TrackSelectionParameters trackSelectionParameters, ExoTrackSelection.Factory factory) {
        this(trackSelectionParameters, factory, context);
    }

    private DefaultTrackSelector(TrackSelectionParameters trackSelectionParameters, ExoTrackSelection.Factory factory, @Nullable Context context) {
        this.lock = new Object();
        this.context = context != null ? context.getApplicationContext() : null;
        this.trackSelectionFactory = factory;
        if (trackSelectionParameters instanceof Parameters) {
            this.parameters = (Parameters) trackSelectionParameters;
        } else {
            this.parameters = (context == null ? Parameters.DEFAULT_WITHOUT_CONTEXT : Parameters.J(context)).A().i0(trackSelectionParameters).A();
        }
        this.audioAttributes = AudioAttributes.DEFAULT;
        boolean z6 = context != null && Util.F0(context);
        this.deviceIsTV = z6;
        if (!z6 && context != null && Util.SDK_INT >= 32) {
            this.spatializer = SpatializerWrapperV32.g(context);
        }
        if (this.parameters.constrainAudioChannelCountToDeviceCapabilities && context == null) {
            Log.i(TAG, AUDIO_CHANNEL_COUNT_CONSTRAINTS_WARN_MESSAGE);
        }
    }
}
