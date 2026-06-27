package com.narvii.services.incubator;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.master.MasterActivity;
import com.narvii.services.ServiceProvider;
import com.narvii.util.Utils;

/* loaded from: classes.dex */
public class IncubatorAccountServiceProvider implements ServiceProvider<AccountService> {
    AccountService account0;
    final BroadcastReceiver keychainReceiver = new BroadcastReceiver() { // from class: com.narvii.services.incubator.IncubatorAccountServiceProvider.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (IncubatorAccountServiceProvider.this.account0.getKeychainStatus() == 0) {
                if (!Utils.isStringEquals(IncubatorAccountServiceProvider.this.account0.getUserId(), IncubatorAccountServiceProvider.this.userId0)) {
                    Intent intent2 = new Intent(context, (Class<?>) MasterActivity.class);
                    intent2.putExtra("disallowOnBoarding", true);
                    intent2.setFlags(268468224);
                    context.startActivity(intent2);
                }
                IncubatorAccountServiceProvider.this.lbm.unregisterReceiver(this);
            }
        }
    };
    LocalBroadcastManager lbm;
    String userId0;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, AccountService accountService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public AccountService create(NVContext nVContext) {
        int i = nVContext instanceof CommunityContext ? ((CommunityContext) nVContext).cid : 0;
        return new AccountService(nVContext, i == 0 ? 1 : 2, i);
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, AccountService accountService) {
        accountService.start();
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, AccountService accountService) {
        if (nVContext instanceof Application) {
            if (accountService.hasAccount()) {
                this.account0 = accountService;
                this.userId0 = accountService.getUserId();
                this.lbm = LocalBroadcastManager.getInstance(nVContext.getContext());
                this.lbm.registerReceiver(this.keychainReceiver, new IntentFilter(AccountService.KEYCHAIN_STATUS_CHANGED));
                Utils.postDelayed(new Runnable() { // from class: com.narvii.services.incubator.IncubatorAccountServiceProvider.1
                    @Override // java.lang.Runnable
                    public void run() {
                        IncubatorAccountServiceProvider incubatorAccountServiceProvider = IncubatorAccountServiceProvider.this;
                        incubatorAccountServiceProvider.lbm.unregisterReceiver(incubatorAccountServiceProvider.keychainReceiver);
                    }
                }, 600L);
            }
            accountService.crossAppsCheckInBackground();
        } else if (nVContext instanceof CommunityContext) {
            accountService.updateRecentVisitorCount();
        }
        accountService.resume();
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, AccountService accountService) {
        accountService.pause();
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, AccountService accountService) {
        accountService.stop();
    }
}
