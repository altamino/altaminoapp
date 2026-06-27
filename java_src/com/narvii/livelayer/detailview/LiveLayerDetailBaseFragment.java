package com.narvii.livelayer.detailview;

import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.ColorUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.github.mmin18.widget.RealtimeBlurLayout;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.mastes.R;
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
import com.narvii.livelayer.detailview.HeaderLayout;
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

/* loaded from: classes3.dex */
public abstract class LiveLayerDetailBaseFragment extends NVListFragment {
    protected Drawable backgroundDrawable;
    private OverlayLayout header;
    protected BaseListAdapter mainListAdapter;
    protected LiveLayerMemberAdapter memberAdapter;
    protected OnlineCategoryConfig onlineCategoryConfig;
    protected BaseListAdapter.BaseRecommendedAdapter recommendListAdapter;
    protected String source;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    protected abstract OnlineCategoryConfig getOnlineCategoryConfig();

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return false;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_detail_layout, viewGroup, false);
        this.backgroundDrawable = BackgroundHelper.getDynamicBackground();
        RealtimeBlurLayout realtimeBlurLayout = (RealtimeBlurLayout) getActivity().findViewById(R.id.theme_background_wrapper);
        if (realtimeBlurLayout != null) {
            int iColor = getOnlineCategoryConfig().color();
            realtimeBlurLayout.setOverlayColor(ColorUtils.compositeColors(Color.argb(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, Color.red(iColor), Color.green(iColor), Color.blue(iColor)), 637534208));
            realtimeBlurLayout.setVisibility(0);
        }
        return viewInflate;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        SwipeableLayout swipeableLayout;
        super.onViewCreated(view, bundle);
        this.header = (OverlayLayout) view.findViewById(R.id.overlay);
        HeaderLayout.initHeadView(this, this.header, (NVListView) getListView());
        HeaderLayout headerLayout = (HeaderLayout) this.header.findViewById(R.id.live_layer_detail_header);
        headerLayout.setViewInfo(this.onlineCategoryConfig);
        if (getActivity() != null && (swipeableLayout = (SwipeableLayout) getActivity().findViewById(R.id.frame)) != null) {
            swipeableLayout.bindListView((NVListView) getListView());
        }
        TintButton tintButton = (TintButton) headerLayout.findViewById(R.id.actionbar_back);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) tintButton.getLayoutParams();
        layoutParams.topMargin = getBooleanParam("fullScreenMode") ? getStatusBarOverlaySize() : 0;
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
        tintButton2.setVisibility(getBooleanParam("fullScreenMode") ? 4 : 0);
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

    public MergeAdapter createDefaultAdapter() {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(new HeaderLayout.TopAdapter(this));
        return mergeAdapter;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        if (isEmbedFragment()) {
            return;
        }
        getActivity().getActionBar().hide();
    }

    public void randomAnimView(LottieAnimationView lottieAnimationView) {
        if (lottieAnimationView == null || lottieAnimationView.isAnimating()) {
            return;
        }
        if (lottieAnimationView.getProgress() != 0.0f) {
            try {
                lottieAnimationView.resumeAnimation();
            } catch (Exception unused) {
            }
        } else {
            lottieAnimationView.setProgress((float) (Math.random() * 0.4000000059604645d));
            lottieAnimationView.playAnimation();
        }
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasOnlineBar() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.onlineCategoryConfig = getOnlineCategoryConfig();
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            chatInviteFragment.setArguments(new Bundle());
            getFragmentManager().beginTransaction().add(chatInviteFragment, "chatInvite").commitAllowingStateLoss();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
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
                int i = this.n + 1;
                this.n = i;
                if (i != 2 || ((NVListFragment) LiveLayerDetailBaseFragment.this).swipeLayout == null) {
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

    public abstract class BaseListAdapter<T extends NVObject, E extends ListResponse<? extends T>> extends NVPagedAdapter<T, E> {
        protected ApiRequest apiRequest;
        private OnlineCategoryConfig config;
        public List recommendList;
        protected String timestamp;

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

        protected abstract int getLayoutId();

        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return false;
        }

        public BaseListAdapter(NVContext nVContext) {
            super(nVContext);
            this.config = LiveLayerDetailBaseFragment.this.getOnlineCategoryConfig();
            setDarkTheme(true);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().path("/live-layer/" + this.config.listApiName()).build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            return getItemView(obj, view, viewGroup, false);
        }

        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2, boolean z) {
            return onItemClick(listAdapter, i, obj, view, view2);
        }

        protected View getItemView(Object obj, View view, ViewGroup viewGroup, boolean z) {
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
                int i = onlineUserInfoInfo == null ? 0 : onlineUserInfoInfo.userProfileCount;
                if (onlineUserInfoInfo == null || (arrayList = onlineUserInfoInfo.userProfileList) == null) {
                    arrayList = null;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                liveLayerOnlineBar.setUserList(arrayList, i);
            }
            return viewCreateView;
        }

        protected void alignOnlineBar(View view, int i) {
            View viewFindViewById = view.findViewById(R.id.online_bar_layout);
            View viewFindViewById2 = view.findViewById(i);
            if (viewFindViewById == null || viewFindViewById2 == null || !(viewFindViewById.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                ((RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams()).addRule(17, i);
            } else {
                ((RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams()).addRule(1, i);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected void onPageResponse(ApiRequest apiRequest, E e, int i) {
            super.onPageResponse(apiRequest, e, i);
            this.timestamp = e.timestamp;
            this.apiRequest = apiRequest;
            if (e instanceof OnlineDataResponse) {
                this.recommendList = new FilterHelper(this).filter(((OnlineDataResponse) e).getRecommendedList());
                if (LiveLayerDetailBaseFragment.this.recommendListAdapter != null) {
                    List list = this.recommendList;
                    if (list != null && list.size() > 0) {
                        this._isEnd = true;
                        LiveLayerDetailBaseFragment.this.recommendListAdapter.setList(new ArrayList<>(this.recommendList));
                    } else {
                        LiveLayerDetailBaseFragment.this.recommendListAdapter.resetList();
                    }
                    LiveLayerDetailBaseFragment.this.recommendListAdapter.notifyDataSetChanged();
                }
            }
        }

        public class BaseRecommendedAdapter extends BaseListAdapter<T, E> {
            @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
            public String getAreaName() {
                return "Recommend";
            }

            @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter, com.narvii.list.NVPagedAdapter
            public boolean showListEnd(int i) {
                return false;
            }

            public BaseRecommendedAdapter(NVContext nVContext) {
                super(nVContext);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.narvii.list.NVPagedAdapter
            public Class<T> dataType() {
                return BaseListAdapter.this.dataType();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.narvii.list.NVPagedAdapter
            public Class<? extends E> responseType() {
                return BaseListAdapter.this.responseType();
            }

            @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter, com.narvii.list.NVPagedAdapter
            protected ApiRequest createRequest(boolean z) {
                this._isEnd = true;
                notifyDataSetChanged();
                return null;
            }

            @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
            protected int getLayoutId() {
                return BaseListAdapter.this.getLayoutId();
            }

            @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter, com.narvii.list.NVPagedAdapter
            protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
                return BaseListAdapter.this.getItemView(obj, view, viewGroup, true);
            }

            @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                return BaseListAdapter.this.onItemClick(listAdapter, i, obj, view, view2, true);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.narvii.list.NVPagedAdapter
            public JsonDeserializer<T> dataDeserializer() {
                return BaseListAdapter.this.dataDeserializer();
            }
        }

        public class RecommendAdapter extends NVAdapter {
            private Object REC_STUB;

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
            public Object getItem(int i) {
                return this.REC_STUB;
            }

            @Override // android.widget.Adapter
            public long getItemId(int i) {
                return getItem(i).hashCode();
            }

            @Override // android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                if (getItem(i) == this.REC_STUB) {
                    return createView(R.layout.live_layer_recommend_line, viewGroup, view);
                }
                return null;
            }
        }
    }

    protected class EmptyAdapter extends NVPagerStatusAdapter {
        protected List<NVAdapter> adapters;

        public EmptyAdapter(NVContext nVContext) {
            super(nVContext);
            this.adapters = new ArrayList();
        }

        @Override // com.narvii.adapter.NVPagerStatusAdapter, android.widget.Adapter
        public int getCount() {
            if (super.getCount() == 0) {
                return 0;
            }
            Iterator<NVAdapter> it = this.adapters.iterator();
            int i = 1;
            while (it.hasNext()) {
                i &= it.next().getCount() == 0 ? 1 : 0;
            }
            return i;
        }

        @Override // com.narvii.adapter.NVPagerStatusAdapter
        protected int getMinHeight() {
            int i = getContext().getResources().getDisplayMetrics().heightPixels;
            LiveLayerMemberAdapter liveLayerMemberAdapter = LiveLayerDetailBaseFragment.this.memberAdapter;
            return (((i - (LiveLayerDetailBaseFragment.this.header == null ? LiveLayerDetailBaseFragment.this.getActionBarOverlaySize() : LiveLayerDetailBaseFragment.this.header.getHeight())) - LiveLayerDetailBaseFragment.this.getActionBarOverlaySize()) - LiveLayerDetailBaseFragment.this.getStatusBarOverlaySize()) - ((liveLayerMemberAdapter == null || liveLayerMemberAdapter.getCount() == 0) ? 0 : (int) Utils.dpToPx(getContext(), 180.0f));
        }

        @Override // com.narvii.adapter.NVPagerStatusAdapter
        protected void onEmptyClickRetry() {
            LiveLayerDetailBaseFragment.this.onRefresh();
        }

        public void addSubViewAdapter(NVAdapter nVAdapter) {
            this.adapters.add(nVAdapter);
        }
    }
}
