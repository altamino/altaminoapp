package com.narvii.master.search;

import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCaller;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.narvii.amino.master.R;
import com.narvii.app.ComScoreSectionDispatcher;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVBaseScrollableTabFragment;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.app.NVScrollableTabFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.master.CommunitySearchListFragment;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.search.ISearchBarHost;
import com.narvii.search.SwitchSearchListener;
import com.narvii.util.Log;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.SplashUtils;
import com.narvii.util.Utils;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.SearchBar;
import com.safedk.android.utils.Logger;
import java.util.HashMap;
import java.util.UUID;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public class GlobalSearchTabFragment extends NVScrollableTabFragment implements SearchBar.OnSearchListener, ChangeSearchTextListener, ISearchBarHost {
    public static final long HOT_SEARCH_INTERVAL = 1000;
    public static final int INDEX_CHAT = 2;
    public static final int INDEX_COMMUNITY = 0;
    public static final int INDEX_OTHERS = 3;
    public static final int INDEX_USER = 1;
    private Integer defaultIndex;
    private SearchBar searchBar;
    HashMap<Fragment, String> searchIdMap = new HashMap<>();
    ViewPager.OnPageChangeListener pageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.narvii.master.search.GlobalSearchTabFragment.1
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float f, int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            ActivityResultCaller currentFragment = GlobalSearchTabFragment.this.getCurrentFragment();
            if ((currentFragment instanceof SwitchSearchListener) && GlobalSearchTabFragment.this.searchBar != null) {
                ((SwitchSearchListener) currentFragment).onSwitchSearch(GlobalSearchTabFragment.this.searchBar.getText());
            }
            if (((NVBaseScrollableTabFragment) GlobalSearchTabFragment.this).mPagerAdapter != null) {
                int hintStingId = GlobalSearchTabFragment.this.getHintStingId(Utils.isRtl() ? (((NVBaseScrollableTabFragment) GlobalSearchTabFragment.this).mPagerAdapter.getCount() - i10) - 1 : i10);
                if (GlobalSearchTabFragment.this.searchBar != null) {
                    if (hintStingId == 0) {
                        GlobalSearchTabFragment.this.searchBar.getEditText().setHint((CharSequence) null);
                    } else {
                        GlobalSearchTabFragment.this.searchBar.getEditText().setHint(hintStingId);
                    }
                }
            }
            if (((NVBaseScrollableTabFragment) GlobalSearchTabFragment.this).scrollableTabLayout != null) {
                for (int i11 = 0; i11 < ((NVBaseScrollableTabFragment) GlobalSearchTabFragment.this).scrollableTabLayout.getTabCount(); i11++) {
                    View childTabAt = ((NVBaseScrollableTabFragment) GlobalSearchTabFragment.this).scrollableTabLayout.getChildTabAt(i11);
                    if (childTabAt != null) {
                        TextView textView = (TextView) childTabAt.findViewById(R.id.tab_title);
                        if (i11 == i10) {
                            if (textView != null) {
                                textView.setAlpha(1.0f);
                                textView.setTypeface(Typeface.DEFAULT, 1);
                            }
                        } else if (textView != null) {
                            textView.setAlpha(0.8f);
                            textView.setTypeface(null);
                        }
                    }
                }
            }
        }
    };

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultOffScreenPage() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Class<? extends NVFragment> getFragment(int i10) {
        if (i10 == 0) {
            return CommunitySearchListFragment.class;
        }
        if (i10 == 1) {
            return GlobalUserSearchFragment.class;
        }
        if (i10 == 2) {
            return GlobalChatsSearchFragment.class;
        }
        if (i10 != 3) {
            return null;
        }
        return GlobalSearchOthersResultFragment.class;
    }

    protected int getHintStingId(int i10) {
        return R.string.search_community;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "global_search";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0() {
        SoftKeyboard.showSoftKeyboard(this.searchBar.getEditText());
    }

    private void logSearchEvent(SearchLog searchLog) {
        if (searchLog == null || TextUtils.isEmpty(searchLog.keyword)) {
            return;
        }
        String string = UUID.randomUUID().toString();
        this.searchIdMap.put(getCurrentFragment(), string);
        LogEvent.Builder builderObjectType = LogEvent.clickBuilder(searchLog.nvContext, ActSemantic.search).extraParam("inputText", searchLog.keyword).objectType(ObjectType.query);
        String str = searchLog.area;
        if (str == null) {
            str = "InputArea";
        }
        builderObjectType.area(str).extraParam("searchType", getCurrentSearchType()).extraParam("searchId", string).extraParam("instantSearch", Boolean.valueOf(searchLog.instant)).send();
    }

    @Override // com.narvii.master.search.ChangeSearchTextListener
    public void changeSearchText(String str, boolean z6) {
        SearchBar searchBar = this.searchBar;
        if (searchBar == null) {
            return;
        }
        searchBar.getEditText().setText(str);
        this.searchBar.getEditText().setSelection(str == null ? 0 : str.length());
        SoftKeyboard.hideSoftKeyboard(this.searchBar.getEditText());
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultTabIndex() {
        Integer num = this.defaultIndex;
        return num != null ? getDefaultTabIndex(num.intValue()) : super.defaultTabIndex();
    }

    @Override // com.narvii.search.ISearchBarHost
    public String getSearchId(Fragment fragment) {
        if (fragment == null) {
            return null;
        }
        String str = this.searchIdMap.get(fragment);
        if (str == null) {
            Log.e("search", "searchId is null");
        }
        return str;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i10) {
        int i11;
        if (i10 == 0) {
            i11 = R.string.communities;
        } else if (i10 == 1) {
            i11 = R.string.users;
        } else if (i10 != 2) {
            i11 = i10 != 3 ? 0 : R.string.others;
        } else {
            i11 = R.string.search_chats;
        }
        if (i11 != 0) {
            return getString(i11);
        }
        return null;
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        if (searchBar != null && searchBar.getEditText() != null) {
            SoftKeyboard.hideSoftKeyboard(searchBar.getEditText());
        }
        String strTrim = str.trim();
        if (ForwardActivity.isPermalink(strTrim) || ForwardActivity.isCommunityLink(strTrim)) {
            try {
                Uri uri = Uri.parse(strTrim);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setComponent(new ComponentName(getContext(), (Class<?>) ForwardActivity.class));
                intent.setData(uri);
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
                finish();
                return;
            } catch (Exception unused) {
            }
        }
        ActivityResultCaller currentFragment = getCurrentFragment();
        logSearchEvent(SearchLog.builder(this, str).build());
        if (currentFragment instanceof SearchBar.OnSearchListener) {
            ((SearchBar.OnSearchListener) currentFragment).onSearch(searchBar, str);
        }
    }

    public void setSearchId(Fragment fragment, String str) {
        this.searchIdMap.put(fragment, str);
    }

    public void switchTab(int i10) {
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            nVViewPager.setCurrentItem(getRealPositionOfIndex(i10), true);
        }
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public Drawable tabLayoutBackground() {
        return new ColorDrawable(0);
    }

    private String getCurrentSearchType() {
        int indexOfRealPosition = getIndexOfRealPosition(getCurIndex());
        if (indexOfRealPosition != 0) {
            if (indexOfRealPosition != 1) {
                if (indexOfRealPosition != 2) {
                    if (indexOfRealPosition != 3) {
                        return "";
                    }
                    return SearchPrefsHelper.PREFS_KEY_OTHERS;
                }
                return "chats";
            }
            return "users";
        }
        return "communities";
    }

    private int getDefaultTabIndex(int i10) {
        int realPositionOfIndex = getRealPositionOfIndex(i10);
        if (Utils.isRtl()) {
            if (realPositionOfIndex == -1) {
                return -1;
            }
            NVScrollablePagerAdapter nVScrollablePagerAdapter = this.mPagerAdapter;
            if (nVScrollablePagerAdapter != null && nVScrollablePagerAdapter.getCount() > 0) {
                return (this.mPagerAdapter.getCount() - 1) - realPositionOfIndex;
            }
        }
        return realPositionOfIndex;
    }

    @Override // com.narvii.app.NVScrollableTabFragment, com.narvii.app.NVBaseScrollableTabFragment
    protected NVScrollablePagerAdapter createAdapter() {
        int i10;
        NVScrollablePagerAdapter nVScrollablePagerAdapterCreateAdapter = super.createAdapter();
        if (getTabLayout() != null) {
            NVPagerTabLayout tabLayout = getTabLayout();
            if (nVScrollablePagerAdapterCreateAdapter.getCount() > 1) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            tabLayout.setVisibility(i10);
        }
        return nVScrollablePagerAdapterCreateAdapter;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected View getTabView(String str, Drawable drawable) {
        View viewInflate = getActivity().getLayoutInflater().inflate(R.layout.keyword_tab_layout, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tab_title)).setText(str);
        ((TextView) viewInflate.findViewById(R.id.tab_title)).setTextColor(-1);
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        getActivity().getActionBar().hide();
    }

    @Override // com.narvii.search.ISearchBarHost
    public void onChildFragmentRealtimeSearch(NVFragment nVFragment, String str) {
        logSearchEvent(SearchLog.builder(this, str).instant().build());
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToNone();
        getActivity().getWindow().setSoftInputMode(51);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Global Search (Communities, Posts)").userPropInc("Global Search (Communities, Posts) Total").source(getStringParam(ExternalPostPreviewFragment.SOURCE));
        }
        String stringParam = getStringParam("tab");
        if ("chat".equals(stringParam)) {
            this.defaultIndex = 2;
        } else if (SearchPrefsHelper.PREFS_KEY_COMMUNITY.equals(stringParam)) {
            this.defaultIndex = 0;
        }
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_global_search, viewGroup, false);
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected void onInstantiateItem(Object obj) {
        super.onInstantiateItem(obj);
        if (obj instanceof ChangeSearchTextRegister) {
            ((ChangeSearchTextRegister) obj).setChangeSearchTextListener(this);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        SplashUtils.cancelSplash(getActivity());
    }

    public void onSearchEditTouchUpListener() {
        ActivityResultCaller currentFragment = getCurrentFragment();
        if (currentFragment instanceof SearchBar.OnSearchEditTouchUpListener) {
            ((SearchBar.OnSearchEditTouchUpListener) currentFragment).onEditTouchUp();
        }
    }

    @Override // com.narvii.search.ISearchBarHost
    public void onSearchFromHistory(NVFragment nVFragment, String str) {
        logSearchEvent(SearchLog.builder(nVFragment, str).area("SearchHistory").build());
    }

    @Override // com.narvii.search.ISearchBarHost
    public void onSwitchSearch(NVFragment nVFragment, String str) {
        logSearchEvent(SearchLog.builder(this, str).area("Tab").build());
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        ActivityResultCaller currentFragment = getCurrentFragment();
        if (currentFragment instanceof SearchBar.OnSearchListener) {
            ((SearchBar.OnSearchListener) currentFragment).onTextChanged(searchBar, str);
        }
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        int i10;
        super.onViewCreated(view, bundle);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
        SearchBar searchBar = (SearchBar) view.findViewById(R.id.search_bar);
        this.searchBar = searchBar;
        searchBar.setOnSearchListener(this);
        this.searchBar.getEditText().setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.master.search.GlobalSearchTabFragment.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (motionEvent == null || motionEvent.getAction() != 1) {
                    return false;
                }
                GlobalSearchTabFragment.this.onSearchEditTouchUpListener();
                return false;
            }
        });
        this.searchBar.post(new Runnable() { // from class: com.narvii.master.search.GlobalSearchTabFragment.3
            @Override // java.lang.Runnable
            public void run() {
                Utils.post(new Runnable() { // from class: com.narvii.master.search.GlobalSearchTabFragment.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SoftKeyboard.showSoftKeyboard(GlobalSearchTabFragment.this.searchBar.getEditText());
                    }
                });
            }
        });
        this.searchBar.setClearClickListener(new SearchBar.OnClearClickListener() { // from class: com.narvii.master.search.m
            @Override // com.narvii.widget.SearchBar.OnClearClickListener
            public final void onClearClicked() {
                this.f2421a.lambda$onViewCreated$0();
            }
        });
        StatusBarUtils.addMarginTopToContentChild(this.searchBar, getStatusBarOverlaySize());
        ((Button) this.searchBar.findViewById(R.id.search_cancel)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.search.GlobalSearchTabFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                GlobalSearchTabFragment.this.getActivity().finish();
            }
        });
        setPageChangeListener(this.pageChangeListener);
        this.pageChangeListener.onPageSelected(getRealPositionOfIndex(defaultTabIndex()));
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.mPagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            NVPagerTabLayout nVPagerTabLayout = this.scrollableTabLayout;
            if (nVScrollablePagerAdapter.getCount() == 1) {
                i10 = 8;
            } else {
                i10 = 0;
            }
            nVPagerTabLayout.setVisibility(i10);
        }
    }
}
