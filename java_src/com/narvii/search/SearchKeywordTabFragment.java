package com.narvii.search;

import android.content.ComponentCallbacks;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVBaseScrollableTabFragment;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.app.NVScrollableTabFragment;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.master.search.SearchLog;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Log;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.SearchBar;
import java.util.HashMap;
import java.util.UUID;

/* loaded from: classes3.dex */
public class SearchKeywordTabFragment extends NVScrollableTabFragment implements SearchBar.OnSearchListener, ISearchBarHost {
    public static final int INDEX_CHAT = 3;
    public static final int INDEX_MEMBER = 2;
    public static final int INDEX_POST = 1;
    CommunityConfigHelper configHelper;
    private SearchBar searchBar;
    HashMap<Fragment, String> searchIdMap = new HashMap<>();
    ViewPager.OnPageChangeListener pageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.narvii.search.SearchKeywordTabFragment.1
        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            ComponentCallbacks currentFragment = SearchKeywordTabFragment.this.getCurrentFragment();
            if ((currentFragment instanceof SwitchSearchListener) && SearchKeywordTabFragment.this.searchBar != null) {
                ((SwitchSearchListener) currentFragment).onSwitchSearch(SearchKeywordTabFragment.this.searchBar.getText());
            }
            if (((NVBaseScrollableTabFragment) SearchKeywordTabFragment.this).scrollableTabLayout != null) {
                for (int i2 = 0; i2 < ((NVBaseScrollableTabFragment) SearchKeywordTabFragment.this).scrollableTabLayout.getTabCount(); i2++) {
                    View childTabAt = ((NVBaseScrollableTabFragment) SearchKeywordTabFragment.this).scrollableTabLayout.getChildTabAt(i2);
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

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "CommunitySearch";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.search.ISearchBarHost
    public void onSearchFromHistory(NVFragment nVFragment, String str) {
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getActivity().getWindow().setSoftInputMode(3);
        this.configHelper = new CommunityConfigHelper(this);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_search_keyword, viewGroup, false);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.searchBar = (SearchBar) view.findViewById(R.id.search);
        this.searchBar.setOnSearchListener(this);
        if (bundle == null) {
            this.searchBar.setText(getStringParam("q"));
        }
        this.searchBar.setBackgroundColor(primaryColor());
        this.searchBar.post(new Runnable() { // from class: com.narvii.search.SearchKeywordTabFragment.2
            @Override // java.lang.Runnable
            public void run() {
                Utils.post(new Runnable() { // from class: com.narvii.search.SearchKeywordTabFragment.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SoftKeyboard.showSoftKeyboard(SearchKeywordTabFragment.this.searchBar.getEditText());
                    }
                });
            }
        });
        view.findViewById(R.id.status_bar).setBackgroundColor(primaryColor());
        setPageChangeListener(this.pageChangeListener);
        this.pageChangeListener.onPageSelected(getRealPositionOfIndex(defaultTabIndex()));
        AndroidBug5497Workaround.assistActivity(getActivity());
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.mPagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            this.scrollableTabLayout.setVisibility(nVScrollablePagerAdapter.getCount() == 1 ? 8 : 0);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        getActivity().getActionBar().hide();
    }

    private int primaryColor() {
        return ((ConfigService) getService("config")).getTheme().colorPrimary();
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i) {
        if (i == 1) {
            if (this.configHelper.isPostEnabled()) {
                return getString(R.string.search_pages);
            }
            return null;
        }
        if (i == 2) {
            return getString(R.string.search_users);
        }
        if (i == 3 && this.configHelper.isChatEnabled() && this.configHelper.isPublicChatEnabled()) {
            return getString(R.string.page_public_chatroom);
        }
        return null;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Class<? extends NVFragment> getFragment(int i) {
        if (i == 1) {
            return SearchPostListFragment.class;
        }
        if (i == 2) {
            return SearchUserListFragment.class;
        }
        if (i != 3) {
            return null;
        }
        return SearchChatListFragment.class;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected View getTabView(String str, Drawable drawable) {
        View viewInflate = getActivity().getLayoutInflater().inflate(R.layout.keyword_tab_layout, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tab_title)).setText(str);
        ((TextView) viewInflate.findViewById(R.id.tab_title)).setTextColor(-1);
        return viewInflate;
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
        logSearchEvent(SearchLog.builder(this, str).build());
        ComponentCallbacks currentFragment = getCurrentFragment();
        if (currentFragment instanceof SearchBar.OnSearchListener) {
            ((SearchBar.OnSearchListener) currentFragment).onSearch(searchBar, str);
        }
    }

    @Override // com.narvii.search.ISearchBarHost
    public void onChildFragmentRealtimeSearch(NVFragment nVFragment, String str) {
        logSearchEvent(SearchLog.builder(this, str).instant().build());
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

    private String getCurrentSearchType() {
        int indexOfRealPosition = getIndexOfRealPosition(getCurIndex());
        return indexOfRealPosition != 1 ? indexOfRealPosition != 2 ? indexOfRealPosition != 3 ? "" : "chats" : "users" : "posts";
    }
}
