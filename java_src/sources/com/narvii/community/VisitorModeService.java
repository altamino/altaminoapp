package com.narvii.community;

import android.content.SharedPreferences;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.model.Community;
import com.narvii.theme.ThemeInfo;
import com.narvii.theme.ThemePackService;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.LruHashSet;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class VisitorModeService implements AffiliationsService.AffiliationChangeListener {
    AffiliationsService affiliationsService;
    NVContext nvContext;
    SharedPreferences sharedPreferences;
    ThemePackService themePackService;
    LruHashSet<Integer> visitorNotJoined = new LruHashSet<Integer>(30) { // from class: com.narvii.community.VisitorModeService.1
        @Override // com.narvii.util.LruHashSet
        protected void onKeyEvicted(Object obj) {
            if (obj instanceof Integer) {
                VisitorModeService.this.removeThemePack(((Integer) obj).intValue());
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void removeThemePack(int i10) {
        if (this.affiliationsService.getTimeStamp() == null || this.affiliationsService.contains(i10)) {
            return;
        }
        if ((NVApplication.instance() instanceof IncubatorApplication) && ((IncubatorApplication) NVApplication.instance()).isCommunityLive(i10)) {
            return;
        }
        Log.i("visitorMode", "remove theme pack " + i10);
        this.themePackService.deleteThemePack(i10);
    }

    private void save() {
        String strWriteAsString = JacksonUtils.writeAsString(new ArrayList(this.visitorNotJoined.snapShot()));
        Log.d("visitorMode", strWriteAsString);
        this.sharedPreferences.edit().putString("not_joined_list", strWriteAsString).apply();
    }

    private void updateList() {
        boolean z6 = false;
        for (Integer num : this.visitorNotJoined.snapShot()) {
            if (this.affiliationsService.contains(num.intValue())) {
                this.visitorNotJoined.remove(num);
                z6 = true;
            }
        }
        if (z6) {
            save();
        }
    }

    public void addVisitor(int i10) {
        if (this.affiliationsService.contains(i10)) {
            return;
        }
        this.visitorNotJoined.add(Integer.valueOf(i10));
        save();
    }

    public void preloadThemePack(Community community) {
        if (community == null) {
            return;
        }
        ThemePackService themePackService = (ThemePackService) this.nvContext.getService("themePack");
        ThemeInfo themeInfo = themePackService.getThemeInfo(community.id);
        if (themeInfo == null || themeInfo.revision != community.themePackRevision()) {
            themePackService.addToDownLoadList(community.id);
            themePackService.require(community.id, community.themePackRevision(), community.themePackUrl());
        }
    }

    public void removeVisitor(int i10) {
        if (this.visitorNotJoined.remove(Integer.valueOf(i10))) {
            save();
        }
    }

    public VisitorModeService(NVContext nVContext) {
        this.nvContext = nVContext;
        this.themePackService = (ThemePackService) nVContext.getService("themePack");
        AffiliationsService affiliationsService = (AffiliationsService) nVContext.getService("affiliations");
        this.affiliationsService = affiliationsService;
        affiliationsService.addAffiliationChangeListener(this);
        SharedPreferences sharedPreferences = nVContext.getContext().getSharedPreferences("visitor_mode", 0);
        this.sharedPreferences = sharedPreferences;
        ArrayList listAs = JacksonUtils.readListAs(sharedPreferences.getString("not_joined_list", null), Integer.class);
        Iterator it = (listAs == null ? new ArrayList() : listAs).iterator();
        while (it.hasNext()) {
            this.visitorNotJoined.add((Integer) it.next());
        }
        updateList();
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        updateList();
    }
}
