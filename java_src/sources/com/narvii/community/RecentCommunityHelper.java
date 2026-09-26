package com.narvii.community;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
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

    public SharedPreferences getPrefs() {
        return this.prefs;
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

    public void addRecent(Community community) {
        String strValueOf = String.valueOf(community.id);
        SharedPreferences prefs = getPrefs();
        String string = prefs.getString(PREFS_KEY, null);
        ArrayList<String> arrayList = TextUtils.isEmpty(string) ? new ArrayList<>() : StringUtils.split(string, ",");
        int i10 = community.status;
        if (i10 == 9 || i10 == 10) {
            arrayList.remove(strValueOf);
        } else {
            arrayList.remove(strValueOf);
            arrayList.add(0, strValueOf);
            while (arrayList.size() > 32) {
                arrayList.remove(arrayList.size() - 1);
            }
        }
        prefs.edit().putString(PREFS_KEY, StringUtils.join(arrayList, ",")).apply();
        this.listeners.dispatch(new Callback<RecentCommunityChangeListener>() { // from class: com.narvii.community.RecentCommunityHelper.1
            @Override // com.narvii.util.Callback
            public void call(RecentCommunityChangeListener recentCommunityChangeListener) {
                recentCommunityChangeListener.onRecentCommunityChanged();
            }
        });
    }

    @Override // com.narvii.services.ServiceProvider
    public RecentCommunityHelper create(NVContext nVContext) {
        if (nVContext instanceof NVApplication) {
            this.context = nVContext;
            this.communityService = (CommunityService) nVContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
            this.myCommunityListService = (MyCommunityListService) nVContext.getService("myCommunityList");
            SharedPreferences prefs = ((AccountService) nVContext.getService("account")).getPrefs();
            this.prefs = prefs;
            if (prefs.contains("recentCommunityList")) {
                ArrayList<Community> listAs = JacksonUtils.readListAs(this.prefs.getString("recentCommunityList", null), Community.class);
                StringBuilder sb = new StringBuilder();
                for (Community community : listAs) {
                    if (sb.length() > 0) {
                        sb.append(kotlinx.serialization.json.internal.b.COMMA);
                    }
                    sb.append(community.id);
                }
                this.prefs.edit().remove("recentCommunityList").putString(PREFS_KEY, sb.toString()).commit();
            }
        }
        return this;
    }

    public void removeChangeListener(RecentCommunityChangeListener recentCommunityChangeListener) {
        this.listeners.removeListener(recentCommunityChangeListener);
    }

    public void removeRecent(Community community) {
        String strValueOf = String.valueOf(community.id);
        SharedPreferences prefs = getPrefs();
        String string = prefs.getString(PREFS_KEY, null);
        ArrayList<String> arrayList = TextUtils.isEmpty(string) ? new ArrayList<>() : StringUtils.split(string, ",");
        int iIndexOf = arrayList.indexOf(strValueOf);
        if (iIndexOf >= 0) {
            arrayList.remove(iIndexOf);
            prefs.edit().putString(PREFS_KEY, StringUtils.join(arrayList, ",")).apply();
            this.listeners.dispatch(new Callback<RecentCommunityChangeListener>() { // from class: com.narvii.community.RecentCommunityHelper.2
                @Override // com.narvii.util.Callback
                public void call(RecentCommunityChangeListener recentCommunityChangeListener) {
                    recentCommunityChangeListener.onRecentCommunityChanged();
                }
            });
        }
    }

    public List<Integer> getRecentIdList(int i10) {
        String string = getPrefs().getString(PREFS_KEY, null);
        if (TextUtils.isEmpty(string)) {
            return new ArrayList();
        }
        ArrayList<String> arrayListSplit = StringUtils.split(string, ",");
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = arrayListSplit.iterator();
        while (it.hasNext()) {
            try {
                int i11 = Integer.parseInt(it.next());
                List<Community> list = this.myCommunityListService.list();
                ArrayList arrayList2 = new ArrayList();
                if (list != null) {
                    Iterator<Community> it2 = list.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(Integer.valueOf(it2.next().id));
                    }
                }
                if (arrayList.size() >= i10) {
                    break;
                }
                arrayList.add(Integer.valueOf(i11));
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    public List<Community> getRecentList(int i10, int i11) {
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
                    if (arrayList.size() >= i11) {
                        break;
                    }
                    if (community.id != i10) {
                        arrayList.add(community);
                    }
                }
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }
}
