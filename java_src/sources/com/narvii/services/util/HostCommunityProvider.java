package com.narvii.services.util;

import android.content.Context;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.widget.ProxyViewHost;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* JADX INFO: loaded from: classes10.dex */
public abstract class HostCommunityProvider<T extends ProxyViewHost> implements AutostartServiceProvider<T> {
    final HashMap<Integer, WeakReference<T>> cache = new HashMap<>();

    protected abstract T createProxyHost(Context context);

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, T t5) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, T t5) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, T t5) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, T t5) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, T t5) {
    }

    @Override // com.narvii.services.ServiceProvider
    public T create(NVContext nVContext) {
        int communityId = IncubatorApplication.getCommunityId(nVContext);
        if (communityId == 0) {
            return null;
        }
        WeakReference<T> weakReference = this.cache.get(Integer.valueOf(communityId));
        T t5 = weakReference != null ? weakReference.get() : null;
        if (t5 != null) {
            return t5;
        }
        T t10 = (T) createProxyHost(new CommunityVirtualContext(NVApplication.instance(), R.style.AminoTheme, communityId));
        this.cache.put(Integer.valueOf(communityId), new WeakReference<>(t10));
        return t10;
    }
}
