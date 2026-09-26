package com.narvii.search;

import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCaller;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.narvii.amino.master.R;
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
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.SearchBar;
import java.util.HashMap;
import java.util.UUID;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public class SearchKeywordTabFragment extends NVScrollableTabFragment implements SearchBar.OnSearchListener, ISearchBarHost {
    public static final int INDEX_CHAT = 3;
    public static final int INDEX_MEMBER = 2;
    public static final int INDEX_POST = 1;
    CommunityConfigHelper configHelper;
    private SearchBar searchBar;
    HashMap<Fragment, String> searchIdMap = new HashMap<>();
    ViewPager.OnPageChangeListener pageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.narvii.search.SearchKeywordTabFragment.1
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float f, int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            ActivityResultCaller currentFragment = SearchKeywordTabFragment.this.getCurrentFragment();
            if ((currentFragment instanceof SwitchSearchListener) && SearchKeywordTabFragment.this.searchBar != null) {
                ((SwitchSearchListener) currentFragment).onSwitchSearch(SearchKeywordTabFragment.this.searchBar.getText());
            }
            if (((NVBaseScrollableTabFragment) SearchKeywordTabFragment.this).scrollableTabLayout != null) {
                for (int i11 = 0; i11 < ((NVBaseScrollableTabFragment) SearchKeywordTabFragment.this).scrollableTabLayout.getTabCount(); i11++) {
                    View childTabAt = ((NVBaseScrollableTabFragment) SearchKeywordTabFragment.this).scrollableTabLayout.getChildTabAt(i11);
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

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Class<? extends NVFragment> getFragment(int i10) {
        if (i10 == 1) {
            return SearchPostListFragment.class;
        }
        if (i10 == 2) {
            return SearchUserListFragment.class;
        }
        if (i10 != 3) {
            return null;
        }
        return SearchChatListFragment.class;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "community_search";
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i10) {
        if (i10 == 1) {
            if (this.configHelper.isPostEnabled()) {
                return getString(R.string.search_pages);
            }
            return null;
        }
        if (i10 == 2) {
            return getString(R.string.search_users);
        }
        if (i10 == 3 && this.configHelper.isChatEnabled() && this.configHelper.isPublicChatEnabled()) {
            return getString(R.string.page_public_chatroom);
        }
        return null;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.search.ISearchBarHost
    public void onSearchFromHistory(NVFragment nVFragment, String str) {
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

    private int primaryColor() {
        return ((ConfigService) getService("config")).getTheme().colorPrimary();
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

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        if (searchBar != null && searchBar.getEditText() != null) {
            SoftKeyboard.hideSoftKeyboard(searchBar.getEditText());
        }
        logSearchEvent(SearchLog.builder(this, str).build());
        ActivityResultCaller currentFragment = getCurrentFragment();
        if (currentFragment instanceof SearchBar.OnSearchListener) {
            ((SearchBar.OnSearchListener) currentFragment).onSearch(searchBar, str);
        }
    }

    private String getCurrentSearchType() {
        int indexOfRealPosition = getIndexOfRealPosition(getCurIndex());
        if (indexOfRealPosition != 1) {
            if (indexOfRealPosition != 2) {
                if (indexOfRealPosition != 3) {
                    return "";
                }
                return "chats";
            }
            return "users";
        }
        return "posts";
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
        getActivity().getWindow().setSoftInputMode(3);
        this.configHelper = new CommunityConfigHelper(this);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_search_keyword, viewGroup, false);
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
        SearchBar searchBar = (SearchBar) view.findViewById(R.id.search);
        this.searchBar = searchBar;
        searchBar.setOnSearchListener(this);
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
