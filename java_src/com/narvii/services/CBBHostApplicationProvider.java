package com.narvii.services;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.community.CBBHost;
import com.narvii.services.util.HostApplicationProvider;

/* loaded from: classes.dex */
public class CBBHostApplicationProvider extends HostApplicationProvider<CBBHost> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.services.util.HostApplicationProvider
    public CBBHost createProxyHost(Context context) {
        return (CBBHost) LayoutInflater.from(context).inflate(R.layout.cbb_host, (ViewGroup) null);
    }

    @Override // com.narvii.services.util.HostApplicationProvider, com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, CBBHost cBBHost) {
        cBBHost.onStart();
    }

    @Override // com.narvii.services.util.HostApplicationProvider, com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, CBBHost cBBHost) {
        cBBHost.onResume();
    }

    @Override // com.narvii.services.util.HostApplicationProvider, com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, CBBHost cBBHost) {
        cBBHost.onPause();
    }

    @Override // com.narvii.services.util.HostApplicationProvider, com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, CBBHost cBBHost) {
        cBBHost.onStop();
    }
}
