package com.narvii.community;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVFragment;
import com.narvii.community.search.BaseSearchListFragment;
import com.narvii.community.search.SearchCommunityListResponse;
import com.narvii.lib.R;
import com.narvii.list.MergeAdapter;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.master.search.ChangeSearchTextListener;
import com.narvii.master.search.ChangeSearchTextRegister;
import com.narvii.model.Community;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.SearchBar;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public abstract class BaseCommunitySearchListFragment extends BaseSearchListFragment implements SearchBar.OnSearchEditTouchUpListener, ChangeSearchTextRegister {
    protected ChangeSearchTextListener changeSearchTextListener;
    protected String searchId;

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    protected abstract MatchedCommunityAdapter matchedCommunityAdapter();

    protected void notifyAllAdapters() {
    }

    @Override // com.narvii.widget.SearchBar.OnSearchEditTouchUpListener
    public void onEditTouchUp() {
    }

    protected void onSearch(String str) {
    }

    @Override // com.narvii.community.search.BaseSearchListFragment, com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        super.onTextChanged(searchBar, str);
        if (TextUtils.isEmpty(str)) {
            notifyAllAdapters();
        }
    }

    protected String getCurSearchLanguage() {
        return Locale.getDefault().getLanguage();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public class TrendingCommunityAdapter extends CommunityListWithSectionAdapter {
        @Override // com.narvii.community.BaseCommunityListAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        public TrendingCommunityAdapter() {
            super(BaseCommunitySearchListFragment.this);
            setDarkTheme(true, ((NVFragment) BaseCommunitySearchListFragment.this)._backgroundColor);
        }

        @Override // com.narvii.community.BaseCommunityListAdapter
        protected String getSearchLanguage() {
            return BaseCommunitySearchListFragment.this.getCurSearchLanguage();
        }

        @Override // com.narvii.community.CommunityListWithSectionAdapter
        protected String sectionName() {
            return BaseCommunitySearchListFragment.this.isAdded() ? BaseCommunitySearchListFragment.this.getString(R.string.trending) : "";
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            if (((BaseSearchListFragment) BaseCommunitySearchListFragment.this).showTrending) {
                return super.isListShown();
            }
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (((BaseSearchListFragment) BaseCommunitySearchListFragment.this).showTrending) {
                return super.isEmpty();
            }
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (((BaseSearchListFragment) BaseCommunitySearchListFragment.this).showTrending && TextUtils.isEmpty(((BaseSearchListFragment) BaseCommunitySearchListFragment.this).curQueryKey)) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (!((BaseSearchListFragment) BaseCommunitySearchListFragment.this).showTrending) {
                return null;
            }
            ApiRequest.Builder builderGlobal = ApiRequest.builder().global();
            builderGlobal.path("/community/trending");
            builderGlobal.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, BaseCommunitySearchListFragment.this.getCurSearchLanguage());
            return builderGlobal.build();
        }
    }

    protected class MatchedCommunityAdapter extends CommunityArrayListWithSectionAdapter {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "MatchedAminos";
        }

        public MatchedCommunityAdapter() {
            super(BaseCommunitySearchListFragment.this, Community.class);
            addImpressionCollector(new LinearImpressionCollector(Community.class));
        }

        @Override // com.narvii.community.CommunityArrayListWithSectionAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Community item = getItem(i);
            if (item.listedStatus != 901) {
                View viewCreateView = createView(R.layout.item_community_card_base, viewGroup, view);
                configCommunityCard(viewCreateView, item);
                tagCellForLog(viewCreateView, item);
                return viewCreateView;
            }
            return super.getView(i, view, viewGroup);
        }

        @Override // com.narvii.list.NVArrayAdapter, android.widget.Adapter
        public int getCount() {
            return super.getCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public class SearchResultCommunityAdapter extends CommunityListWithSectionAdapter {
        private Community matchedCommunity;

        protected void completeRequestBuilder(ApiRequest.Builder builder) {
        }

        @Override // com.narvii.community.BaseCommunityListAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        public SearchResultCommunityAdapter() {
            super(BaseCommunitySearchListFragment.this);
            setDarkTheme(true, ((NVFragment) BaseCommunitySearchListFragment.this)._backgroundColor);
        }

        @Override // com.narvii.community.BaseCommunityListAdapter
        protected String getSearchLanguage() {
            return BaseCommunitySearchListFragment.this.getCurSearchLanguage();
        }

        @Override // com.narvii.community.CommunityListWithSectionAdapter
        protected String sectionName() {
            return BaseCommunitySearchListFragment.this.getString(R.string.community_search_keywords);
        }

        @Override // com.narvii.community.CommunityListWithSectionAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(((BaseSearchListFragment) BaseCommunitySearchListFragment.this).curQueryKey)) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void resetList() {
            this.matchedCommunity = null;
            super.resetList();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return super.isListShown() || this.matchedCommunity != null;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return super.isEmpty() && this.matchedCommunity == null;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (TextUtils.isEmpty(((BaseSearchListFragment) BaseCommunitySearchListFragment.this).curQueryKey)) {
                this._list = null;
                this._isEnd = true;
                notifyDataSetChanged();
                return null;
            }
            ApiRequest.Builder builderGlobal = ApiRequest.builder().global();
            builderGlobal.path("/community/search");
            builderGlobal.param("q", ((BaseSearchListFragment) BaseCommunitySearchListFragment.this).curQueryKey);
            completeRequestBuilder(builderGlobal);
            builderGlobal.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, getSearchLanguage());
            builderGlobal.param("completeKeyword", 1);
            if (z) {
                builderGlobal.tag("start0");
            }
            return builderGlobal.build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, SearchCommunityListResponse searchCommunityListResponse, int i) {
            if ("start0".equals(apiRequest.tag())) {
                this.matchedCommunity = searchCommunityListResponse.endpointMatchedCommunity;
                if (BaseCommunitySearchListFragment.this.matchedCommunityAdapter() != null) {
                    if (this.matchedCommunity != null) {
                        ArrayList<Community> arrayList = new ArrayList<>();
                        Community community = new Community();
                        community.name = BaseCommunitySearchListFragment.this.getString(R.string.community_search_matched);
                        community.listedStatus = 901;
                        arrayList.add(community);
                        arrayList.add(this.matchedCommunity);
                        BaseCommunitySearchListFragment.this.matchedCommunityAdapter().setList(arrayList);
                    } else {
                        BaseCommunitySearchListFragment.this.matchedCommunityAdapter().setList(new ArrayList<>());
                    }
                }
            }
            super.onPageResponse(apiRequest, (ApiRequest) searchCommunityListResponse, i);
        }

        @Override // com.narvii.community.BaseCommunityListAdapter, com.narvii.list.NVPagedAdapter
        protected List<Community> filterResponseList(List<Community> list, int i) {
            List<Community> listFilterResponseList = super.filterResponseList(list, i);
            if (this.matchedCommunity != null && listFilterResponseList != null && BaseCommunitySearchListFragment.this.matchedCommunityAdapter() != null) {
                Iterator<Community> it = listFilterResponseList.iterator();
                while (it.hasNext()) {
                    if (this.matchedCommunity.id == it.next().id) {
                        it.remove();
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            String searchLanguage = getSearchLanguage();
            if ("en".equals(searchLanguage)) {
                arrayList.addAll(listFilterResponseList);
            } else {
                for (Community community : listFilterResponseList) {
                    if (Utils.isEquals(searchLanguage, community.primaryLanguage)) {
                        arrayList.add(community);
                    }
                }
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public class CommunitySeachMergeAdapter extends MergeAdapter {
        public CommunitySeachMergeAdapter() {
            super(BaseCommunitySearchListFragment.this);
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return super.isListShown();
        }

        @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return super.isEmpty();
        }
    }

    @Override // com.narvii.community.search.BaseSearchListFragment
    protected void onSearchButtonClicked() {
        super.onSearchButtonClicked();
        SoftKeyboard.hideSoftKeyboard(getContext());
        onSearch(this.curQueryKey);
    }

    protected void jumpToSearchResultView() {
        notifyAllAdapters();
    }

    @Override // com.narvii.master.search.ChangeSearchTextRegister
    public void setChangeSearchTextListener(ChangeSearchTextListener changeSearchTextListener) {
        this.changeSearchTextListener = changeSearchTextListener;
    }
}
