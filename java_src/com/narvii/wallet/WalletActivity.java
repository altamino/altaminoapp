package com.narvii.wallet;

import android.content.Intent;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.navigator.Navigator;
import com.narvii.services.ServiceManager;

/* loaded from: classes3.dex */
public class WalletActivity extends FragmentWrapperActivity {
    @Override // com.narvii.app.NVActivity
    protected void initServiceManager(ServiceManager serviceManager) {
        super.initServiceManager(serviceManager);
        serviceManager.removeService("navigator");
        serviceManager.addService("navigator", new Navigator() { // from class: com.narvii.wallet.WalletActivity.1
            @Override // com.narvii.navigator.Navigator
            public Intent intentMapping(Intent intent) {
                return intent;
            }
        });
    }
}
