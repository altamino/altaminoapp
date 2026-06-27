package com.narvii.master.search;

import android.content.ComponentCallbacks;
import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVBaseScrollableTabFragment;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.app.NVScrollableTabFragment;
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
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.SearchBar;
import java.util.HashMap;
import java.util.UUID;

/* loaded from: classes3.dex */
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
        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            ComponentCallbacks currentFragment = GlobalSearchTabFragment.this.getCurrentFragment();
            if ((currentFragment instanceof SwitchSearchListener) && GlobalSearchTabFragment.this.searchBar != null) {
                ((SwitchSearchListener) currentFragment).onSwitchSearch(GlobalSearchTabFragment.this.searchBar.getText());
            }
            if (((NVBaseScrollableTabFragment) GlobalSearchTabFragment.this).mPagerAdapter != null) {
                int hintStingId = GlobalSearchTabFragment.this.getHintStingId(Utils.isRtl() ? (((NVBaseScrollableTabFragment) GlobalSearchTabFragment.this).mPagerAdapter.getCount() - i) - 1 : i);
                if (GlobalSearchTabFragment.this.searchBar != null) {
                    if (hintStingId == 0) {
                        GlobalSearchTabFragment.this.searchBar.getEditText().setHint((CharSequence) null);
                    } else {
                        GlobalSearchTabFragment.this.searchBar.getEditText().setHint(hintStingId);
                    }
                }
            }
            if (((NVBaseScrollableTabFragment) GlobalSearchTabFragment.this).scrollableTabLayout != null) {
                for (int i2 = 0; i2 < ((NVBaseScrollableTabFragment) GlobalSearchTabFragment.this).scrollableTabLayout.getTabCount(); i2++) {
                    View childTabAt = ((NVBaseScrollableTabFragment) GlobalSearchTabFragment.this).scrollableTabLayout.getChildTabAt(i2);
                    if (childTabAt != null) {
                        TextView textView = (TextView) childTabAt.findViewById(R.id.tab_title);
                        if (i2 == i) {
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

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultOffScreenPage() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    protected int getHintStingId(int i) {
        return R.string.search_community;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "GlobalSearch";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getActivity().getWindow().setSoftInputMode(51);
        String stringParam = getStringParam("tab");
        if ("chat".equals(stringParam)) {
            this.defaultIndex = 2;
        } else if ("community".equals(stringParam)) {
            this.defaultIndex = 0;
        }
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_global_search, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        SplashUtils.cancelSplash(getActivity());
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
        this.searchBar = (SearchBar) view.findViewById(R.id.search_bar);
        this.searchBar.setOnSearchListener(this);
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
        this.searchBar.setClearClickListener(new SearchBar.OnClearClickListener() { // from class: com.narvii.master.search.-$$Lambda$GlobalSearchTabFragment$piun2T-dJhDhej4FJWWlAZpYtAU
            @Override // com.narvii.widget.SearchBar.OnClearClickListener
            public final void onClearClicked() {
                this.f$0.lambda$onViewCreated$0$GlobalSearchTabFragment();
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
            this.scrollableTabLayout.setVisibility(nVScrollablePagerAdapter.getCount() == 1 ? 8 : 0);
        }
    }

    public /* synthetic */ void lambda$onViewCreated$0$GlobalSearchTabFragment() {
        SoftKeyboard.showSoftKeyboard(this.searchBar.getEditText());
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        getActivity().getActionBar().hide();
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultTabIndex() {
        Integer num = this.defaultIndex;
        if (num != null) {
            return getDefaultTabIndex(num.intValue());
        }
        return super.defaultTabIndex();
    }

    private int getDefaultTabIndex(int i) {
        int realPositionOfIndex = getRealPositionOfIndex(i);
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
        NVScrollablePagerAdapter nVScrollablePagerAdapterCreateAdapter = super.createAdapter();
        if (getTabLayout() != null) {
            getTabLayout().setVisibility(nVScrollablePagerAdapterCreateAdapter.getCount() > 1 ? 0 : 8);
        }
        return nVScrollablePagerAdapterCreateAdapter;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i) {
        int i2 = NVApplication.CLIENT_TYPE;
        int i3 = R.string.communities;
        if (i2 == 101) {
            if (i == 0) {
                return getString(R.string.communities);
            }
            return null;
        }
        if (i != 0) {
            i3 = i != 1 ? i != 2 ? i != 3 ? 0 : R.string.others : R.string.search_chats : R.string.users;
        }
        if (i3 != 0) {
            return getString(i3);
        }
        return null;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Class<? extends NVFragment> getFragment(int i) {
        if (i == 0) {
            return CommunitySearchListFragment.class;
        }
        if (i == 1) {
            return GlobalUserSearchFragment.class;
        }
        if (i == 2) {
            return GlobalChatsSearchFragment.class;
        }
        if (i != 3) {
            return null;
        }
        return GlobalSearchOthersResultFragment.class;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected View getTabView(String str, Drawable drawable) {
        View viewInflate = getActivity().getLayoutInflater().inflate(R.layout.keyword_tab_layout, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tab_title)).setText(str);
        ((TextView) viewInflate.findViewById(R.id.tab_title)).setTextColor(-1);
        return viewInflate;
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public Drawable tabLayoutBackground() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        ComponentCallbacks currentFragment = getCurrentFragment();
        if (currentFragment instanceof SearchBar.OnSearchListener) {
            ((SearchBar.OnSearchListener) currentFragment).onTextChanged(searchBar, str);
        }
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
                startActivity(intent);
                finish();
                return;
            } catch (Exception unused) {
            }
        }
        ComponentCallbacks currentFragment = getCurrentFragment();
        logSearchEvent(SearchLog.builder(this, str).build());
        if (currentFragment instanceof SearchBar.OnSearchListener) {
            ((SearchBar.OnSearchListener) currentFragment).onSearch(searchBar, str);
        }
    }

    public void onSearchEditTouchUpListener() {
        ComponentCallbacks currentFragment = getCurrentFragment();
        if (currentFragment instanceof SearchBar.OnSearchEditTouchUpListener) {
            ((SearchBar.OnSearchEditTouchUpListener) currentFragment).onEditTouchUp();
        }
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected void onInstantiateItem(Object obj) {
        super.onInstantiateItem(obj);
        if (obj instanceof ChangeSearchTextRegister) {
            ((ChangeSearchTextRegister) obj).setChangeSearchTextListener(this);
        }
    }

    @Override // com.narvii.master.search.ChangeSearchTextListener
    public void changeSearchText(String str, boolean z) {
        SearchBar searchBar = this.searchBar;
        if (searchBar == null) {
            return;
        }
        searchBar.getEditText().setText(str);
        this.searchBar.getEditText().setSelection(str == null ? 0 : str.length());
        SoftKeyboard.hideSoftKeyboard(this.searchBar.getEditText());
    }

    @Override // com.narvii.search.ISearchBarHost
    public void onSearchFromHistory(NVFragment nVFragment, String str) {
        logSearchEvent(SearchLog.builder(nVFragment, str).area("SearchHistory").build());
    }

    @Override // com.narvii.search.ISearchBarHost
    public void onChildFragmentRealtimeSearch(NVFragment nVFragment, String str) {
        logSearchEvent(SearchLog.builder(this, str).instant().build());
    }

    @Override // com.narvii.search.ISearchBarHost
    public void onSwitchSearch(NVFragment nVFragment, String str) {
        logSearchEvent(SearchLog.builder(this, str).area("Tab").build());
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

    public void setSearchId(Fragment fragment, String str) {
        this.searchIdMap.put(fragment, str);
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

    private String getCurrentSearchType() {
        int indexOfRealPosition = getIndexOfRealPosition(getCurIndex());
        return indexOfRealPosition != 0 ? indexOfRealPosition != 1 ? indexOfRealPosition != 2 ? indexOfRealPosition != 3 ? "" : SearchPrefsHelper.PREFS_KEY_OTHERS : "chats" : "users" : "communities";
    }

    public void switchTab(int i) throws Resources.NotFoundException {
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            nVViewPager.setCurrentItem(getRealPositionOfIndex(i), true);
        }
    }
}
