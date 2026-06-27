package com.narvii.community.search;

import android.app.ActionBar;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.lib.R;
import com.narvii.list.NVListFragment;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.widget.SearchBar;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public abstract class BaseSearchListFragment extends NVListFragment implements FragmentOnBackListener, SearchBar.OnSearchListener {
    private static final String KEY_QUERY_KEY = "queryKey";
    private static final String KEY_SEARCH_LANGUAGE = "language";
    private static final String KEY_SHOW_MY_COMMUNITY = "showMyCommunity";
    private static final String KEY_SHOW_TRENDING = "showTrending";
    private static final Pattern PTN = Pattern.compile("[\\d\\w]{10}");
    private static final String TAG = "BaseSearchListFragment";
    protected String curQueryKey;
    protected String inviteCode;
    protected boolean pendingSearch;
    final Runnable refresh = new Runnable() { // from class: com.narvii.community.search.BaseSearchListFragment.2
        @Override // java.lang.Runnable
        public void run() {
            BaseSearchListFragment.this.onRealTimeSearch();
            BaseSearchListFragment.this.pendingSearch = false;
        }
    };
    protected String searchLanguage;
    protected boolean showMyCommunity;
    protected boolean showTrending;

    @Override // com.narvii.list.NVListFragment
    protected abstract ListAdapter createAdapter(Bundle bundle);

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        return false;
    }

    protected void onRealTimeSearch() {
    }

    protected void onSearchButtonClicked() {
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActionBar actionBar = getActivity().getActionBar();
        if (actionBar != null) {
            actionBar.hide();
        }
        if (bundle == null) {
            this.showMyCommunity = getBooleanParam(KEY_SHOW_MY_COMMUNITY, NVApplication.CLIENT_TYPE == 100);
            this.showTrending = getBooleanParam(KEY_SHOW_TRENDING, true);
            this.searchLanguage = getStringParam("language");
            this.curQueryKey = getStringParam(KEY_QUERY_KEY);
            return;
        }
        this.showMyCommunity = bundle.getBoolean(KEY_SHOW_MY_COMMUNITY, NVApplication.CLIENT_TYPE == 100);
        this.showTrending = bundle.getBoolean(KEY_SHOW_TRENDING, true);
        this.searchLanguage = bundle.getString("language");
        this.curQueryKey = bundle.getString(KEY_QUERY_KEY);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.community_search_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        setUpEmptyView();
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(NVListFragment.STATE_PRESSED, new ColorDrawable(872415231));
        stateListDrawable.addState(NVListFragment.STATE_FOCUSED, new ColorDrawable(872415231));
        stateListDrawable.addState(NVListFragment.STATE_NORMAL, new ColorDrawable(0));
        return stateListDrawable;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
        listView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.community.search.BaseSearchListFragment.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                if (i != 0) {
                    try {
                        if (((InputMethodManager) BaseSearchListFragment.this.getContext().getSystemService("input_method")).isAcceptingText()) {
                            SoftKeyboard.hideSoftKeyboard(BaseSearchListFragment.this.getContext());
                        }
                    } catch (Exception e) {
                        Log.e("fail to hide keyboard", e);
                    }
                }
            }
        });
    }

    protected void setUpEmptyView() {
        ((TextView) setEmptyView(R.layout.incubator_search_no_trending_empty_view).findViewById(R.id.empty_content)).setText(TextUtils.isEmpty(this.curQueryKey) ? getString(R.string.search_zero_info1) : getString(R.string.search_empty_info1));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(KEY_SHOW_MY_COMMUNITY, this.showMyCommunity);
        bundle.putBoolean(KEY_SHOW_TRENDING, this.showTrending);
        bundle.putString("language", this.searchLanguage);
        bundle.putString(KEY_QUERY_KEY, this.curQueryKey);
    }

    public void onTextChanged(SearchBar searchBar, String str) {
        if (Utils.isStringEquals(str, this.curQueryKey)) {
            return;
        }
        Utils.handler.removeCallbacks(this.refresh);
        this.curQueryKey = str;
        this.pendingSearch = !TextUtils.isEmpty(this.curQueryKey);
        if (this.curQueryKey != null) {
            Utils.postDelayed(this.refresh, 300L);
        }
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        onSearchButtonClicked();
    }

    protected boolean isAminoCommunityLink(String str) {
        return isAminoCommunityLink(str, false);
    }

    protected boolean isInviteLink(String str) {
        return isAminoCommunityLink(str, true);
    }

    private boolean isAminoCommunityLink(String str, boolean z) {
        try {
            Uri uri = Uri.parse(str);
            if (("http".equals(uri.getScheme()) || "https".equals(uri.getScheme())) && new PackageUtils(null).isPermalinkHost(uri.getHost())) {
                List<String> pathSegments = uri.getPathSegments();
                if (!z && pathSegments.size() > 1 && "c".equalsIgnoreCase(pathSegments.get(0))) {
                    return true;
                }
                if (pathSegments.size() > 1 && "invite".equalsIgnoreCase(pathSegments.get(0)) && PTN.matcher(pathSegments.get(1)).matches()) {
                    this.inviteCode = pathSegments.get(1);
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
