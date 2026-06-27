package com.narvii.util;

import android.content.Intent;
import com.narvii.account.settings.MasterAccountWebViewFragment;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.util.logging.LoggingService;

/* loaded from: classes3.dex */
public class AccountWebUtils {
    public static void openForgetPasswordPage(NVContext nVContext, String str, String str2) {
        Intent intent = FragmentWrapperActivity.intent(MasterAccountWebViewFragment.class);
        intent.putExtra("url", new AccountWebHelper(nVContext).getForgetPasswordUrl(str, str2));
        try {
            nVContext.startActivity(intent);
        } catch (Exception e) {
            Log.e(e.getMessage());
        }
        ((LoggingService) nVContext.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("ForgotPasswordStarting", new Object[0]);
    }

    public static void openForgetPasswordPage(NVContext nVContext) {
        Intent intent = FragmentWrapperActivity.intent(MasterAccountWebViewFragment.class);
        intent.putExtra("url", new AccountWebHelper(nVContext).getForgetPasswordUrl());
        try {
            nVContext.startActivity(intent);
        } catch (Exception e) {
            Log.e(e.getMessage());
        }
        ((LoggingService) nVContext.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("ForgotPasswordStarting", new Object[0]);
    }
}
