package com.narvii.app;

import android.app.ActionBar;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.view.GravityCompat;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.mastes.R;
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
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class DrawerActivity extends NVActivity implements DrawerLayout.DrawerListener {
    public static final int CMD_CLOSE_DRAWER = 16384001;
    public static final int CMD_ON_CLOSED = 16449539;
    public static final int CMD_ON_OPENED = 16449538;
    public static final int CMD_ON_SLIDE = 16449537;
    public static final int CMD_POST = 16384005;
    private static final String TAG = "EnterCommunityHelper";
    private static final ArrayList<View> buf = new ArrayList<>();
    private boolean abInited;
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
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.app.DrawerActivity.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (CommunityService.ACTION_COMMUNITY_CHANGED.equals(intent.getAction())) {
                if (intent.getIntExtra("id", 0) == ((ConfigService) DrawerActivity.this.getService("config")).getCommunityId()) {
                    DrawerActivity.this.onCommunityUpdate();
                }
            }
        }
    };
    private final BroadcastReceiver themeDownLoadReceiver = new BroadcastReceiver() { // from class: com.narvii.app.DrawerActivity.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            ConfigService configService = (ConfigService) DrawerActivity.this.getService("config");
            if (ThemePackService.ACTION_THEME_DOWNLOAD_FINISH.equals(intent.getAction()) && configService.getCommunityId() == intent.getIntExtra("cid", -1)) {
                Log.d(DrawerActivity.TAG, "receive theme download notification, need to refresh ui");
                if (DrawerActivity.this.isActivityResumed()) {
                    DrawerActivity.this.themeUINeedUpdate = false;
                    DrawerActivity.this.updateThemeUI();
                } else {
                    DrawerActivity.this.themeUINeedUpdate = true;
                }
            }
        }
    };

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

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.isPostEnabled = this.communityConfigHelper.isPostEnabled();
        int i = NVApplication.CLIENT_TYPE;
        registerLocalReceiver(this.themeDownLoadReceiver, new IntentFilter(ThemePackService.ACTION_THEME_DOWNLOAD_FINISH));
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
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
            postEntryView.setVisibility(!this.isPostEnabled ? 8 : 0);
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
                liveLayerOnlineBar.goFold(((SharedPreferences) getService("prefs")).getBoolean("liveLayerFold", false));
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
    }

    public void setSkipDetachNextPause(boolean z) {
        this.skipDetachNextPause = z;
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        unregisterLocalReceiver(this.receiver);
        if (!this.skipDetachNextPause) {
            this.detachAll = new Runnable() { // from class: com.narvii.app.DrawerActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    if (DrawerActivity.this.drawerHost != null) {
                        DrawerActivity.this.drawerHost.detachFrom(DrawerActivity.this.drawerView);
                    }
                    if (DrawerActivity.this.drawerHost != null && !DrawerActivity.this.drawerLayout.isDrawerOpen(DrawerActivity.this.drawerView)) {
                        DrawerActivity.this.drawerHost = null;
                    }
                    if (DrawerActivity.this.drawerRightHost != null) {
                        DrawerActivity.this.drawerRightHost.detachFrom(DrawerActivity.this.drawerRightView);
                    }
                    if (DrawerActivity.this.drawerRightHost != null && !DrawerActivity.this.drawerLayout.isDrawerOpen(DrawerActivity.this.drawerRightView)) {
                        DrawerActivity.this.drawerRightHost = null;
                    }
                    if (DrawerActivity.this.liveLayerHost != null) {
                        DrawerActivity.this.liveLayerHost.detachFrom(DrawerActivity.this.liveLayerView);
                    }
                    if (DrawerActivity.this.cbbHost != null) {
                        DrawerActivity.this.cbbHost.detachFrom(DrawerActivity.this.cbbView);
                    }
                    if (DrawerActivity.this.visitorBarHost != null) {
                        DrawerActivity.this.visitorBarHost.detachFrom(DrawerActivity.this.visitorBarView);
                    }
                    DrawerActivity.this.detachAll = null;
                }
            };
            Utils.postDelayed(this.detachAll, 1000L);
        } else {
            this.skipDetachNextPause = false;
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        Runnable runnable = this.detachAll;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            this.detachAll.run();
        }
        super.onDestroy();
        unregisterLocalReceiver(this.themeDownLoadReceiver);
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        super.onPostCreate(bundle);
        initDrawer();
        initLiveLayer();
        initCBB();
        initVisitorBar();
    }

    private void changeDrawerUsability() {
        boolean z = (this.disableDrawer || isVisitorNotJoined()) ? false : true;
        ViewUtils.show(this.drawerView, z);
        ViewUtils.show(this.drawerRightView, z);
        ViewUtils.show(this.drawerIndicator, z);
        MyDrawerLayout myDrawerLayout = this.drawerLayout;
        if (myDrawerLayout != null) {
            if (!z) {
                myDrawerLayout.setDrawerLockMode(1, this.drawerRightView);
                this.drawerLayout.setDrawerLockMode(1, this.drawerView);
            } else {
                myDrawerLayout.setDrawerLockMode(0, this.drawerRightView);
                this.drawerLayout.setDrawerLockMode(0, this.drawerView);
            }
        }
    }

    private void initDrawer() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        if (this.drawerLayout == null && hasDrawer()) {
            ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
            buf.clear();
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                buf.add(viewGroup.getChildAt(i));
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
            Iterator<View> it = buf.iterator();
            while (it.hasNext()) {
                View next = it.next();
                MyDrawerLayout myDrawerLayout = this.drawerLayout;
                int i2 = this.drawerLayoutViewCount;
                this.drawerLayoutViewCount = i2 + 1;
                myDrawerLayout.addView(next, i2);
            }
            buf.clear();
            this.drawerIndicator = layoutInflater.inflate(R.layout.drawer_indicator, (ViewGroup) this.drawerLayout, false);
            this.drawerIndicator.findViewById(R.id.indicator_click_area).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.app.DrawerActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
                    DrawerActivity.this.openDrawer(false);
                }
            });
            ((TintButton) this.drawerIndicator.findViewById(R.id.indicator_bg)).setTintColor(((ConfigService) getService("config")).getTheme().colorPrimary());
            MyDrawerLayout myDrawerLayout2 = this.drawerLayout;
            View view = this.drawerIndicator;
            int i3 = this.drawerLayoutViewCount;
            this.drawerLayoutViewCount = i3 + 1;
            myDrawerLayout2.addView(view, i3);
            initLiveLayer();
            initCBB();
            if (hasPostEntry()) {
                this.postEntryFrame = (PostEntryView) layoutInflater.inflate(R.layout.post_entry, (ViewGroup) this.drawerLayout, false);
                this.postEntryFrame.setLift1(getPostEntryLift(), false);
                MyDrawerLayout myDrawerLayout3 = this.drawerLayout;
                PostEntryView postEntryView = this.postEntryFrame;
                int i4 = this.drawerLayoutViewCount;
                this.drawerLayoutViewCount = i4 + 1;
                myDrawerLayout3.addView(postEntryView, i4);
            }
            View viewInflate = layoutInflater.inflate(R.layout.layout_above_post_entry, (ViewGroup) this.drawerLayout, false);
            MyDrawerLayout myDrawerLayout4 = this.drawerLayout;
            int i5 = this.drawerLayoutViewCount;
            this.drawerLayoutViewCount = i5 + 1;
            myDrawerLayout4.addView(viewInflate, i5);
            if (this.inVisitorMode) {
                updateVisitorModeUI();
            }
        }
    }

    private void initLiveLayer() {
        if (this.liveLayerView == null && LiveLayerService.OPEN && hasOnlineBar()) {
            if (this.drawerLayout == null) {
                ViewGroup viewGroup = (ViewGroup) ((ViewGroup) getWindow().getDecorView()).findViewById(android.R.id.content);
                this.liveLayerView = (ProxyView) getLayoutInflater().inflate(R.layout.live_layer_proxy_view, viewGroup, false).findViewById(R.id.live_layer_proxy_view);
                viewGroup.addView(this.liveLayerView);
            } else {
                this.liveLayerView = (ProxyView) getLayoutInflater().inflate(R.layout.live_layer_proxy_view, (ViewGroup) this.drawerLayout, false).findViewById(R.id.live_layer_proxy_view);
                MyDrawerLayout myDrawerLayout = this.drawerLayout;
                ProxyView proxyView = this.liveLayerView;
                int i = this.drawerLayoutViewCount;
                this.drawerLayoutViewCount = i + 1;
                myDrawerLayout.addView(proxyView, i);
            }
        }
    }

    private void initCBB() {
        if (this.cbbView == null && hasCBB()) {
            if (this.drawerLayout == null) {
                ViewGroup viewGroup = (ViewGroup) ((ViewGroup) getWindow().getDecorView()).findViewById(android.R.id.content);
                this.cbbView = (ProxyView) getLayoutInflater().inflate(R.layout.cbb_proxy_view, viewGroup, false).findViewById(R.id.cbb_proxy_view);
                viewGroup.addView(this.cbbView);
            } else {
                this.cbbView = (ProxyView) getLayoutInflater().inflate(R.layout.cbb_proxy_view, (ViewGroup) this.drawerLayout, false).findViewById(R.id.cbb_proxy_view);
                MyDrawerLayout myDrawerLayout = this.drawerLayout;
                ProxyView proxyView = this.cbbView;
                int i = this.drawerLayoutViewCount;
                this.drawerLayoutViewCount = i + 1;
                myDrawerLayout.addView(proxyView, i);
            }
            updateCBBVisibility();
        }
    }

    private void initVisitorBar() {
        if (this.visitorBarView == null && isInVisitorMode() && hasVisitorBar()) {
            if (this.drawerLayout == null) {
                ViewGroup viewGroup = (ViewGroup) ((ViewGroup) getWindow().getDecorView()).findViewById(android.R.id.content);
                this.visitorBarView = (ProxyView) getLayoutInflater().inflate(R.layout.visitor_bar_proxy_view, viewGroup, false).findViewById(R.id.vmb_proxy_view);
                viewGroup.addView(this.visitorBarView);
            } else {
                this.visitorBarView = (ProxyView) getLayoutInflater().inflate(R.layout.visitor_bar_proxy_view, (ViewGroup) this.drawerLayout, false).findViewById(R.id.vmb_proxy_view);
                MyDrawerLayout myDrawerLayout = this.drawerLayout;
                ProxyView proxyView = this.visitorBarView;
                int i = this.drawerLayoutViewCount;
                this.drawerLayoutViewCount = i + 1;
                myDrawerLayout.addView(proxyView, i);
            }
            updateVisitorBarVisibility();
        }
    }

    private void updateVisitorBarVisibility() {
        ProxyView proxyView = this.visitorBarView;
        if (proxyView != null) {
            proxyView.setVisibility(isVisitorNotJoined() ? 0 : 8);
        }
    }

    public void updateCBBVisibility() {
        setCBBVisible((isVisitorNotJoined() || this.disableCBB) ? false : true);
    }

    protected boolean hasCommunityId() {
        return (isGlobal() || ((ConfigService) getService("config")).getCommunityId() == 0) ? false : true;
    }

    public void updatePostEntryFrameVisible(boolean z) {
        PostEntryView postEntryView = this.postEntryFrame;
        if (postEntryView == null) {
            return;
        }
        postEntryView.setVisibility(z ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCommunityUpdate() {
        boolean zIsPostEnabled = this.communityConfigHelper.isPostEnabled();
        PostEntryView postEntryView = this.postEntryFrame;
        if (postEntryView == null || zIsPostEnabled == this.isPostEnabled) {
            return;
        }
        this.isPostEnabled = zIsPostEnabled;
        postEntryView.setVisibility(this.isPostEnabled ? 0 : 8);
    }

    public PostEntryView getPostEntryView() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        initDrawer();
        return this.postEntryFrame;
    }

    public View getLiveLayerView() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        initDrawer();
        initLiveLayer();
        return this.liveLayerView;
    }

    public View getCBBView() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        initDrawer();
        initCBB();
        return this.cbbView;
    }

    public boolean hasDrawer() {
        return !isModel() && hasCommunityId();
    }

    public boolean hasPostEntry() {
        return (isModel() || !hasCommunityId() || hasCBB()) ? false : true;
    }

    public boolean hasOnlineBar() {
        return hasPostEntry();
    }

    public MyDrawerLayout getDrawerLayout() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        initDrawer();
        return this.drawerLayout;
    }

    public void openDrawer() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        openDrawer(true);
    }

    public void openDrawer(boolean z) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        MyDrawerLayout drawerLayout = getDrawerLayout();
        if (drawerLayout != null) {
            if (drawerLayout.isDrawerOpen(GravityCompat.END)) {
                drawerLayout.closeDrawer(GravityCompat.END);
            }
            drawerLayout.openDrawer(GravityCompat.START);
            if (z) {
                this.skipNextDrawerOpenedEvent = true;
            }
        }
    }

    public void setDisableDrawer(boolean z) {
        this.disableDrawer = z;
        changeDrawerUsability();
    }

    public void setDisableCBB(boolean z) {
        this.disableCBB = z;
        updateCBBVisibility();
    }

    public boolean isDrawerOpen() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        MyDrawerLayout drawerLayout = getDrawerLayout();
        if (drawerLayout != null) {
            return drawerLayout.isDrawerOpen(GravityCompat.END) || drawerLayout.isDrawerOpen(GravityCompat.START);
        }
        return false;
    }

    public boolean isLeftDrawerVisible() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        MyDrawerLayout drawerLayout = getDrawerLayout();
        if (drawerLayout != null) {
            return drawerLayout.isDrawerVisible(GravityCompat.START);
        }
        return false;
    }

    public void openRightDrawer() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        MyDrawerLayout drawerLayout = getDrawerLayout();
        if (drawerLayout != null) {
            if (drawerLayout.isDrawerOpen(GravityCompat.START)) {
                drawerLayout.closeDrawer(GravityCompat.START);
            }
            drawerLayout.openDrawer(GravityCompat.END);
        }
    }

    public void closeDrawers() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        MyDrawerLayout drawerLayout = getDrawerLayout();
        if (drawerLayout != null) {
            drawerLayout.closeDrawers();
        }
    }

    public void closeDrawersDirectly() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        MyDrawerLayout drawerLayout = getDrawerLayout();
        if (drawerLayout != null) {
            drawerLayout.closeDrawersDirectly();
        }
    }

    private void ensureDrawer() {
        if (this.drawerHost == null) {
            Object service = getService("drawerHost");
            if (service instanceof ProxyViewHost) {
                this.drawerHost = (ProxyViewHost) service;
                this.drawerView.setHost(this.drawerHost);
            }
        }
        ProxyViewHost proxyViewHost = this.drawerHost;
        if (proxyViewHost != null) {
            proxyViewHost.attachTo(this.drawerView);
        }
    }

    private void ensureRightDrawer() {
        if (this.drawerRightHost == null) {
            Object service = getService("drawerRightHost");
            if (service instanceof ProxyViewHost) {
                this.drawerRightHost = (ProxyViewHost) service;
                this.drawerRightView.setHost(this.drawerRightHost);
            }
        }
        ProxyViewHost proxyViewHost = this.drawerRightHost;
        if (proxyViewHost != null) {
            proxyViewHost.attachTo(this.drawerRightView);
        }
    }

    private void ensureLiveLayer() {
        ProxyView proxyView;
        if (this.liveLayerHost == null) {
            Object service = getService("liveLayerHost");
            if (service instanceof ProxyViewHost) {
                this.liveLayerHost = (ProxyViewHost) service;
                ProxyView proxyView2 = this.liveLayerView;
                if (proxyView2 != null) {
                    proxyView2.setHost(this.liveLayerHost);
                }
            }
        }
        ProxyViewHost proxyViewHost = this.liveLayerHost;
        if (proxyViewHost == null || (proxyView = this.liveLayerView) == null) {
            return;
        }
        proxyViewHost.attachTo(proxyView);
    }

    private void ensureCBB() {
        ProxyView proxyView;
        if (this.cbbHost == null) {
            Object service = getService("cbbHost");
            if (service instanceof ProxyViewHost) {
                this.cbbHost = (CBBHost) service;
                ProxyView proxyView2 = this.cbbView;
                if (proxyView2 != null) {
                    proxyView2.setHost(this.cbbHost);
                }
            }
        }
        CBBHost cBBHost = this.cbbHost;
        if (cBBHost == null || (proxyView = this.cbbView) == null) {
            return;
        }
        cBBHost.attachTo(proxyView);
    }

    private void ensureVisitorBar() {
        ProxyView proxyView;
        if (this.visitorBarHost == null) {
            Object service = getService("visitorBarHost");
            if (service instanceof ProxyViewHost) {
                this.visitorBarHost = (VisitorBarHost) service;
                ProxyView proxyView2 = this.visitorBarView;
                if (proxyView2 != null) {
                    proxyView2.setHost(this.visitorBarHost);
                }
            }
        }
        VisitorBarHost visitorBarHost = this.visitorBarHost;
        if (visitorBarHost == null || (proxyView = this.visitorBarView) == null) {
            return;
        }
        visitorBarHost.attachTo(proxyView);
    }

    @Override // com.narvii.drawer.DrawerLayout.DrawerListener
    public void onDrawerStateChanged(int i) {
        this.drawerState = i;
        if (i == 1) {
            SoftKeyboard.hideSoftKeyboard(this);
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

    public boolean isDrawerIdle() {
        return this.drawerState == 0;
    }

    @Override // com.narvii.drawer.DrawerLayout.DrawerListener
    public void onDrawerOpened(View view) {
        if (!this.skipNextDrawerOpenedEvent) {
            LogEvent.Builder builderPage = LogEvent.clickBuilder(this, ActSemantic.pageEnter).page("SideMenu");
            ProxyViewHost proxyViewHost = this.drawerHost;
            builderPage.pvId(proxyViewHost instanceof DrawerHost ? ((DrawerHost) proxyViewHost).fakePVId : "").area("SideMenuArea").send();
        } else {
            this.skipNextDrawerOpenedEvent = false;
        }
        if (view instanceof ProxyView) {
            ((ProxyView) view).sendEvent(CMD_ON_OPENED, null);
        }
    }

    @Override // com.narvii.drawer.DrawerLayout.DrawerListener
    public void onDrawerClosed(View view) {
        if (view instanceof ProxyView) {
            ((ProxyView) view).sendEvent(CMD_ON_CLOSED, null);
        }
    }

    public boolean sendDrawerEvent(int i, Object obj) {
        DrawerView drawerView = this.drawerView;
        if (drawerView == null) {
            return false;
        }
        return drawerView.sendEvent(i, obj);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        MyDrawerLayout myDrawerLayout;
        if (i == 4 && (myDrawerLayout = this.drawerLayout) != null && myDrawerLayout.onKeyDown(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        MyDrawerLayout myDrawerLayout;
        if (i == 4 && (myDrawerLayout = this.drawerLayout) != null && myDrawerLayout.onKeyUp(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public boolean onDrawerEvent(int i, Object obj) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        if (i == 16384001 && this.drawerLayout != null) {
            closeDrawers();
            return true;
        }
        if (i != 16384005) {
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
            startActivity(intent);
        }
        return true;
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (SplashUtils.cancelSplash(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.narvii.app.NVActivity
    protected void initActionBar() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.initActionBar();
        if (this.abInited) {
            return;
        }
        this.abInited = true;
        if (isActionBarOverlaying()) {
            return;
        }
        ActionBar actionBar = getActionBar();
        ActionBarLayout actionBarLayout = (ActionBarLayout) ((actionBar == null || actionBar.getCustomView() == null) ? null : actionBar.getCustomView().findViewById(R.id.actionbar));
        if (actionBarLayout != null) {
            actionBarLayout.setOnGestureListener(new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.app.DrawerActivity.5
                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                    return false;
                }

                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public boolean onSingleTapUp(MotionEvent motionEvent) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
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

    public void peekDrawer(long j, long j2) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        MyDrawerLayout drawerLayout = getDrawerLayout();
        if (drawerLayout != null) {
            drawerLayout.peekDrawer(GravityCompat.START, j, j2);
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
        } else {
            if (!hasOnlineBar()) {
                return 0;
            }
            iDpToPxInt = Utils.dpToPxInt(getContext(), 62.0f);
            onlineBarLift = nVFragment.getOnlineBarLift();
        }
        return iDpToPxInt + onlineBarLift;
    }

    public void setLiverLayerBarVisible(boolean z) {
        ProxyView proxyView = this.liveLayerView;
        if (proxyView != null) {
            proxyView.setVisibility(z ? 0 : 8);
        }
    }

    private void setCBBVisible(boolean z) {
        ProxyView proxyView = this.cbbView;
        if (proxyView != null) {
            proxyView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.narvii.app.NVActivity
    public void updateThemeUI() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
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
        if (isPagebackgroundEnabled() && ((ViewGroup) getWindow().findViewById(android.R.id.content)) != null) {
            configPageBackground();
        }
    }

    @Override // com.narvii.app.NVActivity
    protected void updateVisitorModeUI() {
        changeDrawerUsability();
        updateCBBVisibility();
        updateVisitorBarVisibility();
    }
}
