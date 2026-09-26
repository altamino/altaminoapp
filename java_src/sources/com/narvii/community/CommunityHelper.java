package com.narvii.community;

import android.content.Intent;
import android.view.View;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.util.Log;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes9.dex */
public class CommunityHelper {
    private NVContext nvContext;

    public static void safedk_CommunityHelper_startActivity_f7bde90a84ede91f4dadfed13975ceca(CommunityHelper p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/community/CommunityHelper;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public boolean checkCommunityJoined(int i10) {
        return checkCommunityJoined(i10, null);
    }

    public boolean isJoinedCommunityWithContext(int i10) {
        NVContext nVContext;
        if (i10 == -1 && (nVContext = this.nvContext) != null) {
            ConfigService configService = (ConfigService) nVContext.getService("config");
            if (configService.getCommunityId() > 0) {
                i10 = configService.getCommunityId();
            }
        }
        return isJoinedCommunity(i10);
    }

    protected void onCancelButtonPreClick(String str) {
    }

    protected void onJoinButtonPreClick(String str) {
    }

    public boolean checkCommunityJoined(final int i10, final String str) {
        if (i10 == -1 || i10 == 0 || isJoinedCommunityWithContext(i10)) {
            return true;
        }
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.nvContext.getContext());
        aCMAlertDialog.setMessage(R.string.headline_join_amino_first);
        aCMAlertDialog.addButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.community.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2225a.lambda$checkCommunityJoined$0(str, view);
            }
        });
        aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.community.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2227a.lambda$checkCommunityJoined$1(str, i10, view);
            }
        });
        aCMAlertDialog.show();
        return false;
    }

    public boolean checkCurrentCommunityJoined() {
        NVContext nVContext = this.nvContext;
        if (nVContext == null) {
            Log.e("checkCurrentCommunityJoined: nvcontex is null");
            return false;
        }
        ConfigService configService = (ConfigService) nVContext.getService("config");
        if (configService != null) {
            return checkCommunityJoined(configService.getCommunityId());
        }
        Log.e("checkCurrentCommunityJoined: configService is null");
        return false;
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

    public boolean isJoinedCommunity(int i10) {
        NVContext nVContext = this.nvContext;
        if (nVContext == null) {
            Log.e("isJoinedCommunity: nvcontex is null");
            return false;
        }
        if (((AccountService) nVContext.getService("account")).hasAccount()) {
            return ((AffiliationsService) this.nvContext.getService("affiliations")).contains(i10);
        }
        return false;
    }

    protected void startActivity(Intent intent) {
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.nvContext, intent);
    }

    public CommunityHelper(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkCommunityJoined$0(String str, View view) {
        onCancelButtonPreClick(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkCommunityJoined$1(String str, int i10, View view) {
        onJoinButtonPreClick(str);
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", i10);
        intent.putExtra("joinOnly", true);
        safedk_CommunityHelper_startActivity_f7bde90a84ede91f4dadfed13975ceca(this, intent);
    }
}
