package com.narvii.master.home.profile;

import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.master.R;
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
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class LinkCommunityFragment extends NVRecyclerViewFragment {
    private ApiService api;

    @Nullable
    private ItemTouchHelper itemTouchHelper;

    @Nullable
    private LinkedAdapter linkedAdapter;
    private DataSource<Community> linkedDataSource;
    private ProgressDialog progressDialog;

    @Nullable
    private LinkedAdapter unlinkedAdapter;
    private DataSource<Community> unlinkedDataSource;
    private User user;

    @NotNull
    private List<Community> linkedCommu = new ArrayList();

    @NotNull
    private List<Community> unlinkedCommu = new ArrayList();

    @NotNull
    private List<Community> linkedCommuCopy = new ArrayList();
    private int titleTextColor = Color.parseColor("#FFD0D0E8");
    private int optionTextColor = -1;
    private int optionBackgroundColor = Color.parseColor("#1AFFFFFF");

    /* JADX INFO: Access modifiers changed from: private */
    final class CreateCommuAdapter extends NVRecyclerViewRequestAdapter<LinkCommunityResponse> {

        @NotNull
        private final MasterHelper masterHelper;
        final /* synthetic */ LinkCommunityFragment this$0;

        private final class CreateCommuViewHolder extends RecyclerView.ViewHolder {
            final /* synthetic */ CreateCommuAdapter this$0;

            @NotNull
            private final TintButton tintIcon;

            @NotNull
            public final TintButton getTintIcon() {
                return this.tintIcon;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CreateCommuViewHolder(@NotNull CreateCommuAdapter createCommuAdapter, View view) {
                super(view);
                kotlin.jvm.internal.t.j(view, "view");
                this.this$0 = createCommuAdapter;
                View viewFindViewById = view.findViewById(R.id.tint_add);
                kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
                TintButton tintButton = (TintButton) viewFindViewById;
                this.tintIcon = tintButton;
                tintButton.setTintColor(Color.parseColor("#FF50E3C2"));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        @NotNull
        public final MasterHelper getMasterHelper() {
            return this.masterHelper;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewRequestAdapter
        @NotNull
        protected Class<? extends LinkCommunityResponse> responseType() {
            return LinkCommunityResponse.class;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CreateCommuAdapter(@NotNull LinkCommunityFragment linkCommunityFragment, NVContext ctx) {
            super(ctx);
            kotlin.jvm.internal.t.j(ctx, "ctx");
            this.this$0 = linkCommunityFragment;
            this.masterHelper = new MasterHelper(ctx);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$0(CreateCommuAdapter this$0, View view) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            this$0.masterHelper.createAmino(null);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewRequestAdapter
        @NotNull
        public ApiRequest createRequest() {
            ApiRequest.Builder builder = new ApiRequest.Builder();
            User user = this.this$0.user;
            if (user == null) {
                kotlin.jvm.internal.t.B(GlobalProfileFragment.KEY_USER);
                user = null;
            }
            ApiRequest apiRequestBuild = builder.path("user-profile/" + user.uid + "/linked-community").build();
            kotlin.jvm.internal.t.i(apiRequestBuild, "build(...)");
            return apiRequestBuild;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            kotlin.jvm.internal.t.j(holder, "holder");
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LinkCommunityFragment.CreateCommuAdapter.onBindViewHolder$lambda$0(this.f2349a, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            kotlin.jvm.internal.t.j(parent, "parent");
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.link_community_create_community_layout, parent, false);
            kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
            return new CreateCommuViewHolder(this, viewInflate);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.paging.adapter.NVRecyclerViewRequestAdapter
        public void onObjectResponse(@Nullable ApiRequest apiRequest, @Nullable LinkCommunityResponse linkCommunityResponse) {
            List<Community> listM;
            List<Community> listM2;
            super.onObjectResponse(apiRequest, linkCommunityResponse);
            this.this$0.linkedCommu.clear();
            List list = this.this$0.linkedCommu;
            if (linkCommunityResponse == null || (listM = linkCommunityResponse.getLinkedCommunityList()) == null) {
                listM = kotlin.collections.v.m();
            }
            list.addAll(listM);
            this.this$0.unlinkedCommu.clear();
            List list2 = this.this$0.unlinkedCommu;
            if (linkCommunityResponse == null || (listM2 = linkCommunityResponse.getUnlinkedCommunityList()) == null) {
                listM2 = kotlin.collections.v.m();
            }
            list2.addAll(listM2);
            DataSource dataSource = this.this$0.linkedDataSource;
            DataSource dataSource2 = null;
            if (dataSource == null) {
                kotlin.jvm.internal.t.B("linkedDataSource");
                dataSource = null;
            }
            dataSource.loadInitData();
            DataSource dataSource3 = this.this$0.unlinkedDataSource;
            if (dataSource3 == null) {
                kotlin.jvm.internal.t.B("unlinkedDataSource");
            } else {
                dataSource2 = dataSource3;
            }
            dataSource2.loadInitData();
        }
    }

    private interface ItemMoveListener {
        void onItemMoveEnd();

        void onItemMoved(int i10, int i11);
    }

    private final class LinkCommuTouchCallback extends ItemTouchHelper.Callback {
        private boolean hasMoved;

        @NotNull
        private final ItemMoveListener listener;
        final /* synthetic */ LinkCommunityFragment this$0;

        @NotNull
        public final ItemMoveListener getListener() {
            return this.listener;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isItemViewSwipeEnabled() {
            return false;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return false;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(@NotNull RecyclerView.ViewHolder p0, int i10) {
            kotlin.jvm.internal.t.j(p0, "p0");
        }

        public LinkCommuTouchCallback(@NotNull LinkCommunityFragment linkCommunityFragment, ItemMoveListener listener) {
            kotlin.jvm.internal.t.j(listener, "listener");
            this.this$0 = linkCommunityFragment;
            this.listener = listener;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
            kotlin.jvm.internal.t.j(recyclerView, "recyclerView");
            kotlin.jvm.internal.t.j(viewHolder, "viewHolder");
            return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, @NotNull RecyclerView.ViewHolder target) {
            kotlin.jvm.internal.t.j(recyclerView, "recyclerView");
            kotlin.jvm.internal.t.j(viewHolder, "viewHolder");
            kotlin.jvm.internal.t.j(target, "target");
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

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int i10) {
            super.onSelectedChanged(viewHolder, i10);
            if (i10 == 0 && this.hasMoved) {
                this.listener.onItemMoveEnd();
            }
        }
    }

    public static final class LinkCommunityResponse extends ApiResponse {

        @Nullable
        private final List<Community> linkedCommunityList;

        @Nullable
        private final List<Community> unlinkedCommunityList;

        @Nullable
        public final List<Community> getLinkedCommunityList() {
            return this.linkedCommunityList;
        }

        @Nullable
        public final List<Community> getUnlinkedCommunityList() {
            return this.unlinkedCommunityList;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class LinkedAdapter extends NVRecyclerViewAdapter<Community> {

        @NotNull
        private final DataSource<Community> source;
        private final boolean supportDragSort;
        final /* synthetic */ LinkCommunityFragment this$0;

        public final class LinkedViewHolder extends RecyclerView.ViewHolder {

            @NotNull
            private final CheckBox checkBox;

            @NotNull
            private final View dragSortView;

            @NotNull
            private final ThumbImageView iconIV;

            @NotNull
            private final TextView nameTV;
            private int pos;
            final /* synthetic */ LinkedAdapter this$0;

            @NotNull
            public final CheckBox getCheckBox() {
                return this.checkBox;
            }

            @NotNull
            public final View getDragSortView() {
                return this.dragSortView;
            }

            @NotNull
            public final ThumbImageView getIconIV() {
                return this.iconIV;
            }

            @NotNull
            public final TextView getNameTV() {
                return this.nameTV;
            }

            public final int getPos() {
                return this.pos;
            }

            public final void setPos(int i10) {
                this.pos = i10;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public LinkedViewHolder(@NotNull LinkedAdapter linkedAdapter, View view) {
                super(view);
                kotlin.jvm.internal.t.j(view, "view");
                this.this$0 = linkedAdapter;
                View viewFindViewById = view.findViewById(R.id.community_icon);
                kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
                this.iconIV = (ThumbImageView) viewFindViewById;
                View viewFindViewById2 = view.findViewById(R.id.community_name);
                kotlin.jvm.internal.t.i(viewFindViewById2, "findViewById(...)");
                this.nameTV = (TextView) viewFindViewById2;
                View viewFindViewById3 = view.findViewById(R.id.check_box);
                kotlin.jvm.internal.t.i(viewFindViewById3, "findViewById(...)");
                this.checkBox = (CheckBox) viewFindViewById3;
                View viewFindViewById4 = view.findViewById(R.id.drag_sort_view);
                kotlin.jvm.internal.t.i(viewFindViewById4, "findViewById(...)");
                this.dragSortView = viewFindViewById4;
                this.pos = -1;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void updateData$lambda$2$lambda$0(LinkedAdapter this$0, LinkCommunityFragment this$1, int i10, View view) {
                kotlin.jvm.internal.t.j(this$0, "this$0");
                kotlin.jvm.internal.t.j(this$1, "this$1");
                if (this$0.getSupportDragSort()) {
                    this$1.removeLinkCommunity(i10);
                } else {
                    this$1.addLinkCommunity(i10);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final boolean updateData$lambda$2$lambda$1(LinkCommunityFragment this$0, LinkedViewHolder this$1, View view, MotionEvent motionEvent) {
                kotlin.jvm.internal.t.j(this$0, "this$0");
                kotlin.jvm.internal.t.j(this$1, "this$1");
                if (motionEvent.getActionMasked() != 0) {
                    return false;
                }
                this$0.linkedCommuCopy.clear();
                this$0.linkedCommuCopy.addAll(this$0.linkedCommu);
                ItemTouchHelper itemTouchHelper = this$0.itemTouchHelper;
                if (itemTouchHelper == null) {
                    return false;
                }
                itemTouchHelper.z(this$1);
                return false;
            }

            public final void updateData(@Nullable Community community, final int i10) {
                this.pos = this.this$0.getSupportDragSort() ? i10 : -1;
                if (community != null) {
                    final LinkedAdapter linkedAdapter = this.this$0;
                    final LinkCommunityFragment linkCommunityFragment = linkedAdapter.this$0;
                    this.iconIV.setImageUrl(community.icon);
                    this.nameTV.setText(community.name);
                    this.nameTV.setTextColor(linkCommunityFragment.optionTextColor);
                    this.itemView.setBackgroundColor(linkCommunityFragment.optionBackgroundColor);
                    this.checkBox.setButtonDrawable(linkedAdapter.isDarkTheme() ? R.drawable.switch_bg_dt : R.drawable.switch_bg);
                    this.checkBox.setChecked(linkedAdapter.getSupportDragSort());
                    this.checkBox.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.d0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            LinkCommunityFragment.LinkedAdapter.LinkedViewHolder.updateData$lambda$2$lambda$0(linkedAdapter, linkCommunityFragment, i10, view);
                        }
                    });
                    if (!linkedAdapter.getSupportDragSort()) {
                        this.dragSortView.setVisibility(8);
                    } else {
                        this.dragSortView.setVisibility(0);
                        this.dragSortView.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.master.home.profile.e0
                            @Override // android.view.View.OnTouchListener
                            public final boolean onTouch(View view, MotionEvent motionEvent) {
                                return LinkCommunityFragment.LinkedAdapter.LinkedViewHolder.updateData$lambda$2$lambda$1(linkCommunityFragment, this, view, motionEvent);
                            }
                        });
                    }
                }
            }
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        @NotNull
        public DataSource<Community> createDataSource(@Nullable NVContext nVContext) {
            return this.source;
        }

        @NotNull
        public final DataSource<Community> getSource() {
            return this.source;
        }

        public final boolean getSupportDragSort() {
            return this.supportDragSort;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinkedAdapter(@NotNull LinkCommunityFragment linkCommunityFragment, NVContext ctx, @NotNull boolean z6, DataSource<Community> source) {
            super(ctx, source);
            kotlin.jvm.internal.t.j(ctx, "ctx");
            kotlin.jvm.internal.t.j(source, "source");
            this.this$0 = linkCommunityFragment;
            this.supportDragSort = z6;
            this.source = source;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            kotlin.jvm.internal.t.j(holder, "holder");
            if (holder instanceof LinkedViewHolder) {
                ((LinkedViewHolder) holder).updateData((Community) this.source.getItem(i10), i10);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            kotlin.jvm.internal.t.j(parent, "parent");
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.link_community_toggle_layout, parent, false);
            kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
            return new LinkedViewHolder(this, viewInflate);
        }
    }

    private final class TitleAdapter extends NVRecyclerViewAdapter<Community> {

        @NotNull
        private final DataSource<Community> source;
        final /* synthetic */ LinkCommunityFragment this$0;
        private final int titleRes;
        private final float viewHeightDp;

        private final class TitleViewHolder extends RecyclerView.ViewHolder {
            final /* synthetic */ TitleAdapter this$0;

            @NotNull
            private final TextView tv;

            @NotNull
            public final TextView getTv() {
                return this.tv;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public TitleViewHolder(@NotNull TitleAdapter titleAdapter, View view) {
                super(view);
                kotlin.jvm.internal.t.j(view, "view");
                this.this$0 = titleAdapter;
                View viewFindViewById = view.findViewById(R.id.text);
                kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
                this.tv = (TextView) viewFindViewById;
                view.getLayoutParams().height = (int) Utils.dpToPx(titleAdapter.getContext(), titleAdapter.getViewHeightDp());
            }
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        @NotNull
        public DataSource<Community> createDataSource(@Nullable NVContext nVContext) {
            return this.source;
        }

        @NotNull
        public final DataSource<Community> getSource() {
            return this.source;
        }

        public final int getTitleRes() {
            return this.titleRes;
        }

        public final float getViewHeightDp() {
            return this.viewHeightDp;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TitleAdapter(@NotNull LinkCommunityFragment linkCommunityFragment, NVContext ctx, int i10, @NotNull float f, DataSource<Community> source) {
            super(ctx, source);
            kotlin.jvm.internal.t.j(ctx, "ctx");
            kotlin.jvm.internal.t.j(source, "source");
            this.this$0 = linkCommunityFragment;
            this.titleRes = i10;
            this.viewHeightDp = f;
            this.source = source;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            kotlin.jvm.internal.t.j(holder, "holder");
            if (holder instanceof TitleViewHolder) {
                TextView tv = ((TitleViewHolder) holder).getTv();
                LinkCommunityFragment linkCommunityFragment = this.this$0;
                tv.setText(this.titleRes);
                tv.setTextColor(linkCommunityFragment.titleTextColor);
                tv.setAllCaps(false);
                holder.itemView.setBackgroundColor(((NVFragment) this.this$0)._backgroundColor);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            kotlin.jvm.internal.t.j(parent, "parent");
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.prefs_section_item, parent, false);
            kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
            return new TitleViewHolder(this, viewInflate);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (super.getItemCount() > 0) {
                return 1;
            }
            return 0;
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected boolean isRefreshEnable() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addLinkCommunity(final int i10) {
        if (i10 < 0 || i10 >= this.unlinkedCommu.size()) {
            return;
        }
        ProgressDialog progressDialog = this.progressDialog;
        ApiService apiService = null;
        if (progressDialog == null) {
            kotlin.jvm.internal.t.B("progressDialog");
            progressDialog = null;
        }
        progressDialog.show();
        Community community = this.unlinkedCommu.get(i10);
        ApiRequest.Builder builder = new ApiRequest.Builder();
        User user = this.user;
        if (user == null) {
            kotlin.jvm.internal.t.B(GlobalProfileFragment.KEY_USER);
            user = null;
        }
        ApiRequest apiRequestBuild = builder.path("user-profile/" + user.uid + "/linked-community/" + community.id()).post().build();
        ApiService apiService2 = this.api;
        if (apiService2 == null) {
            kotlin.jvm.internal.t.B("api");
        } else {
            apiService = apiService2;
        }
        apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.master.home.profile.LinkCommunityFragment.addLinkCommunity.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i11, list, str, apiResponse, th);
                ProgressDialog progressDialog2 = LinkCommunityFragment.this.progressDialog;
                if (progressDialog2 == null) {
                    kotlin.jvm.internal.t.B("progressDialog");
                    progressDialog2 = null;
                }
                progressDialog2.dismiss();
                NVToast.makeText(LinkCommunityFragment.this.getContext(), str, 0).show();
                LinkCommunityFragment.this.reloadData();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                ProgressDialog progressDialog2 = LinkCommunityFragment.this.progressDialog;
                if (progressDialog2 == null) {
                    kotlin.jvm.internal.t.B("progressDialog");
                    progressDialog2 = null;
                }
                progressDialog2.dismiss();
                LinkCommunityFragment.this.linkedCommu.add((Community) LinkCommunityFragment.this.unlinkedCommu.remove(i10));
                LinkCommunityFragment.this.reloadData();
                LinkCommunityFragment.this.sendUserChangedNotification();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void reloadData() {
        DataSource<Community> dataSource = this.linkedDataSource;
        DataSource<Community> dataSource2 = null;
        if (dataSource == null) {
            kotlin.jvm.internal.t.B("linkedDataSource");
            dataSource = null;
        }
        dataSource.loadInitData();
        DataSource<Community> dataSource3 = this.unlinkedDataSource;
        if (dataSource3 == null) {
            kotlin.jvm.internal.t.B("unlinkedDataSource");
        } else {
            dataSource2 = dataSource3;
        }
        dataSource2.loadInitData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeLinkCommunity(final int i10) {
        if (i10 < 0 || i10 >= this.linkedCommu.size()) {
            return;
        }
        ProgressDialog progressDialog = this.progressDialog;
        ApiService apiService = null;
        if (progressDialog == null) {
            kotlin.jvm.internal.t.B("progressDialog");
            progressDialog = null;
        }
        progressDialog.show();
        Community community = this.linkedCommu.get(i10);
        ApiRequest.Builder builder = new ApiRequest.Builder();
        User user = this.user;
        if (user == null) {
            kotlin.jvm.internal.t.B(GlobalProfileFragment.KEY_USER);
            user = null;
        }
        ApiRequest apiRequestBuild = builder.path("user-profile/" + user.uid + "/linked-community/" + community.id()).delete().build();
        ApiService apiService2 = this.api;
        if (apiService2 == null) {
            kotlin.jvm.internal.t.B("api");
        } else {
            apiService = apiService2;
        }
        apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.master.home.profile.LinkCommunityFragment.removeLinkCommunity.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i11, list, str, apiResponse, th);
                ProgressDialog progressDialog2 = LinkCommunityFragment.this.progressDialog;
                if (progressDialog2 == null) {
                    kotlin.jvm.internal.t.B("progressDialog");
                    progressDialog2 = null;
                }
                progressDialog2.dismiss();
                NVToast.makeText(LinkCommunityFragment.this.getContext(), str, 0).show();
                LinkCommunityFragment.this.reloadData();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                ProgressDialog progressDialog2 = LinkCommunityFragment.this.progressDialog;
                if (progressDialog2 == null) {
                    kotlin.jvm.internal.t.B("progressDialog");
                    progressDialog2 = null;
                }
                progressDialog2.dismiss();
                LinkCommunityFragment.this.unlinkedCommu.add((Community) LinkCommunityFragment.this.linkedCommu.remove(i10));
                LinkCommunityFragment.this.reloadData();
                LinkCommunityFragment.this.sendUserChangedNotification();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void reorderCommunity() {
        if (Utils.isListEquals(this.linkedCommu, this.linkedCommuCopy)) {
            return;
        }
        ProgressDialog progressDialog = this.progressDialog;
        ApiService apiService = null;
        if (progressDialog == null) {
            kotlin.jvm.internal.t.B("progressDialog");
            progressDialog = null;
        }
        progressDialog.show();
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator<T> it = this.linkedCommu.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(((Community) it.next()).id);
        }
        ApiRequest.Builder builder = new ApiRequest.Builder();
        User user = this.user;
        if (user == null) {
            kotlin.jvm.internal.t.B(GlobalProfileFragment.KEY_USER);
            user = null;
        }
        ApiRequest apiRequestBuild = builder.path("user-profile/" + user.uid + "/linked-community/reorder").post().param("ndcIds", arrayNodeCreateArrayNode).build();
        ApiService apiService2 = this.api;
        if (apiService2 == null) {
            kotlin.jvm.internal.t.B("api");
        } else {
            apiService = apiService2;
        }
        apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.master.home.profile.LinkCommunityFragment.reorderCommunity.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                ProgressDialog progressDialog2 = LinkCommunityFragment.this.progressDialog;
                if (progressDialog2 == null) {
                    kotlin.jvm.internal.t.B("progressDialog");
                    progressDialog2 = null;
                }
                progressDialog2.dismiss();
                NVToast.makeText(LinkCommunityFragment.this.getContext(), str, 0).show();
                LinkCommunityFragment.this.linkedCommu.clear();
                LinkCommunityFragment.this.linkedCommu.addAll(LinkCommunityFragment.this.linkedCommuCopy);
                LinkCommunityFragment.this.reloadData();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                ProgressDialog progressDialog2 = LinkCommunityFragment.this.progressDialog;
                if (progressDialog2 == null) {
                    kotlin.jvm.internal.t.B("progressDialog");
                    progressDialog2 = null;
                }
                progressDialog2.dismiss();
                LinkCommunityFragment.this.sendUserChangedNotification();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendUserChangedNotification() {
        User user = this.user;
        User user2 = null;
        if (user == null) {
            kotlin.jvm.internal.t.B(GlobalProfileFragment.KEY_USER);
            user = null;
        }
        user.linkedCommunityList = this.linkedCommu;
        User user3 = this.user;
        if (user3 == null) {
            kotlin.jvm.internal.t.B(GlobalProfileFragment.KEY_USER);
        } else {
            user2 = user3;
        }
        sendNotification(new Notification("update", user2));
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected NVRecyclerViewBaseAdapter createAdapter() {
        DataSource<Community> dataSource;
        DataSource<Community> dataSource2;
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = new RecyclerViewMergeAdapter(this);
        DataSource<Community> dataSource3 = this.linkedDataSource;
        if (dataSource3 == null) {
            kotlin.jvm.internal.t.B("linkedDataSource");
            dataSource3 = null;
        }
        this.linkedAdapter = new LinkedAdapter(this, this, true, dataSource3);
        DataSource<Community> dataSource4 = this.unlinkedDataSource;
        if (dataSource4 == null) {
            kotlin.jvm.internal.t.B("unlinkedDataSource");
            dataSource4 = null;
        }
        this.unlinkedAdapter = new LinkedAdapter(this, this, false, dataSource4);
        DataSource<Community> dataSource5 = this.linkedDataSource;
        if (dataSource5 == null) {
            kotlin.jvm.internal.t.B("linkedDataSource");
            dataSource = null;
        } else {
            dataSource = dataSource5;
        }
        recyclerViewMergeAdapter.addAdapter(new TitleAdapter(this, this, R.string.linked, 28.0f, dataSource));
        recyclerViewMergeAdapter.addAdapter(this.linkedAdapter);
        DataSource<Community> dataSource6 = this.unlinkedDataSource;
        if (dataSource6 == null) {
            kotlin.jvm.internal.t.B("unlinkedDataSource");
            dataSource2 = null;
        } else {
            dataSource2 = dataSource6;
        }
        recyclerViewMergeAdapter.addAdapter(new TitleAdapter(this, this, R.string.unlinked, 44.0f, dataSource2));
        recyclerViewMergeAdapter.addAdapter(this.unlinkedAdapter);
        recyclerViewMergeAdapter.addAdapter(new CreateCommuAdapter(this, this), true);
        return recyclerViewMergeAdapter;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        Object service = getService("api");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        this.api = (ApiService) service;
        int iColorPrimary = ((ConfigService) getService("config")).getTheme().colorPrimary();
        this._backgroundColor = iColorPrimary;
        view.setBackgroundColor(iColorPrimary);
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new LinkCommuTouchCallback(this, new ItemMoveListener() { // from class: com.narvii.master.home.profile.LinkCommunityFragment.onViewCreated.1
            @Override // com.narvii.master.home.profile.LinkCommunityFragment.ItemMoveListener
            public void onItemMoveEnd() {
                LinkCommunityFragment.this.reorderCommunity();
            }

            @Override // com.narvii.master.home.profile.LinkCommunityFragment.ItemMoveListener
            public void onItemMoved(int i10, int i11) {
                j8.i iVarV = j8.o.v(0, LinkCommunityFragment.this.linkedCommu.size());
                int iE = iVarV.e();
                if (i11 > iVarV.f() || iE > i11) {
                    return;
                }
                int iE2 = iVarV.e();
                if (i10 > iVarV.f() || iE2 > i10) {
                    return;
                }
                Collections.swap(LinkCommunityFragment.this.linkedCommu, i10, i11);
                DataSource dataSource = LinkCommunityFragment.this.linkedDataSource;
                if (dataSource == null) {
                    kotlin.jvm.internal.t.B("linkedDataSource");
                    dataSource = null;
                }
                dataSource.resetDataSource();
                DataSource dataSource2 = LinkCommunityFragment.this.linkedDataSource;
                if (dataSource2 == null) {
                    kotlin.jvm.internal.t.B("linkedDataSource");
                    dataSource2 = null;
                }
                dataSource2.appendData(LinkCommunityFragment.this.linkedCommu, null);
                LinkedAdapter linkedAdapter = LinkCommunityFragment.this.linkedAdapter;
                if (linkedAdapter != null) {
                    linkedAdapter.notifyItemMoved(i10, i11);
                }
            }
        }));
        this.itemTouchHelper = itemTouchHelper;
        itemTouchHelper.e(this.recyclerView);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.linkedDataSource = new SinglePageDataSource<Community>() { // from class: com.narvii.master.home.profile.LinkCommunityFragment.onCreate.1
            {
                super(LinkCommunityFragment.this);
            }

            @Override // com.narvii.paging.source.SinglePageDataSource
            @NotNull
            public List<Community> pageData() {
                return LinkCommunityFragment.this.linkedCommu;
            }
        };
        this.unlinkedDataSource = new SinglePageDataSource<Community>() { // from class: com.narvii.master.home.profile.LinkCommunityFragment.onCreate.2
            {
                super(LinkCommunityFragment.this);
            }

            @Override // com.narvii.paging.source.SinglePageDataSource
            @NotNull
            public List<Community> pageData() {
                return LinkCommunityFragment.this.unlinkedCommu;
            }
        };
        setTitle(R.string.linked_communities);
        Object as = JacksonUtils.readAs(getStringParam(GlobalProfileFragment.KEY_USER), User.class);
        kotlin.jvm.internal.t.i(as, "readAs(...)");
        this.user = (User) as;
        setDarkTheme(true);
        this.progressDialog = new ProgressDialog(getContext());
    }
}
