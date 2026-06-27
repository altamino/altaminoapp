package com.narvii.master.home.profile;

import android.graphics.Color;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.master.MasterHelper;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewAdapter;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.NVRecyclerViewRequestAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.SinglePageDataSource;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;

/* compiled from: LinkCommunityFragment.kt */
/* loaded from: classes3.dex */
public final class LinkCommunityFragment extends NVRecyclerViewFragment {
    private HashMap _$_findViewCache;
    private ApiService api;
    private ItemTouchHelper itemTouchHelper;
    private LinkedAdapter linkedAdapter;
    private DataSource<Community> linkedDataSource;
    private ProgressDialog progressDialog;
    private LinkedAdapter unlinkedAdapter;
    private DataSource<Community> unlinkedDataSource;
    private User user;
    private List<Community> linkedCommu = new ArrayList();
    private List<Community> unlinkedCommu = new ArrayList();
    private List<Community> linkedCommuCopy = new ArrayList();
    private int titleTextColor = Color.parseColor("#FFD0D0E8");
    private int optionTextColor = -1;
    private int optionBackgroundColor = Color.parseColor("#1AFFFFFF");

    /* compiled from: LinkCommunityFragment.kt */
    private interface ItemMoveListener {
        void onItemMoveEnd();

        void onItemMoved(int i, int i2);
    }

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

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected boolean isRefreshEnable() {
        return false;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ DataSource access$getLinkedDataSource$p(LinkCommunityFragment linkCommunityFragment) {
        DataSource<Community> dataSource = linkCommunityFragment.linkedDataSource;
        if (dataSource != null) {
            return dataSource;
        }
        Intrinsics.throwUninitializedPropertyAccessException("linkedDataSource");
        throw null;
    }

    public static final /* synthetic */ ProgressDialog access$getProgressDialog$p(LinkCommunityFragment linkCommunityFragment) {
        ProgressDialog progressDialog = linkCommunityFragment.progressDialog;
        if (progressDialog != null) {
            return progressDialog;
        }
        Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
        throw null;
    }

    public static final /* synthetic */ DataSource access$getUnlinkedDataSource$p(LinkCommunityFragment linkCommunityFragment) {
        DataSource<Community> dataSource = linkCommunityFragment.unlinkedDataSource;
        if (dataSource != null) {
            return dataSource;
        }
        Intrinsics.throwUninitializedPropertyAccessException("unlinkedDataSource");
        throw null;
    }

    public static final /* synthetic */ User access$getUser$p(LinkCommunityFragment linkCommunityFragment) {
        User user = linkCommunityFragment.user;
        if (user != null) {
            return user;
        }
        Intrinsics.throwUninitializedPropertyAccessException(GlobalProfileFragment.KEY_USER);
        throw null;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.linkedDataSource = new SinglePageDataSource<Community>(this) { // from class: com.narvii.master.home.profile.LinkCommunityFragment.onCreate.1
            @Override // com.narvii.paging.source.SinglePageDataSource
            public List<Community> pageData() {
                return LinkCommunityFragment.this.linkedCommu;
            }
        };
        this.unlinkedDataSource = new SinglePageDataSource<Community>(this) { // from class: com.narvii.master.home.profile.LinkCommunityFragment.onCreate.2
            @Override // com.narvii.paging.source.SinglePageDataSource
            public List<Community> pageData() {
                return LinkCommunityFragment.this.unlinkedCommu;
            }
        };
        setTitle(R.string.linked_communities);
        Object as = JacksonUtils.readAs(getStringParam(GlobalProfileFragment.KEY_USER), User.class);
        Intrinsics.checkExpressionValueIsNotNull(as, "JacksonUtils.readAs(getS…user\"), User::class.java)");
        this.user = (User) as;
        setDarkTheme(true);
        this.progressDialog = new ProgressDialog(getContext());
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        Object service = getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"api\")");
        this.api = (ApiService) service;
        ConfigService config = (ConfigService) getService("config");
        Intrinsics.checkExpressionValueIsNotNull(config, "config");
        this._backgroundColor = config.getTheme().colorPrimary();
        view.setBackgroundColor(this._backgroundColor);
        this.itemTouchHelper = new ItemTouchHelper(new LinkCommuTouchCallback(this, new ItemMoveListener() { // from class: com.narvii.master.home.profile.LinkCommunityFragment.onViewCreated.1
            @Override // com.narvii.master.home.profile.LinkCommunityFragment.ItemMoveListener
            public void onItemMoved(int i, int i2) {
                IntRange intRangeUntil = RangesKt___RangesKt.until(0, LinkCommunityFragment.this.linkedCommu.size());
                if (intRangeUntil.contains(i2) && intRangeUntil.contains(i)) {
                    Collections.swap(LinkCommunityFragment.this.linkedCommu, i, i2);
                    LinkCommunityFragment.access$getLinkedDataSource$p(LinkCommunityFragment.this).resetDataSource();
                    LinkCommunityFragment.access$getLinkedDataSource$p(LinkCommunityFragment.this).appendData(LinkCommunityFragment.this.linkedCommu, null);
                    LinkedAdapter linkedAdapter = LinkCommunityFragment.this.linkedAdapter;
                    if (linkedAdapter != null) {
                        linkedAdapter.notifyItemMoved(i, i2);
                    }
                }
            }

            @Override // com.narvii.master.home.profile.LinkCommunityFragment.ItemMoveListener
            public void onItemMoveEnd() {
                LinkCommunityFragment.this.reorderCommunity();
            }
        }));
        ItemTouchHelper itemTouchHelper = this.itemTouchHelper;
        if (itemTouchHelper != null) {
            itemTouchHelper.attachToRecyclerView(this.recyclerView);
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = new RecyclerViewMergeAdapter(this);
        DataSource<Community> dataSource = this.linkedDataSource;
        if (dataSource != null) {
            this.linkedAdapter = new LinkedAdapter(this, this, true, dataSource);
            DataSource<Community> dataSource2 = this.unlinkedDataSource;
            if (dataSource2 != null) {
                this.unlinkedAdapter = new LinkedAdapter(this, this, false, dataSource2);
                DataSource<Community> dataSource3 = this.linkedDataSource;
                if (dataSource3 != null) {
                    recyclerViewMergeAdapter.addAdapter(new TitleAdapter(this, this, R.string.linked, 28.0f, dataSource3));
                    recyclerViewMergeAdapter.addAdapter(this.linkedAdapter);
                    DataSource<Community> dataSource4 = this.unlinkedDataSource;
                    if (dataSource4 != null) {
                        recyclerViewMergeAdapter.addAdapter(new TitleAdapter(this, this, R.string.unlinked, 44.0f, dataSource4));
                        recyclerViewMergeAdapter.addAdapter(this.unlinkedAdapter);
                        recyclerViewMergeAdapter.addAdapter(new CreateCommuAdapter(this, this), true);
                        return recyclerViewMergeAdapter;
                    }
                    Intrinsics.throwUninitializedPropertyAccessException("unlinkedDataSource");
                    throw null;
                }
                Intrinsics.throwUninitializedPropertyAccessException("linkedDataSource");
                throw null;
            }
            Intrinsics.throwUninitializedPropertyAccessException("unlinkedDataSource");
            throw null;
        }
        Intrinsics.throwUninitializedPropertyAccessException("linkedDataSource");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeLinkCommunity(final int i) {
        int size = this.linkedCommu.size();
        if (i < 0 || size <= i) {
            return;
        }
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
            throw null;
        }
        progressDialog.show();
        Community community = this.linkedCommu.get(i);
        ApiRequest.Builder builder = new ApiRequest.Builder();
        StringBuilder sb = new StringBuilder();
        sb.append("user-profile/");
        User user = this.user;
        if (user == null) {
            Intrinsics.throwUninitializedPropertyAccessException(GlobalProfileFragment.KEY_USER);
            throw null;
        }
        sb.append(user.uid);
        sb.append("/linked-community/");
        sb.append(community.id());
        ApiRequest apiRequestBuild = builder.path(sb.toString()).delete().build();
        ApiService apiService = this.api;
        if (apiService != null) {
            apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.master.home.profile.LinkCommunityFragment.removeLinkCommunity.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    super.onFinish(apiRequest, apiResponse);
                    LinkCommunityFragment.access$getProgressDialog$p(LinkCommunityFragment.this).dismiss();
                    LinkCommunityFragment.this.unlinkedCommu.add((Community) LinkCommunityFragment.this.linkedCommu.remove(i));
                    LinkCommunityFragment.this.reloadData();
                    LinkCommunityFragment.this.sendUserChangedNotification();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i2, list, str, apiResponse, th);
                    LinkCommunityFragment.access$getProgressDialog$p(LinkCommunityFragment.this).dismiss();
                    NVToast.makeText(LinkCommunityFragment.this.getContext(), str, 0).show();
                    LinkCommunityFragment.this.reloadData();
                }
            });
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("api");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addLinkCommunity(final int i) {
        int size = this.unlinkedCommu.size();
        if (i < 0 || size <= i) {
            return;
        }
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
            throw null;
        }
        progressDialog.show();
        Community community = this.unlinkedCommu.get(i);
        ApiRequest.Builder builder = new ApiRequest.Builder();
        StringBuilder sb = new StringBuilder();
        sb.append("user-profile/");
        User user = this.user;
        if (user == null) {
            Intrinsics.throwUninitializedPropertyAccessException(GlobalProfileFragment.KEY_USER);
            throw null;
        }
        sb.append(user.uid);
        sb.append("/linked-community/");
        sb.append(community.id());
        ApiRequest apiRequestBuild = builder.path(sb.toString()).post().build();
        ApiService apiService = this.api;
        if (apiService != null) {
            apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.master.home.profile.LinkCommunityFragment.addLinkCommunity.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    super.onFinish(apiRequest, apiResponse);
                    LinkCommunityFragment.access$getProgressDialog$p(LinkCommunityFragment.this).dismiss();
                    LinkCommunityFragment.this.linkedCommu.add((Community) LinkCommunityFragment.this.unlinkedCommu.remove(i));
                    LinkCommunityFragment.this.reloadData();
                    LinkCommunityFragment.this.sendUserChangedNotification();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i2, list, str, apiResponse, th);
                    LinkCommunityFragment.access$getProgressDialog$p(LinkCommunityFragment.this).dismiss();
                    NVToast.makeText(LinkCommunityFragment.this.getContext(), str, 0).show();
                    LinkCommunityFragment.this.reloadData();
                }
            });
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("api");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void reorderCommunity() {
        if (Utils.isListEquals(this.linkedCommu, this.linkedCommuCopy)) {
            return;
        }
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
            throw null;
        }
        progressDialog.show();
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator<T> it = this.linkedCommu.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(((Community) it.next()).id);
        }
        ApiRequest.Builder builder = new ApiRequest.Builder();
        StringBuilder sb = new StringBuilder();
        sb.append("user-profile/");
        User user = this.user;
        if (user == null) {
            Intrinsics.throwUninitializedPropertyAccessException(GlobalProfileFragment.KEY_USER);
            throw null;
        }
        sb.append(user.uid);
        sb.append("/linked-community/reorder");
        ApiRequest apiRequestBuild = builder.path(sb.toString()).post().param("ndcIds", arrayNodeCreateArrayNode).build();
        ApiService apiService = this.api;
        if (apiService != null) {
            apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.master.home.profile.LinkCommunityFragment.reorderCommunity.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    super.onFinish(apiRequest, apiResponse);
                    LinkCommunityFragment.access$getProgressDialog$p(LinkCommunityFragment.this).dismiss();
                    LinkCommunityFragment.this.sendUserChangedNotification();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    LinkCommunityFragment.access$getProgressDialog$p(LinkCommunityFragment.this).dismiss();
                    NVToast.makeText(LinkCommunityFragment.this.getContext(), str, 0).show();
                    LinkCommunityFragment.this.linkedCommu.clear();
                    LinkCommunityFragment.this.linkedCommu.addAll(LinkCommunityFragment.this.linkedCommuCopy);
                    LinkCommunityFragment.this.reloadData();
                }
            });
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("api");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void reloadData() {
        DataSource<Community> dataSource = this.linkedDataSource;
        if (dataSource == null) {
            Intrinsics.throwUninitializedPropertyAccessException("linkedDataSource");
            throw null;
        }
        dataSource.loadInitData();
        DataSource<Community> dataSource2 = this.unlinkedDataSource;
        if (dataSource2 != null) {
            dataSource2.loadInitData();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("unlinkedDataSource");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendUserChangedNotification() {
        User user = this.user;
        if (user == null) {
            Intrinsics.throwUninitializedPropertyAccessException(GlobalProfileFragment.KEY_USER);
            throw null;
        }
        user.linkedCommunityList = this.linkedCommu;
        if (user == null) {
            Intrinsics.throwUninitializedPropertyAccessException(GlobalProfileFragment.KEY_USER);
            throw null;
        }
        sendNotification(new Notification("update", user));
    }

    /* compiled from: LinkCommunityFragment.kt */
    private final class TitleAdapter extends NVRecyclerViewAdapter<Community> {
        private final DataSource<Community> source;
        final /* synthetic */ LinkCommunityFragment this$0;
        private final int titleRes;
        private final float viewHeightDp;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TitleAdapter(LinkCommunityFragment linkCommunityFragment, NVContext ctx, int i, float f, DataSource<Community> source) {
            super(ctx, source);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            Intrinsics.checkParameterIsNotNull(source, "source");
            this.this$0 = linkCommunityFragment;
            this.titleRes = i;
            this.viewHeightDp = f;
            this.source = source;
        }

        public final DataSource<Community> getSource() {
            return this.source;
        }

        public final int getTitleRes() {
            return this.titleRes;
        }

        public final float getViewHeightDp() {
            return this.viewHeightDp;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.prefs_section_item, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…tion_item, parent, false)");
            return new TitleViewHolder(this, viewInflate);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        public DataSource<Community> createDataSource(NVContext nVContext) {
            return this.source;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return super.getItemCount() > 0 ? 1 : 0;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (holder instanceof TitleViewHolder) {
                TextView tv2 = ((TitleViewHolder) holder).getTv();
                tv2.setText(this.titleRes);
                tv2.setTextColor(this.this$0.titleTextColor);
                tv2.setAllCaps(false);
                holder.itemView.setBackgroundColor(((NVFragment) this.this$0)._backgroundColor);
            }
        }

        /* compiled from: LinkCommunityFragment.kt */
        private final class TitleViewHolder extends RecyclerView.ViewHolder {
            final /* synthetic */ TitleAdapter this$0;

            /* renamed from: tv, reason: collision with root package name */
            private final TextView f1tv;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public TitleViewHolder(TitleAdapter titleAdapter, View view) {
                super(view);
                Intrinsics.checkParameterIsNotNull(view, "view");
                this.this$0 = titleAdapter;
                View viewFindViewById = view.findViewById(R.id.text);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById(R.id.text)");
                this.f1tv = (TextView) viewFindViewById;
                view.getLayoutParams().height = (int) Utils.dpToPx(titleAdapter.getContext(), titleAdapter.getViewHeightDp());
            }

            public final TextView getTv() {
                return this.f1tv;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LinkCommunityFragment.kt */
    final class LinkedAdapter extends NVRecyclerViewAdapter<Community> {
        private final DataSource<Community> source;
        private final boolean supportDragSort;
        final /* synthetic */ LinkCommunityFragment this$0;

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinkedAdapter(LinkCommunityFragment linkCommunityFragment, NVContext ctx, boolean z, DataSource<Community> source) {
            super(ctx, source);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            Intrinsics.checkParameterIsNotNull(source, "source");
            this.this$0 = linkCommunityFragment;
            this.supportDragSort = z;
            this.source = source;
        }

        public final DataSource<Community> getSource() {
            return this.source;
        }

        public final boolean getSupportDragSort() {
            return this.supportDragSort;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.link_community_toggle_layout, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…le_layout, parent, false)");
            return new LinkedViewHolder(this, viewInflate);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        public DataSource<Community> createDataSource(NVContext nVContext) {
            return this.source;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (holder instanceof LinkedViewHolder) {
                ((LinkedViewHolder) holder).updateData((Community) this.source.getItem(i), i);
            }
        }

        /* compiled from: LinkCommunityFragment.kt */
        public final class LinkedViewHolder extends RecyclerView.ViewHolder {
            private final CheckBox checkBox;
            private final View dragSortView;
            private final ThumbImageView iconIV;
            private final TextView nameTV;
            private int pos;
            final /* synthetic */ LinkedAdapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public LinkedViewHolder(LinkedAdapter linkedAdapter, View view) {
                super(view);
                Intrinsics.checkParameterIsNotNull(view, "view");
                this.this$0 = linkedAdapter;
                View viewFindViewById = view.findViewById(R.id.community_icon);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById(R.id.community_icon)");
                this.iconIV = (ThumbImageView) viewFindViewById;
                View viewFindViewById2 = view.findViewById(R.id.community_name);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "view.findViewById(R.id.community_name)");
                this.nameTV = (TextView) viewFindViewById2;
                View viewFindViewById3 = view.findViewById(R.id.check_box);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "view.findViewById(R.id.check_box)");
                this.checkBox = (CheckBox) viewFindViewById3;
                View viewFindViewById4 = view.findViewById(R.id.drag_sort_view);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "view.findViewById(R.id.drag_sort_view)");
                this.dragSortView = viewFindViewById4;
                this.pos = -1;
            }

            public final ThumbImageView getIconIV() {
                return this.iconIV;
            }

            public final TextView getNameTV() {
                return this.nameTV;
            }

            public final CheckBox getCheckBox() {
                return this.checkBox;
            }

            public final View getDragSortView() {
                return this.dragSortView;
            }

            public final int getPos() {
                return this.pos;
            }

            public final void setPos(int i) {
                this.pos = i;
            }

            public final void updateData(Community community, final int i) {
                this.pos = this.this$0.getSupportDragSort() ? i : -1;
                if (community != null) {
                    this.iconIV.setImageUrl(community.icon);
                    this.nameTV.setText(community.name);
                    this.nameTV.setTextColor(this.this$0.this$0.optionTextColor);
                    this.itemView.setBackgroundColor(this.this$0.this$0.optionBackgroundColor);
                    this.checkBox.setButtonDrawable(this.this$0.isDarkTheme() ? R.drawable.switch_bg_dt : R.drawable.switch_bg);
                    this.checkBox.setChecked(this.this$0.getSupportDragSort());
                    this.checkBox.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            if (this.this$0.this$0.getSupportDragSort()) {
                                this.this$0.this$0.this$0.removeLinkCommunity(i);
                            } else {
                                this.this$0.this$0.this$0.addLinkCommunity(i);
                            }
                        }
                    });
                    if (this.this$0.getSupportDragSort()) {
                        this.dragSortView.setVisibility(0);
                        this.dragSortView.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.master.home.profile.LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$2
                            @Override // android.view.View.OnTouchListener
                            public final boolean onTouch(View view, MotionEvent event) {
                                Intrinsics.checkExpressionValueIsNotNull(event, "event");
                                if (event.getActionMasked() != 0) {
                                    return false;
                                }
                                this.this$0.this$0.this$0.linkedCommuCopy.clear();
                                this.this$0.this$0.this$0.linkedCommuCopy.addAll(this.this$0.this$0.this$0.linkedCommu);
                                ItemTouchHelper itemTouchHelper = this.this$0.this$0.this$0.itemTouchHelper;
                                if (itemTouchHelper == null) {
                                    return false;
                                }
                                itemTouchHelper.startDrag(this.this$0);
                                return false;
                            }
                        });
                    } else {
                        this.dragSortView.setVisibility(8);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LinkCommunityFragment.kt */
    final class CreateCommuAdapter extends NVRecyclerViewRequestAdapter<LinkCommunityResponse> {
        private final MasterHelper masterHelper;
        final /* synthetic */ LinkCommunityFragment this$0;

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CreateCommuAdapter(LinkCommunityFragment linkCommunityFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = linkCommunityFragment;
            this.masterHelper = new MasterHelper(ctx);
        }

        public final MasterHelper getMasterHelper() {
            return this.masterHelper;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewRequestAdapter
        protected Class<? extends LinkCommunityResponse> responseType() {
            return LinkCommunityResponse.class;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewRequestAdapter
        public ApiRequest createRequest() {
            ApiRequest apiRequestBuild = new ApiRequest.Builder().path("user-profile/" + LinkCommunityFragment.access$getUser$p(this.this$0).uid + "/linked-community").build();
            Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "ApiRequest.Builder().pat…inked-community\").build()");
            return apiRequestBuild;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.paging.adapter.NVRecyclerViewRequestAdapter
        public void onObjectResponse(ApiRequest apiRequest, LinkCommunityResponse linkCommunityResponse) {
            List<Community> listEmptyList;
            List<Community> listEmptyList2;
            super.onObjectResponse(apiRequest, (ApiRequest) linkCommunityResponse);
            this.this$0.linkedCommu.clear();
            List list = this.this$0.linkedCommu;
            if (linkCommunityResponse == null || (listEmptyList = linkCommunityResponse.getLinkedCommunityList()) == null) {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            list.addAll(listEmptyList);
            this.this$0.unlinkedCommu.clear();
            List list2 = this.this$0.unlinkedCommu;
            if (linkCommunityResponse == null || (listEmptyList2 = linkCommunityResponse.getUnlinkedCommunityList()) == null) {
                listEmptyList2 = CollectionsKt__CollectionsKt.emptyList();
            }
            list2.addAll(listEmptyList2);
            LinkCommunityFragment.access$getLinkedDataSource$p(this.this$0).loadInitData();
            LinkCommunityFragment.access$getUnlinkedDataSource$p(this.this$0).loadInitData();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.link_community_create_community_layout, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…ty_layout, parent, false)");
            return new CreateCommuViewHolder(this, viewInflate);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.LinkCommunityFragment$CreateCommuAdapter$onBindViewHolder$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.this$0.getMasterHelper().createAmino(null);
                }
            });
        }

        /* compiled from: LinkCommunityFragment.kt */
        private final class CreateCommuViewHolder extends RecyclerView.ViewHolder {
            final /* synthetic */ CreateCommuAdapter this$0;
            private final TintButton tintIcon;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CreateCommuViewHolder(CreateCommuAdapter createCommuAdapter, View view) {
                super(view);
                Intrinsics.checkParameterIsNotNull(view, "view");
                this.this$0 = createCommuAdapter;
                View viewFindViewById = view.findViewById(R.id.tint_add);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById(R.id.tint_add)");
                this.tintIcon = (TintButton) viewFindViewById;
                this.tintIcon.setTintColor(Color.parseColor("#FF50E3C2"));
            }

            public final TintButton getTintIcon() {
                return this.tintIcon;
            }
        }
    }

    /* compiled from: LinkCommunityFragment.kt */
    private final class LinkCommuTouchCallback extends ItemTouchHelper.Callback {
        private boolean hasMoved;
        private final ItemMoveListener listener;
        final /* synthetic */ LinkCommunityFragment this$0;

        @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
        public boolean isItemViewSwipeEnabled() {
            return false;
        }

        @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return false;
        }

        @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder p0, int i) {
            Intrinsics.checkParameterIsNotNull(p0, "p0");
        }

        public LinkCommuTouchCallback(LinkCommunityFragment linkCommunityFragment, ItemMoveListener listener) {
            Intrinsics.checkParameterIsNotNull(listener, "listener");
            this.this$0 = linkCommunityFragment;
            this.listener = listener;
        }

        public final ItemMoveListener getListener() {
            return this.listener;
        }

        @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
            Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
            return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
        }

        @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder target) {
            Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
            Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
            Intrinsics.checkParameterIsNotNull(target, "target");
            this.hasMoved = true;
            if ((viewHolder instanceof LinkedAdapter.LinkedViewHolder) && (target instanceof LinkedAdapter.LinkedViewHolder)) {
                LinkedAdapter.LinkedViewHolder linkedViewHolder = (LinkedAdapter.LinkedViewHolder) viewHolder;
                if (linkedViewHolder.getPos() >= 0) {
                    LinkedAdapter.LinkedViewHolder linkedViewHolder2 = (LinkedAdapter.LinkedViewHolder) target;
                    if (linkedViewHolder2.getPos() >= 0) {
                        int pos = linkedViewHolder2.getPos();
                        this.listener.onItemMoved(linkedViewHolder.getPos(), linkedViewHolder2.getPos());
                        linkedViewHolder2.setPos(linkedViewHolder.getPos());
                        linkedViewHolder.setPos(pos);
                    }
                }
            }
            return true;
        }

        @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            super.onSelectedChanged(viewHolder, i);
            if (i == 0 && this.hasMoved) {
                this.listener.onItemMoveEnd();
            }
        }
    }

    /* compiled from: LinkCommunityFragment.kt */
    public static final class LinkCommunityResponse extends ApiResponse {
        private final List<Community> linkedCommunityList;
        private final List<Community> unlinkedCommunityList;

        public final List<Community> getLinkedCommunityList() {
            return this.linkedCommunityList;
        }

        public final List<Community> getUnlinkedCommunityList() {
            return this.unlinkedCommunityList;
        }
    }
}
