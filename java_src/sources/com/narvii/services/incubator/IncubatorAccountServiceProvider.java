package com.narvii.services.incubator;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.master.MasterActivity;
import com.narvii.services.ServiceProvider;
import com.narvii.util.Utils;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class IncubatorAccountServiceProvider implements ServiceProvider<AccountService> {
    AccountService account0;
    final BroadcastReceiver keychainReceiver = new BroadcastReceiver() { // from class: com.narvii.services.incubator.IncubatorAccountServiceProvider.1
        public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (IncubatorAccountServiceProvider.this.account0.getKeychainStatus() == 0) {
                if (!Utils.isStringEquals(IncubatorAccountServiceProvider.this.account0.getUserId(), IncubatorAccountServiceProvider.this.userId0)) {
                    Intent intent2 = new Intent(context, (Class<?>) MasterActivity.class);
                    intent2.putExtra("disallowOnBoarding", true);
                    intent2.setFlags(268468224);
                    safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(context, intent2);
                }
                IncubatorAccountServiceProvider.this.lbm.f(this);
            }
        }
    };
    LocalBroadcastManager lbm;
    String userId0;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, AccountService accountService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, AccountService accountService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, AccountService accountService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, AccountService accountService) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resume$0() {
        this.lbm.f(this.keychainReceiver);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public AccountService create(NVContext nVContext) {
        int i10 = nVContext instanceof CommunityContext ? ((CommunityContext) nVContext).cid : 0;
        return new AccountService(nVContext, i10 == 0 ? 1 : 2, i10);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, AccountService accountService) {
        if (nVContext instanceof Application) {
            if (accountService.hasAccount()) {
                this.account0 = accountService;
                this.userId0 = accountService.getUserId();
                LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(nVContext.getContext());
                this.lbm = localBroadcastManagerB;
                localBroadcastManagerB.c(this.keychainReceiver, new IntentFilter(AccountService.KEYCHAIN_STATUS_CHANGED));
                Utils.postDelayed(new Runnable() { // from class: com.narvii.services.incubator.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f2729a.lambda$resume$0();
                    }
                }, 600L);
            }
            accountService.crossAppsCheckInBackground();
        }
    }
}
