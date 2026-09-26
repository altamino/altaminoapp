package com.narvii.master.home;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import com.safedk.android.utils.Logger;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class MyAminosFragment extends NVScrollableTabFragment implements MyCommunityListService.MyCommunityListObserver, MasterTopBarAvailable, MasterTopOffsetAdapter {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String _SINGLE = "__single";
    private final int INDEX_MY_COMMUNITY;
    private AccountService accountService;
    private MyCommunityListService myCommunityListService;

    @NotNull
    private final MyAminosFragment$receiver$1 receiver = new BroadcastReceiver() { // from class: com.narvii.master.home.MyAminosFragment$receiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(@NotNull Context context, @NotNull Intent intent) {
            t.j(context, "context");
            t.j(intent, "intent");
            if (this.this$0.isAdded() && t.e(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction())) {
                this.this$0.updateTabLayout();
                this.this$0.resetAdapter();
            }
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    @Nullable
    protected Class<? extends NVFragment> getFragment(int i10) {
        if (i10 == this.INDEX_MY_COMMUNITY) {
            return MyCommunityListFragment.class;
        }
        return null;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "communities";
    }

    @Override // com.narvii.master.MasterTopBarAvailable
    public boolean isTopBarAvailable() {
        return true;
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(@Nullable MyCommunityListService myCommunityListService) {
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(@Nullable MyCommunityListService myCommunityListService, @Nullable CommunityListResponse communityListResponse) {
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    @Nullable
    public Drawable tabLayoutBackground() {
        return null;
    }

    @Override // com.narvii.master.MasterTopOffsetAdapter
    public int topOffsetHeight() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    public final void updateTabLayout() {
        boolean z6;
        MyCommunityListService myCommunityListService = this.myCommunityListService;
        AccountService accountService = null;
        if (myCommunityListService == null) {
            t.B("myCommunityListService");
            myCommunityListService = null;
        }
        if (myCommunityListService.list().isEmpty()) {
            z6 = true;
        } else {
            AccountService accountService2 = this.accountService;
            if (accountService2 == null) {
                t.B("accountService");
            } else {
                accountService = accountService2;
            }
            if (accountService.hasAccount()) {
                z6 = false;
            } else {
                z6 = true;
            }
        }
        NVPagerTabLayout nVPagerTabLayout = this.scrollableTabLayout;
        if (nVPagerTabLayout != null) {
            nVPagerTabLayout.setVisibility(z6 ? 8 : 0);
        }
        NVPagerTabLayout nVPagerTabLayout2 = this.scrollableTabLayout;
        if (nVPagerTabLayout2 != null) {
            nVPagerTabLayout2.setVisibility(8);
        }
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager == null) {
            return;
        }
        nVViewPager.disableScroll = z6;
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    @NotNull
    protected UpdateTabViewDelegate createUpdateTabViewDelegate() {
        return new ScrollTabViewDelegate();
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    @Nullable
    protected Bundle getBundles(int i10) {
        if (i10 == this.INDEX_MY_COMMUNITY) {
            new Bundle().putBoolean("__single", isSingleFragment());
        }
        return super.getBundles(i10);
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    @Nullable
    protected String getTabLabel(int i10) {
        if (i10 == this.INDEX_MY_COMMUNITY) {
            return getString(R.string.my_communities);
        }
        return null;
    }

    public final boolean isSingleFragment() {
        return getBooleanParam("__single");
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@NotNull Menu menu, @NotNull MenuInflater inflater) {
        t.j(menu, "menu");
        t.j(inflater, "inflater");
        menu.add(0, R.string.search, 0, R.string.search).setIcon(R.drawable.ic_search_actionbar).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, inflater);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_myaminos, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(@NotNull MenuItem item) {
        t.j(item, "item");
        if (item.getItemId() != R.string.search) {
            return super.onOptionsItemSelected(item);
        }
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("searchIcon").send();
        Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
        intent.putExtra("section_type", 1);
        intent.putExtra("language", LanguageHelper.getUserSelectedLanguageCode(this));
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        return true;
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.root_layout);
        if (isSingleFragment()) {
            viewGroup.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.color_default_primary));
        } else {
            viewGroup.setBackgroundColor(0);
        }
        updateTabLayout();
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    @NotNull
    protected View getTabView(@Nullable String str, @Nullable Drawable drawable) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.tab_layout_my_amino, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tab_title)).setText(str);
        t.g(viewInflate);
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        MyCommunityListService myCommunityListService = null;
        if (isSingleFragment()) {
            setTitle(R.string.my_communities);
            setHasOptionsMenu(true);
        } else {
            setTitle((CharSequence) null);
        }
        Object service = getService("myCommunityList");
        t.i(service, "getService(...)");
        this.myCommunityListService = (MyCommunityListService) service;
        Object service2 = getService("account");
        t.i(service2, "getService(...)");
        this.accountService = (AccountService) service2;
        MyCommunityListService myCommunityListService2 = this.myCommunityListService;
        if (myCommunityListService2 == null) {
            t.B("myCommunityListService");
        } else {
            myCommunityListService = myCommunityListService2;
        }
        myCommunityListService.addObserver(this);
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MyCommunityListService myCommunityListService = this.myCommunityListService;
        if (myCommunityListService == null) {
            t.B("myCommunityListService");
            myCommunityListService = null;
        }
        myCommunityListService.removeObserver(this);
        unregisterLocalReceiver(this.receiver);
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(@Nullable MyCommunityListService myCommunityListService, @Nullable MyCommunityListResponse myCommunityListResponse, @Nullable Integer num) {
        updateTabLayout();
    }

    @Override // com.narvii.master.MasterTopOffsetAdapter
    public void resetOffset() {
        if (getParentFragment() instanceof MasterTabFragment) {
            Fragment parentFragment = getParentFragment();
            t.h(parentFragment, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment");
            MasterTopBar masterTopBar = ((MasterTabFragment) parentFragment).getMasterTopBar();
            if (masterTopBar != null) {
                masterTopBar.collapse();
            }
        }
    }

    public final void setStoreBadged() {
        if (getParentFragment() instanceof MasterTabFragment) {
            Fragment parentFragment = getParentFragment();
            t.h(parentFragment, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment");
            ((MasterTabFragment) parentFragment).setStoreBadged();
        }
    }
}
