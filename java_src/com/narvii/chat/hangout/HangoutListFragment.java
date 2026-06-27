package com.narvii.chat.hangout;

import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.hangout.HangoutFilterDialog;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.config.ConfigService;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.SwitchAdapter;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.livelayer.detailview.OnlineChatThread;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatThread;
import com.narvii.model.PlayList;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.search.InstantSearchListener;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVListView;
import com.narvii.widget.SearchBar;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class HangoutListFragment extends NVListFragment {
    public static final int FILTER_ALL = 1;
    public static final int FILTER_OPEN = 0;
    private OpenChatAdapter chatListAdapter;
    private FilterHelper filterHelper;
    private ProgressDialog filterProgress;
    private TextView filterText;
    private View filterView;
    InstantSearchListener instantSearchListener;
    private volatile int runningTaskCount;
    SearchBar searchBar;
    public SearchResultAdapter searchResultAdapter;
    SwitchAdapter switchAdapter;
    int filter = 0;
    private int filterIndex = 0;

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return null;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "PublicChatroom";
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSwipeRefreshFlag() {
        return 512;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isPageBackgroundEnabled() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected boolean observeThemeDownloadFinish() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean shouldShowPageBackground() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setEmptyView(R.layout.empty_view_top);
    }

    @Override // com.narvii.list.NVListFragment
    public View setEmptyView(int i) {
        View emptyView = super.setEmptyView(i);
        View viewFindViewById = emptyView.findViewById(R.id.empty_text);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setTextColor((isDarkTheme() || isDarkNVTheme()) ? -2130706433 : getResources().getColor(R.color.empty_text_color));
        }
        return emptyView;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getActivity().getWindow().setSoftInputMode(48);
        this.instantSearchListener = new InstantSearchListener();
        this.filterHelper = new FilterHelper(this);
        if (bundle == null) {
            this.filter = getIntParam("filter", 0);
        } else {
            this.filter = bundle.getInt("filter");
        }
        setHasOptionsMenu(true);
        if (!TextUtils.isEmpty(getStringParam("title"))) {
            setTitle(getStringParam("title"));
        } else {
            setTitle(R.string.page_public_chatroom);
        }
        setScrollToHideKeyboard(true);
        setDarkTheme(true);
        if (((ConfigService) getService("config")).getCommunityId() == 0) {
            finish();
        }
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.hangout_list_layout, viewGroup, false);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (!isEmbedFragment()) {
            View viewInflate = getLayoutInflater().inflate(R.layout.actionbar_filter_btn, (ViewGroup) null);
            this.filterView = viewInflate.findViewById(R.id.filter_view);
            this.filterText = (TextView) viewInflate.findViewById(R.id.filter_text);
            this.filterView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.hangout.-$$Lambda$HangoutListFragment$vnYyYhGis8XKao0U6UfMfh5450g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$onCreateOptionsMenu$0$HangoutListFragment(view);
                }
            });
            menu.add(0, R.string.edit_amino_id, 0, R.string.edit_amino_id).setActionView(viewInflate).setShowAsAction(2);
        }
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return isEmbedFragment();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("filter", this.filter);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        ((LiveLayerService) getService("liveLayer")).reportBrowsing("public-chats", z);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        if (this.filterView == null) {
            this.filterView = view.findViewById(R.id.filter_view);
        }
        if (this.filterText == null) {
            this.filterText = (TextView) view.findViewById(R.id.filter_text);
        }
        getListView().setDivider(null);
        getListView().setDividerHeight(1);
        ConfigService configService = (ConfigService) getService("config");
        View viewFindViewById = view.findViewById(R.id.empty_retry);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.hangout.HangoutListFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TextUtils.isEmpty(HangoutListFragment.this.instantSearchListener.getKeyword())) {
                        if (HangoutListFragment.this.getListAdapter() instanceof NVAdapter) {
                            ((NVAdapter) HangoutListFragment.this.getListAdapter()).refresh(2, null);
                        }
                    } else {
                        SearchResultAdapter searchResultAdapter = HangoutListFragment.this.searchResultAdapter;
                        if (searchResultAdapter != null) {
                            searchResultAdapter.refresh(2, null);
                        }
                    }
                }
            });
        }
        if (getListView() instanceof NVListView) {
            ((NVListView) getListView()).setListContentBackground(new ColorDrawable(configService.getTheme().colorPrimary()));
        }
        View view2 = this.filterView;
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.hangout.-$$Lambda$HangoutListFragment$3oenyMG5yb5WKaz3OcMn0sKDrcg
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    this.f$0.lambda$onViewCreated$1$HangoutListFragment(view3);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showFilterDialog, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$onViewCreated$1$HangoutListFragment(View view) {
        HangoutFilterDialog hangoutFilterDialog = new HangoutFilterDialog(getContext());
        hangoutFilterDialog.setPosition(view);
        hangoutFilterDialog.setOnItemClickListener(new HangoutFilterDialog.OnItemClickListener() { // from class: com.narvii.chat.hangout.-$$Lambda$HangoutListFragment$xO_VotberQXONt3KID8IN6O0i-o
            @Override // com.narvii.chat.hangout.HangoutFilterDialog.OnItemClickListener
            public final void onItemClick(int i, View view2) {
                this.f$0.lambda$showFilterDialog$2$HangoutListFragment(i, view2);
            }
        });
        hangoutFilterDialog.show();
    }

    public /* synthetic */ void lambda$showFilterDialog$2$HangoutListFragment(int i, View view) {
        this.filterIndex = i;
        if (i == 0) {
            this.filterText.setText(R.string.recommended);
        } else if (i == 1) {
            this.filterText.setText(R.string.popular);
        } else if (i == 2) {
            this.filterText.setText(R.string.latest);
        }
        LogEvent.clickWildcardBuilder(this, "ChatFilter").extraParam("filterType", getFitlerType()).send();
        if (this.chatListAdapter != null) {
            this.filterProgress = new ProgressDialog(getContext());
            this.filterProgress.setCanceledOnTouchOutside(false);
            this.filterProgress.setCancelable(false);
            this.filterProgress.show();
            this.chatListAdapter.refresh(512, null);
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return ViewUtils.getBannerLift(this, 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getFitlerType() {
        int i = this.filterIndex;
        return i == 0 ? "recommended" : i == 1 ? "popular" : i == 2 ? "latest" : "recommended";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        Callback<Integer> callback = new Callback<Integer>() { // from class: com.narvii.chat.hangout.HangoutListFragment.2
            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                ((NVListFragment) HangoutListFragment.this).swipeLayout.setRefreshing(false);
            }
        };
        SwitchAdapter switchAdapter = this.switchAdapter;
        if (switchAdapter != null) {
            switchAdapter.refresh(512, callback);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.chatListAdapter = new OpenChatAdapter();
        int iDpToPx = (int) Utils.dpToPx(getContext(), 15.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPx, 0, iDpToPx, 0);
        divideColumnAdapter.setAdapter(this.chatListAdapter, 2);
        this.switchAdapter = new SwitchAdapter(this) { // from class: com.narvii.chat.hangout.HangoutListFragment.3
            @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
            public int getCount() {
                if (TextUtils.isEmpty(HangoutListFragment.this.instantSearchListener.getKeyword())) {
                    return super.getCount();
                }
                return 0;
            }
        };
        this.switchAdapter.addAdapter(divideColumnAdapter, true);
        this.switchAdapter.setAdapter(this.filter);
        if (isEmbedFragment()) {
            MergeAdapter mergeAdapter = new MergeAdapter(this);
            mergeAdapter.addAdapter(this.switchAdapter, true);
            return mergeAdapter;
        }
        SearchAdapter searchAdapter = new SearchAdapter();
        this.searchResultAdapter = new SearchResultAdapter();
        this.instantSearchListener.attachAdapter(this.searchResultAdapter);
        DivideColumnAdapter divideColumnAdapter2 = new DivideColumnAdapter(this, iDpToPx, 0, iDpToPx, 0);
        divideColumnAdapter2.setAdapter(this.searchResultAdapter, 2);
        MergeAdapter mergeAdapter2 = new MergeAdapter(this) { // from class: com.narvii.chat.hangout.HangoutListFragment.4
            @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                if (!TextUtils.isEmpty(HangoutListFragment.this.instantSearchListener.getKeyword())) {
                    SearchResultAdapter searchResultAdapter = HangoutListFragment.this.searchResultAdapter;
                    return searchResultAdapter != null && searchResultAdapter.getCount() == 0;
                }
                return super.isEmpty();
            }
        };
        mergeAdapter2.addAdapter(searchAdapter);
        mergeAdapter2.addAdapter(this.switchAdapter, true);
        mergeAdapter2.addAdapter(divideColumnAdapter2);
        return mergeAdapter2;
    }

    class SearchAdapter extends AdriftAdapter implements SearchBar.OnSearchListener {
        boolean stated;

        public SearchAdapter() {
            super(HangoutListFragment.this);
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onTextChanged(SearchBar searchBar, String str) {
            HangoutListFragment.this.instantSearchListener.onTextChanged(searchBar, str);
            if (this.stated || TextUtils.isEmpty(str)) {
                return;
            }
            this.stated = true;
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onSearch(SearchBar searchBar, String str) {
            HangoutListFragment.this.instantSearchListener.onSearch(searchBar, str);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            HangoutListFragment hangoutListFragment = HangoutListFragment.this;
            if (hangoutListFragment.searchBar == null) {
                hangoutListFragment.searchBar = (SearchBar) createView(R.layout.search_bar_chat, viewGroup, view);
                HangoutListFragment.this.searchBar.setOnSearchListener(this);
                ConfigService configService = (ConfigService) getService("config");
                if (configService != null && configService.getTheme() != null) {
                    HangoutListFragment.this.searchBar.setBackgroundColor(configService.getTheme().colorPrimary());
                }
                EditText editText = (EditText) HangoutListFragment.this.searchBar.findViewById(R.id.search_text);
                if (editText != null) {
                    editText.setTextColor(-1);
                    editText.setHintTextColor(-2130706433);
                    editText.clearFocus();
                    editText.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), R.drawable.search_bar_text_transparent));
                }
                View viewFindViewById = HangoutListFragment.this.searchBar.findViewById(R.id.search_icon);
                if (viewFindViewById != null) {
                    viewFindViewById.setAlpha(0.4f);
                }
            }
            return HangoutListFragment.this.searchBar;
        }
    }

    class OpenChatAdapter extends HangoutListAdapter {
        private boolean fromStart;
        private Map<String, PlayList> toMergePlayListMap;
        private List<OnlineChatThread> toMergeThreadList;
        private Map<String, OnlineUserInfoInfo> toMergeUserInfoMap;

        public OpenChatAdapter() {
            super(HangoutListFragment.this);
            setDarkTheme(true);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new DivideColumnImpressionCollector(ChatThread.class));
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            super.refresh(i, callback);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderParam = ApiRequest.builder().chatServer().path("/chat/thread?type=public-all").param("filterType", HangoutListFragment.this.getFitlerType());
            this.fromStart = z;
            return builderParam.build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, ThreadListResponse threadListResponse, int i) {
            super.onPageResponse(apiRequest, threadListResponse, i);
            if (this.fromStart) {
                SearchBar searchBar = HangoutListFragment.this.searchBar;
                if (searchBar != null) {
                    searchBar.clearFocus();
                }
                if (HangoutListFragment.this.filterProgress != null && HangoutListFragment.this.filterProgress.isShowing()) {
                    HangoutListFragment.this.filterProgress.dismiss();
                }
                HangoutListFragment.this.smoothScrollToTop();
            }
            List<? extends ChatThread> listRawList = rawList();
            ViewUtils.show(HangoutListFragment.this.filterView, (listRawList == null || listRawList.isEmpty()) ? false : true);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
            super.onFailResponse(apiRequest, str, apiResponse, i);
            if (HangoutListFragment.this.filterProgress == null || !HangoutListFragment.this.filterProgress.isShowing()) {
                return;
            }
            HangoutListFragment.this.filterProgress.dismiss();
        }
    }

    class SearchResultAdapter extends HangoutListAdapter {
        @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
        }

        public SearchResultAdapter() {
            super(HangoutListFragment.this);
            this.source = "Search Results";
            setDarkTheme(true);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            HangoutListFragment.this.instantSearchListener.setKeyword(bundle.getString("keyword"));
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putString("keyword", HangoutListFragment.this.instantSearchListener.getKeyword());
            return bundleOnSaveInstanceState;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(HangoutListFragment.this.instantSearchListener.getKeyword())) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (TextUtils.isEmpty(HangoutListFragment.this.instantSearchListener.getKeyword())) {
                return null;
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().chatServer().path("/chat/thread?type=public-keyword");
            builderPath.param("q", HangoutListFragment.this.instantSearchListener.getKeyword());
            return builderPath.build();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void updateThemeUI() {
        super.updateThemeUI();
        if (getListView() instanceof NVListView) {
            ((NVListView) getListView()).setListContentBackground(new ColorDrawable(((ConfigService) getService("config")).getTheme().colorPrimary()));
        }
        if (getListAdapter() instanceof NVAdapter) {
            ((NVAdapter) getListAdapter()).notifyDataSetChanged();
        }
    }
}
