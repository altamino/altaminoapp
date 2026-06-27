package com.narvii.services.util;

import android.content.Context;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.widget.ProxyViewHost;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class HostCommunityProvider<T extends ProxyViewHost> implements AutostartServiceProvider<T> {
    final HashMap<Integer, WeakReference<T>> cache = new HashMap<>();

    protected abstract T createProxyHost(Context context);

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, T t) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, T t) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, T t) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, T t) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, T t) {
    }

    @Override // com.narvii.services.ServiceProvider
    public T create(NVContext nVContext) {
        int communityId = IncubatorApplication.getCommunityId(nVContext);
        if (communityId == 0) {
            return null;
        }
        WeakReference<T> weakReference = this.cache.get(Integer.valueOf(communityId));
        T t = weakReference != null ? weakReference.get() : null;
        if (t != null) {
            return t;
        }
        T t2 = (T) createProxyHost(new CommunityVirtualContext(NVApplication.instance(), R.style.AminoTheme, communityId));
        this.cache.put(Integer.valueOf(communityId), new WeakReference<>(t2));
        return t2;
    }
}
