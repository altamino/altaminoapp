package com.narvii.services;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import com.narvii.util.text.TextUtils;
import com.narvii.wallet.IabUtils;

/* loaded from: classes.dex */
public class LocaleChangeListener implements AutostartServiceProvider<LocaleChangeListener> {
    BroadcastReceiver receiver;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LocaleChangeListener localeChangeListener) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LocaleChangeListener localeChangeListener) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LocaleChangeListener localeChangeListener) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LocaleChangeListener localeChangeListener) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LocaleChangeListener localeChangeListener) {
    }

    @Override // com.narvii.services.ServiceProvider
    public LocaleChangeListener create(NVContext nVContext) {
        if (this.receiver == null) {
            this.receiver = new BroadcastReceiver() { // from class: com.narvii.services.LocaleChangeListener.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    Log.i("locale changed");
                    IabUtils.setUpFloatFormat();
                    TextUtils.setUpNumberFormat();
                }
            };
            nVContext.getContext().getApplicationContext().registerReceiver(this.receiver, new IntentFilter("android.intent.action.LOCALE_CHANGED"));
        }
        return this;
    }
}
