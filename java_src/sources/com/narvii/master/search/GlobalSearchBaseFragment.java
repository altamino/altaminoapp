package com.narvii.master.search;

import android.app.ActionBar;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import androidx.activity.result.ActivityResultCaller;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.amino.databinding.FragmentSearchBaseBinding;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.master.CommunitySearchListFragment;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.search.ISearchBarHost;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.Log;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.SearchBar;
import com.narvii.widget.TintButton;
import java.util.UUID;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class GlobalSearchBaseFragment extends NVFragment implements ChangeSearchTextListener, ISearchBarHost {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(GlobalSearchBaseFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentSearchBaseBinding;", 0))};

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int INDEX_CHAT = 5;
    public static final int INDEX_COMMUNITY = 1;
    public static final int INDEX_MY_CHAT = 6;
    public static final int INDEX_POST = 4;
    public static final int INDEX_TOPIC = 3;
    public static final int INDEX_USER = 2;

    @Nullable
    private Fragment currentFragment;

    @Nullable
    private TintButton searchBack;

    @Nullable
    private SearchBar searchBar;

    @Nullable
    private Button searchCancel;

    @Nullable
    private String searchId;

    @Nullable
    private EditText searchText;
    private int sectionType;

    @Nullable
    private String searchKey = "";

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, GlobalSearchBaseFragment$binding$2.INSTANCE);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    private final String getCurrentSearchType() {
        switch (this.sectionType) {
            case 1:
                return "communities";
            case 2:
                return "users";
            case 3:
                return "topics";
            case 4:
                return "posts";
            case 5:
                return "chats";
            case 6:
                return "myChats";
            default:
                return "";
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "global_single_search";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.search.ISearchBarHost
    public void onSwitchSearch(@Nullable NVFragment nVFragment, @Nullable String str) {
    }

    private final FragmentSearchBaseBinding getBinding() {
        return (FragmentSearchBaseBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logSearchEvent(SearchLog searchLog) {
        if (searchLog == null || TextUtils.isEmpty(searchLog.keyword)) {
            return;
        }
        String string = UUID.randomUUID().toString();
        t.i(string, "toString(...)");
        this.searchId = string;
        LogEvent.Builder builderObjectType = LogEvent.clickBuilder(searchLog.nvContext, ActSemantic.search).extraParam("inputText", searchLog.keyword).objectType(ObjectType.query);
        String str = searchLog.area;
        if (str == null) {
            str = "InputArea";
        }
        builderObjectType.area(str).extraParam("searchType", getCurrentSearchType()).extraParam("searchId", string).extraParam("instantSearch", Boolean.valueOf(searchLog.instant)).send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(GlobalSearchBaseFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2(GlobalSearchBaseFragment this$0) {
        t.j(this$0, "this$0");
        EditText editText = this$0.searchText;
        if (editText != null) {
            editText.setText(this$0.searchKey);
        }
        EditText editText2 = this$0.searchText;
        if (editText2 != null) {
            String str = this$0.searchKey;
            editText2.setSelection(str != null ? str.length() : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(GlobalSearchBaseFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$4(GlobalSearchBaseFragment this$0) {
        t.j(this$0, "this$0");
        SearchBar searchBar = this$0.searchBar;
        if (searchBar != null) {
            searchBar.showKeyboard();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.fragment.app.Fragment] */
    private final void replaceContainer() {
        ?? communitySearchListFragment;
        switch (this.sectionType) {
            case 1:
                communitySearchListFragment = new CommunitySearchListFragment();
                break;
            case 2:
                communitySearchListFragment = new GlobalUserSearchFragment();
                break;
            case 3:
                communitySearchListFragment = new GlobalTopicSearchFragment();
                break;
            case 4:
                communitySearchListFragment = new GlobalPostSearchListFragment();
                break;
            case 5:
                communitySearchListFragment = new GlobalChatsSearchFragment();
                break;
            case 6:
                communitySearchListFragment = new GlobalMyChatsSearchFragment();
                break;
            default:
                communitySearchListFragment = 0;
                break;
        }
        this.currentFragment = communitySearchListFragment;
        if (communitySearchListFragment instanceof ChangeSearchTextRegister) {
            ((ChangeSearchTextRegister) communitySearchListFragment).setChangeSearchTextListener(this);
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
            FragmentTransaction fragmentTransactionQ = getChildFragmentManager().q();
            Fragment fragment2 = this.currentFragment;
            t.g(fragment2);
            fragmentTransactionQ.u(R.id.search_container, fragment2).k();
        }
    }

    private final void setEditTextHint(EditText editText) {
        if (editText != null) {
            editText.setHint(this.sectionType == 6 ? R.string.search_my_chats : R.string.search);
        }
    }

    @Override // com.narvii.master.search.ChangeSearchTextListener
    public void changeSearchText(@Nullable String str, boolean z6) {
        EditText editText;
        SearchBar searchBar = this.searchBar;
        if (searchBar == null || searchBar == null || (editText = searchBar.getEditText()) == null) {
            return;
        }
        editText.setText(str);
        editText.setSelection(str != null ? str.length() : 0);
        SoftKeyboard.hideSoftKeyboard(editText);
    }

    @Override // com.narvii.search.ISearchBarHost
    @Nullable
    public String getSearchId(@Nullable Fragment fragment) {
        if (this.searchId == null) {
            Log.e("search", "searchId is null");
        }
        return this.searchId;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        EditText editText;
        t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        SearchBar searchBar = this.searchBar;
        if (searchBar == null || (editText = searchBar.getEditText()) == null) {
            return;
        }
        outState.putString("search_key", editText.getText().toString());
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
        this.searchBar = (SearchBar) view.findViewById(R.id.search_bar);
        StatusBarUtils.addMarginTopToContentChild(getBinding().searchBar.getRoot(), getStatusBarOverlaySize());
        TintButton tintButton = (TintButton) view.findViewById(R.id.search_back);
        this.searchBack = tintButton;
        if (tintButton != null) {
            tintButton.setVisibility(0);
        }
        TintButton tintButton2 = this.searchBack;
        if (tintButton2 != null) {
            tintButton2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.search.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GlobalSearchBaseFragment.onViewCreated$lambda$1(this.f2408a, view2);
                }
            });
        }
        this.searchText = (EditText) view.findViewById(R.id.search_text);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.master.search.g
            @Override // java.lang.Runnable
            public final void run() {
                GlobalSearchBaseFragment.onViewCreated$lambda$2(this.f2409a);
            }
        }, 200L);
        Button button = (Button) view.findViewById(R.id.search_cancel);
        this.searchCancel = button;
        if (button != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.search.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GlobalSearchBaseFragment.onViewCreated$lambda$3(this.f2410a, view2);
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
                public void onSearch(@Nullable SearchBar searchBar2, @Nullable String str2) {
                    GlobalSearchBaseFragment globalSearchBaseFragment = GlobalSearchBaseFragment.this;
                    globalSearchBaseFragment.logSearchEvent(SearchLog.builder(globalSearchBaseFragment, str2).build());
                    if (GlobalSearchBaseFragment.this.currentFragment instanceof SearchBar.OnSearchListener) {
                        ActivityResultCaller activityResultCaller = GlobalSearchBaseFragment.this.currentFragment;
                        t.h(activityResultCaller, "null cannot be cast to non-null type com.narvii.widget.SearchBar.OnSearchListener");
                        ((SearchBar.OnSearchListener) activityResultCaller).onSearch(searchBar2, str2);
                    }
                    SoftKeyboard.hideSoftKeyboard(GlobalSearchBaseFragment.this.getContext());
                }

                @Override // com.narvii.widget.SearchBar.OnSearchListener
                public void onTextChanged(@Nullable SearchBar searchBar2, @Nullable String str2) {
                    if (GlobalSearchBaseFragment.this.currentFragment instanceof SearchBar.OnSearchListener) {
                        ActivityResultCaller activityResultCaller = GlobalSearchBaseFragment.this.currentFragment;
                        t.h(activityResultCaller, "null cannot be cast to non-null type com.narvii.widget.SearchBar.OnSearchListener");
                        ((SearchBar.OnSearchListener) activityResultCaller).onTextChanged(searchBar2, str2);
                    }
                }
            });
        }
        SearchBar searchBar2 = this.searchBar;
        setEditTextHint(searchBar2 != null ? (EditText) searchBar2.findViewById(R.id.search_text) : null);
        if (getBooleanParam("showKeyboard")) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.master.search.i
                @Override // java.lang.Runnable
                public final void run() {
                    GlobalSearchBaseFragment.onViewCreated$lambda$4(this.f2415a);
                }
            }, 100L);
        }
    }

    @Override // com.narvii.search.ISearchBarHost
    public void onChildFragmentRealtimeSearch(@Nullable NVFragment nVFragment, @Nullable String str) {
        logSearchEvent(SearchLog.builder(this, str).instant().build());
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        ActionBar actionBar;
        super.onCreate(bundle);
        this.sectionType = getIntParam("section_type");
        String stringParam = getStringParam("search_key");
        this.searchKey = stringParam;
        if (bundle != null) {
            if (stringParam == null) {
                stringParam = "";
            }
            this.searchKey = bundle.getString("search_key", stringParam);
        }
        FragmentActivity activity = getActivity();
        if (activity != null && (actionBar = activity.getActionBar()) != null) {
            actionBar.hide();
        }
    }

    @Override // com.narvii.search.ISearchBarHost
    public void onSearchFromHistory(@Nullable NVFragment nVFragment, @Nullable String str) {
        logSearchEvent(SearchLog.builder(nVFragment, str).area("SearchHistory").build());
    }
}
