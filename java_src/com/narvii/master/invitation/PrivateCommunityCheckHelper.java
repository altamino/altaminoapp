package com.narvii.master.invitation;

import android.content.Intent;
import android.content.SharedPreferences;
import android.support.v4.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.master.CommunityDetailFragment;

/* loaded from: classes3.dex */
public class PrivateCommunityCheckHelper {
    public static String KEY_CURRENT_USER_JOINED = "key_current_user_joined";
    AccountService accountService;
    NVContext context;
    SharedPreferences sharedPreferences;

    public PrivateCommunityCheckHelper(NVContext nVContext) {
        this.context = nVContext;
        this.accountService = (AccountService) nVContext.getService("account");
        this.sharedPreferences = this.accountService.getPrefs();
    }

    public boolean isCurrentUserJoined() {
        AccountService accountService = this.accountService;
        if (accountService == null || !accountService.hasAccount()) {
            return false;
        }
        return this.sharedPreferences.getBoolean(KEY_CURRENT_USER_JOINED, false);
    }

    public void setCurrentUserJoinedStatus(boolean z) {
        this.sharedPreferences.edit().putBoolean(KEY_CURRENT_USER_JOINED, z).apply();
    }

    public void sendCommunityUserInfoChanged(boolean z) {
        Intent intent = new Intent(CommunityDetailFragment.KEY_COMMUNITY_USER_INFO_CHANGED);
        intent.putExtra(CommunityDetailFragment.KEY_CURRENT_USER_JOINED, z);
        LocalBroadcastManager.getInstance(this.context.getContext()).sendBroadcast(intent);
        setCurrentUserJoinedStatus(z);
    }
}
