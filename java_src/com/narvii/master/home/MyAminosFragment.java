package com.narvii.master.home;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollableTabFragment;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.community.MyCommunityListService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityListResponse;
import com.narvii.master.MasterTabFragment;
import com.narvii.master.MasterTopBar;
import com.narvii.master.MasterTopBarAvailable;
import com.narvii.master.MasterTopOffsetAdapter;
import com.narvii.master.MyCommunityListFragment;
import com.narvii.master.search.GlobalSearchBaseFragment;
import com.narvii.nested.tab.ScrollTabViewDelegate;
import com.narvii.nested.tab.UpdateTabViewDelegate;
import com.narvii.util.LanguageHelper;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: MyAminosFragment.kt */
/* loaded from: classes3.dex */
public final class MyAminosFragment extends NVScrollableTabFragment implements MyCommunityListService.MyCommunityListObserver, MasterTopBarAvailable, MasterTopOffsetAdapter {
    public static final Companion Companion = new Companion(null);
    public static final String _SINGLE = "__single";
    private final int INDEX_MY_COMMUNITY;
    private HashMap _$_findViewCache;
    private AccountService accountService;
    private MyCommunityListService myCommunityListService;
    private final MyAminosFragment$receiver$1 receiver = new BroadcastReceiver() { // from class: com.narvii.master.home.MyAminosFragment$receiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws Resources.NotFoundException {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(intent, "intent");
            if (this.this$0.isAdded() && Intrinsics.areEqual(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction())) {
                this.this$0.updateTabLayout();
                this.this$0.resetAdapter();
            }
        }
    };

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Communities";
    }

    @Override // com.narvii.master.MasterTopBarAvailable
    public boolean isTopBarAvailable() {
        return true;
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(MyCommunityListService myCommunityListService) {
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(MyCommunityListService myCommunityListService, CommunityListResponse communityListResponse) {
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public Drawable tabLayoutBackground() {
        return null;
    }

    @Override // com.narvii.master.MasterTopOffsetAdapter
    public int topOffsetHeight() {
        return 0;
    }

    /* compiled from: MyAminosFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isSingleFragment()) {
            setTitle(R.string.my_communities);
            setHasOptionsMenu(true);
        } else {
            setTitle((CharSequence) null);
        }
        Object service = getService("myCommunityList");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"myCommunityList\")");
        this.myCommunityListService = (MyCommunityListService) service;
        Object service2 = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"account\")");
        this.accountService = (AccountService) service2;
        MyCommunityListService myCommunityListService = this.myCommunityListService;
        if (myCommunityListService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("myCommunityListService");
            throw null;
        }
        myCommunityListService.addObserver(this);
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        Intrinsics.checkParameterIsNotNull(menu, "menu");
        menu.add(0, R.string.search, 0, R.string.search).setIcon(R.drawable.ic_search_actionbar).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == R.string.search) {
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("searchIcon").send();
            Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
            intent.putExtra("section_type", 1);
            intent.putExtra(IjkMediaMeta.IJKM_KEY_LANGUAGE, LanguageHelper.getUserSelectedLanguageCode(this));
            startActivity(intent);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_myaminos, viewGroup, false);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.root_layout);
        if (isSingleFragment()) {
            viewGroup.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.color_default_primary));
        } else {
            viewGroup.setBackgroundColor(0);
        }
        updateTabLayout();
    }

    public final boolean isSingleFragment() {
        return getBooleanParam("__single");
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MyCommunityListService myCommunityListService = this.myCommunityListService;
        if (myCommunityListService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("myCommunityListService");
            throw null;
        }
        myCommunityListService.removeObserver(this);
        unregisterLocalReceiver(this.receiver);
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i) {
        if (i == this.INDEX_MY_COMMUNITY) {
            return getString(R.string.my_communities);
        }
        return null;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Class<? extends NVFragment> getFragment(int i) {
        if (i == this.INDEX_MY_COMMUNITY) {
            return MyCommunityListFragment.class;
        }
        return null;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Bundle getBundles(int i) {
        if (i == this.INDEX_MY_COMMUNITY) {
            new Bundle().putBoolean("__single", isSingleFragment());
        }
        return super.getBundles(i);
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected View getTabView(String str, Drawable drawable) {
        View tab = LayoutInflater.from(getContext()).inflate(R.layout.tab_layout_my_amino, (ViewGroup) null);
        View viewFindViewById = tab.findViewById(R.id.tab_title);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "tab.findViewById<TextView>(R.id.tab_title)");
        ((TextView) viewFindViewById).setText(str);
        Intrinsics.checkExpressionValueIsNotNull(tab, "tab");
        return tab;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateTabLayout() {
        /*
            r4 = this;
            com.narvii.community.MyCommunityListService r0 = r4.myCommunityListService
            r1 = 0
            if (r0 == 0) goto L3f
            java.util.List r0 = r0.list()
            boolean r0 = r0.isEmpty()
            r2 = 0
            if (r0 != 0) goto L23
            com.narvii.account.AccountService r0 = r4.accountService
            if (r0 == 0) goto L1d
            boolean r0 = r0.hasAccount()
            if (r0 != 0) goto L1b
            goto L23
        L1b:
            r0 = 0
            goto L24
        L1d:
            java.lang.String r0 = "accountService"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)
            throw r1
        L23:
            r0 = 1
        L24:
            com.narvii.widget.NVPagerTabLayout r1 = r4.scrollableTabLayout
            r3 = 8
            if (r1 == 0) goto L31
            if (r0 == 0) goto L2e
            r2 = 8
        L2e:
            r1.setVisibility(r2)
        L31:
            com.narvii.widget.NVPagerTabLayout r1 = r4.scrollableTabLayout
            if (r1 == 0) goto L38
            r1.setVisibility(r3)
        L38:
            com.narvii.widget.NVViewPager r1 = r4.mViewPager
            if (r1 == 0) goto L3e
            r1.disableScroll = r0
        L3e:
            return
        L3f:
            java.lang.String r0 = "myCommunityListService"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.master.home.MyAminosFragment.updateTabLayout():void");
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    protected UpdateTabViewDelegate createUpdateTabViewDelegate() {
        return new ScrollTabViewDelegate();
    }

    @Override // com.narvii.master.MasterTopOffsetAdapter
    public void resetOffset() {
        if (getParentFragment() instanceof MasterTabFragment) {
            Fragment parentFragment = getParentFragment();
            if (parentFragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.MasterTabFragment");
            }
            MasterTopBar masterTopBar = ((MasterTabFragment) parentFragment).getMasterTopBar();
            if (masterTopBar != null) {
                masterTopBar.collapse();
            }
        }
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(MyCommunityListService myCommunityListService, MyCommunityListResponse myCommunityListResponse, Integer num) {
        updateTabLayout();
    }
}
