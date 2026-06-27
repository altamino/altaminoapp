package com.narvii.catalog.activity;

import android.content.SharedPreferences;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.model.Feed;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class RecentActivityHelper {
    public static final String CATALOG_RECENT_ACTIVITY_LAST_IDS = "catalog_recent_activity_last_ids";
    int communityId;
    NVContext mNVContext;
    SharedPreferences prefs;

    public RecentActivityHelper(NVContext nVContext) {
        this.mNVContext = nVContext;
        AccountService accountService = (AccountService) nVContext.getService("account");
        this.communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        this.prefs = accountService.getPrefs();
    }

    public int newItemCount(List<Feed> list) {
        int i = 0;
        if (list == null) {
            return 0;
        }
        HashSet hashSet = new HashSet();
        for (Feed feed : list) {
            if (feed != null) {
                hashSet.add(feed.id());
            }
        }
        Set<String> stringSet = this.prefs.getStringSet("catalog_recent_activity_last_ids_" + this.communityId, null);
        if (stringSet == null) {
            return hashSet.size();
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (!stringSet.contains((String) it.next())) {
                i++;
            }
        }
        return i;
    }

    public void cacheItemIds(List<Feed> list) {
        if (list == null) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (Feed feed : list) {
            if (feed != null) {
                hashSet.add(feed.id());
            }
        }
        this.prefs.edit().putStringSet("catalog_recent_activity_last_ids_" + this.communityId, hashSet).apply();
    }
}
