package com.narvii.semicontext;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.chat.rtc.RtcService;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.RecentCommunityHelper;
import com.narvii.config.ConfigService;
import com.narvii.headlines.HeadlineLoggingHelper;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Community;
import com.narvii.navigator.Navigator;
import com.narvii.services.ServiceManager;
import com.narvii.services.incubator.IncubatorCommunityLoggingServiceProvider;
import com.narvii.util.JacksonUtils;
import com.narvii.util.logging.LoggingOrigin;

/* loaded from: classes3.dex */
public class SemiActivity extends FragmentWrapperActivity {
    private static final int REQUEST_JOIN = 1546;
    Community community;
    HeadlineLoggingHelper headlineLoggingHelper;
    private boolean launchCommunityWhenJoined = true;
    private boolean obCall;

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity
    public boolean hasDrawer() {
        return false;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.community = (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class);
        this.headlineLoggingHelper = new HeadlineLoggingHelper(this);
    }

    public static Intent intent(Class<? extends Fragment> cls) {
        Intent intent = new Intent();
        intent.setClassName(NVApplication.instance().getPackageName(), SemiActivity.class.getName());
        intent.putExtra("fragment", cls.getName());
        return intent;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity
    public boolean hasPostEntry() {
        if (this.obCall) {
            return super.hasPostEntry();
        }
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

    @Override // com.narvii.app.DrawerActivity
    protected boolean hasCommunityId() {
        return ((ConfigService) getService("config")).getCommunityId() != 0;
    }

    public int communityId() {
        return getIntParam("__communityId");
    }

    public Community community() {
        return this.community;
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
            CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(this, getStringParam("Source")) { // from class: com.narvii.semicontext.SemiActivity.1
                @Override // com.narvii.community.CommunityLaunchHelper
                protected void onFail(int i, String str) {
                    super.onFail(i, str);
                    if (i == 3) {
                        SemiActivity.this.tryJoinPrivateCommunity();
                    }
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.narvii.community.CommunityLaunchHelper
                public void onFinish() {
                    super.onFinish();
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

    public void showCommunityDetailPage(boolean z) {
        this.launchCommunityWhenJoined = z;
        tryJoinPrivateCommunity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryJoinPrivateCommunity() {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", communityId());
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community()));
        intent.putExtra("joinOnly", true);
        intent.putExtra("customFinishAnimIn", R.anim.fade_in);
        intent.putExtra("customFinishAnimOut", R.anim.fade_out);
        intent.putExtra("Source", getStringParam("Source"));
        if (getBooleanParam("fromHeadline")) {
            intent.putExtra("loggingObjectId", getStringParam("loggingObjectId"));
            intent.putExtra("eventOrigin", LoggingOrigin.Headlines.toString());
        }
        startActivityForResult(intent, REQUEST_JOIN);
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        super.startActivityForResult(wrapSemi(intent), i);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity
    public void startActivityFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle) {
        super.startActivityFromFragment(fragment, wrapSemi(intent), i, bundle);
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
        intent.setComponent(new ComponentName(getContext(), (Class<?>) SemiActivity.class));
        intent.putExtra("__communityId", getIntParam("__communityId"));
        intent.putExtra(RtcService.KEY_COMMUNITY, getIntParam(RtcService.KEY_COMMUNITY));
        return intent;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == REQUEST_JOIN && i2 == -1) {
            if (this.launchCommunityWhenJoined) {
                CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(this, getStringParam("Source"));
                communityLaunchHelper.setAllowJoinCommuntiy(true);
                communityLaunchHelper.launch(communityId(), community(), null, null, null, null, null, false);
                if (this.community != null) {
                    ((RecentCommunityHelper) getService("recentCommunities")).addRecent(this.community);
                    return;
                }
                return;
            }
            return;
        }
        super.onActivityResult(i, i2, intent);
    }
}
