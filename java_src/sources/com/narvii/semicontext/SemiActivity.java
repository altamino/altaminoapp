package com.narvii.semicontext;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.chat.rtc.RtcService;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.RecentCommunityHelper;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.headlines.HeadlineLoggingHelper;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Community;
import com.narvii.navigator.Navigator;
import com.narvii.services.ServiceManager;
import com.narvii.services.incubator.IncubatorCommunityLoggingServiceProvider;
import com.narvii.util.JacksonUtils;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.mixpanel.MixpanelAnalytics;
import com.safedk.android.utils.Logger;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class SemiActivity extends FragmentWrapperActivity {
    private static final int REQUEST_JOIN = 1928;
    Community community;
    HeadlineLoggingHelper headlineLoggingHelper;
    private boolean launchCommunityWhenJoined = true;
    private boolean obCall;

    public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        super.startActivityForResult(p1, p5);
    }

    public static void safedk_NVActivity_startActivityFromFragment_58c141dea7abf85bfc218080816ec363(NVActivity p0, Fragment p1, Intent p5, int p8, Bundle p10) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V");
        if (p5 == null) {
            return;
        }
        super.startActivityFromFragment(p1, p5, p8, p10);
    }

    public static void safedk_SemiActivity_startActivityForResult_3b39bf423c50158dabf67d260eb078b0(SemiActivity p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/semicontext/SemiActivity;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public Community community() {
        return this.community;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity
    public boolean hasDrawer() {
        return false;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity
    public boolean hasOnlineBar() {
        this.obCall = true;
        try {
            return super.hasOnlineBar();
        } finally {
            this.obCall = false;
        }
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity
    public boolean isGlobal() {
        return true;
    }

    public static Intent intent(Class<? extends Fragment> cls) {
        Intent intent = new Intent();
        intent.setClassName(NVApplication.instance().getPackageName(), SemiActivity.class.getName());
        intent.putExtra("fragment", cls.getName());
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryJoinPrivateCommunity() {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", communityId());
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community()));
        intent.putExtra("joinOnly", true);
        intent.putExtra("customFinishAnimIn", R.anim.fade_in);
        intent.putExtra("customFinishAnimOut", R.anim.fade_out);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, getStringParam(ExternalPostPreviewFragment.SOURCE));
        if (getBooleanParam("fromHeadline")) {
            intent.putExtra("loggingObjectId", getStringParam("loggingObjectId"));
            intent.putExtra("eventOrigin", LoggingOrigin.Headlines.toString());
        }
        safedk_SemiActivity_startActivityForResult_3b39bf423c50158dabf67d260eb078b0(this, intent, REQUEST_JOIN);
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    private Intent wrapSemi(Intent intent) {
        Navigator navigator;
        if (intent.getBooleanExtra("__noSemi", false)) {
            return intent;
        }
        if (intent.getComponent() == null && (navigator = (Navigator) getService("navigator")) != null) {
            intent = navigator.intentMapping(intent);
        }
        if (intent.getComponent() == null) {
            return intent;
        }
        ComponentName component = intent.getComponent();
        if (!getPackageName().equals(component.getPackageName()) || !FragmentWrapperActivity.class.getName().equals(component.getClassName())) {
            return intent;
        }
        intent.setComponent(new ComponentName(getContext(), getClass()));
        intent.putExtra("__communityId", getIntParam("__communityId"));
        intent.putExtra(RtcService.KEY_COMMUNITY, getIntParam(RtcService.KEY_COMMUNITY));
        return intent;
    }

    public int communityId() {
        return getIntParam("__communityId");
    }

    @Override // com.narvii.app.DrawerActivity
    protected boolean hasCommunityId() {
        return ((ConfigService) getService("config")).getCommunityId() != 0;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity
    public boolean hasPostEntry() {
        if (this.obCall) {
            return super.hasPostEntry();
        }
        return false;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 != REQUEST_JOIN || i11 != -1) {
            super.onActivityResult(i10, i11, intent);
            return;
        }
        if (this.launchCommunityWhenJoined) {
            CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(this, getStringParam(ExternalPostPreviewFragment.SOURCE));
            communityLaunchHelper.setAllowJoinCommuntiy(true);
            communityLaunchHelper.launch(communityId(), community(), null, null, null, null, null, false);
            if (this.community != null) {
                ((RecentCommunityHelper) getService("recentCommunities")).addRecent(this.community);
            }
        }
    }

    public void showCommunityDetailPage(boolean z6) {
        this.launchCommunityWhenJoined = z6;
        tryJoinPrivateCommunity();
    }

    @Override // com.narvii.app.NVActivity
    protected void initServiceManager(ServiceManager serviceManager) {
        super.initServiceManager(serviceManager);
        serviceManager.removeService("config");
        serviceManager.addServiceProvider("config", new SemiConfigServiceProvider());
        serviceManager.removeService("navigator");
        serviceManager.addServiceProvider("navigator", new SemiNavigatorProvider());
        serviceManager.removeService("drawerHost");
        serviceManager.removeService("liveLayerHost");
        serviceManager.addServiceProvider("liveLayerHost", new SemiLiveLayerHostProvider());
        serviceManager.addServiceProvider("liveLayer", new SemiLiveLayerServiceProvider());
        serviceManager.addServiceProvider("logging", new IncubatorCommunityLoggingServiceProvider());
    }

    public void join() {
        final Community community = community();
        if (community != null && community.joinType == 0) {
            CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(this, getStringParam(ExternalPostPreviewFragment.SOURCE)) { // from class: com.narvii.semicontext.SemiActivity.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.narvii.community.CommunityLaunchHelper
                public void onFinish() {
                    String str = community.listedStatus == 2 ? "Listed" : "Unlisted";
                    MixpanelAnalytics mixpanelAnalytics = new MixpanelAnalytics(SemiActivity.this.getContext());
                    HashMap map = new HashMap();
                    map.put("type", "join");
                    map.put("source", this.source);
                    map.put("community_id", String.valueOf(community.id));
                    map.put("template", String.valueOf(community.templateId));
                    map.put("category_type", SemiActivity.this.getStringParam("category"));
                    map.put("listing_status", str);
                    mixpanelAnalytics.increment("join_communities_joined_total", 1);
                    mixpanelAnalytics.increment(str.toLowerCase() + "_communities_joined_total", 1);
                    mixpanelAnalytics.trackEvent("joins_a_community", map);
                    super.onFinish();
                }

                @Override // com.narvii.community.CommunityLaunchHelper
                protected void onFail(int i10, String str) {
                    super.onFail(i10, str);
                    if (i10 == 3) {
                        SemiActivity.this.tryJoinPrivateCommunity();
                    }
                }
            };
            communityLaunchHelper.setAllowJoinCommuntiy(true);
            if (getBooleanParam("fromHeadline")) {
                this.headlineLoggingHelper.logJoinAminoStarting(getStringParam("loggingObjectId"), getIntParam("__communityId"), null);
            }
            communityLaunchHelper.launch(communityId(), community(), null, null, null, null, null, false);
            return;
        }
        tryJoinPrivateCommunity();
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.community = (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class);
        this.headlineLoggingHelper = new HeadlineLoggingHelper(this);
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void startActivityForResult(Intent intent, int i10) {
        safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, wrapSemi(intent), i10);
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity
    public void startActivityFromFragment(Fragment fragment, Intent intent, int i10, Bundle bundle) {
        safedk_NVActivity_startActivityFromFragment_58c141dea7abf85bfc218080816ec363(this, fragment, wrapSemi(intent), i10, bundle);
    }
}
