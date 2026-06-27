package com.narvii.editor.player;

import com.meicam.sdk.NvsStreamingContext;
import com.meicam.sdk.NvsTimeline;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: MeisheListenerManage.kt */
/* loaded from: classes2.dex */
public final class MeisheListenerManage implements NvsStreamingContext.PlaybackCallback2, NvsStreamingContext.PlaybackCallback, NvsStreamingContext.StreamingEngineCallback, NvsStreamingContext.SeekingCallback, NvsStreamingContext.PlaybackExceptionCallback, NvsStreamingContext.HardwareErrorCallback {
    public static final Companion Companion = new Companion(null);
    private static final Lazy instance$delegate = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<MeisheListenerManage>() { // from class: com.narvii.editor.player.MeisheListenerManage$Companion$instance$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final MeisheListenerManage invoke() {
            return new MeisheListenerManage(null);
        }
    });
    private final List<WeakReference<Object>> hardwareErrorCallbacks;
    private final List<WeakReference<Object>> playbackCallback2s;
    private final List<WeakReference<Object>> playbackCallbacks;
    private final List<WeakReference<Object>> playbackExceptionCallbacks;
    private final List<WeakReference<Object>> seekingCallbacks;
    private final List<WeakReference<Object>> streamingEngineCallbacks;

    private MeisheListenerManage() {
        this.playbackCallbacks = new ArrayList();
        this.playbackCallback2s = new ArrayList();
        this.streamingEngineCallbacks = new ArrayList();
        this.seekingCallbacks = new ArrayList();
        this.playbackExceptionCallbacks = new ArrayList();
        this.hardwareErrorCallbacks = new ArrayList();
        NvsStreamingContext nvsStreamingContext = NvsStreamingContext.getInstance();
        nvsStreamingContext.setPlaybackCallback(this);
        nvsStreamingContext.setPlaybackCallback2(this);
        nvsStreamingContext.setStreamingEngineCallback(this);
        nvsStreamingContext.setSeekingCallback(this);
        nvsStreamingContext.setPlaybackExceptionCallback(this);
        nvsStreamingContext.setHardwareErrorCallback(this);
    }

    public /* synthetic */ MeisheListenerManage(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: MeisheListenerManage.kt */
    public static final class Companion {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Companion.class), "instance", "getInstance()Lcom/narvii/editor/player/MeisheListenerManage;"))};

        public final MeisheListenerManage getInstance() {
            Lazy lazy = MeisheListenerManage.instance$delegate;
            Companion companion = MeisheListenerManage.Companion;
            KProperty kProperty = $$delegatedProperties[0];
            return (MeisheListenerManage) lazy.getValue();
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void registerPlaybackCallback(NvsStreamingContext.PlaybackCallback playbackCallback) {
        Intrinsics.checkParameterIsNotNull(playbackCallback, "playbackCallback");
        this.playbackCallbacks.clear();
        this.playbackCallbacks.add(new WeakReference<>(playbackCallback));
    }

    public final void unRegisterPlaybackCallback(NvsStreamingContext.PlaybackCallback playbackCallback) {
        Intrinsics.checkParameterIsNotNull(playbackCallback, "playbackCallback");
        removeElement(this.playbackCallbacks, playbackCallback);
    }

    public final void registerPlaybackCallback2(NvsStreamingContext.PlaybackCallback2 playbackCallback2) {
        Intrinsics.checkParameterIsNotNull(playbackCallback2, "playbackCallback2");
        this.playbackCallback2s.clear();
        this.playbackCallback2s.add(new WeakReference<>(playbackCallback2));
    }

    public final void unRegisterPlaybackCallback2(NvsStreamingContext.PlaybackCallback2 playbackCallback2) {
        Intrinsics.checkParameterIsNotNull(playbackCallback2, "playbackCallback2");
        removeElement(this.playbackCallback2s, playbackCallback2);
    }

    public final void registerStreamingEngineCallback(NvsStreamingContext.StreamingEngineCallback streamingEngineCallback) {
        Intrinsics.checkParameterIsNotNull(streamingEngineCallback, "streamingEngineCallback");
        this.streamingEngineCallbacks.clear();
        this.streamingEngineCallbacks.add(new WeakReference<>(streamingEngineCallback));
    }

    public final void unRegisterStreamingEngineCallback(NvsStreamingContext.StreamingEngineCallback streamingEngineCallback) {
        Intrinsics.checkParameterIsNotNull(streamingEngineCallback, "streamingEngineCallback");
        removeElement(this.streamingEngineCallbacks, streamingEngineCallback);
    }

    public final void registerSeekingCallback(NvsStreamingContext.SeekingCallback seekingCallback) {
        Intrinsics.checkParameterIsNotNull(seekingCallback, "seekingCallback");
        this.seekingCallbacks.clear();
        this.seekingCallbacks.add(new WeakReference<>(seekingCallback));
    }

    public final void unRegisterSeekingCallback(NvsStreamingContext.SeekingCallback seekingCallback) {
        Intrinsics.checkParameterIsNotNull(seekingCallback, "seekingCallback");
        removeElement(this.seekingCallbacks, seekingCallback);
    }

    public final void registerPlaybackExceptionCallback(NvsStreamingContext.PlaybackExceptionCallback playbackExceptionCallback) {
        Intrinsics.checkParameterIsNotNull(playbackExceptionCallback, "playbackExceptionCallback");
        this.playbackExceptionCallbacks.clear();
        this.playbackExceptionCallbacks.add(new WeakReference<>(playbackExceptionCallback));
    }

    public final void unRegisterPlaybackExceptionCallback(NvsStreamingContext.PlaybackExceptionCallback playbackExceptionCallback) {
        Intrinsics.checkParameterIsNotNull(playbackExceptionCallback, "playbackExceptionCallback");
        removeElement(this.playbackExceptionCallbacks, playbackExceptionCallback);
    }

    public final void registerHardwareErrorCallback(NvsStreamingContext.HardwareErrorCallback hardwareErrorCallback) {
        Intrinsics.checkParameterIsNotNull(hardwareErrorCallback, "hardwareErrorCallback");
        this.hardwareErrorCallbacks.clear();
        this.hardwareErrorCallbacks.add(new WeakReference<>(hardwareErrorCallback));
    }

    public final void unRegisterHardwareErrorCallback(NvsStreamingContext.HardwareErrorCallback hardwareErrorCallback) {
        Intrinsics.checkParameterIsNotNull(hardwareErrorCallback, "hardwareErrorCallback");
        removeElement(this.hardwareErrorCallbacks, hardwareErrorCallback);
    }

    private final void removeElement(List<WeakReference<Object>> list, Object obj) {
        Iterator<WeakReference<Object>> it = list.iterator();
        while (it.hasNext()) {
            WeakReference<Object> next = it.next();
            if (next.get() == null) {
                it.remove();
            } else if (Intrinsics.areEqual(obj, next.get())) {
                it.remove();
            }
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.PlaybackCallback2
    public void onPlaybackTimelinePosition(NvsTimeline nvsTimeline, long j) {
        Iterator<T> it = this.playbackCallback2s.iterator();
        while (it.hasNext()) {
            Object obj = ((WeakReference) it.next()).get();
            if (!(obj instanceof NvsStreamingContext.PlaybackCallback2)) {
                obj = null;
            }
            NvsStreamingContext.PlaybackCallback2 playbackCallback2 = (NvsStreamingContext.PlaybackCallback2) obj;
            if (playbackCallback2 != null) {
                playbackCallback2.onPlaybackTimelinePosition(nvsTimeline, j);
            }
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.PlaybackCallback
    public void onPlaybackEOF(NvsTimeline nvsTimeline) {
        Iterator<T> it = this.playbackCallbacks.iterator();
        while (it.hasNext()) {
            Object obj = ((WeakReference) it.next()).get();
            if (!(obj instanceof NvsStreamingContext.PlaybackCallback)) {
                obj = null;
            }
            NvsStreamingContext.PlaybackCallback playbackCallback = (NvsStreamingContext.PlaybackCallback) obj;
            if (playbackCallback != null) {
                playbackCallback.onPlaybackEOF(nvsTimeline);
            }
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.PlaybackCallback
    public void onPlaybackPreloadingCompletion(NvsTimeline nvsTimeline) {
        Iterator<T> it = this.playbackCallbacks.iterator();
        while (it.hasNext()) {
            Object obj = ((WeakReference) it.next()).get();
            if (!(obj instanceof NvsStreamingContext.PlaybackCallback)) {
                obj = null;
            }
            NvsStreamingContext.PlaybackCallback playbackCallback = (NvsStreamingContext.PlaybackCallback) obj;
            if (playbackCallback != null) {
                playbackCallback.onPlaybackPreloadingCompletion(nvsTimeline);
            }
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.PlaybackCallback
    public void onPlaybackStopped(NvsTimeline nvsTimeline) {
        Iterator<T> it = this.playbackCallbacks.iterator();
        while (it.hasNext()) {
            Object obj = ((WeakReference) it.next()).get();
            if (!(obj instanceof NvsStreamingContext.PlaybackCallback)) {
                obj = null;
            }
            NvsStreamingContext.PlaybackCallback playbackCallback = (NvsStreamingContext.PlaybackCallback) obj;
            if (playbackCallback != null) {
                playbackCallback.onPlaybackStopped(nvsTimeline);
            }
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.StreamingEngineCallback
    public void onFirstVideoFramePresented(NvsTimeline nvsTimeline) {
        Iterator<T> it = this.streamingEngineCallbacks.iterator();
        while (it.hasNext()) {
            Object obj = ((WeakReference) it.next()).get();
            if (!(obj instanceof NvsStreamingContext.StreamingEngineCallback)) {
                obj = null;
            }
            NvsStreamingContext.StreamingEngineCallback streamingEngineCallback = (NvsStreamingContext.StreamingEngineCallback) obj;
            if (streamingEngineCallback != null) {
                streamingEngineCallback.onFirstVideoFramePresented(nvsTimeline);
            }
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.StreamingEngineCallback
    public void onStreamingEngineStateChanged(int i) {
        Iterator<T> it = this.streamingEngineCallbacks.iterator();
        while (it.hasNext()) {
            Object obj = ((WeakReference) it.next()).get();
            if (!(obj instanceof NvsStreamingContext.StreamingEngineCallback)) {
                obj = null;
            }
            NvsStreamingContext.StreamingEngineCallback streamingEngineCallback = (NvsStreamingContext.StreamingEngineCallback) obj;
            if (streamingEngineCallback != null) {
                streamingEngineCallback.onStreamingEngineStateChanged(i);
            }
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.SeekingCallback
    public void onSeekingTimelinePosition(NvsTimeline nvsTimeline, long j) {
        Iterator<T> it = this.seekingCallbacks.iterator();
        while (it.hasNext()) {
            Object obj = ((WeakReference) it.next()).get();
            if (!(obj instanceof NvsStreamingContext.SeekingCallback)) {
                obj = null;
            }
            NvsStreamingContext.SeekingCallback seekingCallback = (NvsStreamingContext.SeekingCallback) obj;
            if (seekingCallback != null) {
                seekingCallback.onSeekingTimelinePosition(nvsTimeline, j);
            }
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.PlaybackExceptionCallback
    public void onPlaybackException(NvsTimeline nvsTimeline, int i, String str) {
        Iterator<T> it = this.playbackExceptionCallbacks.iterator();
        while (it.hasNext()) {
            Object obj = ((WeakReference) it.next()).get();
            if (!(obj instanceof NvsStreamingContext.PlaybackExceptionCallback)) {
                obj = null;
            }
            NvsStreamingContext.PlaybackExceptionCallback playbackExceptionCallback = (NvsStreamingContext.PlaybackExceptionCallback) obj;
            if (playbackExceptionCallback != null) {
                playbackExceptionCallback.onPlaybackException(nvsTimeline, i, str);
            }
        }
    }

    @Override // com.meicam.sdk.NvsStreamingContext.HardwareErrorCallback
    public void onHardwareError(int i, String str) {
        Iterator<T> it = this.hardwareErrorCallbacks.iterator();
        while (it.hasNext()) {
            Object obj = ((WeakReference) it.next()).get();
            if (!(obj instanceof NvsStreamingContext.HardwareErrorCallback)) {
                obj = null;
            }
            NvsStreamingContext.HardwareErrorCallback hardwareErrorCallback = (NvsStreamingContext.HardwareErrorCallback) obj;
            if (hardwareErrorCallback != null) {
                hardwareErrorCallback.onHardwareError(i, str);
            }
        }
    }
}
