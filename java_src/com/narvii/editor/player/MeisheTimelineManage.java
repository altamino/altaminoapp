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
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: MeisheTimelineManage.kt */
/* loaded from: classes2.dex */
public final class MeisheTimelineManage {
    public static final Companion Companion = new Companion(null);
    private static final Lazy instance$delegate = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<MeisheTimelineManage>() { // from class: com.narvii.editor.player.MeisheTimelineManage$Companion$instance$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final MeisheTimelineManage invoke() {
            return new MeisheTimelineManage();
        }
    });
    private final List<WeakReference<NvsTimeline>> timelines = new ArrayList();

    /* compiled from: MeisheTimelineManage.kt */
    public static final class Companion {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Companion.class), "instance", "getInstance()Lcom/narvii/editor/player/MeisheTimelineManage;"))};

        public final MeisheTimelineManage getInstance() {
            Lazy lazy = MeisheTimelineManage.instance$delegate;
            Companion companion = MeisheTimelineManage.Companion;
            KProperty kProperty = $$delegatedProperties[0];
            return (MeisheTimelineManage) lazy.getValue();
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void addUnuseTimeline(NvsTimeline nvsTimeline) {
        if (nvsTimeline != null) {
            this.timelines.add(new WeakReference<>(nvsTimeline));
        }
    }

    public final void removeAllUnuseTimeline() {
        NvsStreamingContext nvsStreamingContext = NvsStreamingContext.getInstance();
        Iterator<T> it = this.timelines.iterator();
        while (it.hasNext()) {
            NvsTimeline nvsTimeline = (NvsTimeline) ((WeakReference) it.next()).get();
            if (nvsTimeline != null) {
                nvsStreamingContext.removeTimeline(nvsTimeline);
            }
        }
        this.timelines.clear();
    }
}
