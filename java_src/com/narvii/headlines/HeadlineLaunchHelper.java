package com.narvii.headlines;

import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.drawer.DrawerHost;
import com.narvii.model.Community;
import com.narvii.util.EnterCommunityUtils;
import com.narvii.util.Utils;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public class HeadlineLaunchHelper {
    NVContext context;
    HeadlineLoggingHelper loggingHelper;
    String source;
    LoggingSource loggingSource = LoggingSource.FeedList;
    LoggingOrigin loggingOrigin = LoggingOrigin.Headlines;
    final HashMap<Integer, Community> communityMap = new HashMap<>();
    final HashMap<Integer, String> timeMap = new HashMap<>();

    public HeadlineLaunchHelper(NVContext nVContext, String str) {
        this.context = nVContext;
        this.source = str;
        this.loggingHelper = new HeadlineLoggingHelper(nVContext);
    }

    public void onPageResponse(HeadlineListResponse headlineListResponse) {
        Map<Integer, Community> map = headlineListResponse.communityInfoMapping;
        if (map == null) {
            return;
        }
        this.communityMap.putAll(map);
        Iterator<Integer> it = headlineListResponse.communityInfoMapping.keySet().iterator();
        while (it.hasNext()) {
            this.timeMap.put(it.next(), headlineListResponse.timestamp);
        }
    }

    public void setCommunityMap(HashMap<Integer, Community> map, String str) {
        if (map == null) {
            return;
        }
        this.communityMap.clear();
        this.timeMap.clear();
        this.communityMap.putAll(map);
        Iterator<Integer> it = map.keySet().iterator();
        while (it.hasNext()) {
            this.timeMap.put(it.next(), str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void launchFeed(int r17, com.narvii.model.Feed r18, java.lang.String r19, int r20, java.lang.String r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.headlines.HeadlineLaunchHelper.launchFeed(int, com.narvii.model.Feed, java.lang.String, int, java.lang.String, boolean):void");
    }

    @Deprecated
    public void prepareEnterCommunity(final int i) {
        Community community = this.communityMap.get(Integer.valueOf(i));
        if (community != null) {
            ((CommunityService) this.context.getService("community")).updateCommunity(community, false, this.timeMap.get(Integer.valueOf(i)));
        }
        EnterCommunityUtils.fastEnter(i, this.source);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.headlines.HeadlineLaunchHelper.1
            int c;

            @Override // java.lang.Runnable
            public void run() {
                DrawerHost drawerHost = (DrawerHost) NVApplication.instance().peekService(i, "drawerHost");
                if (drawerHost == null) {
                    int i2 = this.c;
                    this.c = i2 + 1;
                    if (i2 < 5) {
                        Utils.postDelayed(this, 200L);
                        return;
                    }
                    return;
                }
                drawerHost.refreshCommunityInfo(600000L);
            }
        }, 200L);
    }
}
