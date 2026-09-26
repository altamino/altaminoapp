package com.narvii.services.util;

import android.content.Context;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.widget.ProxyViewHost;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes8.dex */
public abstract class HostApplicationProvider<T extends ProxyViewHost> implements AutostartServiceProvider<T> {
    private WeakReference<T> cache;

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
        WeakReference<T> weakReference = this.cache;
        T t5 = weakReference == null ? null : weakReference.get();
        if (t5 != null) {
            return t5;
        }
        T t10 = (T) createProxyHost(new AppVirtualContext(NVApplication.instance(), R.style.AminoTheme));
        this.cache = new WeakReference<>(t10);
        return t10;
    }
}
