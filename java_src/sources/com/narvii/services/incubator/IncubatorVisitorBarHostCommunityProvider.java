package com.narvii.services.incubator;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.community.VisitorBarHost;
import com.narvii.services.util.HostCommunityProvider;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class IncubatorVisitorBarHostCommunityProvider extends HostCommunityProvider<VisitorBarHost> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.services.util.HostCommunityProvider
    @NotNull
    public VisitorBarHost createProxyHost(@Nullable Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.visitor_mode_host, (ViewGroup) null);
        t.h(viewInflate, "null cannot be cast to non-null type com.narvii.community.VisitorBarHost");
        return (VisitorBarHost) viewInflate;
    }

    @Override // com.narvii.services.util.HostCommunityProvider, com.narvii.services.ServiceProvider
    public void start(@Nullable NVContext nVContext, @Nullable VisitorBarHost visitorBarHost) {
        super.start(nVContext, visitorBarHost);
        if (visitorBarHost != null) {
            visitorBarHost.start();
        }
    }

    @Override // com.narvii.services.util.HostCommunityProvider, com.narvii.services.ServiceProvider
    public void stop(@Nullable NVContext nVContext, @Nullable VisitorBarHost visitorBarHost) {
        super.stop(nVContext, visitorBarHost);
        if (visitorBarHost != null) {
            visitorBarHost.stop();
        }
    }
}
