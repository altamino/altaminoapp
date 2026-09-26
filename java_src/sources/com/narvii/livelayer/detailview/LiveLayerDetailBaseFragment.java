package com.narvii.livelayer.detailview;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.airbnb.lottie.LottieAnimationView;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.github.mmin18.widget.RealtimeBlurLayout;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.livelayer.BackgroundHelper;
import com.narvii.livelayer.LiveLayerMemberAdapter;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.livelayer.category.OnlineCategoryConfig;
import com.narvii.livelayer.category.OnlineCategoryMemberAdapter;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ListResponse;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.SwipeableLayout;
import com.narvii.widget.TintButton;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class LiveLayerDetailBaseFragment extends NVListFragment {
    protected Drawable backgroundDrawable;
    private OverlayLayout header;
    protected BaseListAdapter mainListAdapter;
    protected LiveLayerMemberAdapter memberAdapter;
    protected OnlineCategoryConfig onlineCategoryConfig;
    protected BaseListAdapter.BaseRecommendedAdapter recommendListAdapter;
    protected String source;

    public abstract class BaseListAdapter<T extends NVObject, E extends ListResponse<? extends T>> extends NVPagedAdapter<T, E> {
        protected ApiRequest apiRequest;
        private OnlineCategoryConfig config;
        public List recommendList;
        protected String timestamp;

        public class BaseRecommendedAdapter extends BaseListAdapter<T, E> {
            @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter, com.narvii.list.NVPagedAdapter
            protected ApiRequest createRequest(boolean z6) {
                this._isEnd = true;
                notifyDataSetChanged();
                return null;
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
            public String getAreaName() {
                return "Recommend";
            }

            @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter, com.narvii.list.NVPagedAdapter
            public boolean showListEnd(int i10) {
                return false;
            }

            public BaseRecommendedAdapter(NVContext nVContext) {
                super(nVContext);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.narvii.list.NVPagedAdapter
            public JsonDeserializer<T> dataDeserializer() {
                return BaseListAdapter.this.dataDeserializer();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.narvii.list.NVPagedAdapter
            public Class<T> dataType() {
                return BaseListAdapter.this.dataType();
            }

            @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter, com.narvii.list.NVPagedAdapter
            protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
                return BaseListAdapter.this.getItemView(obj, view, viewGroup, true);
            }

            @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
            protected int getLayoutId() {
                return BaseListAdapter.this.getLayoutId();
            }

            @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
                return BaseListAdapter.this.onItemClick(listAdapter, i10, obj, view, view2, true);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.narvii.list.NVPagedAdapter
            public Class<? extends E> responseType() {
                return BaseListAdapter.this.responseType();
            }
        }

        public class RecommendAdapter extends NVAdapter {
            private Object REC_STUB;

            @Override // android.widget.Adapter
            public Object getItem(int i10) {
                return this.REC_STUB;
            }

            public RecommendAdapter(NVContext nVContext) {
                super(nVContext);
                this.REC_STUB = new Object();
            }

            @Override // android.widget.Adapter
            public int getCount() {
                BaseRecommendedAdapter baseRecommendedAdapter = LiveLayerDetailBaseFragment.this.recommendListAdapter;
                return (baseRecommendedAdapter == null || baseRecommendedAdapter.getCount() == 0) ? 0 : 1;
            }

            @Override // android.widget.Adapter
            public long getItemId(int i10) {
                return getItem(i10).hashCode();
            }

            @Override // android.widget.Adapter
            public View getView(int i10, View view, ViewGroup viewGroup) {
                if (getItem(i10) == this.REC_STUB) {
                    return createView(R.layout.live_layer_recommend_line, viewGroup, view);
                }
                return null;
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean filterDuplicate() {
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            return getItemView(obj, view, viewGroup, false);
        }

        protected abstract int getLayoutId();

        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i10) {
            return false;
        }

        public BaseListAdapter(NVContext nVContext) {
            super(nVContext);
            this.config = LiveLayerDetailBaseFragment.this.getOnlineCategoryConfig();
            setDarkTheme(true);
        }

        protected View getItemView(Object obj, View view, ViewGroup viewGroup, boolean z6) {
            List<User> arrayList;
            View viewCreateView = createView(getLayoutId(), viewGroup, view);
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.image);
            if (nVImageView != null) {
                nVImageView.setLoadingDrawable(ContextCompat.getDrawable(getContext(), R.color.live_layer_list_image_placeholder_loading));
                nVImageView.setDefaultDrawable(ContextCompat.getDrawable(getContext(), R.color.live_layer_list_image_placeholder_default));
                nVImageView.setErrorDrawable(ContextCompat.getDrawable(getContext(), R.color.live_layer_list_image_placeholder_default));
            }
            LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) viewCreateView.findViewById(R.id.online_bar);
            if (liveLayerOnlineBar != null && (obj instanceof OnlineUserInfoInfo.OnlineUserInfoInfoKeeper)) {
                OnlineUserInfoInfo onlineUserInfoInfo = ((OnlineUserInfoInfo.OnlineUserInfoInfoKeeper) obj).getOnlineUserInfoInfo();
                int i10 = onlineUserInfoInfo == null ? 0 : onlineUserInfoInfo.userProfileCount;
                if (onlineUserInfoInfo == null || (arrayList = onlineUserInfoInfo.userProfileList) == null) {
                    arrayList = null;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                liveLayerOnlineBar.setUserList(arrayList, i10);
            }
            return viewCreateView;
        }

        protected void alignOnlineBar(View view, int i10) {
            View viewFindViewById = view.findViewById(R.id.online_bar_layout);
            View viewFindViewById2 = view.findViewById(i10);
            if (viewFindViewById != null && viewFindViewById2 != null && (viewFindViewById.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
                ((RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams()).addRule(17, i10);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().path("/live-layer/" + this.config.listApiName()).build();
        }

        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2, boolean z6) {
            return onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected void onPageResponse(ApiRequest apiRequest, E e, int i10) {
            super.onPageResponse(apiRequest, e, i10);
            this.timestamp = e.timestamp;
            this.apiRequest = apiRequest;
            if (e instanceof OnlineDataResponse) {
                List<T> listFilter = new FilterHelper(this).filter(((OnlineDataResponse) e).getRecommendedList());
                this.recommendList = listFilter;
                if (LiveLayerDetailBaseFragment.this.recommendListAdapter != null) {
                    if (listFilter != null && listFilter.size() > 0) {
                        this._isEnd = true;
                        LiveLayerDetailBaseFragment.this.recommendListAdapter.setList(new ArrayList<>(this.recommendList));
                    } else {
                        LiveLayerDetailBaseFragment.this.recommendListAdapter.resetList();
                    }
                    LiveLayerDetailBaseFragment.this.recommendListAdapter.notifyDataSetChanged();
                }
            }
        }
    }

    protected class EmptyAdapter extends NVPagerStatusAdapter {
        protected List<NVAdapter> adapters;

        public EmptyAdapter(NVContext nVContext) {
            super(nVContext);
            this.adapters = new ArrayList();
        }

        public void addSubViewAdapter(NVAdapter nVAdapter) {
            this.adapters.add(nVAdapter);
        }

        @Override // com.narvii.adapter.NVPagerStatusAdapter
        protected void onEmptyClickRetry() {
            LiveLayerDetailBaseFragment.this.onRefresh();
        }

        @Override // com.narvii.adapter.NVPagerStatusAdapter, android.widget.Adapter
        public int getCount() {
            int i10;
            if (super.getCount() == 0) {
                return 0;
            }
            Iterator<NVAdapter> it = this.adapters.iterator();
            int i11 = 1;
            while (it.hasNext()) {
                if (it.next().getCount() == 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                i11 &= i10;
            }
            return i11;
        }

        @Override // com.narvii.adapter.NVPagerStatusAdapter
        protected int getMinHeight() {
            int iDpToPx;
            int height;
            int i10 = getContext().getResources().getDisplayMetrics().heightPixels;
            LiveLayerMemberAdapter liveLayerMemberAdapter = LiveLayerDetailBaseFragment.this.memberAdapter;
            if (liveLayerMemberAdapter != null && liveLayerMemberAdapter.getCount() != 0) {
                iDpToPx = (int) Utils.dpToPx(getContext(), 180.0f);
            } else {
                iDpToPx = 0;
            }
            if (LiveLayerDetailBaseFragment.this.header == null) {
                height = LiveLayerDetailBaseFragment.this.getActionBarOverlaySize();
            } else {
                height = LiveLayerDetailBaseFragment.this.header.getHeight();
            }
            return (((i10 - height) - LiveLayerDetailBaseFragment.this.getActionBarOverlaySize()) - LiveLayerDetailBaseFragment.this.getStatusBarOverlaySize()) - iDpToPx;
        }
    }

    protected class MemberListAdapterWithCapture extends OnlineCategoryMemberAdapter {
        public MemberListAdapterWithCapture(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.livelayer.category.OnlineCategoryMemberAdapter
        protected OnlineCategoryConfig getOnlineCategoryConfig() {
            return LiveLayerDetailBaseFragment.this.onlineCategoryConfig;
        }

        @Override // com.narvii.livelayer.category.OnlineCategoryMemberAdapter, com.narvii.livelayer.LiveLayerMemberAdapter
        public boolean onMoreItemClick() {
            BackgroundHelper.saveWithDrawable(LiveLayerDetailBaseFragment.this.backgroundDrawable);
            return super.onMoreItemClick();
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    protected abstract OnlineCategoryConfig getOnlineCategoryConfig();

    @Override // com.narvii.app.NVFragment
    public Boolean hasOnlineBar() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return false;
    }

    public MergeAdapter createDefaultAdapter() {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(new HeaderLayout.TopAdapter(this));
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        Callback<Integer> callback = new Callback<Integer>() { // from class: com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.3
            int n;

            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                int i10 = this.n + 1;
                this.n = i10;
                if (i10 != 2 || ((NVListFragment) LiveLayerDetailBaseFragment.this).swipeLayout == null) {
                    return;
                }
                ((NVListFragment) LiveLayerDetailBaseFragment.this).swipeLayout.setRefreshing(false);
            }
        };
        BaseListAdapter baseListAdapter = this.mainListAdapter;
        if (baseListAdapter != null) {
            baseListAdapter.refresh(512, callback);
        }
        LiveLayerMemberAdapter liveLayerMemberAdapter = this.memberAdapter;
        if (liveLayerMemberAdapter != null) {
            liveLayerMemberAdapter.refresh(512, callback);
        }
    }

    public void randomAnimView(LottieAnimationView lottieAnimationView) {
        if (lottieAnimationView == null || lottieAnimationView.k()) {
            return;
        }
        if (lottieAnimationView.getProgress() != 0.0f) {
            try {
                lottieAnimationView.o();
            } catch (Exception unused) {
            }
        } else {
            lottieAnimationView.setProgress((float) (Math.random() * 0.4000000059604645d));
            lottieAnimationView.m();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (!isEmbedFragment()) {
            getActivity().getActionBar().hide();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.onlineCategoryConfig = getOnlineCategoryConfig();
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            chatInviteFragment.setArguments(new Bundle());
            getFragmentManager().q().e(chatInviteFragment, "chatInvite").k();
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_detail_layout, viewGroup, false);
        this.backgroundDrawable = BackgroundHelper.getDynamicBackground();
        RealtimeBlurLayout realtimeBlurLayout = (RealtimeBlurLayout) getActivity().findViewById(R.id.theme_background_wrapper);
        if (realtimeBlurLayout != null) {
            int iColor = getOnlineCategoryConfig().color();
            realtimeBlurLayout.setOverlayColor(ColorUtils.j(Color.argb(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, Color.red(iColor), Color.green(iColor), Color.blue(iColor)), 637534208));
            realtimeBlurLayout.setVisibility(0);
        }
        return viewInflate;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        int statusBarOverlaySize;
        SwipeableLayout swipeableLayout;
        super.onViewCreated(view, bundle);
        OverlayLayout overlayLayout = (OverlayLayout) view.findViewById(R.id.overlay);
        this.header = overlayLayout;
        HeaderLayout.initHeadView(this, overlayLayout, (NVListView) getListView());
        HeaderLayout headerLayout = (HeaderLayout) this.header.findViewById(R.id.live_layer_detail_header);
        headerLayout.setViewInfo(this.onlineCategoryConfig);
        if (getActivity() != null && (swipeableLayout = (SwipeableLayout) getActivity().findViewById(R.id.frame)) != null) {
            swipeableLayout.bindListView((NVListView) getListView());
        }
        TintButton tintButton = (TintButton) headerLayout.findViewById(R.id.actionbar_back);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) tintButton.getLayoutParams();
        int i10 = 0;
        if (getBooleanParam("fullScreenMode")) {
            statusBarOverlaySize = getStatusBarOverlaySize();
        } else {
            statusBarOverlaySize = 0;
        }
        layoutParams.topMargin = statusBarOverlaySize;
        layoutParams.height = getActionBarOverlaySize();
        tintButton.setLayoutParams(layoutParams);
        tintButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (LiveLayerDetailBaseFragment.this.getActivity() != null) {
                    LiveLayerDetailBaseFragment.this.getActivity().onBackPressed();
                }
            }
        });
        TintButton tintButton2 = (TintButton) this.header.findViewById(R.id.minimize);
        if (getBooleanParam("fullScreenMode")) {
            i10 = 4;
        }
        tintButton2.setVisibility(i10);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) tintButton2.getLayoutParams();
        layoutParams2.topMargin = (getActionBarOverlaySize() - layoutParams2.height) / 2;
        tintButton2.setLayoutParams(layoutParams2);
        tintButton2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                LiveLayerDetailBaseFragment.this.finish();
                if (LiveLayerDetailBaseFragment.this.getActivity() != null) {
                    LiveLayerDetailBaseFragment.this.getActivity().overridePendingTransition(0, R.anim.activity_push_bottom_out);
                }
            }
        });
    }
}
