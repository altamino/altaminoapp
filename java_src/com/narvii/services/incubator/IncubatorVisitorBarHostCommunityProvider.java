package com.narvii.services.incubator;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.community.VisitorBarHost;
import com.narvii.services.util.HostCommunityProvider;
import kotlin.TypeCastException;

/* compiled from: IncubatorVisitorBarHostCommunityProvider.kt */
/* loaded from: classes.dex */
public final class IncubatorVisitorBarHostCommunityProvider extends HostCommunityProvider<VisitorBarHost> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.services.util.HostCommunityProvider
    public VisitorBarHost createProxyHost(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.visitor_mode_host, (ViewGroup) null);
        if (viewInflate != null) {
            return (VisitorBarHost) viewInflate;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.narvii.community.VisitorBarHost");
    }

    @Override // com.narvii.services.util.HostCommunityProvider, com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, VisitorBarHost visitorBarHost) {
        super.start(nVContext, (NVContext) visitorBarHost);
        if (visitorBarHost != null) {
            visitorBarHost.start();
        }
    }

    @Override // com.narvii.services.util.HostCommunityProvider, com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, VisitorBarHost visitorBarHost) {
        super.stop(nVContext, (NVContext) visitorBarHost);
        if (visitorBarHost != null) {
            visitorBarHost.stop();
        }
    }
}
