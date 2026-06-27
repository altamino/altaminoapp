package com.narvii.community;

import android.content.SharedPreferences;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.community.AffiliationsService;
import com.narvii.model.Community;
import com.narvii.theme.ThemeInfo;
import com.narvii.theme.ThemePackService;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.LruHashSet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
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

    public VisitorModeService(NVContext nVContext) {
        this.nvContext = nVContext;
        this.themePackService = (ThemePackService) nVContext.getService("themePack");
        this.affiliationsService = (AffiliationsService) nVContext.getService("affiliations");
        this.affiliationsService.addAffiliationChangeListener(this);
        this.sharedPreferences = nVContext.getContext().getSharedPreferences("visitor_mode", 0);
        ArrayList listAs = JacksonUtils.readListAs(this.sharedPreferences.getString("not_joined_list", null), Integer.class);
        Iterator it = (listAs == null ? new ArrayList() : listAs).iterator();
        while (it.hasNext()) {
            this.visitorNotJoined.add((Integer) it.next());
        }
        updateList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeThemePack(int i) {
        if (this.affiliationsService.getTimeStamp() == null || this.affiliationsService.contains(i)) {
            return;
        }
        if ((NVApplication.instance() instanceof IncubatorApplication) && ((IncubatorApplication) NVApplication.instance()).isCommunityLive(i)) {
            return;
        }
        Log.i("visitorMode", "remove theme pack " + i);
        this.themePackService.deleteThemePack(i);
    }

    public void addVisitor(int i) {
        if (this.affiliationsService.contains(i)) {
            return;
        }
        this.visitorNotJoined.add(Integer.valueOf(i));
        save();
    }

    public void preloadThemePack(Community community) throws IOException {
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

    public void removeVisitor(int i) {
        if (this.visitorNotJoined.remove(Integer.valueOf(i))) {
            save();
        }
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        updateList();
    }

    private void updateList() {
        boolean z = false;
        for (Integer num : this.visitorNotJoined.snapShot()) {
            if (this.affiliationsService.contains(num.intValue())) {
                z = true;
                this.visitorNotJoined.remove(num);
            }
        }
        if (z) {
            save();
        }
    }

    private void save() {
        String strWriteAsString = JacksonUtils.writeAsString(new ArrayList(this.visitorNotJoined.snapShot()));
        Log.d("visitorMode", strWriteAsString);
        this.sharedPreferences.edit().putString("not_joined_list", strWriteAsString).apply();
    }
}
