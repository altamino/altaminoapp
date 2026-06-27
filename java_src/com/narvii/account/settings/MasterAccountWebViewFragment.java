package com.narvii.account.settings;

import android.app.Activity;
import android.content.Intent;
import com.narvii.amino.MainActivity;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.master.MasterActivity;
import com.narvii.setting.AccountWebViewFragment;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.services.TopActivityService;

/* loaded from: classes2.dex */
public class MasterAccountWebViewFragment extends AccountWebViewFragment {
    @Override // com.narvii.setting.AccountWebViewFragment
    protected void popupLogout() {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.settings.MasterAccountWebViewFragment.1
            @Override // java.lang.Runnable
            public void run() {
                Activity activity = MasterAccountWebViewFragment.this.getActivity();
                if (MasterAccountWebViewFragment.this.getActivity() == null && (activity = ((TopActivityService) MasterAccountWebViewFragment.this.getService("topActivity")).getTopActivity()) == null) {
                    return;
                }
                int i = NVApplication.CLIENT_TYPE;
                if (i == 101) {
                    MainActivity.setPendingCommand(MainActivity.CMD_RESET);
                    Intent intent = new Intent(MasterAccountWebViewFragment.this.getContext(), (Class<?>) MainActivity.class);
                    intent.putExtra("__communityId", new PackageUtils(MasterAccountWebViewFragment.this.getContext()).getCommunityIdFromPackageName());
                    intent.setFlags(268468224);
                    activity.startActivity(intent);
                    activity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                } else if (i == 100) {
                    Intent intent2 = new Intent(MasterAccountWebViewFragment.this.getContext(), (Class<?>) MasterActivity.class);
                    intent2.putExtra("disallowOnBoarding", true);
                    intent2.setFlags(268468224);
                    activity.startActivity(intent2);
                    activity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                }
                if (MasterAccountWebViewFragment.this.getActivity() != null) {
                    MasterAccountWebViewFragment.this.getActivity().finish();
                }
            }
        }, 500L);
    }
}
