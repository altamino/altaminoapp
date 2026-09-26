package com.narvii.account.settings;

import android.app.Activity;
import android.content.Intent;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.master.MasterActivity;
import com.narvii.setting.AccountWebViewFragment;
import com.narvii.util.Utils;
import com.narvii.util.services.TopActivityService;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes6.dex */
public class MasterAccountWebViewFragment extends AccountWebViewFragment {
    @Override // com.narvii.setting.AccountWebViewFragment
    protected void popupLogout() {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.settings.MasterAccountWebViewFragment.1
            public static void safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Activity p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // java.lang.Runnable
            public void run() {
                Activity activity = MasterAccountWebViewFragment.this.getActivity();
                if (MasterAccountWebViewFragment.this.getActivity() == null && (activity = ((TopActivityService) MasterAccountWebViewFragment.this.getService("topActivity")).getTopActivity()) == null) {
                    return;
                }
                if (NVApplication.CLIENT_TYPE == 100) {
                    Intent intent = new Intent(MasterAccountWebViewFragment.this.getContext(), (Class<?>) MasterActivity.class);
                    intent.putExtra("disallowOnBoarding", true);
                    intent.setFlags(268468224);
                    safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(activity, intent);
                    activity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                }
                if (MasterAccountWebViewFragment.this.getActivity() != null) {
                    MasterAccountWebViewFragment.this.getActivity().finish();
                }
            }
        }, 500L);
    }
}
