package com.narvii.headlines;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.ImagesContract;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.RtcService;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.community.CommunityService;
import com.narvii.drawer.DrawerHost;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.services.incubator.IncubatorCommunityLoggingServiceProvider;
import com.narvii.util.EnterCommunityUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.safedk.android.utils.Logger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class HeadlineLaunchHelper {
    NVContext context;
    HeadlineLoggingHelper loggingHelper;
    String source;
    LoggingSource loggingSource = LoggingSource.FeedList;
    LoggingOrigin loggingOrigin = LoggingOrigin.Headlines;
    final HashMap<Integer, Community> communityMap = new HashMap<>();
    final HashMap<Integer, String> timeMap = new HashMap<>();

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0039  */
    public void launchFeed(int i10, Feed feed, String str, int i11, String str2, boolean z6) {
        boolean z10;
        Community community = this.communityMap.get(Integer.valueOf(i10));
        IncubatorCommunityLoggingServiceProvider.HEADLINE_ENTER.set(Integer.valueOf(i10));
        if (feed instanceof Blog) {
            Blog blog = (Blog) feed;
            if (!blog.shouldShowWebPreview() || blog.getLinkSummary() == null || blog.getLinkSummary().getLink() == null) {
                z10 = false;
            } else {
                z10 = true;
            }
        } else {
            z10 = false;
        }
        this.loggingHelper.logPostDetailViewEntered(feed, i11, str, i10, str2);
        EnterCommunityUtils.fastEnter(i10);
        CommunityService communityService = (CommunityService) this.context.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        if (communityService.getCommunity(i10) == null) {
            communityService.updateCommunity(community, false, 0L);
        }
        if (z10) {
            Intent intent = FragmentWrapperActivity.intent(ExternalPostPreviewFragment.class);
            intent.putExtra("__communityId", feed.ndcId);
            intent.putExtra(RtcService.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
            Blog blog2 = (Blog) feed;
            intent.putExtra(ImagesContract.URL, blog2.getLinkSummary().getLink());
            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(feed));
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "External Content");
            intent.putExtra("loggingObjectType", blog2.objectType());
            intent.putExtra("loggingObjectId", blog2.id());
            intent.putExtra("loggingBlogType", blog2.type);
            intent.putExtra("id", feed.id());
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
            LoggingSource loggingSource = this.loggingSource;
            intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, loggingSource == null ? null : loggingSource.name());
            LoggingOrigin loggingOrigin = this.loggingOrigin;
            intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, loggingOrigin != null ? loggingOrigin.name() : null);
            if (!z6) {
                intent.putExtra(RtcService.KEY_HIDE_DRAWER, true);
                intent.putExtra("fromHeadline", true);
            }
            intent.putExtra(NVActivity.INTERACTION_SCOPE, true);
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context.getContext(), intent);
        }
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

    @Deprecated
    public void prepareEnterCommunity(final int i10) {
        Community community = this.communityMap.get(Integer.valueOf(i10));
        if (community != null) {
            ((CommunityService) this.context.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).updateCommunity(community, false, this.timeMap.get(Integer.valueOf(i10)));
        }
        EnterCommunityUtils.fastEnter(i10, this.source);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.headlines.HeadlineLaunchHelper.1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int f2278c;

            @Override // java.lang.Runnable
            public void run() {
                DrawerHost drawerHost = (DrawerHost) NVApplication.instance().peekService(i10, "drawerHost");
                if (drawerHost == null) {
                    int i11 = this.f2278c;
                    this.f2278c = i11 + 1;
                    if (i11 < 5) {
                        Utils.postDelayed(this, 200L);
                        return;
                    }
                    return;
                }
                drawerHost.refreshCommunityInfo(600000L);
            }
        }, 200L);
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

    public HeadlineLaunchHelper(NVContext nVContext, String str) {
        this.context = nVContext;
        this.source = str;
        this.loggingHelper = new HeadlineLoggingHelper(nVContext);
    }
}
