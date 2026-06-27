package com.narvii.services.util;

import android.content.Context;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.widget.ProxyViewHost;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class HostApplicationProvider<T extends ProxyViewHost> implements AutostartServiceProvider<T> {
    private WeakReference<T> cache;

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
        WeakReference<T> weakReference = this.cache;
        T t = weakReference == null ? null : weakReference.get();
        if (t != null) {
            return t;
        }
        T t2 = (T) createProxyHost(new AppVirtualContext(NVApplication.instance(), R.style.AminoTheme));
        this.cache = new WeakReference<>(t2);
        return t2;
    }
}
