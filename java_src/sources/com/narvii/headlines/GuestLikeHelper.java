package com.narvii.headlines;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class GuestLikeHelper {
    public static final int MAX_ID_LIST_SIZE = 200;
    LinkedHashSet<String> hashSet;
    LocalBroadcastManager localBroadcastManager;
    NVContext nvContext;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.headlines.GuestLikeHelper.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction()) || Utils.isEquals(((AccountService) GuestLikeHelper.this.nvContext.getService("account")).getUserId(), GuestLikeHelper.this.uid)) {
                return;
            }
            GuestLikeHelper guestLikeHelper = GuestLikeHelper.this;
            if (guestLikeHelper.hashSet != null) {
                guestLikeHelper.hashSet = null;
                guestLikeHelper.uid = null;
                guestLikeHelper.save(null);
            }
        }
    };
    SharedPreferences sharedPreferences;
    String uid;

    public int getGuestVoteValue(String str) {
        return (str != null && getVotedIdList().contains(str)) ? 4 : 0;
    }

    private void addGuestVoted(String str) {
        if (str == null) {
            return;
        }
        LinkedHashSet<String> votedIdList = getVotedIdList();
        if (votedIdList.add(str)) {
            Iterator<String> it = this.hashSet.iterator();
            for (int size = votedIdList.size() - 200; size > 0 && it.hasNext(); size--) {
                it.next();
                it.remove();
            }
            save(votedIdList);
        }
    }

    private LinkedHashSet<String> getVotedIdList() {
        if (this.hashSet == null) {
            String userId = ((AccountService) this.nvContext.getService("account")).getUserId();
            this.uid = userId;
            if (Utils.isEquals(userId, this.sharedPreferences.getString("uid", null))) {
                ArrayList listAs = JacksonUtils.readListAs(this.sharedPreferences.getString("votedIdList", null), String.class);
                if (listAs == null) {
                    listAs = new ArrayList();
                }
                this.hashSet = new LinkedHashSet<>(listAs);
            } else {
                this.hashSet = new LinkedHashSet<>();
                this.sharedPreferences.edit().putString("uid", this.uid).remove("votedIdList").apply();
            }
        }
        return this.hashSet;
    }

    private void removeGuestVoted(String str) {
        if (str == null) {
            return;
        }
        LinkedHashSet<String> votedIdList = getVotedIdList();
        if (votedIdList.remove(str)) {
            save(votedIdList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void save(Set<String> set) {
        if (set == null) {
            this.sharedPreferences.edit().remove("votedIdList").apply();
        } else {
            this.sharedPreferences.edit().putString("votedIdList", JacksonUtils.writeAsString(set)).apply();
        }
    }

    public void onGuestVote(String str, int i10) {
        if (i10 == 0) {
            removeGuestVoted(str);
        } else {
            addGuestVoted(str);
        }
    }

    public void start() {
        this.localBroadcastManager.c(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public void stop() {
        this.localBroadcastManager.f(this.receiver);
    }

    public GuestLikeHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.sharedPreferences = nVContext.getContext().getSharedPreferences("headline_guest_like", 0);
        this.localBroadcastManager = LocalBroadcastManager.b(nVContext.getContext());
    }
}
