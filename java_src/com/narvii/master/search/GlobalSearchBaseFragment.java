package com.narvii.master.search;

import android.app.ActionBar;
import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.master.CommunitySearchListFragment;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.search.ISearchBarHost;
import com.narvii.util.Log;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.SearchBar;
import com.narvii.widget.TintButton;
import java.util.HashMap;
import java.util.UUID;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GlobalSearchBaseFragment.kt */
/* loaded from: classes3.dex */
public final class GlobalSearchBaseFragment extends NVFragment implements ChangeSearchTextListener, ISearchBarHost {
    public static final Companion Companion = new Companion(null);
    public static final int INDEX_CHAT = 6;
    public static final int INDEX_COMMUNITY = 1;
    public static final int INDEX_MY_CHAT = 7;
    public static final int INDEX_POST = 5;
    public static final int INDEX_STORY = 3;
    public static final int INDEX_TOPIC = 4;
    public static final int INDEX_USER = 2;
    private HashMap _$_findViewCache;
    private Fragment currentFragment;
    private TintButton searchBack;
    private SearchBar searchBar;
    private Button searchCancel;
    private String searchId;
    private String searchKey = "";
    private EditText searchText;
    private int sectionType;

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
        return "GlobalSingleSearch";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.search.ISearchBarHost
    public void onSwitchSearch(NVFragment nVFragment, String str) {
    }

    /* compiled from: GlobalSearchBaseFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        ActionBar actionBar;
        super.onCreate(bundle);
        this.sectionType = getIntParam("section_type");
        this.searchKey = getStringParam("search_key");
        if (bundle != null) {
            String str = this.searchKey;
            if (str == null) {
                str = "";
            }
            this.searchKey = bundle.getString("search_key", str);
        }
        FragmentActivity activity = getActivity();
        if (activity == null || (actionBar = activity.getActionBar()) == null) {
            return;
        }
        actionBar.hide();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_search_base, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
        this.searchBar = (SearchBar) view.findViewById(R.id.search_bar);
        StatusBarUtils.addMarginTopToContentChild(_$_findCachedViewById(com.narvii.amino.R.id.search_bar), getStatusBarOverlaySize());
        this.searchBack = (TintButton) view.findViewById(R.id.search_back);
        TintButton tintButton = this.searchBack;
        if (tintButton != null) {
            tintButton.setVisibility(0);
        }
        TintButton tintButton2 = this.searchBack;
        if (tintButton2 != null) {
            tintButton2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.search.GlobalSearchBaseFragment.onViewCreated.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GlobalSearchBaseFragment.this.finish();
                }
            });
        }
        this.searchText = (EditText) view.findViewById(R.id.search_text);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.master.search.GlobalSearchBaseFragment.onViewCreated.2
            @Override // java.lang.Runnable
            public final void run() {
                EditText editText = GlobalSearchBaseFragment.this.searchText;
                if (editText != null) {
                    editText.setText(GlobalSearchBaseFragment.this.searchKey);
                }
                EditText editText2 = GlobalSearchBaseFragment.this.searchText;
                if (editText2 != null) {
                    String str = GlobalSearchBaseFragment.this.searchKey;
                    editText2.setSelection(str != null ? str.length() : 0);
                }
            }
        }, 200L);
        this.searchCancel = (Button) view.findViewById(R.id.search_cancel);
        Button button = this.searchCancel;
        if (button != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.search.GlobalSearchBaseFragment.onViewCreated.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GlobalSearchBaseFragment.this.finish();
                }
            });
        }
        String str = this.searchKey;
        if (str != null) {
            logSearchEvent(SearchLog.builder(this, str).build());
        }
        replaceContainer();
        SearchBar searchBar = this.searchBar;
        if (searchBar != null) {
            searchBar.setOnSearchListener(new SearchBar.OnSearchListener() { // from class: com.narvii.master.search.GlobalSearchBaseFragment.onViewCreated.4
                @Override // com.narvii.widget.SearchBar.OnSearchListener
                public void onTextChanged(SearchBar searchBar2, String str2) {
                    if (GlobalSearchBaseFragment.this.currentFragment instanceof SearchBar.OnSearchListener) {
                        ComponentCallbacks componentCallbacks = GlobalSearchBaseFragment.this.currentFragment;
                        if (componentCallbacks == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.SearchBar.OnSearchListener");
                        }
                        ((SearchBar.OnSearchListener) componentCallbacks).onTextChanged(searchBar2, str2);
                    }
                }

                @Override // com.narvii.widget.SearchBar.OnSearchListener
                public void onSearch(SearchBar searchBar2, String str2) {
                    GlobalSearchBaseFragment globalSearchBaseFragment = GlobalSearchBaseFragment.this;
                    globalSearchBaseFragment.logSearchEvent(SearchLog.builder(globalSearchBaseFragment, str2).build());
                    if (GlobalSearchBaseFragment.this.currentFragment instanceof SearchBar.OnSearchListener) {
                        ComponentCallbacks componentCallbacks = GlobalSearchBaseFragment.this.currentFragment;
                        if (componentCallbacks == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.SearchBar.OnSearchListener");
                        }
                        ((SearchBar.OnSearchListener) componentCallbacks).onSearch(searchBar2, str2);
                    }
                    SoftKeyboard.hideSoftKeyboard(GlobalSearchBaseFragment.this.getContext());
                }
            });
        }
        SearchBar searchBar2 = this.searchBar;
        setEditTextHint(searchBar2 != null ? (EditText) searchBar2.findViewById(R.id.search_text) : null);
        if (getBooleanParam("showKeyboard")) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.master.search.GlobalSearchBaseFragment.onViewCreated.5
                @Override // java.lang.Runnable
                public final void run() {
                    SearchBar searchBar3 = GlobalSearchBaseFragment.this.searchBar;
                    if (searchBar3 != null) {
                        searchBar3.showKeyboard();
                    }
                }
            }, 100L);
        }
    }

    @Override // com.narvii.master.search.ChangeSearchTextListener
    public void changeSearchText(String str, boolean z) {
        EditText editText;
        SearchBar searchBar = this.searchBar;
        if (searchBar == null || searchBar == null || (editText = searchBar.getEditText()) == null) {
            return;
        }
        editText.setText(str);
        editText.setSelection(str != null ? str.length() : 0);
        SoftKeyboard.hideSoftKeyboard(editText);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        EditText editText;
        Intrinsics.checkParameterIsNotNull(outState, "outState");
        super.onSaveInstanceState(outState);
        SearchBar searchBar = this.searchBar;
        if (searchBar == null || (editText = searchBar.getEditText()) == null) {
            return;
        }
        outState.putString("search_key", editText.getText().toString());
    }

    private final void setEditTextHint(EditText editText) {
        if (editText != null) {
            editText.setHint(this.sectionType != 7 ? R.string.search : R.string.search_my_chats);
        }
    }

    private final void replaceContainer() {
        Fragment communitySearchListFragment;
        switch (this.sectionType) {
            case 1:
                communitySearchListFragment = new CommunitySearchListFragment();
                break;
            case 2:
                communitySearchListFragment = new GlobalUserSearchFragment();
                break;
            case 3:
                communitySearchListFragment = new GlobalStorySearchListFragment();
                break;
            case 4:
                communitySearchListFragment = new GlobalTopicSearchFragment();
                break;
            case 5:
                communitySearchListFragment = new GlobalPostSearchListFragment();
                break;
            case 6:
                communitySearchListFragment = new GlobalChatsSearchFragment();
                break;
            case 7:
                communitySearchListFragment = new GlobalMyChatsSearchFragment();
                break;
            default:
                communitySearchListFragment = null;
                break;
        }
        this.currentFragment = communitySearchListFragment;
        ComponentCallbacks componentCallbacks = this.currentFragment;
        if (componentCallbacks instanceof ChangeSearchTextRegister) {
            ((ChangeSearchTextRegister) componentCallbacks).setChangeSearchTextListener(this);
        }
        Bundle bundle = new Bundle();
        bundle.putString("search_key", this.searchKey);
        bundle.putBoolean("hide_match_id_adapter", true);
        if (this.sectionType == 1) {
            bundle.putBoolean(CommunitySearchListFragment.KEY_IS_RESUT_PAGE, true);
        }
        Fragment fragment = this.currentFragment;
        if (fragment != null) {
            fragment.setArguments(bundle);
        }
        if (this.currentFragment != null) {
            FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
            Fragment fragment2 = this.currentFragment;
            if (fragment2 != null) {
                fragmentTransactionBeginTransaction.replace(R.id.search_container, fragment2).commitAllowingStateLoss();
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
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
    public String getSearchId(Fragment fragment) {
        if (this.searchId == null) {
            Log.e("search", "searchId is null");
        }
        return this.searchId;
    }

    private final String getCurrentSearchType() {
        switch (this.sectionType) {
            case 1:
                return "communities";
            case 2:
                return "users";
            case 3:
                return "stories";
            case 4:
                return "topics";
            case 5:
                return "posts";
            case 6:
                return "chats";
            case 7:
                return "myChats";
            default:
                return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logSearchEvent(SearchLog searchLog) {
        if (searchLog == null || TextUtils.isEmpty(searchLog.keyword)) {
            return;
        }
        String string = UUID.randomUUID().toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "UUID.randomUUID().toString()");
        this.searchId = string;
        LogEvent.Builder builderObjectType = LogEvent.clickBuilder(searchLog.nvContext, ActSemantic.search).extraParam("inputText", searchLog.keyword).objectType(ObjectType.query);
        String str = searchLog.area;
        if (str == null) {
            str = "InputArea";
        }
        builderObjectType.area(str).extraParam("searchType", getCurrentSearchType()).extraParam("searchId", string).extraParam("instantSearch", Boolean.valueOf(searchLog.instant)).send();
    }
}
