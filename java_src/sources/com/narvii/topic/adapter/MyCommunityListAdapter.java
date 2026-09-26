package com.narvii.topic.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.community.MyCommunityHelper;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.community.MyCommunityListService;
import com.narvii.logging.LogUtils;
import com.narvii.master.CommunityListResponse;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.PromotionalImageView;
import com.narvii.widget.SmoothProgressBar;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public class MyCommunityListAdapter extends NVRecyclerViewBaseAdapter implements ChatService.ChatMessageReceptor, MyCommunityListService.MyCommunityListObserver {

    @Nullable
    private FragmentActivity activity;

    @NotNull
    private final MyCommunityHelper myCommunityHelper;

    @Nullable
    private OnRefreshListener refreshListener;

    public interface OnRefreshListener {
        void onFailed();

        void onFinish();

        void onListChanged();
    }

    public final class ViewHolder extends RecyclerView.ViewHolder {

        @NotNull
        private final w7.m disabledView$delegate;

        @NotNull
        private final w7.m icon$delegate;

        @NotNull
        private final w7.m image$delegate;

        @NotNull
        private final w7.m probationView$delegate;

        @NotNull
        private final w7.m progress$delegate;
        final /* synthetic */ MyCommunityListAdapter this$0;

        @NotNull
        private final w7.m title$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(@NotNull MyCommunityListAdapter myCommunityListAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = myCommunityListAdapter;
            this.image$delegate = myCommunityListAdapter.bind(this, R.id.image);
            this.icon$delegate = myCommunityListAdapter.bind(this, R.id.icon);
            this.title$delegate = myCommunityListAdapter.bind(this, R.id.title);
            this.progress$delegate = myCommunityListAdapter.bind(this, R.id.progress);
            this.probationView$delegate = myCommunityListAdapter.bind(this, R.id.probation);
            this.disabledView$delegate = myCommunityListAdapter.bind(this, R.id.disabled);
            getImage().showLaunchPage = true;
            getImage().preloadCachedImage = true;
            ViewUtils.setMontserratExtraBoldTypeface(getTitle());
        }

        @NotNull
        public final View getDisabledView() {
            return (View) this.disabledView$delegate.getValue();
        }

        @NotNull
        public final CommunityIconView getIcon() {
            return (CommunityIconView) this.icon$delegate.getValue();
        }

        @NotNull
        public final PromotionalImageView getImage() {
            return (PromotionalImageView) this.image$delegate.getValue();
        }

        @NotNull
        public final View getProbationView() {
            return (View) this.probationView$delegate.getValue();
        }

        @NotNull
        public final View getProgress() {
            return (View) this.progress$delegate.getValue();
        }

        @NotNull
        public final TextView getTitle() {
            return (TextView) this.title$delegate.getValue();
        }

        public final void updateData(@NotNull Community c7) {
            kotlin.jvm.internal.t.j(c7, "c");
            User userProfile = this.this$0.getMyCommunityHelper().getUserProfile(c7.id);
            int i10 = 0;
            boolean z6 = c7.status == 9;
            boolean z10 = c7.probationStatus == 1 && userProfile != null && userProfile.isLeader();
            getImage().setCommunity(c7);
            getIcon().setImageUrl(c7.icon);
            getIcon().setStrokeColor(c7.themeColor());
            getTitle().setText(c7.name);
            getProbationView().setVisibility((z6 || !z10) ? 8 : 0);
            getDisabledView().setVisibility(z6 ? 0 : 8);
            View viewFindViewById = this.itemView.findViewById(R.id.progress);
            if (viewFindViewById != this.this$0.launchProgress()) {
                i10 = 4;
            } else if (this.this$0.launchCommunity() != null) {
                Community communityLaunchCommunity = this.this$0.launchCommunity();
                kotlin.jvm.internal.t.g(communityLaunchCommunity);
                if (communityLaunchCommunity.id != c7.id) {
                    this.this$0.getMyCommunityHelper().cancelLaunch();
                    i10 = 4;
                }
            }
            viewFindViewById.setVisibility(i10);
            MyCommunityHelper myCommunityHelper = this.this$0.getMyCommunityHelper();
            View itemView = this.itemView;
            kotlin.jvm.internal.t.i(itemView, "itemView");
            myCommunityHelper.updateRemindersInCell(itemView, c7, true);
            MyCommunityHelper myCommunityHelper2 = this.this$0.getMyCommunityHelper();
            View itemView2 = this.itemView;
            kotlin.jvm.internal.t.i(itemView2, "itemView");
            myCommunityHelper2.updateThemeProgressInCell(itemView2, c7);
            this.itemView.setOnClickListener(this.this$0.subviewClickListener);
            this.itemView.setOnLongClickListener(this.this$0.subviewLongClickListener);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.topic.adapter.MyCommunityListAdapter$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends kotlin.jvm.internal.v implements e8.a<T> {
        final /* synthetic */ int $res;
        final /* synthetic */ ViewHolder $this_bind;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ViewHolder viewHolder, int i10) {
            super(0);
            this.$this_bind = viewHolder;
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        public final View invoke() {
            return this.$this_bind.itemView.findViewById(this.$res);
        }
    }

    /* JADX INFO: renamed from: com.narvii.topic.adapter.MyCommunityListAdapter$firstRefreshList$1, reason: invalid class name and case insensitive filesystem */
    static final class C05601 extends kotlin.jvm.internal.v implements e8.l<Integer, l0> {
        C05601() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Integer num) {
            invoke(num.intValue());
            return l0.INSTANCE;
        }

        public final void invoke(int i10) {
            if (i10 == 0) {
                MyCommunityListAdapter.this.loadFinish();
            } else {
                if (i10 != 1) {
                    return;
                }
                MyCommunityListAdapter.this.loadFailed();
            }
        }
    }

    /* JADX INFO: renamed from: com.narvii.topic.adapter.MyCommunityListAdapter$onItemClick$1, reason: invalid class name and case insensitive filesystem */
    static final class C05611 extends kotlin.jvm.internal.v implements e8.l<Object, l0> {
        final /* synthetic */ Object $item;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05611(Object obj) {
            super(1);
            this.$item = obj;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Object obj) {
            invoke2(obj);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull Object it) {
            kotlin.jvm.internal.t.j(it, "it");
            MyCommunityListAdapter.this.onEnterCommunity((Community) this.$item);
        }
    }

    /* JADX INFO: renamed from: com.narvii.topic.adapter.MyCommunityListAdapter$refresh$1, reason: invalid class name and case insensitive filesystem */
    static final class C05621 extends kotlin.jvm.internal.v implements e8.l<Integer, l0> {
        C05621() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Integer num) {
            invoke(num.intValue());
            return l0.INSTANCE;
        }

        public final void invoke(int i10) {
            if (i10 == 0) {
                MyCommunityListAdapter.this.loadFinish();
            } else {
                if (i10 != 1) {
                    return;
                }
                MyCommunityListAdapter.this.loadFailed();
            }
        }
    }

    public int communityLayoutId() {
        return R.layout.item_my_community_card_horizontal;
    }

    @NotNull
    public final MyCommunityHelper getMyCommunityHelper() {
        return this.myCommunityHelper;
    }

    @Nullable
    public final OnRefreshListener getRefreshListener() {
        return this.refreshListener;
    }

    public void onEnterCommunity(@NotNull Community community) {
        kotlin.jvm.internal.t.j(community, "community");
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i10, @NotNull ChatMessageDto chatMessageDto) {
        kotlin.jvm.internal.t.j(chatMessageDto, "chatMessageDto");
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(@Nullable MyCommunityListService myCommunityListService, @Nullable CommunityListResponse communityListResponse) {
    }

    public final void setRefreshListener(@Nullable OnRefreshListener onRefreshListener) {
        this.refreshListener = onRefreshListener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyCommunityListAdapter(@NotNull NVContext ctx) {
        FragmentActivity activity;
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        MyCommunityHelper myCommunityHelper = new MyCommunityHelper(ctx);
        this.myCommunityHelper = myCommunityHelper;
        myCommunityHelper.addObserver(this);
        myCommunityHelper.addGlobalChatMessageReceptor(this);
        NVContext nVContext = this.context;
        if (nVContext instanceof NVActivity) {
            kotlin.jvm.internal.t.h(nVContext, "null cannot be cast to non-null type com.narvii.app.NVActivity");
            activity = (NVActivity) nVContext;
        } else if (nVContext instanceof NVFragment) {
            kotlin.jvm.internal.t.h(nVContext, "null cannot be cast to non-null type com.narvii.app.NVFragment");
            activity = ((NVFragment) nVContext).getActivity();
        } else {
            activity = null;
        }
        this.activity = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T extends View> w7.m<T> bind(ViewHolder viewHolder, @IdRes int i10) {
        return w7.o.b(w7.q.NONE, new AnonymousClass1(viewHolder, i10));
    }

    public void firstRefreshList() {
        this.myCommunityHelper.refresh(1, new C05601());
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    @Nullable
    public String getErrorMessage() {
        return this.myCommunityHelper.errorMessage();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    @NotNull
    public Community getItem(int i10) {
        Community community = this.myCommunityHelper.rawList().get(i10);
        kotlin.jvm.internal.t.i(community, "get(...)");
        return community;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.myCommunityHelper.rawList().size();
    }

    @Nullable
    public final Community launchCommunity() {
        return this.myCommunityHelper.getLaunchCommunity();
    }

    @Nullable
    public final SmoothProgressBar launchProgress() {
        return this.myCommunityHelper.getLaunchProgress();
    }

    public void loadFailed() {
        Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.h
            @Override // java.lang.Runnable
            public final void run() {
                MyCommunityListAdapter.loadFailed$lambda$0(this.f2762a);
            }
        });
        this.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.topic.adapter.i
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
            }
        });
    }

    public void loadFinish() {
        Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.e
            @Override // java.lang.Runnable
            public final void run() {
                MyCommunityListAdapter.loadFinish$lambda$2(this.f2760a);
            }
        });
        this.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.topic.adapter.f
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        kotlin.jvm.internal.t.j(holder, "holder");
        Community item = getItem(i10);
        if (holder instanceof ViewHolder) {
            ((ViewHolder) holder).updateData(item);
            LogUtils.setAttachedObject(holder.itemView, getItem(i10));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(communityLayoutId(), parent, false);
        kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
        return new ViewHolder(this, viewInflate);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @NotNull View cell, @Nullable View view) {
        kotlin.jvm.internal.t.j(cell, "cell");
        return obj instanceof Community ? this.myCommunityHelper.launchCommunity((Community) obj, cell, new C05611(obj)) : super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, cell, view);
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(@Nullable MyCommunityListService myCommunityListService, @Nullable MyCommunityListResponse myCommunityListResponse, @Nullable Integer num) {
        Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.k
            @Override // java.lang.Runnable
            public final void run() {
                MyCommunityListAdapter.onListChanged$lambda$6(this.f2764a);
            }
        });
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onLongClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
        if (!(obj instanceof Community)) {
            return super.onLongClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
        }
        this.myCommunityHelper.showMenuDialog((Community) obj);
        return true;
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(@Nullable MyCommunityListService myCommunityListService) {
        Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.j
            @Override // java.lang.Runnable
            public final void run() {
                MyCommunityListAdapter.onReminderChanged$lambda$7(this.f2763a);
            }
        });
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i10) {
        Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.g
            @Override // java.lang.Runnable
            public final void run() {
                MyCommunityListAdapter.onUnreadThreadCountChanged$lambda$4(this.f2761a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadFailed$lambda$0(MyCommunityListAdapter this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        OnRefreshListener onRefreshListener = this$0.refreshListener;
        if (onRefreshListener != null) {
            onRefreshListener.onFailed();
        }
        this$0.notifyDataListChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadFinish$lambda$2(MyCommunityListAdapter this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        OnRefreshListener onRefreshListener = this$0.refreshListener;
        if (onRefreshListener != null) {
            onRefreshListener.onFinish();
        }
        this$0.notifyDataListChanged();
    }

    private final void notifyDataListChanged() {
        try {
            notifyDataSetChanged();
        } catch (Exception e) {
            Log.e(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onListChanged$lambda$6(MyCommunityListAdapter this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.notifyDataListChanged();
        OnRefreshListener onRefreshListener = this$0.refreshListener;
        if (onRefreshListener != null) {
            onRefreshListener.onListChanged();
        }
        this$0.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.topic.adapter.d
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onReminderChanged$lambda$7(MyCommunityListAdapter this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.notifyDataListChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onUnreadThreadCountChanged$lambda$4(MyCommunityListAdapter this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.notifyDataListChanged();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        firstRefreshList();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        super.refresh(i10, pageRequestCallback);
        this.myCommunityHelper.refresh(i10, new C05621());
    }
}
