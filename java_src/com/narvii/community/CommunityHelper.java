package com.narvii.community;

import android.content.Intent;
import android.view.View;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.util.Log;
import com.narvii.widget.ACMAlertDialog;

/* loaded from: classes2.dex */
public class CommunityHelper {
    private NVContext nvContext;

    protected void onCancelButtonPreClick(String str) {
    }

    protected void onJoinButtonPreClick(String str) {
    }

    public CommunityHelper(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public boolean isJoinedCommunity(int i) {
        NVContext nVContext = this.nvContext;
        if (nVContext == null) {
            Log.e("isJoinedCommunity: nvcontex is null");
            return false;
        }
        if (((AccountService) nVContext.getService("account")).hasAccount()) {
            return ((AffiliationsService) this.nvContext.getService("affiliations")).contains(i);
        }
        return false;
    }

    public boolean isJoinedCommunityWithContext(int i) {
        NVContext nVContext;
        if (i == -1 && (nVContext = this.nvContext) != null) {
            ConfigService configService = (ConfigService) nVContext.getService("config");
            if (configService.getCommunityId() > 0) {
                i = configService.getCommunityId();
            }
        }
        return isJoinedCommunity(i);
    }

    public boolean checkCurrentCommunityJoined() {
        NVContext nVContext = this.nvContext;
        if (nVContext == null) {
            Log.e("checkCurrentCommunityJoined: nvcontex is null");
            return false;
        }
        ConfigService configService = (ConfigService) nVContext.getService("config");
        if (configService == null) {
            Log.e("checkCurrentCommunityJoined: configService is null");
            return false;
        }
        return checkCommunityJoined(configService.getCommunityId());
    }

    public boolean checkCommunityJoined(int i) {
        return checkCommunityJoined(i, null);
    }

    public boolean checkCommunityJoined(final int i, final String str) {
        if (i == -1 || i == 0 || isJoinedCommunityWithContext(i)) {
            return true;
        }
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.nvContext.getContext());
        aCMAlertDialog.setMessage(R.string.headline_join_amino_first);
        aCMAlertDialog.addButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.community.-$$Lambda$CommunityHelper$r-8bD6Xqs5gpKGaZtp_4ZMDp0sE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$checkCommunityJoined$0$CommunityHelper(str, view);
            }
        });
        aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.community.-$$Lambda$CommunityHelper$j4hYC7KUC6XK7AbOGsT64Ml0q6A
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$checkCommunityJoined$1$CommunityHelper(str, i, view);
            }
        });
        aCMAlertDialog.show();
        return false;
    }

    public /* synthetic */ void lambda$checkCommunityJoined$0$CommunityHelper(String str, View view) {
        onCancelButtonPreClick(str);
    }

    public /* synthetic */ void lambda$checkCommunityJoined$1$CommunityHelper(String str, int i, View view) {
        onJoinButtonPreClick(str);
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", i);
        intent.putExtra("joinOnly", true);
        startActivity(intent);
    }

    public int getCommunityId() {
        NVContext nVContext = this.nvContext;
        if (nVContext == null) {
            return -1;
        }
        ConfigService configService = (ConfigService) nVContext.getService("config");
        if (configService.getCommunityId() > 0) {
            return configService.getCommunityId();
        }
        return -1;
    }

    protected void startActivity(Intent intent) {
        this.nvContext.startActivity(intent);
    }
}
