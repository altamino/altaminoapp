package com.google.android.exoplayer2.trackselection;

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
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.p3;
import com.google.android.exoplayer2.source.f1;
import com.google.android.exoplayer2.source.h1;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.z3;
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

/* JADX INFO: loaded from: classes2.dex */
public class m extends u {
    private static final String AUDIO_CHANNEL_COUNT_CONSTRAINTS_WARN_MESSAGE = "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.";
    private static final float FRACTION_TO_CONSIDER_FULLSCREEN = 0.98f;
    protected static final int SELECTION_ELIGIBILITY_ADAPTIVE = 2;
    protected static final int SELECTION_ELIGIBILITY_FIXED = 1;
    protected static final int SELECTION_ELIGIBILITY_NO = 0;
    private static final String TAG = "DefaultTrackSelector";

    @GuardedBy
    private com.google.android.exoplayer2.audio.e audioAttributes;

    @Nullable
    public final Context context;
    private final boolean deviceIsTV;
    private final Object lock;

    @GuardedBy
    private d parameters;

    @Nullable
    @GuardedBy
    private f spatializer;
    private final s.b trackSelectionFactory;
    private static final t0<Integer> FORMAT_VALUE_ORDERING = t0.a(new Comparator() { // from class: com.google.android.exoplayer2.trackselection.f
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return m.P((Integer) obj, (Integer) obj2);
        }
    });
    private static final t0<Integer> NO_ORDER = t0.a(new Comparator() { // from class: com.google.android.exoplayer2.trackselection.g
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return m.Q((Integer) obj, (Integer) obj2);
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    static final class b extends h<b> implements Comparable<b> {
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
        private final d parameters;
        private final int preferredLanguageIndex;
        private final int preferredLanguageScore;
        private final int preferredMimeTypeMatchIndex;
        private final int preferredRoleFlagsScore;
        private final int sampleRate;
        private final int selectionEligibility;
        private final boolean usesHardwareAcceleration;
        private final boolean usesPrimaryDecoder;

        @Override // com.google.android.exoplayer2.trackselection.m.h
        public int a() {
            return this.selectionEligibility;
        }

        private int f(int i10, boolean z6) {
            if (!m.L(i10, this.parameters.exceedRendererCapabilitiesIfNecessary)) {
                return 0;
            }
            if (!this.isWithinConstraints && !this.parameters.exceedAudioConstraintsIfNecessary) {
                return 0;
            }
            if (m.L(i10, false) && this.isWithinConstraints && this.format.bitrate != -1) {
                d dVar = this.parameters;
                if (!dVar.forceHighestSupportedBitrate && !dVar.forceLowestBitrate && (dVar.allowMultipleAdaptiveSelections || !z6)) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            t0 t0VarF = (this.isWithinConstraints && this.isWithinRendererCapabilities) ? m.FORMAT_VALUE_ORDERING : m.FORMAT_VALUE_ORDERING.f();
            com.google.common.collect.p pVarF = com.google.common.collect.p.j().g(this.isWithinRendererCapabilities, bVar.isWithinRendererCapabilities).f(Integer.valueOf(this.preferredLanguageIndex), Integer.valueOf(bVar.preferredLanguageIndex), t0.c().f()).d(this.preferredLanguageScore, bVar.preferredLanguageScore).d(this.preferredRoleFlagsScore, bVar.preferredRoleFlagsScore).g(this.isDefaultSelectionFlag, bVar.isDefaultSelectionFlag).g(this.hasMainOrNoRoleFlag, bVar.hasMainOrNoRoleFlag).f(Integer.valueOf(this.localeLanguageMatchIndex), Integer.valueOf(bVar.localeLanguageMatchIndex), t0.c().f()).d(this.localeLanguageScore, bVar.localeLanguageScore).g(this.isWithinConstraints, bVar.isWithinConstraints).f(Integer.valueOf(this.preferredMimeTypeMatchIndex), Integer.valueOf(bVar.preferredMimeTypeMatchIndex), t0.c().f()).f(Integer.valueOf(this.bitrate), Integer.valueOf(bVar.bitrate), this.parameters.forceLowestBitrate ? m.FORMAT_VALUE_ORDERING.f() : m.NO_ORDER).g(this.usesPrimaryDecoder, bVar.usesPrimaryDecoder).g(this.usesHardwareAcceleration, bVar.usesHardwareAcceleration).f(Integer.valueOf(this.channelCount), Integer.valueOf(bVar.channelCount), t0VarF).f(Integer.valueOf(this.sampleRate), Integer.valueOf(bVar.sampleRate), t0VarF);
            Integer numValueOf = Integer.valueOf(this.bitrate);
            Integer numValueOf2 = Integer.valueOf(bVar.bitrate);
            if (!o0.c(this.language, bVar.language)) {
                t0VarF = m.NO_ORDER;
            }
            return pVarF.f(numValueOf, numValueOf2, t0VarF).i();
        }

        @Override // com.google.android.exoplayer2.trackselection.m.h
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public boolean b(b bVar) {
            int i10;
            String str;
            int i11;
            d dVar = this.parameters;
            if ((dVar.allowAudioMixedChannelCountAdaptiveness || ((i11 = this.format.channelCount) != -1 && i11 == bVar.format.channelCount)) && (dVar.allowAudioMixedMimeTypeAdaptiveness || ((str = this.format.sampleMimeType) != null && TextUtils.equals(str, bVar.format.sampleMimeType)))) {
                d dVar2 = this.parameters;
                if ((dVar2.allowAudioMixedSampleRateAdaptiveness || ((i10 = this.format.sampleRate) != -1 && i10 == bVar.format.sampleRate)) && (dVar2.allowAudioMixedDecoderSupportAdaptiveness || (this.usesPrimaryDecoder == bVar.usesPrimaryDecoder && this.usesHardwareAcceleration == bVar.usesHardwareAcceleration))) {
                    return true;
                }
            }
            return false;
        }

        public b(int i10, f1 f1Var, int i11, d dVar, int i12, boolean z6, com.google.common.base.p<a2> pVar) {
            int i13;
            int iD;
            boolean z10;
            boolean z11;
            boolean z12;
            int iD2;
            boolean z13;
            super(i10, f1Var, i11);
            this.parameters = dVar;
            this.language = m.T(this.format.language);
            this.isWithinRendererCapabilities = m.L(i12, false);
            int i14 = 0;
            while (true) {
                i13 = Integer.MAX_VALUE;
                if (i14 < dVar.preferredAudioLanguages.size()) {
                    iD = m.D(this.format, dVar.preferredAudioLanguages.get(i14), false);
                    if (iD > 0) {
                        break;
                    } else {
                        i14++;
                    }
                } else {
                    iD = 0;
                    i14 = Integer.MAX_VALUE;
                    break;
                }
            }
            this.preferredLanguageIndex = i14;
            this.preferredLanguageScore = iD;
            this.preferredRoleFlagsScore = m.H(this.format.roleFlags, dVar.preferredAudioRoleFlags);
            a2 a2Var = this.format;
            int i15 = a2Var.roleFlags;
            if (i15 != 0 && (i15 & 1) == 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            this.hasMainOrNoRoleFlag = z10;
            if ((a2Var.selectionFlags & 1) != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.isDefaultSelectionFlag = z11;
            int i16 = a2Var.channelCount;
            this.channelCount = i16;
            this.sampleRate = a2Var.sampleRate;
            int i17 = a2Var.bitrate;
            this.bitrate = i17;
            if ((i17 == -1 || i17 <= dVar.maxAudioBitrate) && ((i16 == -1 || i16 <= dVar.maxAudioChannelCount) && pVar.apply(a2Var))) {
                z12 = true;
            } else {
                z12 = false;
            }
            this.isWithinConstraints = z12;
            String[] strArrC0 = o0.c0();
            int i18 = 0;
            while (true) {
                if (i18 < strArrC0.length) {
                    iD2 = m.D(this.format, strArrC0[i18], false);
                    if (iD2 > 0) {
                        break;
                    } else {
                        i18++;
                    }
                } else {
                    iD2 = 0;
                    i18 = Integer.MAX_VALUE;
                    break;
                }
            }
            this.localeLanguageMatchIndex = i18;
            this.localeLanguageScore = iD2;
            for (int i19 = 0; i19 < dVar.preferredAudioMimeTypes.size(); i19++) {
                String str = this.format.sampleMimeType;
                if (str != null && str.equals(dVar.preferredAudioMimeTypes.get(i19))) {
                    i13 = i19;
                    break;
                }
            }
            this.preferredMimeTypeMatchIndex = i13;
            if (n3.e(i12) == 128) {
                z13 = true;
            } else {
                z13 = false;
            }
            this.usesPrimaryDecoder = z13;
            this.usesHardwareAcceleration = n3.g(i12) == 64;
            this.selectionEligibility = f(i12, z6);
        }

        public static int c(List<b> list, List<b> list2) {
            return ((b) Collections.max(list)).compareTo((b) Collections.max(list2));
        }

        public static com.google.common.collect.a0<b> e(int i10, f1 f1Var, d dVar, int[] iArr, boolean z6, com.google.common.base.p<a2> pVar) {
            com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
            for (int i11 = 0; i11 < f1Var.length; i11++) {
                aVarR.d(new b(i10, f1Var, i11, dVar, iArr[i11], z6, pVar));
            }
            return aVarR.k();
        }
    }

    public static final class d extends z {
        public static final com.google.android.exoplayer2.h.a<d> CREATOR;

        @Deprecated
        public static final d DEFAULT;
        public static final d DEFAULT_WITHOUT_CONTEXT;
        private static final int FIELD_ALLOW_AUDIO_MIXED_CHANNEL_COUNT_ADAPTIVENESS = 1006;
        private static final int FIELD_ALLOW_AUDIO_MIXED_DECODER_SUPPORT_ADAPTIVENESS = 1015;
        private static final int FIELD_ALLOW_AUDIO_MIXED_MIME_TYPE_ADAPTIVENESS = 1004;
        private static final int FIELD_ALLOW_AUDIO_MIXED_SAMPLE_RATE_ADAPTIVENESS = 1005;
        private static final int FIELD_ALLOW_MULTIPLE_ADAPTIVE_SELECTIONS = 1009;
        private static final int FIELD_ALLOW_VIDEO_MIXED_DECODER_SUPPORT_ADAPTIVENESS = 1014;
        private static final int FIELD_ALLOW_VIDEO_MIXED_MIME_TYPE_ADAPTIVENESS = 1001;
        private static final int FIELD_ALLOW_VIDEO_NON_SEAMLESS_ADAPTIVENESS = 1002;
        private static final int FIELD_CONSTRAIN_AUDIO_CHANNEL_COUNT_TO_DEVICE_CAPABILITIES = 1016;
        private static final int FIELD_EXCEED_AUDIO_CONSTRAINTS_IF_NCESSARY = 1003;
        private static final int FIELD_EXCEED_RENDERER_CAPABILITIES_IF_NECESSARY = 1007;
        private static final int FIELD_EXCEED_VIDEO_CONSTRAINTS_IF_NECESSARY = 1000;
        private static final int FIELD_RENDERER_DISABLED_INDICES = 1013;
        private static final int FIELD_SELECTION_OVERRIDES = 1012;
        private static final int FIELD_SELECTION_OVERRIDES_RENDERER_INDICES = 1010;
        private static final int FIELD_SELECTION_OVERRIDES_TRACK_GROUP_ARRAYS = 1011;
        private static final int FIELD_TUNNELING_ENABLED = 1008;
        public final boolean allowAudioMixedChannelCountAdaptiveness;
        public final boolean allowAudioMixedDecoderSupportAdaptiveness;
        public final boolean allowAudioMixedMimeTypeAdaptiveness;
        public final boolean allowAudioMixedSampleRateAdaptiveness;
        public final boolean allowMultipleAdaptiveSelections;
        public final boolean allowVideoMixedDecoderSupportAdaptiveness;
        public final boolean allowVideoMixedMimeTypeAdaptiveness;
        public final boolean allowVideoNonSeamlessAdaptiveness;
        public final boolean constrainAudioChannelCountToDeviceCapabilities;
        public final boolean exceedAudioConstraintsIfNecessary;
        public final boolean exceedRendererCapabilitiesIfNecessary;
        public final boolean exceedVideoConstraintsIfNecessary;
        private final SparseBooleanArray rendererDisabledFlags;
        private final SparseArray<Map<h1, e>> selectionOverrides;
        public final boolean tunnelingEnabled;

        public static final class a extends z.a {
            private boolean allowAudioMixedChannelCountAdaptiveness;
            private boolean allowAudioMixedDecoderSupportAdaptiveness;
            private boolean allowAudioMixedMimeTypeAdaptiveness;
            private boolean allowAudioMixedSampleRateAdaptiveness;
            private boolean allowMultipleAdaptiveSelections;
            private boolean allowVideoMixedDecoderSupportAdaptiveness;
            private boolean allowVideoMixedMimeTypeAdaptiveness;
            private boolean allowVideoNonSeamlessAdaptiveness;
            private boolean constrainAudioChannelCountToDeviceCapabilities;
            private boolean exceedAudioConstraintsIfNecessary;
            private boolean exceedRendererCapabilitiesIfNecessary;
            private boolean exceedVideoConstraintsIfNecessary;
            private final SparseBooleanArray rendererDisabledFlags;
            private final SparseArray<Map<h1, e>> selectionOverrides;
            private boolean tunnelingEnabled;

            private void e0() {
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
            }

            public a h0(boolean z6) {
                this.allowAudioMixedChannelCountAdaptiveness = z6;
                return this;
            }

            public a i0(boolean z6) {
                this.allowAudioMixedDecoderSupportAdaptiveness = z6;
                return this;
            }

            public a j0(boolean z6) {
                this.allowAudioMixedMimeTypeAdaptiveness = z6;
                return this;
            }

            public a k0(boolean z6) {
                this.allowAudioMixedSampleRateAdaptiveness = z6;
                return this;
            }

            public a l0(boolean z6) {
                this.allowMultipleAdaptiveSelections = z6;
                return this;
            }

            public a m0(boolean z6) {
                this.allowVideoMixedDecoderSupportAdaptiveness = z6;
                return this;
            }

            public a n0(boolean z6) {
                this.allowVideoMixedMimeTypeAdaptiveness = z6;
                return this;
            }

            public a o0(boolean z6) {
                this.allowVideoNonSeamlessAdaptiveness = z6;
                return this;
            }

            public a p0(boolean z6) {
                this.constrainAudioChannelCountToDeviceCapabilities = z6;
                return this;
            }

            public a q0(boolean z6) {
                this.exceedAudioConstraintsIfNecessary = z6;
                return this;
            }

            public a r0(boolean z6) {
                this.exceedRendererCapabilitiesIfNecessary = z6;
                return this;
            }

            public a s0(boolean z6) {
                this.exceedVideoConstraintsIfNecessary = z6;
                return this;
            }

            public a z0(boolean z6) {
                this.tunnelingEnabled = z6;
                return this;
            }

            private static SparseArray<Map<h1, e>> d0(SparseArray<Map<h1, e>> sparseArray) {
                SparseArray<Map<h1, e>> sparseArray2 = new SparseArray<>();
                for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                    sparseArray2.put(sparseArray.keyAt(i10), new HashMap(sparseArray.valueAt(i10)));
                }
                return sparseArray2;
            }

            private SparseBooleanArray f0(@Nullable int[] iArr) {
                if (iArr == null) {
                    return new SparseBooleanArray();
                }
                SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
                for (int i10 : iArr) {
                    sparseBooleanArray.append(i10, true);
                }
                return sparseBooleanArray;
            }

            /* JADX WARN: Multi-variable type inference failed */
            private void x0(Bundle bundle) {
                int[] intArray = bundle.getIntArray(z.c(1010));
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(z.c(1011));
                com.google.common.collect.a0 a0VarX = parcelableArrayList == null ? com.google.common.collect.a0.x() : com.google.android.exoplayer2.util.c.b(h1.CREATOR, parcelableArrayList);
                SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(z.c(1012));
                SparseArray sparseArray = sparseParcelableArray == null ? new SparseArray() : com.google.android.exoplayer2.util.c.c(e.CREATOR, sparseParcelableArray);
                if (intArray == null || intArray.length != a0VarX.size()) {
                    return;
                }
                for (int i10 = 0; i10 < intArray.length; i10++) {
                    w0(intArray[i10], (h1) a0VarX.get(i10), (e) sparseArray.get(i10));
                }
            }

            @Override // com.google.android.exoplayer2.trackselection.z.a
            /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
            public d A() {
                return new d(this);
            }

            @Deprecated
            public a w0(int i10, h1 h1Var, @Nullable e eVar) {
                Map<h1, e> map = this.selectionOverrides.get(i10);
                if (map == null) {
                    map = new HashMap<>();
                    this.selectionOverrides.put(i10, map);
                }
                if (map.containsKey(h1Var) && o0.c(map.get(h1Var), eVar)) {
                    return this;
                }
                map.put(h1Var, eVar);
                return this;
            }

            @Deprecated
            public a() {
                this.selectionOverrides = new SparseArray<>();
                this.rendererDisabledFlags = new SparseBooleanArray();
                e0();
            }

            @Override // com.google.android.exoplayer2.trackselection.z.a
            /* JADX INFO: renamed from: A0, reason: merged with bridge method [inline-methods] */
            public a K(int i10, int i11, boolean z6) {
                super.K(i10, i11, z6);
                return this;
            }

            @Override // com.google.android.exoplayer2.trackselection.z.a
            /* JADX INFO: renamed from: B0, reason: merged with bridge method [inline-methods] */
            public a L(Context context, boolean z6) {
                super.L(context, z6);
                return this;
            }

            @Override // com.google.android.exoplayer2.trackselection.z.a
            /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
            public a B(int i10) {
                super.B(i10);
                return this;
            }

            protected a g0(z zVar) {
                super.E(zVar);
                return this;
            }

            @Override // com.google.android.exoplayer2.trackselection.z.a
            /* JADX INFO: renamed from: t0, reason: merged with bridge method [inline-methods] */
            public a F(int i10) {
                super.F(i10);
                return this;
            }

            @Override // com.google.android.exoplayer2.trackselection.z.a
            /* JADX INFO: renamed from: u0, reason: merged with bridge method [inline-methods] */
            public a G(x xVar) {
                super.G(xVar);
                return this;
            }

            @Override // com.google.android.exoplayer2.trackselection.z.a
            /* JADX INFO: renamed from: v0, reason: merged with bridge method [inline-methods] */
            public a H(Context context) {
                super.H(context);
                return this;
            }

            @Override // com.google.android.exoplayer2.trackselection.z.a
            /* JADX INFO: renamed from: y0, reason: merged with bridge method [inline-methods] */
            public a J(int i10, boolean z6) {
                super.J(i10, z6);
                return this;
            }

            public a(Context context) {
                super(context);
                this.selectionOverrides = new SparseArray<>();
                this.rendererDisabledFlags = new SparseBooleanArray();
                e0();
            }

            private a(d dVar) {
                super(dVar);
                this.exceedVideoConstraintsIfNecessary = dVar.exceedVideoConstraintsIfNecessary;
                this.allowVideoMixedMimeTypeAdaptiveness = dVar.allowVideoMixedMimeTypeAdaptiveness;
                this.allowVideoNonSeamlessAdaptiveness = dVar.allowVideoNonSeamlessAdaptiveness;
                this.allowVideoMixedDecoderSupportAdaptiveness = dVar.allowVideoMixedDecoderSupportAdaptiveness;
                this.exceedAudioConstraintsIfNecessary = dVar.exceedAudioConstraintsIfNecessary;
                this.allowAudioMixedMimeTypeAdaptiveness = dVar.allowAudioMixedMimeTypeAdaptiveness;
                this.allowAudioMixedSampleRateAdaptiveness = dVar.allowAudioMixedSampleRateAdaptiveness;
                this.allowAudioMixedChannelCountAdaptiveness = dVar.allowAudioMixedChannelCountAdaptiveness;
                this.allowAudioMixedDecoderSupportAdaptiveness = dVar.allowAudioMixedDecoderSupportAdaptiveness;
                this.constrainAudioChannelCountToDeviceCapabilities = dVar.constrainAudioChannelCountToDeviceCapabilities;
                this.exceedRendererCapabilitiesIfNecessary = dVar.exceedRendererCapabilitiesIfNecessary;
                this.tunnelingEnabled = dVar.tunnelingEnabled;
                this.allowMultipleAdaptiveSelections = dVar.allowMultipleAdaptiveSelections;
                this.selectionOverrides = d0(dVar.selectionOverrides);
                this.rendererDisabledFlags = dVar.rendererDisabledFlags.clone();
            }

            private a(Bundle bundle) {
                super(bundle);
                e0();
                d dVar = d.DEFAULT_WITHOUT_CONTEXT;
                s0(bundle.getBoolean(z.c(1000), dVar.exceedVideoConstraintsIfNecessary));
                n0(bundle.getBoolean(z.c(1001), dVar.allowVideoMixedMimeTypeAdaptiveness));
                o0(bundle.getBoolean(z.c(1002), dVar.allowVideoNonSeamlessAdaptiveness));
                m0(bundle.getBoolean(z.c(1014), dVar.allowVideoMixedDecoderSupportAdaptiveness));
                q0(bundle.getBoolean(z.c(1003), dVar.exceedAudioConstraintsIfNecessary));
                j0(bundle.getBoolean(z.c(1004), dVar.allowAudioMixedMimeTypeAdaptiveness));
                k0(bundle.getBoolean(z.c(1005), dVar.allowAudioMixedSampleRateAdaptiveness));
                h0(bundle.getBoolean(z.c(1006), dVar.allowAudioMixedChannelCountAdaptiveness));
                i0(bundle.getBoolean(z.c(1015), dVar.allowAudioMixedDecoderSupportAdaptiveness));
                p0(bundle.getBoolean(z.c(1016), dVar.constrainAudioChannelCountToDeviceCapabilities));
                r0(bundle.getBoolean(z.c(1007), dVar.exceedRendererCapabilitiesIfNecessary));
                z0(bundle.getBoolean(z.c(1008), dVar.tunnelingEnabled));
                l0(bundle.getBoolean(z.c(1009), dVar.allowMultipleAdaptiveSelections));
                this.selectionOverrides = new SparseArray<>();
                x0(bundle);
                this.rendererDisabledFlags = f0(bundle.getIntArray(z.c(1013)));
            }
        }

        @Override // com.google.android.exoplayer2.trackselection.z
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return super.equals(dVar) && this.exceedVideoConstraintsIfNecessary == dVar.exceedVideoConstraintsIfNecessary && this.allowVideoMixedMimeTypeAdaptiveness == dVar.allowVideoMixedMimeTypeAdaptiveness && this.allowVideoNonSeamlessAdaptiveness == dVar.allowVideoNonSeamlessAdaptiveness && this.allowVideoMixedDecoderSupportAdaptiveness == dVar.allowVideoMixedDecoderSupportAdaptiveness && this.exceedAudioConstraintsIfNecessary == dVar.exceedAudioConstraintsIfNecessary && this.allowAudioMixedMimeTypeAdaptiveness == dVar.allowAudioMixedMimeTypeAdaptiveness && this.allowAudioMixedSampleRateAdaptiveness == dVar.allowAudioMixedSampleRateAdaptiveness && this.allowAudioMixedChannelCountAdaptiveness == dVar.allowAudioMixedChannelCountAdaptiveness && this.allowAudioMixedDecoderSupportAdaptiveness == dVar.allowAudioMixedDecoderSupportAdaptiveness && this.constrainAudioChannelCountToDeviceCapabilities == dVar.constrainAudioChannelCountToDeviceCapabilities && this.exceedRendererCapabilitiesIfNecessary == dVar.exceedRendererCapabilitiesIfNecessary && this.tunnelingEnabled == dVar.tunnelingEnabled && this.allowMultipleAdaptiveSelections == dVar.allowMultipleAdaptiveSelections && g(this.rendererDisabledFlags, dVar.rendererDisabledFlags) && h(this.selectionOverrides, dVar.selectionOverrides);
        }

        static {
            d dVarA = new a().A();
            DEFAULT_WITHOUT_CONTEXT = dVarA;
            DEFAULT = dVarA;
            CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.trackselection.n
                @Override // com.google.android.exoplayer2.h.a
                public final com.google.android.exoplayer2.h a(Bundle bundle) {
                    return m.d.p(bundle);
                }
            };
        }

        private d(a aVar) {
            super(aVar);
            this.exceedVideoConstraintsIfNecessary = aVar.exceedVideoConstraintsIfNecessary;
            this.allowVideoMixedMimeTypeAdaptiveness = aVar.allowVideoMixedMimeTypeAdaptiveness;
            this.allowVideoNonSeamlessAdaptiveness = aVar.allowVideoNonSeamlessAdaptiveness;
            this.allowVideoMixedDecoderSupportAdaptiveness = aVar.allowVideoMixedDecoderSupportAdaptiveness;
            this.exceedAudioConstraintsIfNecessary = aVar.exceedAudioConstraintsIfNecessary;
            this.allowAudioMixedMimeTypeAdaptiveness = aVar.allowAudioMixedMimeTypeAdaptiveness;
            this.allowAudioMixedSampleRateAdaptiveness = aVar.allowAudioMixedSampleRateAdaptiveness;
            this.allowAudioMixedChannelCountAdaptiveness = aVar.allowAudioMixedChannelCountAdaptiveness;
            this.allowAudioMixedDecoderSupportAdaptiveness = aVar.allowAudioMixedDecoderSupportAdaptiveness;
            this.constrainAudioChannelCountToDeviceCapabilities = aVar.constrainAudioChannelCountToDeviceCapabilities;
            this.exceedRendererCapabilitiesIfNecessary = aVar.exceedRendererCapabilitiesIfNecessary;
            this.tunnelingEnabled = aVar.tunnelingEnabled;
            this.allowMultipleAdaptiveSelections = aVar.allowMultipleAdaptiveSelections;
            this.selectionOverrides = aVar.selectionOverrides;
            this.rendererDisabledFlags = aVar.rendererDisabledFlags;
        }

        public static d k(Context context) {
            return new a(context).A();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ d p(Bundle bundle) {
            return new a(bundle).A();
        }

        private static void q(Bundle bundle, SparseArray<Map<h1, e>> sparseArray) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            SparseArray sparseArray2 = new SparseArray();
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                int iKeyAt = sparseArray.keyAt(i10);
                for (Map.Entry<h1, e> entry : sparseArray.valueAt(i10).entrySet()) {
                    e value = entry.getValue();
                    if (value != null) {
                        sparseArray2.put(arrayList2.size(), value);
                    }
                    arrayList2.add(entry.getKey());
                    arrayList.add(Integer.valueOf(iKeyAt));
                }
                bundle.putIntArray(z.c(1010), com.google.common.primitives.e.l(arrayList));
                bundle.putParcelableArrayList(z.c(1011), com.google.android.exoplayer2.util.c.d(arrayList2));
                bundle.putSparseParcelableArray(z.c(1012), com.google.android.exoplayer2.util.c.e(sparseArray2));
            }
        }

        @Override // com.google.android.exoplayer2.trackselection.z
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public a a() {
            return new a();
        }

        public boolean m(int i10) {
            return this.rendererDisabledFlags.get(i10);
        }

        @Nullable
        @Deprecated
        public e n(int i10, h1 h1Var) {
            Map<h1, e> map = this.selectionOverrides.get(i10);
            if (map != null) {
                return map.get(h1Var);
            }
            return null;
        }

        @Deprecated
        public boolean o(int i10, h1 h1Var) {
            Map<h1, e> map = this.selectionOverrides.get(i10);
            return map != null && map.containsKey(h1Var);
        }

        private static boolean g(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
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

        private static boolean h(SparseArray<Map<h1, e>> sparseArray, SparseArray<Map<h1, e>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i10));
                if (iIndexOfKey < 0 || !i(sparseArray.valueAt(i10), sparseArray2.valueAt(iIndexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        private static boolean i(Map<h1, e> map, Map<h1, e> map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (Map.Entry<h1, e> entry : map.entrySet()) {
                h1 key = entry.getKey();
                if (!map2.containsKey(key) || !o0.c(entry.getValue(), map2.get(key))) {
                    return false;
                }
            }
            return true;
        }

        private static int[] l(SparseBooleanArray sparseBooleanArray) {
            int[] iArr = new int[sparseBooleanArray.size()];
            for (int i10 = 0; i10 < sparseBooleanArray.size(); i10++) {
                iArr[i10] = sparseBooleanArray.keyAt(i10);
            }
            return iArr;
        }

        @Override // com.google.android.exoplayer2.trackselection.z
        public int hashCode() {
            return ((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.exceedVideoConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowVideoMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowVideoNonSeamlessAdaptiveness ? 1 : 0)) * 31) + (this.allowVideoMixedDecoderSupportAdaptiveness ? 1 : 0)) * 31) + (this.exceedAudioConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowAudioMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedSampleRateAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedChannelCountAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedDecoderSupportAdaptiveness ? 1 : 0)) * 31) + (this.constrainAudioChannelCountToDeviceCapabilities ? 1 : 0)) * 31) + (this.exceedRendererCapabilitiesIfNecessary ? 1 : 0)) * 31) + (this.tunnelingEnabled ? 1 : 0)) * 31) + (this.allowMultipleAdaptiveSelections ? 1 : 0);
        }

        @Override // com.google.android.exoplayer2.trackselection.z, com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = super.toBundle();
            bundle.putBoolean(z.c(1000), this.exceedVideoConstraintsIfNecessary);
            bundle.putBoolean(z.c(1001), this.allowVideoMixedMimeTypeAdaptiveness);
            bundle.putBoolean(z.c(1002), this.allowVideoNonSeamlessAdaptiveness);
            bundle.putBoolean(z.c(1014), this.allowVideoMixedDecoderSupportAdaptiveness);
            bundle.putBoolean(z.c(1003), this.exceedAudioConstraintsIfNecessary);
            bundle.putBoolean(z.c(1004), this.allowAudioMixedMimeTypeAdaptiveness);
            bundle.putBoolean(z.c(1005), this.allowAudioMixedSampleRateAdaptiveness);
            bundle.putBoolean(z.c(1006), this.allowAudioMixedChannelCountAdaptiveness);
            bundle.putBoolean(z.c(1015), this.allowAudioMixedDecoderSupportAdaptiveness);
            bundle.putBoolean(z.c(1016), this.constrainAudioChannelCountToDeviceCapabilities);
            bundle.putBoolean(z.c(1007), this.exceedRendererCapabilitiesIfNecessary);
            bundle.putBoolean(z.c(1008), this.tunnelingEnabled);
            bundle.putBoolean(z.c(1009), this.allowMultipleAdaptiveSelections);
            q(bundle, this.selectionOverrides);
            bundle.putIntArray(z.c(1013), l(this.rendererDisabledFlags));
            return bundle;
        }
    }

    public static final class e implements com.google.android.exoplayer2.h {
        public static final com.google.android.exoplayer2.h.a<e> CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.trackselection.o
            @Override // com.google.android.exoplayer2.h.a
            public final com.google.android.exoplayer2.h a(Bundle bundle) {
                return m.e.c(bundle);
            }
        };
        private static final int FIELD_GROUP_INDEX = 0;
        private static final int FIELD_TRACKS = 1;
        private static final int FIELD_TRACK_TYPE = 2;
        public final int groupIndex;
        public final int length;
        public final int[] tracks;
        public final int type;

        public e(int i10, int... iArr) {
            this(i10, iArr, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ e c(Bundle bundle) {
            boolean z6 = false;
            int i10 = bundle.getInt(b(0), -1);
            int[] intArray = bundle.getIntArray(b(1));
            int i11 = bundle.getInt(b(2), -1);
            if (i10 >= 0 && i11 >= 0) {
                z6 = true;
            }
            com.google.android.exoplayer2.util.a.a(z6);
            com.google.android.exoplayer2.util.a.e(intArray);
            return new e(i10, intArray, i11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.groupIndex == eVar.groupIndex && Arrays.equals(this.tracks, eVar.tracks) && this.type == eVar.type;
        }

        public e(int i10, int[] iArr, int i11) {
            this.groupIndex = i10;
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.tracks = iArrCopyOf;
            this.length = iArr.length;
            this.type = i11;
            Arrays.sort(iArrCopyOf);
        }

        private static String b(int i10) {
            return Integer.toString(i10, 36);
        }

        public int hashCode() {
            return (((this.groupIndex * 31) + Arrays.hashCode(this.tracks)) * 31) + this.type;
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(b(0), this.groupIndex);
            bundle.putIntArray(b(1), this.tracks);
            bundle.putInt(b(2), this.type);
            return bundle;
        }
    }

    @RequiresApi
    private static class f {

        @Nullable
        private Handler handler;

        @Nullable
        private Spatializer$OnSpatializerStateChangedListener listener;
        private final boolean spatializationSupported;
        private final Spatializer spatializer;

        class a implements Spatializer$OnSpatializerStateChangedListener {
            final /* synthetic */ m val$defaultTrackSelector;

            a(f fVar, m mVar) {
                this.val$defaultTrackSelector = mVar;
            }

            public void onSpatializerAvailableChanged(Spatializer spatializer, boolean z6) {
                this.val$defaultTrackSelector.S();
            }

            public void onSpatializerEnabledChanged(Spatializer spatializer, boolean z6) {
                this.val$defaultTrackSelector.S();
            }
        }

        public boolean e() {
            return this.spatializationSupported;
        }

        @Nullable
        public static f g(Context context) {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager == null) {
                return null;
            }
            return new f(audioManager.getSpatializer());
        }

        public boolean a(com.google.android.exoplayer2.audio.e eVar, a2 a2Var) {
            AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(o0.D(("audio/eac3-joc".equals(a2Var.sampleMimeType) && a2Var.channelCount == 16) ? 12 : a2Var.channelCount));
            int i10 = a2Var.sampleRate;
            if (i10 != -1) {
                channelMask.setSampleRate(i10);
            }
            return this.spatializer.canBeSpatialized(eVar.b().audioAttributes, channelMask.build());
        }

        public void b(m mVar, Looper looper) {
            if (this.listener == null && this.handler == null) {
                this.listener = new a(this, mVar);
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
            ((Handler) o0.j(this.handler)).removeCallbacksAndMessages(null);
            this.handler = null;
            this.listener = null;
        }

        private f(Spatializer spatializer) {
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
    static final class i extends h<i> {
        private final boolean allowMixedMimeTypes;
        private final int bitrate;
        private final int codecPreferenceScore;
        private final boolean hasMainOrNoRoleFlag;
        private final boolean isWithinMaxConstraints;
        private final boolean isWithinMinConstraints;
        private final boolean isWithinRendererCapabilities;
        private final d parameters;
        private final int pixelCount;
        private final int preferredMimeTypeMatchIndex;
        private final int preferredRoleFlagsScore;
        private final int selectionEligibility;
        private final boolean usesHardwareAcceleration;
        private final boolean usesPrimaryDecoder;

        @Override // com.google.android.exoplayer2.trackselection.m.h
        public int a() {
            return this.selectionEligibility;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int f(i iVar, i iVar2) {
            t0 t0VarF = (iVar.isWithinMaxConstraints && iVar.isWithinRendererCapabilities) ? m.FORMAT_VALUE_ORDERING : m.FORMAT_VALUE_ORDERING.f();
            return com.google.common.collect.p.j().f(Integer.valueOf(iVar.bitrate), Integer.valueOf(iVar2.bitrate), iVar.parameters.forceLowestBitrate ? m.FORMAT_VALUE_ORDERING.f() : m.NO_ORDER).f(Integer.valueOf(iVar.pixelCount), Integer.valueOf(iVar2.pixelCount), t0VarF).f(Integer.valueOf(iVar.bitrate), Integer.valueOf(iVar2.bitrate), t0VarF).i();
        }

        public static com.google.common.collect.a0<i> i(int i10, f1 f1Var, d dVar, int[] iArr, int i11) {
            int iE = m.E(f1Var, dVar.viewportWidth, dVar.viewportHeight, dVar.viewportOrientationMayChange);
            com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
            for (int i12 = 0; i12 < f1Var.length; i12++) {
                int iF = f1Var.c(i12).f();
                aVarR.d(new i(i10, f1Var, i12, dVar, iArr[i12], i11, iE == Integer.MAX_VALUE || (iF != -1 && iF <= iE)));
            }
            return aVarR.k();
        }

        private int j(int i10, int i11) {
            if ((this.format.roleFlags & 16384) != 0 || !m.L(i10, this.parameters.exceedRendererCapabilitiesIfNecessary)) {
                return 0;
            }
            if (!this.isWithinMaxConstraints && !this.parameters.exceedVideoConstraintsIfNecessary) {
                return 0;
            }
            if (m.L(i10, false) && this.isWithinMinConstraints && this.isWithinMaxConstraints && this.format.bitrate != -1) {
                d dVar = this.parameters;
                if (!dVar.forceHighestSupportedBitrate && !dVar.forceLowestBitrate && (i10 & i11) != 0) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // com.google.android.exoplayer2.trackselection.m.h
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean b(i iVar) {
            return (this.allowMixedMimeTypes || o0.c(this.format.sampleMimeType, iVar.format.sampleMimeType)) && (this.parameters.allowVideoMixedDecoderSupportAdaptiveness || (this.usesPrimaryDecoder == iVar.usesPrimaryDecoder && this.usesHardwareAcceleration == iVar.usesHardwareAcceleration));
        }

        /* JADX WARN: Code duplicated, block: B:31:0x004b  */
        /* JADX WARN: Code duplicated, block: B:51:0x0079  */
        public i(int i10, f1 f1Var, int i11, d dVar, int i12, int i13, boolean z6) {
            int i14;
            boolean z10;
            boolean z11;
            boolean z12;
            boolean z13;
            boolean z14;
            a2 a2Var;
            int i15;
            int i16;
            int i17;
            a2 a2Var2;
            int i18;
            int i19;
            int i20;
            super(i10, f1Var, i11);
            this.parameters = dVar;
            if (dVar.allowVideoNonSeamlessAdaptiveness) {
                i14 = 24;
            } else {
                i14 = 16;
            }
            if (dVar.allowVideoMixedMimeTypeAdaptiveness && (i13 & i14) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.allowMixedMimeTypes = z10;
            if (z6 && (((i18 = (a2Var2 = this.format).width) == -1 || i18 <= dVar.maxVideoWidth) && ((i19 = a2Var2.height) == -1 || i19 <= dVar.maxVideoHeight))) {
                float f = a2Var2.frameRate;
                if ((f == -1.0f || f <= dVar.maxVideoFrameRate) && ((i20 = a2Var2.bitrate) == -1 || i20 <= dVar.maxVideoBitrate)) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            } else {
                z11 = false;
            }
            this.isWithinMaxConstraints = z11;
            if (z6 && (((i15 = (a2Var = this.format).width) == -1 || i15 >= dVar.minVideoWidth) && ((i16 = a2Var.height) == -1 || i16 >= dVar.minVideoHeight))) {
                float f6 = a2Var.frameRate;
                if ((f6 == -1.0f || f6 >= dVar.minVideoFrameRate) && ((i17 = a2Var.bitrate) == -1 || i17 >= dVar.minVideoBitrate)) {
                    z12 = true;
                } else {
                    z12 = false;
                }
            } else {
                z12 = false;
            }
            this.isWithinMinConstraints = z12;
            this.isWithinRendererCapabilities = m.L(i12, false);
            a2 a2Var3 = this.format;
            this.bitrate = a2Var3.bitrate;
            this.pixelCount = a2Var3.f();
            this.preferredRoleFlagsScore = m.H(this.format.roleFlags, dVar.preferredVideoRoleFlags);
            int i21 = this.format.roleFlags;
            if (i21 != 0 && (i21 & 1) == 0) {
                z13 = false;
            } else {
                z13 = true;
            }
            this.hasMainOrNoRoleFlag = z13;
            int i22 = 0;
            while (true) {
                if (i22 < dVar.preferredVideoMimeTypes.size()) {
                    String str = this.format.sampleMimeType;
                    if (str != null && str.equals(dVar.preferredVideoMimeTypes.get(i22))) {
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
            if (n3.e(i12) == 128) {
                z14 = true;
            } else {
                z14 = false;
            }
            this.usesPrimaryDecoder = z14;
            this.usesHardwareAcceleration = n3.g(i12) == 64;
            this.codecPreferenceScore = m.I(this.format.sampleMimeType);
            this.selectionEligibility = j(i12, i14);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int e(i iVar, i iVar2) {
            com.google.common.collect.p pVarG = com.google.common.collect.p.j().g(iVar.isWithinRendererCapabilities, iVar2.isWithinRendererCapabilities).d(iVar.preferredRoleFlagsScore, iVar2.preferredRoleFlagsScore).g(iVar.hasMainOrNoRoleFlag, iVar2.hasMainOrNoRoleFlag).g(iVar.isWithinMaxConstraints, iVar2.isWithinMaxConstraints).g(iVar.isWithinMinConstraints, iVar2.isWithinMinConstraints).f(Integer.valueOf(iVar.preferredMimeTypeMatchIndex), Integer.valueOf(iVar2.preferredMimeTypeMatchIndex), t0.c().f()).g(iVar.usesPrimaryDecoder, iVar2.usesPrimaryDecoder).g(iVar.usesHardwareAcceleration, iVar2.usesHardwareAcceleration);
            if (iVar.usesPrimaryDecoder && iVar.usesHardwareAcceleration) {
                pVarG = pVarG.d(iVar.codecPreferenceScore, iVar2.codecPreferenceScore);
            }
            return pVarG.i();
        }

        public static int h(List<i> list, List<i> list2) {
            return com.google.common.collect.p.j().f((i) Collections.max(list, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.p
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return m.i.e((m.i) obj, (m.i) obj2);
                }
            }), (i) Collections.max(list2, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.p
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return m.i.e((m.i) obj, (m.i) obj2);
                }
            }), new Comparator() { // from class: com.google.android.exoplayer2.trackselection.p
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return m.i.e((m.i) obj, (m.i) obj2);
                }
            }).d(list.size(), list2.size()).f((i) Collections.max(list, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.q
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return m.i.f((m.i) obj, (m.i) obj2);
                }
            }), (i) Collections.max(list2, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.q
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return m.i.f((m.i) obj, (m.i) obj2);
                }
            }), new Comparator() { // from class: com.google.android.exoplayer2.trackselection.q
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return m.i.f((m.i) obj, (m.i) obj2);
                }
            }).i();
        }
    }

    @Deprecated
    public m() {
        this(d.DEFAULT_WITHOUT_CONTEXT, new com.google.android.exoplayer2.trackselection.a.b());
    }

    private static void C(h1 h1Var, z zVar, Map<Integer, x> map) {
        x xVar;
        for (int i10 = 0; i10 < h1Var.length; i10++) {
            x xVar2 = zVar.overrides.get(h1Var.b(i10));
            if (xVar2 != null && ((xVar = map.get(Integer.valueOf(xVar2.b()))) == null || (xVar.trackIndices.isEmpty() && !xVar2.trackIndices.isEmpty()))) {
                map.put(Integer.valueOf(xVar2.b()), xVar2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int I(@Nullable String str) {
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
    public static /* synthetic */ int Q(Integer num, Integer num2) {
        return 0;
    }

    private static void R(u.a aVar, int[][][] iArr, p3[] p3VarArr, s[] sVarArr) {
        boolean z6;
        boolean z10 = false;
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        while (true) {
            if (i12 >= aVar.d()) {
                z6 = true;
                break;
            }
            int iE = aVar.e(i12);
            s sVar = sVarArr[i12];
            if ((iE == 1 || iE == 2) && sVar != null && U(iArr[i12], aVar.f(i12), sVar)) {
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
            p3 p3Var = new p3(true);
            p3VarArr[i11] = p3Var;
            p3VarArr[i10] = p3Var;
        }
    }

    private static boolean U(int[][] iArr, h1 h1Var, s sVar) {
        if (sVar == null) {
            return false;
        }
        int iC = h1Var.c(sVar.getTrackGroup());
        for (int i10 = 0; i10 < sVar.length(); i10++) {
            if (n3.h(iArr[iC][sVar.getIndexInTrackGroup(i10)]) != 32) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    protected Pair<s.a, Integer> W(u.a aVar, int[][][] iArr, int[] iArr2, final d dVar) throws com.google.android.exoplayer2.q {
        final boolean z6 = false;
        for (int i10 = 0; i10 < aVar.d(); i10++) {
            if (2 == aVar.e(i10) && aVar.f(i10).length > 0) {
                z6 = true;
                break;
            }
        }
        return Z(1, aVar, iArr, new h.a() { // from class: com.google.android.exoplayer2.trackselection.j
            @Override // com.google.android.exoplayer2.trackselection.m.h.a
            public final List a(int i11, f1 f1Var, int[] iArr3) {
                return this.f1304a.M(dVar, z6, i11, f1Var, iArr3);
            }
        }, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.k
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m.b.c((List) obj, (List) obj2);
            }
        });
    }

    @Nullable
    protected s.a X(int i10, h1 h1Var, int[][] iArr, d dVar) throws com.google.android.exoplayer2.q {
        f1 f1Var = null;
        c cVar = null;
        int i11 = 0;
        for (int i12 = 0; i12 < h1Var.length; i12++) {
            f1 f1VarB = h1Var.b(i12);
            int[] iArr2 = iArr[i12];
            for (int i13 = 0; i13 < f1VarB.length; i13++) {
                if (L(iArr2[i13], dVar.exceedRendererCapabilitiesIfNecessary)) {
                    c cVar2 = new c(f1VarB.c(i13), iArr2[i13]);
                    if (cVar == null || cVar2.compareTo(cVar) > 0) {
                        f1Var = f1VarB;
                        i11 = i13;
                        cVar = cVar2;
                    }
                }
            }
        }
        if (f1Var == null) {
            return null;
        }
        return new s.a(f1Var, i11);
    }

    @Nullable
    protected Pair<s.a, Integer> Y(u.a aVar, int[][][] iArr, final d dVar, @Nullable final String str) throws com.google.android.exoplayer2.q {
        return Z(3, aVar, iArr, new h.a() { // from class: com.google.android.exoplayer2.trackselection.d
            @Override // com.google.android.exoplayer2.trackselection.m.h.a
            public final List a(int i10, f1 f1Var, int[] iArr2) {
                return m.N(dVar, str, i10, f1Var, iArr2);
            }
        }, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.e
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m.g.c((List) obj, (List) obj2);
            }
        });
    }

    @Nullable
    protected Pair<s.a, Integer> a0(u.a aVar, int[][][] iArr, final int[] iArr2, final d dVar) throws com.google.android.exoplayer2.q {
        return Z(2, aVar, iArr, new h.a() { // from class: com.google.android.exoplayer2.trackselection.h
            @Override // com.google.android.exoplayer2.trackselection.m.h.a
            public final List a(int i10, f1 f1Var, int[] iArr3) {
                return m.O(dVar, iArr2, i10, f1Var, iArr3);
            }
        }, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.i
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m.i.h((List) obj, (List) obj2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.trackselection.b0
    public boolean e() {
        return true;
    }

    private static final class c implements Comparable<c> {
        private final boolean isDefault;
        private final boolean isWithinRendererCapabilities;

        public c(a2 a2Var, int i10) {
            this.isDefault = (a2Var.selectionFlags & 1) != 0;
            this.isWithinRendererCapabilities = m.L(i10, false);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            return com.google.common.collect.p.j().g(this.isWithinRendererCapabilities, cVar.isWithinRendererCapabilities).g(this.isDefault, cVar.isDefault).i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class g extends h<g> implements Comparable<g> {
        private final boolean hasCaptionRoleFlags;
        private final boolean isDefault;
        private final boolean isForced;
        private final boolean isWithinRendererCapabilities;
        private final int preferredLanguageIndex;
        private final int preferredLanguageScore;
        private final int preferredRoleFlagsScore;
        private final int selectedAudioLanguageScore;
        private final int selectionEligibility;

        public static int c(List<g> list, List<g> list2) {
            return list.get(0).compareTo(list2.get(0));
        }

        @Override // com.google.android.exoplayer2.trackselection.m.h
        public int a() {
            return this.selectionEligibility;
        }

        @Override // com.google.android.exoplayer2.trackselection.m.h
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public boolean b(g gVar) {
            return false;
        }

        public g(int i10, f1 f1Var, int i11, d dVar, int i12, @Nullable String str) {
            boolean z6;
            boolean z10;
            com.google.common.collect.a0<String> a0VarY;
            int iD;
            boolean z11;
            boolean z12;
            boolean z13;
            super(i10, f1Var, i11);
            int i13 = 0;
            this.isWithinRendererCapabilities = m.L(i12, false);
            int i14 = this.format.selectionFlags & (~dVar.ignoredTextSelectionFlags);
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
            if (dVar.preferredTextLanguages.isEmpty()) {
                a0VarY = com.google.common.collect.a0.y("");
            } else {
                a0VarY = dVar.preferredTextLanguages;
            }
            int i15 = 0;
            while (true) {
                if (i15 < a0VarY.size()) {
                    iD = m.D(this.format, a0VarY.get(i15), dVar.selectUndeterminedTextLanguage);
                    if (iD > 0) {
                        break;
                    } else {
                        i15++;
                    }
                } else {
                    i15 = Integer.MAX_VALUE;
                    iD = 0;
                    break;
                }
            }
            this.preferredLanguageIndex = i15;
            this.preferredLanguageScore = iD;
            int iH = m.H(this.format.roleFlags, dVar.preferredTextRoleFlags);
            this.preferredRoleFlagsScore = iH;
            if ((this.format.roleFlags & 1088) != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.hasCaptionRoleFlags = z11;
            if (m.T(str) == null) {
                z12 = true;
            } else {
                z12 = false;
            }
            int iD2 = m.D(this.format, str, z12);
            this.selectedAudioLanguageScore = iD2;
            if (iD <= 0 && ((!dVar.preferredTextLanguages.isEmpty() || iH <= 0) && !this.isDefault && (!this.isForced || iD2 <= 0))) {
                z13 = false;
            } else {
                z13 = true;
            }
            if (m.L(i12, dVar.exceedRendererCapabilitiesIfNecessary) && z13) {
                i13 = 1;
            }
            this.selectionEligibility = i13;
        }

        public static com.google.common.collect.a0<g> e(int i10, f1 f1Var, d dVar, int[] iArr, @Nullable String str) {
            com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
            for (int i11 = 0; i11 < f1Var.length; i11++) {
                aVarR.d(new g(i10, f1Var, i11, dVar, iArr[i11], str));
            }
            return aVarR.k();
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public int compareTo(g gVar) {
            t0 t0VarF;
            com.google.common.collect.p pVarG = com.google.common.collect.p.j().g(this.isWithinRendererCapabilities, gVar.isWithinRendererCapabilities).f(Integer.valueOf(this.preferredLanguageIndex), Integer.valueOf(gVar.preferredLanguageIndex), t0.c().f()).d(this.preferredLanguageScore, gVar.preferredLanguageScore).d(this.preferredRoleFlagsScore, gVar.preferredRoleFlagsScore).g(this.isDefault, gVar.isDefault);
            Boolean boolValueOf = Boolean.valueOf(this.isForced);
            Boolean boolValueOf2 = Boolean.valueOf(gVar.isForced);
            if (this.preferredLanguageScore == 0) {
                t0VarF = t0.c();
            } else {
                t0VarF = t0.c().f();
            }
            com.google.common.collect.p pVarD = pVarG.f(boolValueOf, boolValueOf2, t0VarF).d(this.selectedAudioLanguageScore, gVar.selectedAudioLanguageScore);
            if (this.preferredRoleFlagsScore == 0) {
                pVarD = pVarD.h(this.hasCaptionRoleFlags, gVar.hasCaptionRoleFlags);
            }
            return pVarD.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static abstract class h<T extends h<T>> {
        public final a2 format;
        public final int rendererIndex;
        public final f1 trackGroup;
        public final int trackIndex;

        public interface a<T extends h<T>> {
            List<T> a(int i10, f1 f1Var, int[] iArr);
        }

        public abstract int a();

        public abstract boolean b(T t5);

        public h(int i10, f1 f1Var, int i11) {
            this.rendererIndex = i10;
            this.trackGroup = f1Var;
            this.trackIndex = i11;
            this.format = f1Var.c(i11);
        }
    }

    public m(Context context) {
        this(context, new com.google.android.exoplayer2.trackselection.a.b());
    }

    /* JADX WARN: Code duplicated, block: B:11:0x000f  */
    private static Point F(boolean z6, int i10, int i11, int i12, int i13) {
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
        return i14 >= i15 ? new Point(i11, o0.l(i15, i12)) : new Point(o0.l(i14, i13), i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int H(int i10, int i11) {
        if (i10 == 0 || i10 != i11) {
            return Integer.bitCount(i10 & i11);
        }
        return Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean J(a2 a2Var) {
        boolean z6;
        f fVar;
        f fVar2;
        synchronized (this.lock) {
            try {
                if (this.parameters.constrainAudioChannelCountToDeviceCapabilities && !this.deviceIsTV && a2Var.channelCount > 2 && (!K(a2Var) || (o0.SDK_INT >= 32 && (fVar2 = this.spatializer) != null && fVar2.e()))) {
                    z6 = o0.SDK_INT >= 32 && (fVar = this.spatializer) != null && fVar.e() && this.spatializer.c() && this.spatializer.d() && this.spatializer.a(this.audioAttributes, a2Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    private static boolean K(a2 a2Var) {
        String str = a2Var.sampleMimeType;
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
    public /* synthetic */ List M(d dVar, boolean z6, int i10, f1 f1Var, int[] iArr) {
        return b.e(i10, f1Var, dVar, iArr, z6, new com.google.common.base.p() { // from class: com.google.android.exoplayer2.trackselection.l
            @Override // com.google.common.base.p
            public final boolean apply(Object obj) {
                return this.f1307a.J((a2) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List O(d dVar, int[] iArr, int i10, f1 f1Var, int[] iArr2) {
        return i.i(i10, f1Var, dVar, iArr2, iArr[i10]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        boolean z6;
        f fVar;
        synchronized (this.lock) {
            try {
                z6 = this.parameters.constrainAudioChannelCountToDeviceCapabilities && !this.deviceIsTV && o0.SDK_INT >= 32 && (fVar = this.spatializer) != null && fVar.e();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z6) {
            d();
        }
    }

    @Nullable
    private <T extends h<T>> Pair<s.a, Integer> Z(int i10, u.a aVar, int[][][] iArr, h.a<T> aVar2, Comparator<List<T>> comparator) {
        int i11;
        RandomAccess randomAccessY;
        ArrayList arrayList = new ArrayList();
        int iD = aVar.d();
        int i12 = 0;
        while (i12 < iD) {
            if (i10 == aVar.e(i12)) {
                h1 h1VarF = aVar.f(i12);
                for (int i13 = 0; i13 < h1VarF.length; i13++) {
                    f1 f1VarB = h1VarF.b(i13);
                    List<T> listA = aVar2.a(i12, f1VarB, iArr[i12][i13]);
                    boolean[] zArr = new boolean[f1VarB.length];
                    int i14 = 0;
                    while (i14 < f1VarB.length) {
                        T t5 = listA.get(i14);
                        int iA = t5.a();
                        if (zArr[i14] || iA == 0) {
                            i11 = iD;
                        } else {
                            if (iA == 1) {
                                randomAccessY = com.google.common.collect.a0.y(t5);
                                i11 = iD;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(t5);
                                int i15 = i14 + 1;
                                while (i15 < f1VarB.length) {
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
            iArr2[i17] = ((h) list.get(i17)).trackIndex;
        }
        h hVar = (h) list.get(0);
        return Pair.create(new s.a(hVar.trackGroup, iArr2), Integer.valueOf(hVar.rendererIndex));
    }

    @Override // com.google.android.exoplayer2.trackselection.b0
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public d b() {
        d dVar;
        synchronized (this.lock) {
            dVar = this.parameters;
        }
        return dVar;
    }

    @Override // com.google.android.exoplayer2.trackselection.b0
    public void g() {
        f fVar;
        synchronized (this.lock) {
            try {
                if (o0.SDK_INT >= 32 && (fVar = this.spatializer) != null) {
                    fVar.f();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        super.g();
    }

    @Override // com.google.android.exoplayer2.trackselection.b0
    public void i(com.google.android.exoplayer2.audio.e eVar) {
        boolean z6;
        synchronized (this.lock) {
            z6 = !this.audioAttributes.equals(eVar);
            this.audioAttributes = eVar;
        }
        if (z6) {
            S();
        }
    }

    @Override // com.google.android.exoplayer2.trackselection.b0
    public void j(z zVar) {
        if (zVar instanceof d) {
            b0((d) zVar);
        }
        b0(new d.a().g0(zVar).A());
    }

    @Override // com.google.android.exoplayer2.trackselection.u
    protected final Pair<p3[], s[]> n(u.a aVar, int[][][] iArr, int[] iArr2, com.google.android.exoplayer2.source.b0.b bVar, z3 z3Var) throws com.google.android.exoplayer2.q {
        d dVar;
        f fVar;
        synchronized (this.lock) {
            try {
                dVar = this.parameters;
                if (dVar.constrainAudioChannelCountToDeviceCapabilities && o0.SDK_INT >= 32 && (fVar = this.spatializer) != null) {
                    fVar.b(this, (Looper) com.google.android.exoplayer2.util.a.i(Looper.myLooper()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int iD = aVar.d();
        s.a[] aVarArrV = V(aVar, iArr, iArr2, dVar);
        B(aVar, dVar, aVarArrV);
        A(aVar, dVar, aVarArrV);
        for (int i10 = 0; i10 < iD; i10++) {
            int iE = aVar.e(i10);
            if (dVar.m(i10) || dVar.disabledTrackTypes.contains(Integer.valueOf(iE))) {
                aVarArrV[i10] = null;
            }
        }
        s[] sVarArrA = this.trackSelectionFactory.a(aVarArrV, a(), bVar, z3Var);
        p3[] p3VarArr = new p3[iD];
        for (int i11 = 0; i11 < iD; i11++) {
            p3VarArr[i11] = (dVar.m(i11) || dVar.disabledTrackTypes.contains(Integer.valueOf(aVar.e(i11))) || (aVar.e(i11) != -2 && sVarArrA[i11] == null)) ? null : p3.DEFAULT;
        }
        if (dVar.tunnelingEnabled) {
            R(aVar, iArr, p3VarArr, sVarArrA);
        }
        return Pair.create(p3VarArr, sVarArrA);
    }

    public m(Context context, s.b bVar) {
        this(context, d.k(context), bVar);
    }

    private static void A(u.a aVar, d dVar, s.a[] aVarArr) {
        s.a aVar2;
        int iD = aVar.d();
        for (int i10 = 0; i10 < iD; i10++) {
            h1 h1VarF = aVar.f(i10);
            if (dVar.o(i10, h1VarF)) {
                e eVarN = dVar.n(i10, h1VarF);
                if (eVarN != null && eVarN.tracks.length != 0) {
                    aVar2 = new s.a(h1VarF.b(eVarN.groupIndex), eVarN.tracks, eVarN.type);
                } else {
                    aVar2 = null;
                }
                aVarArr[i10] = aVar2;
            }
        }
    }

    private static void B(u.a aVar, z zVar, s.a[] aVarArr) {
        s.a aVar2;
        int iD = aVar.d();
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < iD; i10++) {
            C(aVar.f(i10), zVar, map);
        }
        C(aVar.h(), zVar, map);
        for (int i11 = 0; i11 < iD; i11++) {
            x xVar = (x) map.get(Integer.valueOf(aVar.e(i11)));
            if (xVar != null) {
                if (!xVar.trackIndices.isEmpty() && aVar.f(i11).c(xVar.mediaTrackGroup) != -1) {
                    aVar2 = new s.a(xVar.mediaTrackGroup, com.google.common.primitives.e.l(xVar.trackIndices));
                } else {
                    aVar2 = null;
                }
                aVarArr[i11] = aVar2;
            }
        }
    }

    protected static int D(a2 a2Var, @Nullable String str, boolean z6) {
        if (!TextUtils.isEmpty(str) && str.equals(a2Var.language)) {
            return 4;
        }
        String strT = T(str);
        String strT2 = T(a2Var.language);
        if (strT2 != null && strT != null) {
            if (!strT2.startsWith(strT) && !strT.startsWith(strT2)) {
                if (!o0.I0(strT2, "-")[0].equals(o0.I0(strT, "-")[0])) {
                    return 0;
                }
                return 2;
            }
            return 3;
        }
        if (!z6 || strT2 != null) {
            return 0;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int E(f1 f1Var, int i10, int i11, boolean z6) {
        int i12;
        int i13 = Integer.MAX_VALUE;
        if (i10 != Integer.MAX_VALUE && i11 != Integer.MAX_VALUE) {
            for (int i14 = 0; i14 < f1Var.length; i14++) {
                a2 a2VarC = f1Var.c(i14);
                int i15 = a2VarC.width;
                if (i15 > 0 && (i12 = a2VarC.height) > 0) {
                    Point pointF = F(z6, i10, i11, i15, i12);
                    int i16 = a2VarC.width;
                    int i17 = a2VarC.height;
                    int i18 = i16 * i17;
                    if (i16 >= ((int) (pointF.x * 0.98f)) && i17 >= ((int) (pointF.y * 0.98f)) && i18 < i13) {
                        i13 = i18;
                    }
                }
            }
        }
        return i13;
    }

    protected static boolean L(int i10, boolean z6) {
        int iF = n3.f(i10);
        if (iF != 4 && (!z6 || iF != 3)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List N(d dVar, String str, int i10, f1 f1Var, int[] iArr) {
        return g.e(i10, f1Var, dVar, iArr, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int P(Integer num, Integer num2) {
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
    protected static String T(@Nullable String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    private void b0(d dVar) {
        boolean z6;
        com.google.android.exoplayer2.util.a.e(dVar);
        synchronized (this.lock) {
            z6 = !this.parameters.equals(dVar);
            this.parameters = dVar;
        }
        if (z6) {
            if (dVar.constrainAudioChannelCountToDeviceCapabilities && this.context == null) {
                com.google.android.exoplayer2.util.t.i(TAG, AUDIO_CHANNEL_COUNT_CONSTRAINTS_WARN_MESSAGE);
            }
            d();
        }
    }

    protected s.a[] V(u.a aVar, int[][][] iArr, int[] iArr2, d dVar) throws com.google.android.exoplayer2.q {
        String str;
        int iD = aVar.d();
        s.a[] aVarArr = new s.a[iD];
        Pair<s.a, Integer> pairA0 = a0(aVar, iArr, iArr2, dVar);
        if (pairA0 != null) {
            aVarArr[((Integer) pairA0.second).intValue()] = (s.a) pairA0.first;
        }
        Pair<s.a, Integer> pairW = W(aVar, iArr, iArr2, dVar);
        if (pairW != null) {
            aVarArr[((Integer) pairW.second).intValue()] = (s.a) pairW.first;
        }
        if (pairW == null) {
            str = null;
        } else {
            Object obj = pairW.first;
            str = ((s.a) obj).group.c(((s.a) obj).tracks[0]).language;
        }
        Pair<s.a, Integer> pairY = Y(aVar, iArr, dVar, str);
        if (pairY != null) {
            aVarArr[((Integer) pairY.second).intValue()] = (s.a) pairY.first;
        }
        for (int i10 = 0; i10 < iD; i10++) {
            int iE = aVar.e(i10);
            if (iE != 2 && iE != 1 && iE != 3) {
                aVarArr[i10] = X(iE, aVar.f(i10), iArr[i10], dVar);
            }
        }
        return aVarArr;
    }

    public m(Context context, z zVar) {
        this(context, zVar, new com.google.android.exoplayer2.trackselection.a.b());
    }

    @Deprecated
    public m(z zVar, s.b bVar) {
        this(zVar, bVar, (Context) null);
    }

    public m(Context context, z zVar, s.b bVar) {
        this(zVar, bVar, context);
    }

    private m(z zVar, s.b bVar, @Nullable Context context) {
        this.lock = new Object();
        this.context = context != null ? context.getApplicationContext() : null;
        this.trackSelectionFactory = bVar;
        if (zVar instanceof d) {
            this.parameters = (d) zVar;
        } else {
            this.parameters = (context == null ? d.DEFAULT_WITHOUT_CONTEXT : d.k(context)).a().g0(zVar).A();
        }
        this.audioAttributes = com.google.android.exoplayer2.audio.e.DEFAULT;
        boolean z6 = context != null && o0.r0(context);
        this.deviceIsTV = z6;
        if (!z6 && context != null && o0.SDK_INT >= 32) {
            this.spatializer = f.g(context);
        }
        if (this.parameters.constrainAudioChannelCountToDeviceCapabilities && context == null) {
            com.google.android.exoplayer2.util.t.i(TAG, AUDIO_CHANNEL_COUNT_CONSTRAINTS_WARN_MESSAGE);
        }
    }
}
