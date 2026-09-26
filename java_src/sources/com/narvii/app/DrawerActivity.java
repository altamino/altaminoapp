package com.narvii.app;

import ai.medialab.medialabads2.banners.MediaLabAdView;
import ai.medialab.medialabads2.data.AdSize;
import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.app.ActionBar;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import androidx.core.view.GravityCompat;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.master.R;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.community.CBBHost;
import com.narvii.community.CommunityService;
import com.narvii.community.VisitorBarHost;
import com.narvii.config.ConfigService;
import com.narvii.drawer.DrawerHost;
import com.narvii.drawer.DrawerLayout;
import com.narvii.drawer.DrawerView;
import com.narvii.drawer.MyDrawerLayout;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.post.entry.PostEntryDialog;
import com.narvii.post.entry.PostEntryView;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Log;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.SplashUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.actionbar.ActionBarLayout;
import com.narvii.util.logging.LoggingSource;
import com.narvii.widget.ProxyView;
import com.narvii.widget.ProxyViewHost;
import com.narvii.widget.TintButton;
import com.safedk.android.utils.Logger;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class DrawerActivity extends NVActivity implements DrawerLayout.DrawerListener {
    public static final int CMD_CLOSE_DRAWER = 16384001;
    public static final int CMD_ON_CLOSED = 16449539;
    public static final int CMD_ON_OPENED = 16449538;
    public static final int CMD_ON_SLIDE = 16449537;
    public static final int CMD_POST = 16384005;
    private static final String TAG = "EnterCommunityHelper";
    private static final ArrayList<View> buf = new ArrayList<>();
    private boolean abInited;
    private ViewGroup activityContent;
    private MediaLabAdView adView;
    private CBBHost cbbHost;
    private ProxyView cbbView;
    CommunityConfigHelper communityConfigHelper;
    private Runnable detachAll;
    boolean disableCBB;
    boolean disableDrawer;
    private ProxyViewHost drawerHost;
    private View drawerIndicator;
    private MyDrawerLayout drawerLayout;
    private int drawerLayoutViewCount;
    private float drawerOffset;
    private ProxyViewHost drawerRightHost;
    private DrawerView drawerRightView;
    int drawerState;
    private DrawerView drawerView;
    private boolean isPostEnabled;
    private ProxyViewHost liveLayerHost;
    private ProxyView liveLayerView;
    private PostEntryView postEntryFrame;
    private boolean skipDetachNextPause;
    private boolean skipNextDrawerOpenedEvent;
    private VisitorBarHost visitorBarHost;
    private ProxyView visitorBarView;
    private boolean themeUINeedUpdate = false;
    private HashSet<View> adObstructions = new HashSet<>();
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.app.DrawerActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (CommunityService.ACTION_COMMUNITY_CHANGED.equals(intent.getAction())) {
                if (intent.getIntExtra("id", 0) == ((ConfigService) DrawerActivity.this.getService("config")).getCommunityId()) {
                    DrawerActivity.this.onCommunityUpdate();
                }
            }
        }
    };
    private final BroadcastReceiver themeDownLoadReceiver = new BroadcastReceiver() { // from class: com.narvii.app.DrawerActivity.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ConfigService configService = (ConfigService) DrawerActivity.this.getService("config");
            if (ThemePackService.ACTION_THEME_DOWNLOAD_FINISH.equals(intent.getAction()) && configService.getCommunityId() == intent.getIntExtra(CmcdConfiguration.KEY_CONTENT_ID, -1)) {
                Log.d(DrawerActivity.TAG, "receive theme download notification, need to refresh ui");
                if (!DrawerActivity.this.isActivityResumed()) {
                    DrawerActivity.this.themeUINeedUpdate = true;
                } else {
                    DrawerActivity.this.themeUINeedUpdate = false;
                    DrawerActivity.this.updateThemeUI();
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initDrawer$1(View view) {
        openDrawer(false);
    }

    public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public int getCBBLift() {
        return 0;
    }

    public int getOnlineBarLift() {
        return 0;
    }

    public int getPostEntryLift() {
        return 0;
    }

    public boolean hasCBB() {
        return false;
    }

    public boolean hasVisitorBar() {
        return false;
    }

    public boolean isDrawerIdle() {
        return this.drawerState == 0;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        MyDrawerLayout myDrawerLayout;
        if (i10 == 4 && (myDrawerLayout = this.drawerLayout) != null && myDrawerLayout.onKeyDown(i10, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        MyDrawerLayout myDrawerLayout;
        if (i10 == 4 && (myDrawerLayout = this.drawerLayout) != null && myDrawerLayout.onKeyUp(i10, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i10, keyEvent);
    }

    public void openDrawer() {
        openDrawer(true);
    }

    public void setSkipDetachNextPause(boolean z6) {
        this.skipDetachNextPause = z6;
    }

    private void addView(View view) {
        ViewGroup viewGroup = this.activityContent;
        if (viewGroup == null) {
            viewGroup = this.drawerLayout;
        }
        int i10 = this.drawerLayoutViewCount;
        this.drawerLayoutViewCount = i10 + 1;
        viewGroup.addView(view, i10);
    }

    private void changeDrawerUsability() {
        boolean z6 = (this.disableDrawer || isVisitorNotJoined()) ? false : true;
        ViewUtils.show(this.drawerView, z6);
        ViewUtils.show(this.drawerRightView, z6);
        ViewUtils.show(this.drawerIndicator, z6);
        MyDrawerLayout myDrawerLayout = this.drawerLayout;
        if (myDrawerLayout != null) {
            if (z6) {
                myDrawerLayout.setDrawerLockMode(0, this.drawerRightView);
                this.drawerLayout.setDrawerLockMode(0, this.drawerView);
            } else {
                myDrawerLayout.setDrawerLockMode(1, this.drawerRightView);
                this.drawerLayout.setDrawerLockMode(1, this.drawerView);
            }
        }
    }

    private void ensureCBB() {
        ProxyView proxyView;
        if (this.cbbHost == null) {
            Object service = getService("cbbHost");
            if (service instanceof ProxyViewHost) {
                CBBHost cBBHost = (CBBHost) service;
                this.cbbHost = cBBHost;
                ProxyView proxyView2 = this.cbbView;
                if (proxyView2 != null) {
                    proxyView2.setHost(cBBHost);
                }
            }
        }
        CBBHost cBBHost2 = this.cbbHost;
        if (cBBHost2 == null || (proxyView = this.cbbView) == null) {
            return;
        }
        cBBHost2.attachTo(proxyView);
    }

    private void ensureDrawer() {
        if (this.drawerHost == null) {
            Object service = getService("drawerHost");
            if (service instanceof ProxyViewHost) {
                ProxyViewHost proxyViewHost = (ProxyViewHost) service;
                this.drawerHost = proxyViewHost;
                this.drawerView.setHost(proxyViewHost);
            }
        }
        ProxyViewHost proxyViewHost2 = this.drawerHost;
        if (proxyViewHost2 != null) {
            proxyViewHost2.attachTo(this.drawerView);
        }
    }

    private void ensureLiveLayer() {
        ProxyView proxyView;
        if (this.liveLayerHost == null) {
            Object service = getService("liveLayerHost");
            if (service instanceof ProxyViewHost) {
                ProxyViewHost proxyViewHost = (ProxyViewHost) service;
                this.liveLayerHost = proxyViewHost;
                ProxyView proxyView2 = this.liveLayerView;
                if (proxyView2 != null) {
                    proxyView2.setHost(proxyViewHost);
                }
            }
        }
        ProxyViewHost proxyViewHost2 = this.liveLayerHost;
        if (proxyViewHost2 == null || (proxyView = this.liveLayerView) == null) {
            return;
        }
        proxyViewHost2.attachTo(proxyView);
    }

    private void ensureRightDrawer() {
        if (this.drawerRightHost == null) {
            Object service = getService("drawerRightHost");
            if (service instanceof ProxyViewHost) {
                ProxyViewHost proxyViewHost = (ProxyViewHost) service;
                this.drawerRightHost = proxyViewHost;
                this.drawerRightView.setHost(proxyViewHost);
            }
        }
        ProxyViewHost proxyViewHost2 = this.drawerRightHost;
        if (proxyViewHost2 != null) {
            proxyViewHost2.attachTo(this.drawerRightView);
        }
    }

    private void ensureVisitorBar() {
        ProxyView proxyView;
        if (this.visitorBarHost == null) {
            Object service = getService("visitorBarHost");
            if (service instanceof ProxyViewHost) {
                VisitorBarHost visitorBarHost = (VisitorBarHost) service;
                this.visitorBarHost = visitorBarHost;
                ProxyView proxyView2 = this.visitorBarView;
                if (proxyView2 != null) {
                    proxyView2.setHost(visitorBarHost);
                }
            }
        }
        VisitorBarHost visitorBarHost2 = this.visitorBarHost;
        if (visitorBarHost2 == null || (proxyView = this.visitorBarView) == null) {
            return;
        }
        visitorBarHost2.attachTo(proxyView);
    }

    private void initCBB() {
        if (this.cbbView == null && hasCBB()) {
            if (this.drawerLayout == null) {
                ProxyView proxyView = (ProxyView) getLayoutInflater().inflate(R.layout.cbb_proxy_view, this.activityContent, false).findViewById(R.id.cbb_proxy_view);
                this.cbbView = proxyView;
                this.activityContent.addView(proxyView);
            } else {
                ProxyView proxyView2 = (ProxyView) getLayoutInflater().inflate(R.layout.cbb_proxy_view, this.drawerLayout, false).findViewById(R.id.cbb_proxy_view);
                this.cbbView = proxyView2;
                addView(proxyView2);
            }
            updateCBBVisibility();
        }
    }

    private void initDrawer() {
        if (this.drawerLayout == null && hasDrawer()) {
            ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
            buf.clear();
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                buf.add(viewGroup.getChildAt(i10));
            }
            viewGroup.removeAllViews();
            LayoutInflater layoutInflater = getLayoutInflater();
            layoutInflater.inflate(R.layout.drawer_layout, viewGroup, true);
            this.drawerLayout = (MyDrawerLayout) viewGroup.findViewById(R.id.drawer_layout);
            try {
                if (Build.VERSION.SDK_INT >= 24) {
                    Field declaredField = viewGroup.getClass().getDeclaredField("mContentRoot");
                    declaredField.setAccessible(true);
                    declaredField.set(viewGroup, this.drawerLayout);
                }
            } catch (Exception e) {
                Log.w("mContentRoot", e);
            }
            this.drawerLayout.setDrawerListener(this);
            this.drawerView = (DrawerView) this.drawerLayout.findViewById(R.id.drawer_left_view);
            this.drawerRightView = (DrawerView) this.drawerLayout.findViewById(R.id.drawer_right_view);
            ViewGroup.LayoutParams layoutParams = this.drawerView.getLayoutParams();
            int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.drawer_left_content_width);
            int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.drawer_left_community_width);
            if (NVApplication.CLIENT_TYPE == 100) {
                dimensionPixelSize += dimensionPixelSize2;
            }
            layoutParams.width = dimensionPixelSize;
            this.drawerLayoutViewCount = 0;
            for (View view : buf) {
                MyDrawerLayout myDrawerLayout = this.drawerLayout;
                int i11 = this.drawerLayoutViewCount;
                this.drawerLayoutViewCount = i11 + 1;
                myDrawerLayout.addView(view, i11);
            }
            buf.clear();
            ViewGroup viewGroup2 = this.activityContent;
            if (viewGroup2 != null) {
                this.drawerLayoutViewCount = viewGroup2.getChildCount();
            }
            View viewInflate = layoutInflater.inflate(R.layout.drawer_indicator, (ViewGroup) this.drawerLayout, false);
            this.drawerIndicator = viewInflate;
            viewInflate.findViewById(R.id.indicator_click_area).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.app.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f1823a.lambda$initDrawer$1(view2);
                }
            });
            ((TintButton) this.drawerIndicator.findViewById(R.id.indicator_bg)).setTintColor(((ConfigService) getService("config")).getTheme().colorPrimary());
            addView(this.drawerIndicator);
            initLiveLayer();
            initCBB();
            initVisitorBar();
            if (hasPostEntry()) {
                this.postEntryFrame = (PostEntryView) layoutInflater.inflate(R.layout.post_entry, (ViewGroup) this.drawerLayout, false);
                if (!getShouldInflateAd()) {
                    this.postEntryFrame.setLift1(getPostEntryLift(), false);
                }
                addView(this.postEntryFrame);
            }
            addView(layoutInflater.inflate(R.layout.layout_above_post_entry, (ViewGroup) this.drawerLayout, false));
            if (this.inVisitorMode) {
                updateVisitorModeUI();
            }
        }
    }

    private void initLiveLayer() {
        if (this.liveLayerView == null && LiveLayerService.OPEN && hasOnlineBar()) {
            if (this.drawerLayout == null) {
                ProxyView proxyView = (ProxyView) getLayoutInflater().inflate(R.layout.live_layer_proxy_view, this.activityContent, false).findViewById(R.id.live_layer_proxy_view);
                this.liveLayerView = proxyView;
                this.activityContent.addView(proxyView);
            } else {
                ProxyView proxyView2 = (ProxyView) getLayoutInflater().inflate(R.layout.live_layer_proxy_view, this.drawerLayout, false).findViewById(R.id.live_layer_proxy_view);
                this.liveLayerView = proxyView2;
                addView(proxyView2);
            }
        }
    }

    private void initVisitorBar() {
        if (this.visitorBarView == null && isInVisitorMode() && hasVisitorBar()) {
            if (this.drawerLayout == null) {
                ProxyView proxyView = (ProxyView) getLayoutInflater().inflate(R.layout.visitor_bar_proxy_view, this.activityContent, false).findViewById(R.id.vmb_proxy_view);
                this.visitorBarView = proxyView;
                ViewGroup viewGroup = this.activityContent;
                if (viewGroup != null) {
                    viewGroup.addView(proxyView);
                }
            } else {
                ProxyView proxyView2 = (ProxyView) getLayoutInflater().inflate(R.layout.visitor_bar_proxy_view, this.drawerLayout, false).findViewById(R.id.vmb_proxy_view);
                this.visitorBarView = proxyView2;
                addView(proxyView2);
            }
            updateVisitorBarVisibility();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPause$0() {
        ProxyViewHost proxyViewHost = this.drawerHost;
        if (proxyViewHost != null) {
            proxyViewHost.detachFrom(this.drawerView);
        }
        if (this.drawerHost != null && !this.drawerLayout.isDrawerOpen(this.drawerView)) {
            this.drawerHost = null;
        }
        ProxyViewHost proxyViewHost2 = this.drawerRightHost;
        if (proxyViewHost2 != null) {
            proxyViewHost2.detachFrom(this.drawerRightView);
        }
        if (this.drawerRightHost != null && !this.drawerLayout.isDrawerOpen(this.drawerRightView)) {
            this.drawerRightHost = null;
        }
        ProxyViewHost proxyViewHost3 = this.liveLayerHost;
        if (proxyViewHost3 != null) {
            proxyViewHost3.detachFrom(this.liveLayerView);
        }
        CBBHost cBBHost = this.cbbHost;
        if (cBBHost != null) {
            cBBHost.detachFrom(this.cbbView);
        }
        VisitorBarHost visitorBarHost = this.visitorBarHost;
        if (visitorBarHost != null) {
            visitorBarHost.detachFrom(this.visitorBarView);
        }
        this.detachAll = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCommunityUpdate() {
        boolean zIsPostEnabled = this.communityConfigHelper.isPostEnabled();
        PostEntryView postEntryView = this.postEntryFrame;
        if (postEntryView == null || zIsPostEnabled == this.isPostEnabled) {
            return;
        }
        this.isPostEnabled = zIsPostEnabled;
        postEntryView.setVisibility(zIsPostEnabled ? 0 : 8);
    }

    private void setCBBVisible(boolean z6) {
        ProxyView proxyView = this.cbbView;
        if (proxyView != null) {
            proxyView.setVisibility(z6 ? 0 : 8);
        }
    }

    private void updateVisitorBarVisibility() {
        ProxyView proxyView = this.visitorBarView;
        if (proxyView != null) {
            proxyView.setVisibility(isVisitorNotJoined() ? 0 : 8);
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        Runnable runnable = this.detachAll;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            this.detachAll.run();
        }
        super.onDestroy();
        unregisterLocalReceiver(this.themeDownLoadReceiver);
        Iterator<View> it = this.adObstructions.iterator();
        while (it.hasNext()) {
            this.adView.removeFriendlyObstruction(it.next());
        }
        this.adObstructions.clear();
    }

    @Override // com.narvii.drawer.DrawerLayout.DrawerListener
    public void onDrawerClosed(View view) {
        if (view instanceof ProxyView) {
            ((ProxyView) view).sendEvent(CMD_ON_CLOSED, null);
        }
    }

    @Override // com.narvii.drawer.DrawerLayout.DrawerListener
    public void onDrawerOpened(View view) {
        if (this.skipNextDrawerOpenedEvent) {
            this.skipNextDrawerOpenedEvent = false;
        } else {
            LogEvent.Builder builderPage = LogEvent.clickBuilder(this, ActSemantic.pageEnter).page("SideMenu");
            ProxyViewHost proxyViewHost = this.drawerHost;
            builderPage.pvId(proxyViewHost instanceof DrawerHost ? ((DrawerHost) proxyViewHost).fakePVId : "").area("SideMenuArea").send();
        }
        if (view instanceof ProxyView) {
            ((ProxyView) view).sendEvent(CMD_ON_OPENED, null);
        }
    }

    @Override // com.narvii.drawer.DrawerLayout.DrawerListener
    public void onDrawerSlide(View view, float f) {
        this.drawerOffset = f;
        if (f != 0.0f && view == this.drawerView) {
            ensureDrawer();
        }
        if (f != 0.0f && view == this.drawerRightView) {
            ensureRightDrawer();
        }
        View view2 = this.drawerIndicator;
        if (view2 != null && f != 0.0f && view2.getVisibility() != 8) {
            this.drawerIndicator.setVisibility(8);
            this.drawerIndicator.startAnimation(AnimationUtils.loadAnimation(this, R.anim.slide_left_out));
        }
        View view3 = this.drawerIndicator;
        if (view3 != null && f == 0.0f && view3.getVisibility() != 0) {
            this.drawerIndicator.setVisibility(0);
            this.drawerIndicator.startAnimation(AnimationUtils.loadAnimation(this, R.anim.slide_right_in));
        }
        if (view instanceof ProxyView) {
            ((ProxyView) view).sendEvent(CMD_ON_SLIDE, Float.valueOf(f));
        }
        PostEntryView postEntryView = this.postEntryFrame;
        if (postEntryView != null) {
            postEntryView.setAlpha(1.0f - f);
        }
    }

    @Override // com.narvii.drawer.DrawerLayout.DrawerListener
    public void onDrawerStateChanged(int i10) {
        this.drawerState = i10;
        if (i10 == 1) {
            SoftKeyboard.hideSoftKeyboard(this);
        }
    }

    public void openDrawer(boolean z6) {
        MyDrawerLayout drawerLayout = getDrawerLayout();
        if (drawerLayout != null) {
            if (drawerLayout.isDrawerOpen(GravityCompat.END)) {
                drawerLayout.closeDrawer(GravityCompat.END);
            }
            drawerLayout.openDrawer(GravityCompat.START);
            if (z6) {
                this.skipNextDrawerOpenedEvent = true;
            }
        }
    }

    public boolean sendDrawerEvent(int i10, Object obj) {
        DrawerView drawerView = this.drawerView;
        if (drawerView == null) {
            return false;
        }
        return drawerView.sendEvent(i10, obj);
    }

    public void setDisableCBB(boolean z6) {
        this.disableCBB = z6;
        updateCBBVisibility();
    }

    public void setDisableDrawer(boolean z6) {
        this.disableDrawer = z6;
        changeDrawerUsability();
    }

    public void setLiverLayerBarVisible(boolean z6) {
        ProxyView proxyView = this.liveLayerView;
        if (proxyView != null) {
            proxyView.setVisibility(z6 ? 0 : 8);
        }
    }

    public void updatePostEntryFrameVisible(boolean z6) {
        PostEntryView postEntryView = this.postEntryFrame;
        if (postEntryView == null) {
            return;
        }
        postEntryView.setVisibility(z6 ? 0 : 8);
    }

    private void setupAdView() {
        View viewFindViewById = findViewById(R.id.menu_frame);
        if (viewFindViewById != null) {
            this.adObstructions.add(viewFindViewById);
        }
        View viewFindViewById2 = findViewById(R.id.cbb_proxy_view);
        if (viewFindViewById2 != null) {
            this.adObstructions.add(viewFindViewById2);
        }
        View viewFindViewById3 = findViewById(R.id.layout_above_post_entry);
        if (viewFindViewById3 != null) {
            this.adObstructions.add(viewFindViewById3);
        }
        View viewFindViewById4 = findViewById(R.id.video_overlay);
        if (viewFindViewById4 != null) {
            this.adObstructions.add(viewFindViewById4);
        }
        Iterator<View> it = this.adObstructions.iterator();
        while (it.hasNext()) {
            this.adView.addFriendlyObstruction(it.next());
        }
    }

    @Override // com.narvii.app.NVActivity
    public int bottomPadding(NVFragment nVFragment) {
        int iDpToPxInt;
        int onlineBarLift;
        if (hasCBB()) {
            iDpToPxInt = Utils.dpToPxInt(getContext(), 90.0f);
            onlineBarLift = nVFragment.getCBBLift();
        } else if (hasPostEntry()) {
            iDpToPxInt = Utils.dpToPxInt(getContext(), 62.0f);
            onlineBarLift = nVFragment.getPostEntryLift();
        } else if (hasOnlineBar()) {
            iDpToPxInt = Utils.dpToPxInt(getContext(), 62.0f);
            onlineBarLift = nVFragment.getOnlineBarLift();
        } else {
            return 0;
        }
        return iDpToPxInt + onlineBarLift;
    }

    public void closeDrawers() {
        MyDrawerLayout drawerLayout = getDrawerLayout();
        if (drawerLayout != null) {
            drawerLayout.closeDrawers();
        }
    }

    public void closeDrawersDirectly() {
        MyDrawerLayout drawerLayout = getDrawerLayout();
        if (drawerLayout != null) {
            drawerLayout.closeDrawersDirectly();
        }
    }

    public View getCBBView() {
        initDrawer();
        initCBB();
        return this.cbbView;
    }

    public MyDrawerLayout getDrawerLayout() {
        initDrawer();
        return this.drawerLayout;
    }

    public View getLiveLayerView() {
        initDrawer();
        initLiveLayer();
        return this.liveLayerView;
    }

    public PostEntryView getPostEntryView() {
        initDrawer();
        return this.postEntryFrame;
    }

    protected boolean hasCommunityId() {
        if (isGlobal() || ((ConfigService) getService("config")).getCommunityId() == 0) {
            return false;
        }
        return true;
    }

    public boolean hasDrawer() {
        if (!isModel() && hasCommunityId()) {
            return true;
        }
        return false;
    }

    public boolean hasOnlineBar() {
        return hasPostEntry();
    }

    public boolean hasPostEntry() {
        if (!isModel() && hasCommunityId() && !hasCBB()) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.app.NVActivity
    protected void initActionBar() {
        View viewFindViewById;
        super.initActionBar();
        if (this.abInited) {
            return;
        }
        this.abInited = true;
        if (!isActionBarOverlaying()) {
            ActionBar actionBar = getActionBar();
            if (actionBar != null && actionBar.getCustomView() != null) {
                viewFindViewById = actionBar.getCustomView().findViewById(R.id.actionbar);
            } else {
                viewFindViewById = null;
            }
            ActionBarLayout actionBarLayout = (ActionBarLayout) viewFindViewById;
            if (actionBarLayout != null) {
                actionBarLayout.setOnGestureListener(new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.app.DrawerActivity.3
                    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
                        return false;
                    }

                    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                    public boolean onSingleTapUp(MotionEvent motionEvent) {
                        if (DrawerActivity.this.canScrollUp()) {
                            DrawerActivity.this.smoothScrollToTop();
                            return true;
                        }
                        DrawerActivity.this.openDrawer();
                        return true;
                    }
                });
            }
        }
    }

    public boolean isDrawerOpen() {
        MyDrawerLayout drawerLayout = getDrawerLayout();
        if (drawerLayout == null) {
            return false;
        }
        if (!drawerLayout.isDrawerOpen(GravityCompat.END) && !drawerLayout.isDrawerOpen(GravityCompat.START)) {
            return false;
        }
        return true;
    }

    public boolean isLeftDrawerVisible() {
        MyDrawerLayout drawerLayout = getDrawerLayout();
        if (drawerLayout != null) {
            return drawerLayout.isDrawerVisible(GravityCompat.START);
        }
        return false;
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (SplashUtils.cancelSplash(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this);
        this.communityConfigHelper = communityConfigHelper;
        this.isPostEnabled = communityConfigHelper.isPostEnabled();
        int i10 = NVApplication.CLIENT_TYPE_MASTER;
        registerLocalReceiver(this.themeDownLoadReceiver, new IntentFilter(ThemePackService.ACTION_THEME_DOWNLOAD_FINISH));
        MediaLabAdView mediaLabAdView = new MediaLabAdView(this);
        this.adView = mediaLabAdView;
        mediaLabAdView.initialize("feed", AdSize.MEDIUM_RECTANGLE);
    }

    public boolean onDrawerEvent(int i10, Object obj) {
        if (i10 == 16384001 && this.drawerLayout != null) {
            closeDrawers();
            return true;
        }
        if (i10 != 16384005) {
            return false;
        }
        AccountService accountService = (AccountService) getService("account");
        if (accountService != null && accountService.hasAccount()) {
            PostEntryDialog postEntryDialog = (PostEntryDialog) getService("postEntry");
            if (postEntryDialog != null) {
                postEntryDialog.show(0, "Left Side Panel", LoggingSource.GlobalComposeMenu);
            }
        } else {
            Intent intent = new Intent(getContext(), (Class<?>) LoginActivity.class);
            intent.putExtra("promptType", LoginActivity.PromptType.Required.name());
            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
        }
        return true;
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        unregisterLocalReceiver(this.receiver);
        if (!this.skipDetachNextPause) {
            Runnable runnable = new Runnable() { // from class: com.narvii.app.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1824a.lambda$onPause$0();
                }
            };
            this.detachAll = runnable;
            Utils.postDelayed(runnable, 1000L);
            return;
        }
        this.skipDetachNextPause = false;
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        initDrawer();
        initLiveLayer();
        initCBB();
        initVisitorBar();
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        int i10;
        DrawerView drawerView;
        DrawerView drawerView2;
        super.onResume();
        Runnable runnable = this.detachAll;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            this.detachAll = null;
        }
        MyDrawerLayout myDrawerLayout = this.drawerLayout;
        if (myDrawerLayout != null && (drawerView2 = this.drawerView) != null && myDrawerLayout.isDrawerOpen(drawerView2)) {
            ensureDrawer();
        }
        MyDrawerLayout myDrawerLayout2 = this.drawerLayout;
        if (myDrawerLayout2 != null && (drawerView = this.drawerRightView) != null && myDrawerLayout2.isDrawerOpen(drawerView)) {
            ensureRightDrawer();
        }
        PostEntryView postEntryView = this.postEntryFrame;
        if (postEntryView != null) {
            if (!this.isPostEnabled) {
                i10 = 8;
            } else {
                i10 = 0;
            }
            postEntryView.setVisibility(i10);
            this.postEntryFrame.setAlpha(1.0f);
        }
        if (LiveLayerService.OPEN && hasOnlineBar()) {
            ensureLiveLayer();
            ProxyViewHost proxyViewHost = this.liveLayerHost;
            if (proxyViewHost != null) {
                LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) proxyViewHost.findViewById(R.id.floating_online_bar);
                liveLayerOnlineBar.setLift(getOnlineBarLift());
                liveLayerOnlineBar.clearAnimation();
                liveLayerOnlineBar.setVisibility(0);
                liveLayerOnlineBar.goFold(((SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY)).getBoolean("liveLayerFold", false));
            }
        }
        if (hasCBB()) {
            ensureCBB();
            CBBHost cBBHost = this.cbbHost;
            if (cBBHost != null) {
                cBBHost.setLift(getCBBLift());
            }
        }
        if (isInVisitorMode() && hasVisitorBar()) {
            ensureVisitorBar();
        }
        registerLocalReceiver(this.receiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
        if (this.themeUINeedUpdate) {
            this.themeUINeedUpdate = false;
            updateThemeUI();
        }
        if (this.updateVisitorModePending) {
            this.updateVisitorModePending = false;
            updateVisitorModeUI();
        }
        SplashUtils.cancelSplash(this);
        setupAdView();
    }

    public void openRightDrawer() {
        MyDrawerLayout drawerLayout = getDrawerLayout();
        if (drawerLayout != null) {
            if (drawerLayout.isDrawerOpen(GravityCompat.START)) {
                drawerLayout.closeDrawer(GravityCompat.START);
            }
            drawerLayout.openDrawer(GravityCompat.END);
        }
    }

    public void peekDrawer(long j6, long j10) {
        MyDrawerLayout drawerLayout = getDrawerLayout();
        if (drawerLayout != null) {
            drawerLayout.peekDrawer(GravityCompat.START, j6, j10);
        }
    }

    @Override // com.narvii.app.theme.NVThemeActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i10) {
        super.setContentView(i10);
        this.activityContent = (ViewGroup) findViewById(R.id.activity_content);
    }

    public void updateCBBVisibility() {
        boolean z6;
        if (!isVisitorNotJoined() && !this.disableCBB) {
            z6 = true;
        } else {
            z6 = false;
        }
        setCBBVisible(z6);
    }

    @Override // com.narvii.app.NVActivity
    public void updateThemeUI() {
        PostEntryView postEntryView;
        super.updateThemeUI();
        if (this.drawerIndicator != null) {
            int iColorPrimary = ((ConfigService) getService("config")).getTheme().colorPrimary();
            TintButton tintButton = (TintButton) this.drawerIndicator.findViewById(R.id.indicator_bg);
            if (tintButton != null) {
                tintButton.setTintColor(iColorPrimary);
            }
        }
        if (hasPostEntry() && (postEntryView = this.postEntryFrame) != null) {
            postEntryView.updateThemeUI();
        }
        if (hasActionBar() && !isActionBarCustomed()) {
            setStatusBar();
            setActionBarBackgroundDefault();
        }
        Iterator<NVFragment> it = this.themeDownloadObservers.iterator();
        while (it.hasNext()) {
            it.next().onThemeDownloadFinish();
        }
        if (!isPagebackgroundEnabled() || ((ViewGroup) getWindow().findViewById(android.R.id.content)) == null) {
            return;
        }
        configPageBackground();
    }

    @Override // com.narvii.app.NVActivity
    protected void updateVisitorModeUI() {
        changeDrawerUsability();
        updateCBBVisibility();
        updateVisitorBarVisibility();
    }
}
