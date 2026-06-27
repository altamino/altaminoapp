package com.narvii.community;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.Community;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class RecentCommunityHelper implements AutostartServiceProvider<RecentCommunityHelper> {
    private static final String PREFS_KEY = "recentCommunityIdList";
    private CommunityService communityService;
    private NVContext context;
    EventDispatcher<RecentCommunityChangeListener> listeners = new EventDispatcher<>();
    MyCommunityListService myCommunityListService;
    private SharedPreferences prefs;

    public interface RecentCommunityChangeListener {
        void onRecentCommunityChanged();
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, RecentCommunityHelper recentCommunityHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, RecentCommunityHelper recentCommunityHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, RecentCommunityHelper recentCommunityHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, RecentCommunityHelper recentCommunityHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, RecentCommunityHelper recentCommunityHelper) {
    }

    public void addChangeListener(RecentCommunityChangeListener recentCommunityChangeListener) {
        this.listeners.addListener(recentCommunityChangeListener);
    }

    public void removeChangeListener(RecentCommunityChangeListener recentCommunityChangeListener) {
        this.listeners.removeListener(recentCommunityChangeListener);
    }

    public SharedPreferences getPrefs() {
        return this.prefs;
    }

    public void addRecent(Community community) {
        ArrayList<String> arrayListSplit;
        String strValueOf = String.valueOf(community.id);
        SharedPreferences prefs = getPrefs();
        String string = prefs.getString(PREFS_KEY, null);
        if (TextUtils.isEmpty(string)) {
            arrayListSplit = new ArrayList<>();
        } else {
            arrayListSplit = StringUtils.split(string, ",");
        }
        int i = community.status;
        if (i == 9 || i == 10) {
            arrayListSplit.remove(strValueOf);
        } else {
            arrayListSplit.remove(strValueOf);
            arrayListSplit.add(0, strValueOf);
            while (arrayListSplit.size() > 32) {
                arrayListSplit.remove(arrayListSplit.size() - 1);
            }
        }
        prefs.edit().putString(PREFS_KEY, StringUtils.join(arrayListSplit, ",")).apply();
        this.listeners.dispatch(new Callback<RecentCommunityChangeListener>() { // from class: com.narvii.community.RecentCommunityHelper.1
            @Override // com.narvii.util.Callback
            public void call(RecentCommunityChangeListener recentCommunityChangeListener) {
                recentCommunityChangeListener.onRecentCommunityChanged();
            }
        });
    }

    public void removeRecent(Community community) {
        ArrayList<String> arrayListSplit;
        String strValueOf = String.valueOf(community.id);
        SharedPreferences prefs = getPrefs();
        String string = prefs.getString(PREFS_KEY, null);
        if (TextUtils.isEmpty(string)) {
            arrayListSplit = new ArrayList<>();
        } else {
            arrayListSplit = StringUtils.split(string, ",");
        }
        int iIndexOf = arrayListSplit.indexOf(strValueOf);
        if (iIndexOf >= 0) {
            arrayListSplit.remove(iIndexOf);
            prefs.edit().putString(PREFS_KEY, StringUtils.join(arrayListSplit, ",")).apply();
            this.listeners.dispatch(new Callback<RecentCommunityChangeListener>() { // from class: com.narvii.community.RecentCommunityHelper.2
                @Override // com.narvii.util.Callback
                public void call(RecentCommunityChangeListener recentCommunityChangeListener) {
                    recentCommunityChangeListener.onRecentCommunityChanged();
                }
            });
        }
    }

    public List<Integer> getRecentIdList(int i) throws NumberFormatException {
        int i2;
        String string = getPrefs().getString(PREFS_KEY, null);
        if (TextUtils.isEmpty(string)) {
            return new ArrayList();
        }
        ArrayList<String> arrayListSplit = StringUtils.split(string, ",");
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = arrayListSplit.iterator();
        while (it.hasNext()) {
            try {
                i2 = Integer.parseInt(it.next());
                List<Community> list = this.myCommunityListService.list();
                ArrayList arrayList2 = new ArrayList();
                if (list != null) {
                    Iterator<Community> it2 = list.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(Integer.valueOf(it2.next().id));
                    }
                }
            } catch (Exception unused) {
            }
            if (arrayList.size() >= i) {
                break;
            }
            arrayList.add(Integer.valueOf(i2));
        }
        return arrayList;
    }

    public List<Community> getRecentList(int i, int i2) throws NumberFormatException {
        String string = getPrefs().getString(PREFS_KEY, null);
        if (TextUtils.isEmpty(string)) {
            return new ArrayList();
        }
        ArrayList<String> arrayListSplit = StringUtils.split(string, ",");
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = arrayListSplit.iterator();
        while (it.hasNext()) {
            try {
                Community community = this.communityService.getCommunity(Integer.parseInt(it.next()));
                if (community != null) {
                    if (arrayList.size() >= i2) {
                        break;
                    }
                    if (community.id != i) {
                        arrayList.add(community);
                    }
                }
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    @Override // com.narvii.services.ServiceProvider
    public RecentCommunityHelper create(NVContext nVContext) {
        if (nVContext instanceof NVApplication) {
            this.context = nVContext;
            this.communityService = (CommunityService) nVContext.getService("community");
            this.myCommunityListService = (MyCommunityListService) nVContext.getService("myCommunityList");
            this.prefs = ((AccountService) nVContext.getService("account")).getPrefs();
            if (this.prefs.contains("recentCommunityList")) {
                ArrayList listAs = JacksonUtils.readListAs(this.prefs.getString("recentCommunityList", null), Community.class);
                StringBuilder sb = new StringBuilder();
                Iterator it = listAs.iterator();
                while (it.hasNext()) {
                    Community community = (Community) it.next();
                    if (sb.length() > 0) {
                        sb.append(',');
                    }
                    sb.append(community.id);
                }
                this.prefs.edit().remove("recentCommunityList").putString(PREFS_KEY, sb.toString()).commit();
            }
        }
        return this;
    }
}
