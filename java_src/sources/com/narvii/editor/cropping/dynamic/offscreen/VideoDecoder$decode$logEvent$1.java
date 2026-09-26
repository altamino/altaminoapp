package com.narvii.editor.cropping.dynamic.offscreen;

import ai.medialab.medialabanalytics.MediaLabAnalytics;
import android.content.Context;
import com.narvii.util.mixpanel.Tracking;
import e8.l;
import kotlin.collections.r0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.a0;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class VideoDecoder$decode$logEvent$1 extends v implements l<String, l0> {
    final /* synthetic */ Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoDecoder$decode$logEvent$1(Context context) {
        super(1);
        this.$context = context;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(String str) {
        invoke2(str);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull String error) {
        t.j(error, "error");
        MediaLabAnalytics.Companion companion = MediaLabAnalytics.Companion;
        companion.getInstance().initialize(this.$context);
        companion.getInstance().trackEvent("video_decode", r0.f(a0.a(Tracking.Properties.EXTRA, error)));
    }
}
