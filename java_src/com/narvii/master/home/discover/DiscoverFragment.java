package com.narvii.master.home.discover;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.ad.AdsModuleItem;
import com.narvii.ad.AdsModuleListResponse;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.language.LanguageChangeListener;
import com.narvii.logging.Area;
import com.narvii.master.home.discover.DiscoverFragment;
import com.narvii.master.home.discover.adapter.AdsModuleHorizontalAdapter;
import com.narvii.master.home.discover.adapter.HeaderAdsModuleHorizontalAdapter;
import com.narvii.master.home.discover.adapter.ModuleAdapterFactory;
import com.narvii.master.home.story.CommentSheetDisplayHost;
import com.narvii.master.widget.MasterBottomOffsetAdapter;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.nvplayer.delegate.DiscoverModuleVideoListDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewAdapter;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewLoadingAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.paging.adapter.RecyclerViewProxyAdapter;
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.story.StoryListFragment;
import com.narvii.suggest.interest.InterestPickerFragment;
import com.narvii.topic.CoordinateFragmentHelperKt;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.TopicNotificationStub;
import com.narvii.topic.TopicTabFragmentKt;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.model.discover.ContentModuleListResponse;
import com.narvii.topic.model.discover.ModuleAnchorAdapter;
import com.narvii.topic.model.discover.SerialRequestChild;
import com.narvii.topic.model.discover.SerialRequestParent;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.attribute.AttributeService;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Triple;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: DiscoverFragment.kt */
/* loaded from: classes3.dex */
public class DiscoverFragment extends NVRecyclerViewFragment implements LanguageChangeListener, FragmentOnBackListener, CommentSheetDisplayHost, NotificationListener {
    private HashMap _$_findViewCache;
    private FrameLayout bottomLayout;
    private ContentModuleListResponse contentModuleListResponse;
    private String errorMsg;
    private HeaderAdsModuleHorizontalAdapter immersiveHeaderAdapter;
    private long lastPauseTime;
    private DiscoverAdapter mergerAdapter;
    private ApiRequest moduleConfigRequest;
    private boolean moduleConfigRequestFinished;
    private boolean needRefreshWhenActive;
    private final MasterBottomOffsetAdapter bottomOffsetAdapter = new MasterBottomOffsetAdapter(this);
    private final MyLoadingAdapter loadingAdapter = new MyLoadingAdapter(this);
    private final int AUTO_REFRESH_PAUSE_THRESHOLD = 1200000;
    private final DiscoverFragment$receiver$1 receiver = new BroadcastReceiver() { // from class: com.narvii.master.home.discover.DiscoverFragment$receiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DiscoverFragment.DiscoverAdapter mergerAdapter;
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(intent, "intent");
            if (Intrinsics.areEqual(InterestPickerFragment.INTEREST_CHANGED, intent.getAction())) {
                DiscoverFragment.sendModuleConfigRequest$default(this.this$0, null, false, 2, null);
            }
            if (!Intrinsics.areEqual(AttributeService.ACTION_REFRESH_DISCOVER, intent.getAction()) || (mergerAdapter = this.this$0.getMergerAdapter()) == null) {
                return;
            }
            mergerAdapter.refresh(0, null);
        }
    };

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

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "ForYou";
    }

    public String getPath() {
        return "home/discover/content-modules";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public boolean showNoStoriesYet() {
        return true;
    }

    public final ApiRequest getModuleConfigRequest() {
        return this.moduleConfigRequest;
    }

    public final void setModuleConfigRequest(ApiRequest apiRequest) {
        this.moduleConfigRequest = apiRequest;
    }

    public final ContentModuleListResponse getContentModuleListResponse() {
        return this.contentModuleListResponse;
    }

    public final void setContentModuleListResponse(ContentModuleListResponse contentModuleListResponse) {
        this.contentModuleListResponse = contentModuleListResponse;
    }

    public final DiscoverAdapter getMergerAdapter() {
        return this.mergerAdapter;
    }

    public final void setMergerAdapter(DiscoverAdapter discoverAdapter) {
        this.mergerAdapter = discoverAdapter;
    }

    public final String getErrorMsg() {
        return this.errorMsg;
    }

    public final void setErrorMsg(String str) {
        this.errorMsg = str;
    }

    public final MasterBottomOffsetAdapter getBottomOffsetAdapter() {
        return this.bottomOffsetAdapter;
    }

    public final MyLoadingAdapter getLoadingAdapter() {
        return this.loadingAdapter;
    }

    public final boolean getModuleConfigRequestFinished() {
        return this.moduleConfigRequestFinished;
    }

    public final void setModuleConfigRequestFinished(boolean z) {
        this.moduleConfigRequestFinished = z;
    }

    public final long getLastPauseTime() {
        return this.lastPauseTime;
    }

    public final void setLastPauseTime(long j) {
        this.lastPauseTime = j;
    }

    public final HeaderAdsModuleHorizontalAdapter getImmersiveHeaderAdapter() {
        return this.immersiveHeaderAdapter;
    }

    public final void setImmersiveHeaderAdapter(HeaderAdsModuleHorizontalAdapter headerAdsModuleHorizontalAdapter) {
        this.immersiveHeaderAdapter = headerAdsModuleHorizontalAdapter;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        registerLocalReceiver(this.receiver, new IntentFilter(InterestPickerFragment.INTEREST_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(AttributeService.ACTION_REFRESH_DISCOVER));
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setGlobalEmptyView(R.layout.layout_topic_empty);
        CoordinateFragmentHelperKt.setPaddingForChildFragmentInTopic(this, this.pageStatusView);
        getRecyclerView().addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.master.home.discover.DiscoverFragment.onViewCreated.1
            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                RecyclerView recyclerView2 = DiscoverFragment.this.getRecyclerView();
                Intrinsics.checkExpressionValueIsNotNull(recyclerView2, "getRecyclerView()");
                RecyclerView.LayoutManager layoutManager = recyclerView2.getLayoutManager();
                if (layoutManager == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager");
                }
                int iFindFirstVisibleItemPosition = ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
                if (iFindFirstVisibleItemPosition == 1) {
                    View v = DiscoverFragment.this.getRecyclerView().findViewHolderForLayoutPosition(iFindFirstVisibleItemPosition).itemView;
                    Intrinsics.checkExpressionValueIsNotNull(v, "v");
                    if (v.getHeight() != 0) {
                        Fragment parentFragment = DiscoverFragment.this.getParentFragment();
                        if (!(parentFragment instanceof DiscoverTabFragment)) {
                            parentFragment = null;
                        }
                        DiscoverTabFragment discoverTabFragment = (DiscoverTabFragment) parentFragment;
                        if (discoverTabFragment != null) {
                            discoverTabFragment.updateImmersiveHeader(v.getBottom() > discoverTabFragment.getImmersiveHeaderHeight() && v.getBottom() >= 0);
                        }
                    }
                }
            }
        });
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        sendModuleConfigRequest$default(this, null, false, 3, null);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unregisterLocalReceiver(this.receiver);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        this.mergerAdapter = new DiscoverAdapter(this);
        DiscoverAdapter discoverAdapter = this.mergerAdapter;
        if (discoverAdapter != null) {
            return discoverAdapter;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        if (z && this.needRefreshWhenActive) {
            this.needRefreshWhenActive = false;
            sendModuleConfigRequest$default(this, null, false, 2, null);
        }
        if (!z) {
            recordPauseTime();
        } else {
            checkIfRefresh();
        }
    }

    private final void recordPauseTime() {
        this.lastPauseTime = SystemClock.elapsedRealtime();
    }

    private final void checkIfRefresh() {
        if (this.adapter == null || this.lastPauseTime == 0 || SystemClock.elapsedRealtime() - this.lastPauseTime <= this.AUTO_REFRESH_PAUSE_THRESHOLD) {
            return;
        }
        sendModuleConfigRequest$default(this, null, false, 2, null);
    }

    /* compiled from: DiscoverFragment.kt */
    public final class MyLoadingAdapter extends RecyclerViewLoadingAdapter {
        public MyLoadingAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<SubRequestHost> listEmptyList;
            int i;
            DiscoverAdapter mergerAdapter = DiscoverFragment.this.getMergerAdapter();
            if (mergerAdapter == null || (listEmptyList = mergerAdapter.getSubRequestList()) == null) {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            Iterator<SubRequestHost> it = listEmptyList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    i = 1;
                    break;
                }
                if (!it.next().isSubRequestFinish()) {
                    i = 0;
                    break;
                }
            }
            return i ^ 1;
        }
    }

    /* compiled from: DiscoverFragment.kt */
    public final class DiscoverAdapter extends RecyclerViewMergeAdapter implements SerialRequestParent {
        public DiscoverAdapter(NVContext nVContext) {
            super(nVContext);
            this.dynamicalMode = true;
            setHasStableIds(true);
        }

        @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void onErrorRetry() {
            super.onErrorRetry();
            DiscoverFragment.sendModuleConfigRequest$default(DiscoverFragment.this, null, true, 1, null);
        }

        @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public String getErrorMessage() {
            return DiscoverFragment.this.getErrorMsg();
        }

        @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i, final PageRequestCallback pageRequestCallback) {
            DiscoverFragment.this.sendModuleConfigRequest(new PageRequestCallback() { // from class: com.narvii.master.home.discover.DiscoverFragment$DiscoverAdapter$refresh$1
                @Override // com.narvii.paging.source.PageRequestCallback
                public void onPageRequestFinished(int i2) {
                    PageRequestCallback pageRequestCallback2 = pageRequestCallback;
                    if (pageRequestCallback2 != null) {
                        pageRequestCallback2.onPageRequestFinished(i2);
                    }
                }
            }, true);
        }

        @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean isLoading() {
            return (DiscoverFragment.this.getModuleConfigRequest() == null && isMainRequestBack()) ? false : true;
        }

        @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean isListShow() {
            return DiscoverFragment.this.getModuleConfigRequestFinished() && isMainRequestBack();
        }

        @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean isEmpty() {
            List<ContentModule> list;
            ContentModuleListResponse contentModuleListResponse = DiscoverFragment.this.getContentModuleListResponse();
            if (contentModuleListResponse != null && (list = contentModuleListResponse.list()) != null) {
                if (list == null || list.isEmpty()) {
                    return true;
                }
            }
            List<SubRequestHost> subRequestList = getSubRequestList();
            if (!(!subRequestList.isEmpty())) {
                return false;
            }
            int size = subRequestList.size();
            for (int i = 0; i < size; i++) {
                SubRequestHost subRequestHost = subRequestList.get(i);
                if (!subRequestHost.isEnd() || subRequestHost.geSubResponseSize() > 0) {
                    return false;
                }
            }
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter
        public void addAdapter(int i, NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, boolean z) {
            super.addAdapter(i, nVRecyclerViewBaseAdapter, z);
            if (nVRecyclerViewBaseAdapter != 0) {
                nVRecyclerViewBaseAdapter.setParentAdapter(this);
            }
            if (nVRecyclerViewBaseAdapter instanceof SerialRequestChild) {
                ((SerialRequestChild) nVRecyclerViewBaseAdapter).setSerialRequestParent(this);
            }
            if (nVRecyclerViewBaseAdapter instanceof RecyclerViewProxyAdapter) {
                Area area = ((RecyclerViewProxyAdapter) nVRecyclerViewBaseAdapter).wrapped;
                if (area instanceof SerialRequestChild) {
                    if (area == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.topic.model.discover.SerialRequestChild");
                    }
                    ((SerialRequestChild) area).setSerialRequestParent(this);
                }
            }
        }

        @Override // com.narvii.topic.model.discover.SerialRequestParent
        public boolean isReadyToRequest(SerialRequestChild serialRequestChild) {
            for (SerialRequestChild serialRequestChild2 : getSerialRequestChildList()) {
                if (Intrinsics.areEqual(serialRequestChild2, serialRequestChild)) {
                    return true;
                }
                if (!serialRequestChild2.isRequestFinished()) {
                    return false;
                }
                if (serialRequestChild2.responseSize() != 0 && !serialRequestChild2.isVisibleToUser()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.narvii.topic.model.discover.SerialRequestParent
        public void notifyNextRequest(SerialRequestChild serialRequestChild) {
            List<SerialRequestChild> serialRequestChildList = getSerialRequestChildList();
            if (serialRequestChild == null || Intrinsics.areEqual((SerialRequestChild) CollectionsKt.last(serialRequestChildList), serialRequestChild)) {
                return;
            }
            int size = serialRequestChildList.size();
            for (int iIndexOf = serialRequestChildList.indexOf(serialRequestChild) + 1; iIndexOf < size; iIndexOf++) {
                SerialRequestChild serialRequestChild2 = serialRequestChildList.get(iIndexOf);
                if (!serialRequestChild2.isRequestFinished()) {
                    Log.d("SerialRequest", "notifyNewRequest " + serialRequestChild2);
                    serialRequestChild2.requestDataWhenReady();
                    return;
                }
            }
        }

        public final List<SerialRequestChild> getSerialRequestChildList() {
            ArrayList arrayList = new ArrayList();
            Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
            while (it.hasNext()) {
                NVRecyclerViewBaseAdapter next = it.next();
                if (next instanceof SerialRequestChild) {
                    arrayList.add(next);
                }
                if (next instanceof RecyclerViewProxyAdapter) {
                    Area area = ((RecyclerViewProxyAdapter) next).wrapped;
                    if (!(area instanceof SerialRequestChild)) {
                        continue;
                    } else {
                        if (area == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.topic.model.discover.SerialRequestChild");
                        }
                        arrayList.add((SerialRequestChild) area);
                    }
                }
            }
            return arrayList;
        }

        public final List<SubRequestHost> getSubRequestList() {
            ArrayList arrayList = new ArrayList();
            Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
            while (it.hasNext()) {
                NVRecyclerViewBaseAdapter next = it.next();
                if (next instanceof SubRequestHost) {
                    arrayList.add(next);
                }
                if (next instanceof RecyclerViewProxyAdapter) {
                    Area area = ((RecyclerViewProxyAdapter) next).wrapped;
                    if (!(area instanceof SubRequestHost)) {
                        continue;
                    } else {
                        if (area == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.topic.model.discover.SubRequestHost");
                        }
                        arrayList.add((SubRequestHost) area);
                    }
                }
            }
            return arrayList;
        }

        public final boolean isMainRequestBack() {
            List<SubRequestHost> subRequestList = getSubRequestList();
            if (subRequestList.isEmpty()) {
                return true;
            }
            int iMin = Math.min(3, subRequestList.size());
            for (int i = 0; i < iMin; i++) {
                if (subRequestList.get(i).isSubRequestFinish()) {
                    return true;
                }
            }
            return false;
        }

        public final int getInnerSize() {
            List<SubRequestHost> subRequestList = getSubRequestList();
            if (subRequestList.size() == 0) {
                return 0;
            }
            int size = subRequestList.size();
            int iGeSubResponseSize = 0;
            for (int i = 0; i < size; i++) {
                if (subRequestList.get(i).isSubRequestFinish()) {
                    iGeSubResponseSize += subRequestList.get(i).geSubResponseSize();
                }
            }
            return iGeSubResponseSize;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x005e  */
    @Override // com.narvii.paging.NVRecyclerViewFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateViews() {
        /*
            r7 = this;
            super.updateViews()
            java.lang.String r0 = r7.errorMsg
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            r0 = r0 ^ r1
            com.narvii.master.home.discover.DiscoverFragment$DiscoverAdapter r2 = r7.mergerAdapter
            if (r2 == 0) goto L16
            java.util.List r2 = r2.getSubRequestList()
            if (r2 == 0) goto L16
            goto L1a
        L16:
            java.util.List r2 = kotlin.collections.CollectionsKt.emptyList()
        L1a:
            java.util.Iterator r2 = r2.iterator()
        L1e:
            boolean r3 = r2.hasNext()
            r4 = 0
            if (r3 == 0) goto L39
            java.lang.Object r3 = r2.next()
            com.narvii.topic.model.discover.SubRequestHost r3 = (com.narvii.topic.model.discover.SubRequestHost) r3
            boolean r5 = r3 instanceof com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
            if (r5 == 0) goto L1e
            com.narvii.paging.adapter.NVRecyclerViewBaseAdapter r3 = (com.narvii.paging.adapter.NVRecyclerViewBaseAdapter) r3
            boolean r3 = r3.isListShow()
            if (r3 == 0) goto L1e
            r2 = 1
            goto L3a
        L39:
            r2 = 0
        L3a:
            com.narvii.master.home.discover.DiscoverFragment$DiscoverAdapter r3 = r7.mergerAdapter
            if (r3 == 0) goto L46
            boolean r3 = r3.isEmpty()
            if (r3 != r1) goto L46
            r3 = 1
            goto L47
        L46:
            r3 = 0
        L47:
            com.narvii.master.home.discover.DiscoverFragment$DiscoverAdapter r5 = r7.mergerAdapter
            if (r5 == 0) goto L5e
            boolean r5 = r5.isLoading()
            if (r5 != r1) goto L5e
            com.narvii.master.home.discover.DiscoverFragment$DiscoverAdapter r5 = r7.mergerAdapter
            if (r5 == 0) goto L5a
            boolean r5 = r5.isListShow()
            goto L5b
        L5a:
            r5 = 0
        L5b:
            if (r5 != 0) goto L5e
            goto L5f
        L5e:
            r1 = 0
        L5f:
            com.narvii.paging.state.PageStatusView r5 = r7.pageStatusView
            java.lang.String r6 = "pageStatusView"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, r6)
            if (r3 != 0) goto L70
            if (r1 != 0) goto L70
            if (r0 == 0) goto L6f
            if (r2 != 0) goto L6f
            goto L70
        L6f:
            r4 = 4
        L70:
            r5.setVisibility(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.master.home.discover.DiscoverFragment.updateViews():void");
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        FragmentManager supportFragmentManager;
        Fragment fragmentFindFragmentByTag;
        if (nVActivity == null || (supportFragmentManager = nVActivity.getSupportFragmentManager()) == null || (fragmentFindFragmentByTag = supportFragmentManager.findFragmentByTag("story_detail")) == null || !(fragmentFindFragmentByTag instanceof StoryListFragment)) {
            return false;
        }
        ((StoryListFragment) fragmentFindFragmentByTag).onBackPressed(nVActivity);
        return true;
    }

    public static /* synthetic */ void sendModuleConfigRequest$default(DiscoverFragment discoverFragment, PageRequestCallback pageRequestCallback, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendModuleConfigRequest");
        }
        if ((i & 1) != 0) {
            pageRequestCallback = null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        discoverFragment.sendModuleConfigRequest(pageRequestCallback, z);
    }

    public final void sendModuleConfigRequest(final PageRequestCallback pageRequestCallback, final boolean z) {
        if (this.moduleConfigRequest != null) {
            return;
        }
        this.errorMsg = null;
        ApiService apiService = (ApiService) getService("api");
        this.moduleConfigRequest = ApiRequest.builder().path(getPath()).param("v", 2).build();
        DiscoverAdapter discoverAdapter = this.mergerAdapter;
        if (discoverAdapter != null) {
            discoverAdapter.notifyDataSetChanged();
        }
        DiscoverAdapter discoverAdapter2 = this.mergerAdapter;
        if (discoverAdapter2 != null) {
            discoverAdapter2.dispatchDataSetChange();
        }
        apiService.exec(this.moduleConfigRequest, new ApiResponseListener<ContentModuleListResponse>(ContentModuleListResponse.class) { // from class: com.narvii.master.home.discover.DiscoverFragment.sendModuleConfigRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ContentModuleListResponse contentModuleListResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) contentModuleListResponse);
                if (contentModuleListResponse != null && contentModuleListResponse.contentModuleList == null) {
                    contentModuleListResponse.contentModuleList = new ArrayList();
                }
                DiscoverFragment.this.setContentModuleListResponse(contentModuleListResponse);
                Log.d("SerialRequest", JacksonUtils.writeAsString(contentModuleListResponse));
                DiscoverFragment.this.setModuleConfigRequest(null);
                DiscoverFragment.this.setModuleConfigRequestFinished(true);
                DiscoverFragment.this.handleModuleConfig();
                PageRequestCallback pageRequestCallback2 = pageRequestCallback;
                if (pageRequestCallback2 != null) {
                    pageRequestCallback2.onPageRequestFinished(0);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                DiscoverFragment.this.setModuleConfigRequest(null);
                DiscoverFragment.this.setModuleConfigRequestFinished(true);
                DiscoverFragment.this.setErrorMsg(str);
                DiscoverAdapter mergerAdapter = DiscoverFragment.this.getMergerAdapter();
                if (mergerAdapter != null) {
                    mergerAdapter.notifyDataSetChanged();
                }
                DiscoverFragment.this.updateViews();
                PageRequestCallback pageRequestCallback2 = pageRequestCallback;
                if (pageRequestCallback2 != null) {
                    pageRequestCallback2.onPageRequestFinished(1);
                }
                if (z) {
                    NVToast.makeText(DiscoverFragment.this.getContext(), str, 1).show();
                }
            }
        });
    }

    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v4 */
    public final void handleModuleConfig() {
        List listEmptyList;
        ?? r9;
        DiscoverAdapter discoverAdapter;
        ArrayList<NVRecyclerViewBaseAdapter> arrayList;
        ArrayList<NVRecyclerViewBaseAdapter> arrayList2;
        DiscoverAdapter discoverAdapter2;
        ArrayList<NVRecyclerViewBaseAdapter> arrayList3;
        ArrayList<NVRecyclerViewBaseAdapter> arrayList4;
        ArrayList arrayList5;
        int i;
        ArrayList arrayList6;
        List<NVRecyclerViewBaseAdapter> list;
        ArrayList<NVRecyclerViewBaseAdapter> arrayList7;
        ArrayList<NVRecyclerViewBaseAdapter> arrayList8;
        int iIntValue;
        int iIntValue2;
        List<ContentModule> list2;
        ContentModuleListResponse contentModuleListResponse = this.contentModuleListResponse;
        if (contentModuleListResponse == null || (list2 = contentModuleListResponse.contentModuleList) == null || (listEmptyList = CollectionsKt___CollectionsKt.filterNotNull(list2)) == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList9 = new ArrayList();
        Iterator it = listEmptyList.iterator();
        while (true) {
            r9 = 1;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((ContentModule) next).getDisplayStyle() != null) {
                arrayList9.add(next);
            }
        }
        if (arrayList9.isEmpty()) {
            DiscoverAdapter discoverAdapter3 = this.mergerAdapter;
            if (discoverAdapter3 != null) {
                discoverAdapter3.notifyDataSetChanged();
            }
        } else {
            ArrayList<Triple<ContentModule, Integer, Integer>> arrayListBuildModuleSection = buildModuleSection();
            Iterator<Triple<ContentModule, Integer, Integer>> it2 = arrayListBuildModuleSection.iterator();
            Intrinsics.checkExpressionValueIsNotNull(it2, "oldModuleSections.iterator()");
            int i2 = 0;
            while (it2.hasNext()) {
                Triple<ContentModule, Integer, Integer> next2 = it2.next();
                Intrinsics.checkExpressionValueIsNotNull(next2, "iterator.next()");
                Triple<ContentModule, Integer, Integer> triple = next2;
                if (!isInModuleList(arrayList9, triple.getFirst())) {
                    DiscoverAdapter discoverAdapter4 = this.mergerAdapter;
                    if (discoverAdapter4 != null) {
                        discoverAdapter4.removeCellAtIndex(triple.getSecond().intValue() - i2, triple.getThird().intValue() - i2);
                    }
                    Log.d("BuildModule", "remove adapter from " + triple.getSecond().intValue() + " to " + triple.getThird().intValue());
                    it2.remove();
                    iIntValue = triple.getThird().intValue();
                    iIntValue2 = triple.getSecond().intValue();
                } else {
                    boolean z = arrayListBuildModuleSection.indexOf(triple) == arrayListBuildModuleSection.size() - 1;
                    ContentModule first = triple.getFirst();
                    if (z ^ (Utils.indexOfId(arrayList9, first != null ? first.moduleId : null) == arrayList9.size() - 1)) {
                        DiscoverAdapter discoverAdapter5 = this.mergerAdapter;
                        if (discoverAdapter5 != null) {
                            discoverAdapter5.removeCellAtIndex(triple.getSecond().intValue() - i2, triple.getThird().intValue() - i2);
                        }
                        Log.d("BuildModule", "remove adapter from " + triple.getSecond().intValue() + " to " + triple.getThird().intValue() + ", as last one module change");
                        it2.remove();
                        iIntValue = triple.getThird().intValue();
                        iIntValue2 = triple.getSecond().intValue();
                    }
                }
                i2 = iIntValue - iIntValue2;
            }
            final Ref$IntRef ref$IntRef = new Ref$IntRef();
            ref$IntRef.element = 0;
            final Ref$IntRef ref$IntRef2 = new Ref$IntRef();
            ref$IntRef2.element = 0;
            final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            ref$BooleanRef.element = false;
            int i3 = 0;
            for (Object obj : arrayList9) {
                int i4 = i3 + 1;
                if (i3 >= 0) {
                    ContentModule contentModule = (ContentModule) obj;
                    ArrayList<Triple<ContentModule, Integer, Integer>> arrayListBuildModuleSection2 = buildModuleSection();
                    Triple<ContentModule, Integer, Integer> triple2 = i3 < arrayListBuildModuleSection2.size() ? arrayListBuildModuleSection2.get(i3) : null;
                    if (triple2 != null && Utils.isEquals(triple2.getFirst(), contentModule)) {
                        Log.d("BuildModule", "existed, just refresh,  module: " + contentModule.displayName);
                        DiscoverAdapter discoverAdapter6 = this.mergerAdapter;
                        if (discoverAdapter6 != null) {
                            discoverAdapter6.refreshCellAtIndex(triple2.getSecond().intValue(), triple2.getThird().intValue());
                        }
                        ref$IntRef2.element += triple2.getThird().intValue() - triple2.getSecond().intValue();
                        arrayList5 = arrayList9;
                    } else {
                        Log.d("BuildModule", "current module not exist, need to add to current position");
                        ModuleDisplayConfig moduleDisplayConfig = new ModuleDisplayConfig(i3 > 2, i3 == arrayList9.size() - r9);
                        moduleDisplayConfig.isTop = i3 == 0;
                        moduleDisplayConfig.showTitle = arrayList9.size() > r9;
                        moduleDisplayConfig.showNoStoriesYet = showNoStoriesYet() && contentModule.isStoryTopic();
                        if (contentModule.isStory() && !ref$BooleanRef.element) {
                            moduleDisplayConfig.isTopStoryModule = r9;
                            ref$BooleanRef.element = r9;
                        }
                        List<NVRecyclerViewBaseAdapter> moduleAdapterList = ModuleAdapterFactory.Companion.getModuleAdapterList(i3, this, contentModule, moduleDisplayConfig);
                        int i5 = ref$IntRef2.element;
                        DiscoverAdapter discoverAdapter7 = this.mergerAdapter;
                        int i6 = i5 > ((discoverAdapter7 == null || (arrayList8 = discoverAdapter7.pieces) == null) ? 0 : arrayList8.size()) ? -1 : ref$IntRef2.element;
                        StringBuilder sb = new StringBuilder();
                        sb.append("not existed, add adapter list at index ");
                        sb.append(i6);
                        sb.append(" for module ");
                        sb.append(contentModule.displayName);
                        sb.append(" when current size is ");
                        DiscoverAdapter discoverAdapter8 = this.mergerAdapter;
                        sb.append((discoverAdapter8 == null || (arrayList7 = discoverAdapter8.pieces) == null) ? 0 : arrayList7.size());
                        Log.d("BuildModule", sb.toString());
                        if (i3 == 0) {
                            this.immersiveHeaderAdapter = getImmersiveHeaderAdapter(contentModule, moduleAdapterList);
                        }
                        for (NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter : moduleAdapterList) {
                            if ((nVRecyclerViewBaseAdapter instanceof HeaderAdsModuleHorizontalAdapter) && firstModuleIsHeaderAds(arrayList9)) {
                                final ArrayList arrayList10 = arrayList9;
                                i = i6;
                                arrayList6 = arrayList9;
                                list = moduleAdapterList;
                                ((HeaderAdsModuleHorizontalAdapter) nVRecyclerViewBaseAdapter).setOnPageResponseListener(new AdsModuleHorizontalAdapter.OnPageResponseListener() { // from class: com.narvii.master.home.discover.DiscoverFragment$handleModuleConfig$$inlined$forEachIndexed$lambda$1
                                    @Override // com.narvii.master.home.discover.adapter.AdsModuleHorizontalAdapter.OnPageResponseListener
                                    public void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i7) {
                                        Fragment parentFragment = this.this$0.getParentFragment();
                                        if (!(parentFragment instanceof DiscoverTabFragment)) {
                                            parentFragment = null;
                                        }
                                        DiscoverTabFragment discoverTabFragment = (DiscoverTabFragment) parentFragment;
                                        if (discoverTabFragment != null) {
                                            discoverTabFragment.setImmersiveHeader(false);
                                        }
                                    }

                                    @Override // com.narvii.master.home.discover.adapter.AdsModuleHorizontalAdapter.OnPageResponseListener
                                    public void onPageResponse(ApiRequest req, AdsModuleListResponse resp, int i7) {
                                        Intrinsics.checkParameterIsNotNull(req, "req");
                                        Intrinsics.checkParameterIsNotNull(resp, "resp");
                                        Fragment parentFragment = this.this$0.getParentFragment();
                                        if (!(parentFragment instanceof DiscoverTabFragment)) {
                                            parentFragment = null;
                                        }
                                        DiscoverTabFragment discoverTabFragment = (DiscoverTabFragment) parentFragment;
                                        if (discoverTabFragment != null) {
                                            List<AdsModuleItem> list3 = resp.itemList;
                                            discoverTabFragment.setImmersiveHeader((list3 != null ? list3.size() : 0) != 0);
                                        }
                                    }
                                });
                            } else {
                                i = i6;
                                arrayList6 = arrayList9;
                                list = moduleAdapterList;
                            }
                            moduleAdapterList = list;
                            i6 = i;
                            arrayList9 = arrayList6;
                        }
                        int i7 = i6;
                        arrayList5 = arrayList9;
                        List<NVRecyclerViewBaseAdapter> list3 = moduleAdapterList;
                        DiscoverAdapter discoverAdapter9 = this.mergerAdapter;
                        if (discoverAdapter9 != null) {
                            discoverAdapter9.addAdapterAtIndex(i7, list3);
                        }
                        ref$IntRef2.element += list3.size();
                        ref$IntRef.element += list3.size();
                        Iterator<NVRecyclerViewBaseAdapter> it3 = list3.iterator();
                        while (it3.hasNext()) {
                            it3.next().onAttach();
                        }
                    }
                    i3 = i4;
                    arrayList9 = arrayList5;
                    r9 = 1;
                } else {
                    CollectionsKt.throwIndexOverflow();
                    throw null;
                }
            }
            NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = null;
            DiscoverAdapter discoverAdapter10 = this.mergerAdapter;
            if (discoverAdapter10 != null) {
                discoverAdapter10.removeCellAtIndex(ref$IntRef2.element, discoverAdapter10.pieces.size());
            }
            DiscoverAdapter discoverAdapter11 = this.mergerAdapter;
            if (discoverAdapter11 != null && (arrayList4 = discoverAdapter11.pieces) != null) {
                arrayList4.remove(this.loadingAdapter);
            }
            DiscoverAdapter discoverAdapter12 = this.mergerAdapter;
            if ((!Intrinsics.areEqual((discoverAdapter12 == null || (arrayList3 = discoverAdapter12.pieces) == null) ? null : (NVRecyclerViewBaseAdapter) CollectionsKt.last(arrayList3), this.loadingAdapter)) && (discoverAdapter2 = this.mergerAdapter) != null) {
                discoverAdapter2.addAdapter(this.loadingAdapter);
            }
            DiscoverAdapter discoverAdapter13 = this.mergerAdapter;
            if (discoverAdapter13 != null && (arrayList2 = discoverAdapter13.pieces) != null) {
                arrayList2.remove(this.bottomOffsetAdapter);
            }
            DiscoverAdapter discoverAdapter14 = this.mergerAdapter;
            if (discoverAdapter14 != null && (arrayList = discoverAdapter14.pieces) != null) {
                nVRecyclerViewBaseAdapter2 = (NVRecyclerViewBaseAdapter) CollectionsKt.last(arrayList);
            }
            if ((!Intrinsics.areEqual(nVRecyclerViewBaseAdapter2, this.bottomOffsetAdapter)) && (discoverAdapter = this.mergerAdapter) != null) {
                discoverAdapter.addAdapter(this.bottomOffsetAdapter);
            }
        }
        DiscoverAdapter discoverAdapter15 = this.mergerAdapter;
        if (discoverAdapter15 != null) {
            discoverAdapter15.dispatchDataSetChange();
        }
    }

    private final HeaderAdsModuleHorizontalAdapter getImmersiveHeaderAdapter(ContentModule contentModule, List<? extends NVRecyclerViewBaseAdapter> list) {
        if (TextUtils.equals(contentModule.style, ContentModule.STYLE_BANNER_SIZE_TOP)) {
            for (NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter : list) {
                if (nVRecyclerViewBaseAdapter instanceof HeaderAdsModuleHorizontalAdapter) {
                    return (HeaderAdsModuleHorizontalAdapter) nVRecyclerViewBaseAdapter;
                }
            }
        }
        return null;
    }

    public final boolean firstModuleIsHeaderAds(List<? extends ContentModule> moduleList) {
        Intrinsics.checkParameterIsNotNull(moduleList, "moduleList");
        return TextUtils.equals(moduleList.get(0).style, ContentModule.STYLE_BANNER_SIZE_TOP);
    }

    public final ArrayList<Triple<ContentModule, Integer, Integer>> buildModuleSection() {
        ArrayList<NVRecyclerViewBaseAdapter> arrayList;
        ArrayList<Triple<ContentModule, Integer, Integer>> arrayList2 = new ArrayList<>();
        DiscoverAdapter discoverAdapter = this.mergerAdapter;
        if (discoverAdapter != null && (arrayList = discoverAdapter.pieces) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (arrayList.get(i) instanceof ModuleAnchorAdapter) {
                    NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = arrayList.get(i);
                    if (nVRecyclerViewBaseAdapter == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.topic.model.discover.ModuleAnchorAdapter");
                    }
                    ModuleAnchorAdapter moduleAnchorAdapter = (ModuleAnchorAdapter) nVRecyclerViewBaseAdapter;
                    Triple triple = arrayList2.size() > 0 ? (Triple) CollectionsKt.last(arrayList2) : null;
                    if (triple == null) {
                        arrayList2.add(new Triple<>(moduleAnchorAdapter.getContentModule(), Integer.valueOf(i), Integer.valueOf(arrayList.size())));
                    } else {
                        Triple<ContentModule, Integer, Integer> triple2 = new Triple<>(triple.getFirst(), triple.getSecond(), Integer.valueOf(i));
                        arrayList2.remove(triple);
                        arrayList2.add(triple2);
                        arrayList2.add(new Triple<>(moduleAnchorAdapter.getContentModule(), Integer.valueOf(i), Integer.valueOf(arrayList.size())));
                    }
                }
            }
        }
        return arrayList2;
    }

    public final boolean isInModuleList(List<? extends ContentModule> list, ContentModule contentModule) {
        if (!(list == null || list.isEmpty()) && contentModule != null) {
            Iterator<? extends ContentModule> it = list.iterator();
            while (it.hasNext()) {
                if (Utils.isEquals(it.next(), contentModule)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.narvii.language.LanguageChangeListener
    public void onLanguageChanged(String str) {
        sendModuleConfigRequest$default(this, null, false, 3, null);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new DiscoverModuleVideoListDelegate(this, getActivity());
    }

    public final FrameLayout getBottomLayout() {
        return this.bottomLayout;
    }

    public final void setBottomLayout(FrameLayout frameLayout) {
        this.bottomLayout = frameLayout;
    }

    @Override // com.narvii.master.home.story.CommentSheetDisplayHost
    public void setBottomSheetLayout(FrameLayout frameLayout) {
        this.bottomLayout = frameLayout;
    }

    public final void cleanDataSourceInterceptor() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter instanceof NVRecyclerViewAdapter) {
            DataSource dataSource = ((NVRecyclerViewAdapter) nVRecyclerViewBaseAdapter).getDataSource();
            if (dataSource != null) {
                dataSource.setDataSourceInterceptor(null);
                return;
            }
            return;
        }
        if (nVRecyclerViewBaseAdapter instanceof RecyclerViewMergeAdapter) {
            Iterator<NVRecyclerViewBaseAdapter> it = ((RecyclerViewMergeAdapter) nVRecyclerViewBaseAdapter).pieces.iterator();
            while (it.hasNext()) {
                NVRecyclerViewBaseAdapter next = it.next();
                if (next instanceof NVRecyclerViewAdapter) {
                    ((NVRecyclerViewAdapter) next).getDataSource().setDataSourceInterceptor(null);
                } else if (next instanceof RecyclerViewProxyAdapter) {
                    NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = ((RecyclerViewProxyAdapter) next).wrapped;
                    if (nVRecyclerViewBaseAdapter2 instanceof NVRecyclerViewAdapter) {
                        ((NVRecyclerViewAdapter) nVRecyclerViewBaseAdapter2).getDataSource().setDataSourceInterceptor(null);
                    }
                }
            }
        }
    }

    public final boolean getNeedRefreshWhenActive() {
        return this.needRefreshWhenActive;
    }

    public final void setNeedRefreshWhenActive(boolean z) {
        this.needRefreshWhenActive = z;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID) != 0) {
            return;
        }
        if (((notification != null ? notification.obj : null) instanceof TopicNotificationStub) && Intrinsics.areEqual(notification.action, "update")) {
            Object obj = notification.obj;
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.topic.TopicNotificationStub");
            }
            if (Intrinsics.areEqual(((TopicNotificationStub) obj).action, TopicNotificationStub.ACTION_BOOKMARK_STATE_CHANGE)) {
                Log.d("Content Module: Need refresh as bookmarked topic changed ");
                this.needRefreshWhenActive = true;
            }
        }
    }
}
