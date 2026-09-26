package com.narvii.app;

import ai.medialab.medialabanalytics.MediaLabAnalytics;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.activity.result.ActivityResultCaller;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.chat.rtc.RtcService;
import com.narvii.util.Log;
import com.narvii.util.statusbar.StatusBarUtils;

/* JADX INFO: loaded from: classes10.dex */
public class FragmentWrapperActivity extends DrawerActivity {
    private int actionBarLayoutId = -1;
    private int customTheme;
    private Fragment fragment;
    private Boolean hasCBB;
    private Boolean hasOnlineBar;
    private Boolean hasPostEntry;
    private Boolean hasVisitorBar;
    private boolean isGlobal;
    private boolean isModel;
    private int statusBarAlpha;

    public interface ServiceOverride {
        Object getOverrideService(String str);
    }

    @Override // com.narvii.app.NVActivity
    public int getCustomTheme() {
        return this.customTheme;
    }

    protected int getFragmentLayoutId() {
        return R.id.content;
    }

    @Override // com.narvii.app.NVActivity
    public Fragment getRootFragment() {
        return this.fragment;
    }

    @Override // com.narvii.app.NVActivity
    public boolean isGlobal() {
        return this.isGlobal;
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        if (i11 == -1 && intent != null && intent.getBooleanExtra("__finish", false)) {
            finish();
        } else {
            super.onActivityResult(i10, i11, intent);
        }
    }

    public static Intent intent(Class<? extends Fragment> cls) {
        Intent intent = new Intent();
        String name = null;
        try {
            name = (String) cls.getField("WRAPPER_ACTIVITY").get(null);
        } catch (Exception unused) {
        }
        String packageName = NVApplication.instance().getPackageName();
        if (name == null) {
            name = FragmentWrapperActivity.class.getName();
        }
        intent.setClassName(packageName, name);
        intent.putExtra("fragment", cls.getName());
        return intent;
    }

    @Override // com.narvii.app.NVActivity
    public boolean canScrollUp() {
        Fragment fragment = this.fragment;
        return fragment instanceof NVFragment ? ((NVFragment) fragment).canScrollUp() : super.canScrollUp();
    }

    protected Fragment createFragment() {
        try {
            String stringParam = getStringParam("fragment");
            MediaLabAnalytics.getInstance().initialize(getApplicationContext());
            MediaLabAnalytics.getInstance().trackEvent("Fragment Created", new Pair[]{new Pair("object_id", stringParam)});
            if (!TextUtils.isEmpty(stringParam)) {
                return (Fragment) getClassLoader().loadClass(stringParam).newInstance();
            }
            Log.e("no fragment specified");
            return null;
        } catch (Exception e) {
            Log.e("fail to create fragment", e);
            return null;
        }
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    public void finish() {
        ActivityResultCaller activityResultCaller = this.fragment;
        if (activityResultCaller instanceof FragmentWillFinishListener) {
            ((FragmentWillFinishListener) activityResultCaller).willFinish(this);
        }
        super.finish();
    }

    @Override // com.narvii.app.NVActivity
    protected int getActionbarLayoutId(boolean z6, int i10, int i11) {
        int i12 = this.actionBarLayoutId;
        return i12 == -1 ? super.getActionbarLayoutId(z6, i10, i11) : i12;
    }

    @Override // com.narvii.app.DrawerActivity
    public int getCBBLift() {
        Fragment fragment = this.fragment;
        if (fragment instanceof NVFragment) {
            return ((NVFragment) fragment).getCBBLift();
        }
        return 0;
    }

    @Override // com.narvii.app.NVActivity
    protected String getCrashlyticsClassName() {
        String stringParam = getStringParam("fragment");
        if (TextUtils.isEmpty(stringParam)) {
            return super.getCrashlyticsClassName();
        }
        int iLastIndexOf = stringParam.lastIndexOf(46);
        return iLastIndexOf > 0 ? stringParam.substring(iLastIndexOf + 1) : stringParam;
    }

    @Override // com.narvii.app.DrawerActivity
    public int getOnlineBarLift() {
        Fragment fragment = this.fragment;
        if (fragment instanceof NVFragment) {
            return ((NVFragment) fragment).getOnlineBarLift();
        }
        return 0;
    }

    @Override // com.narvii.app.DrawerActivity
    public int getPostEntryLift() {
        Fragment fragment = this.fragment;
        if (fragment instanceof NVFragment) {
            return ((NVFragment) fragment).getPostEntryLift();
        }
        return 0;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.NVContext
    public <T> T getService(String str) {
        T t5;
        ActivityResultCaller activityResultCaller = this.fragment;
        return (!(activityResultCaller instanceof ServiceOverride) || (t5 = (T) ((ServiceOverride) activityResultCaller).getOverrideService(str)) == null) ? (T) super.getService(str) : t5;
    }

    @Override // com.narvii.app.DrawerActivity
    public boolean hasCBB() {
        Boolean bool = this.hasCBB;
        return bool == null ? super.hasCBB() : bool.booleanValue();
    }

    @Override // com.narvii.app.DrawerActivity
    public boolean hasOnlineBar() {
        if (this.hasOnlineBar == null) {
            return super.hasOnlineBar();
        }
        return hasCommunityId() && this.hasOnlineBar.booleanValue() && !hasCBB() && !isGlobalInteractionScope();
    }

    @Override // com.narvii.app.DrawerActivity
    public boolean hasPostEntry() {
        Boolean bool = this.hasPostEntry;
        if (bool == null) {
            return super.hasPostEntry();
        }
        return bool.booleanValue() && !hasCBB();
    }

    @Override // com.narvii.app.DrawerActivity
    public boolean hasVisitorBar() {
        Boolean bool = this.hasVisitorBar;
        return bool == null ? super.hasVisitorBar() : bool.booleanValue();
    }

    @Override // com.narvii.app.NVActivity
    public boolean isModel() {
        return this.isModel || super.isModel();
    }

    @Override // com.narvii.app.NVActivity
    public boolean isPagebackgroundEnabled() {
        Fragment fragment = this.fragment;
        if (fragment instanceof NVFragment) {
            return ((NVFragment) fragment).isPageBackgroundEnabled();
        }
        return false;
    }

    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        ActivityResultCaller activityResultCaller = this.fragment;
        if ((activityResultCaller instanceof FragmentOnBackListener) && ((FragmentOnBackListener) activityResultCaller).onBackPressed(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        if (bundle == null) {
            Fragment fragmentCreateFragment = createFragment();
            this.fragment = fragmentCreateFragment;
            if (fragmentCreateFragment instanceof NVFragment) {
                NVFragment nVFragment = (NVFragment) fragmentCreateFragment;
                this.isGlobal = nVFragment.isGlobal();
                this.isModel = nVFragment.isModel();
                this.hasPostEntry = nVFragment.hasPostEntry();
                this.hasCBB = nVFragment.hasCBB(this, getIntent());
                this.hasVisitorBar = Boolean.valueOf(nVFragment.hasVisitorBar());
                this.hasOnlineBar = nVFragment.hasOnlineBar();
                this.customTheme = nVFragment.getCustomTheme();
                this.statusBarAlpha = nVFragment.getStatusBarAlpha();
                this.actionBarLayoutId = nVFragment.getActionBarLayoutId();
            }
        } else {
            this.isGlobal = bundle.getBoolean("__isGlobal");
            this.isModel = bundle.getBoolean("__isModel");
            this.hasPostEntry = bundle.containsKey("__hasPostEntry") ? Boolean.valueOf(bundle.getBoolean("__hasPostEntry")) : null;
            this.hasCBB = bundle.containsKey("__hasCBB") ? Boolean.valueOf(bundle.getBoolean("__hasCBB")) : null;
            this.hasVisitorBar = bundle.containsKey("__hasVisitorBar") ? Boolean.valueOf(bundle.getBoolean("__hasVisitorBar")) : null;
            this.hasOnlineBar = bundle.containsKey("__hasOnlineBar") ? Boolean.valueOf(bundle.getBoolean("__hasOnlineBar")) : null;
            this.customTheme = bundle.getInt("__customTheme");
            this.statusBarAlpha = bundle.getInt("__statusBarAlpha");
        }
        super.onCreate(bundle);
        setShouldInflateAd(true);
        setContentView(R.layout.activity_base);
        if (bundle != null) {
            this.fragment = getSupportFragmentManager().m0("fragment");
        } else if (this.fragment == null) {
            finish();
        } else {
            getSupportFragmentManager().q().c(getFragmentLayoutId(), this.fragment, "fragment").j();
        }
    }

    @Override // com.narvii.app.NVActivity
    public boolean requireAccount() {
        Fragment fragment = this.fragment;
        if (fragment instanceof NVFragment) {
            return ((NVFragment) fragment).requireAccount();
        }
        return false;
    }

    @Override // com.narvii.app.NVActivity
    public void setStatusBar() {
        int i10 = this.statusBarAlpha;
        if (i10 != 0) {
            StatusBarUtils.setTranslucentStatusBar(this, i10);
        } else {
            super.setStatusBar();
        }
    }

    @Override // com.narvii.app.NVActivity
    protected boolean showThemeColorAsAlternativeBackground() {
        Fragment fragment = this.fragment;
        if (fragment instanceof NVFragment) {
            return ((NVFragment) fragment).showThemeColorAsAlternativeBackground();
        }
        return false;
    }

    @Override // com.narvii.app.NVActivity
    public void smoothScrollToTop() {
        Fragment fragment = this.fragment;
        if (fragment instanceof NVFragment) {
            ((NVFragment) fragment).smoothScrollToTop();
        } else {
            super.smoothScrollToTop();
        }
    }

    @Override // com.narvii.app.DrawerActivity
    public boolean hasDrawer() {
        if (super.hasDrawer() && !getBooleanParam(RtcService.KEY_HIDE_DRAWER)) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("__isGlobal", this.isGlobal);
        bundle.putBoolean("__isModel", this.isModel);
        Boolean bool = this.hasPostEntry;
        if (bool != null) {
            bundle.putBoolean("__hasPostEntry", bool.booleanValue());
        }
        Boolean bool2 = this.hasCBB;
        if (bool2 != null) {
            bundle.putBoolean("__hasCBB", bool2.booleanValue());
        }
        Boolean bool3 = this.hasVisitorBar;
        if (bool3 != null) {
            bundle.putBoolean("__hasVisitorBar", bool3.booleanValue());
        }
        Boolean bool4 = this.hasOnlineBar;
        if (bool4 != null) {
            bundle.putBoolean("__hasOnlineBar", bool4.booleanValue());
        }
        bundle.putInt("__customTheme", this.customTheme);
        bundle.putInt("__statusBarAlpha", this.statusBarAlpha);
    }
}
