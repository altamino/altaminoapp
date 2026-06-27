package com.narvii.topic.adapter;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NotificationCompat;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
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
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.PromotionalImageView;
import com.narvii.widget.SmoothProgressBar;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: MyCommunityListAdapter.kt */
/* loaded from: classes3.dex */
public class MyCommunityListAdapter extends NVRecyclerViewBaseAdapter implements ChatService.ChatMessageReceptor, MyCommunityListService.MyCommunityListObserver {
    private FragmentActivity activity;
    private final MyCommunityHelper myCommunityHelper;
    private OnRefreshListener refreshListener;

    /* compiled from: MyCommunityListAdapter.kt */
    public interface OnRefreshListener {
        void onFailed();

        void onFinish();

        void onListChanged();
    }

    public int communityLayoutId() {
        return R.layout.item_my_community_card_horizontal;
    }

    public void onEnterCommunity(Community community) {
        Intrinsics.checkParameterIsNotNull(community, "community");
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i, ChatMessageDto chatMessageDto) {
        Intrinsics.checkParameterIsNotNull(chatMessageDto, "chatMessageDto");
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(MyCommunityListService myCommunityListService, CommunityListResponse communityListResponse) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyCommunityListAdapter(NVContext ctx) {
        FragmentActivity activity;
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.myCommunityHelper = new MyCommunityHelper(ctx);
        this.myCommunityHelper.addObserver(this);
        this.myCommunityHelper.addGlobalChatMessageReceptor(this);
        NVContext nVContext = this.context;
        if (nVContext instanceof NVActivity) {
            if (nVContext == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
            }
            activity = (NVActivity) nVContext;
        } else if (!(nVContext instanceof NVFragment)) {
            activity = null;
        } else {
            if (nVContext == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVFragment");
            }
            activity = ((NVFragment) nVContext).getActivity();
        }
        this.activity = activity;
    }

    public final OnRefreshListener getRefreshListener() {
        return this.refreshListener;
    }

    public final void setRefreshListener(OnRefreshListener onRefreshListener) {
        this.refreshListener = onRefreshListener;
    }

    public final MyCommunityHelper getMyCommunityHelper() {
        return this.myCommunityHelper;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(communityLayoutId(), parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(pare…ayoutId(), parent, false)");
        return new ViewHolder(this, viewInflate);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        firstRefreshList();
    }

    public void firstRefreshList() {
        this.myCommunityHelper.refresh(1, new Function1<Integer, Unit>() { // from class: com.narvii.topic.adapter.MyCommunityListAdapter.firstRefreshList.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                if (i == 0) {
                    MyCommunityListAdapter.this.loadFinish();
                } else {
                    if (i != 1) {
                        return;
                    }
                    MyCommunityListAdapter.this.loadFailed();
                }
            }
        });
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        super.refresh(i, pageRequestCallback);
        this.myCommunityHelper.refresh(i, new Function1<Integer, Unit>() { // from class: com.narvii.topic.adapter.MyCommunityListAdapter.refresh.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i2) {
                if (i2 == 0) {
                    MyCommunityListAdapter.this.loadFinish();
                } else {
                    if (i2 != 1) {
                        return;
                    }
                    MyCommunityListAdapter.this.loadFailed();
                }
            }
        });
    }

    public void loadFailed() {
        Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.MyCommunityListAdapter.loadFailed.1
            @Override // java.lang.Runnable
            public final void run() {
                OnRefreshListener refreshListener = MyCommunityListAdapter.this.getRefreshListener();
                if (refreshListener != null) {
                    refreshListener.onFailed();
                }
                MyCommunityListAdapter.this.notifyDataListChanged();
            }
        });
        this.dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.topic.adapter.MyCommunityListAdapter.loadFailed.2
            @Override // com.narvii.util.Callback
            public final void call(NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener) {
                dataSetChangeListener.onDataSetChanged();
            }
        });
    }

    public void loadFinish() {
        Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.MyCommunityListAdapter.loadFinish.1
            @Override // java.lang.Runnable
            public final void run() {
                OnRefreshListener refreshListener = MyCommunityListAdapter.this.getRefreshListener();
                if (refreshListener != null) {
                    refreshListener.onFinish();
                }
                MyCommunityListAdapter.this.notifyDataListChanged();
            }
        });
        this.dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.topic.adapter.MyCommunityListAdapter.loadFinish.2
            @Override // com.narvii.util.Callback
            public final void call(NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener) {
                dataSetChangeListener.onDataSetChanged();
            }
        });
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public String getErrorMessage() {
        return this.myCommunityHelper.errorMessage();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.myCommunityHelper.rawList().size();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public Community getItem(int i) {
        Community community = this.myCommunityHelper.rawList().get(i);
        Intrinsics.checkExpressionValueIsNotNull(community, "myCommunityHelper.rawList()[pos]");
        return community;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        Community item = getItem(i);
        if (holder instanceof ViewHolder) {
            ((ViewHolder) holder).updateData(item);
            LogUtils.setAttachedObject(holder.itemView, getItem(i));
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, final Object obj, View cell, View view) {
        Intrinsics.checkParameterIsNotNull(cell, "cell");
        if (obj instanceof Community) {
            return this.myCommunityHelper.launchCommunity((Community) obj, cell, new Function1<Object, Unit>() { // from class: com.narvii.topic.adapter.MyCommunityListAdapter.onItemClick.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object obj2) {
                    invoke2(obj2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object it) {
                    Intrinsics.checkParameterIsNotNull(it, "it");
                    MyCommunityListAdapter.this.onEnterCommunity((Community) obj);
                }
            });
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, cell, view);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onLongClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof Community) {
            this.myCommunityHelper.showMenuDialog((Community) obj);
            return true;
        }
        return super.onLongClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i) {
        Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.MyCommunityListAdapter.onUnreadThreadCountChanged.1
            @Override // java.lang.Runnable
            public final void run() {
                MyCommunityListAdapter.this.notifyDataListChanged();
            }
        });
    }

    /* compiled from: MyCommunityListAdapter.kt */
    public final class ViewHolder extends RecyclerView.ViewHolder {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ViewHolder.class), "image", "getImage()Lcom/narvii/widget/PromotionalImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ViewHolder.class), "icon", "getIcon()Lcom/narvii/widget/CommunityIconView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ViewHolder.class), "title", "getTitle()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ViewHolder.class), NotificationCompat.CATEGORY_PROGRESS, "getProgress()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ViewHolder.class), "probationView", "getProbationView()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ViewHolder.class), "disabledView", "getDisabledView()Landroid/view/View;"))};
        private final Lazy disabledView$delegate;
        private final Lazy icon$delegate;
        private final Lazy image$delegate;
        private final Lazy probationView$delegate;
        private final Lazy progress$delegate;
        final /* synthetic */ MyCommunityListAdapter this$0;
        private final Lazy title$delegate;

        public final View getDisabledView() {
            Lazy lazy = this.disabledView$delegate;
            KProperty kProperty = $$delegatedProperties[5];
            return (View) lazy.getValue();
        }

        public final CommunityIconView getIcon() {
            Lazy lazy = this.icon$delegate;
            KProperty kProperty = $$delegatedProperties[1];
            return (CommunityIconView) lazy.getValue();
        }

        public final PromotionalImageView getImage() {
            Lazy lazy = this.image$delegate;
            KProperty kProperty = $$delegatedProperties[0];
            return (PromotionalImageView) lazy.getValue();
        }

        public final View getProbationView() {
            Lazy lazy = this.probationView$delegate;
            KProperty kProperty = $$delegatedProperties[4];
            return (View) lazy.getValue();
        }

        public final View getProgress() {
            Lazy lazy = this.progress$delegate;
            KProperty kProperty = $$delegatedProperties[3];
            return (View) lazy.getValue();
        }

        public final TextView getTitle() {
            Lazy lazy = this.title$delegate;
            KProperty kProperty = $$delegatedProperties[2];
            return (TextView) lazy.getValue();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(MyCommunityListAdapter myCommunityListAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
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

        /* JADX WARN: Removed duplicated region for block: B:32:0x00a6  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void updateData(com.narvii.model.Community r7) {
            /*
                r6 = this;
                java.lang.String r0 = "c"
                kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r7, r0)
                com.narvii.topic.adapter.MyCommunityListAdapter r0 = r6.this$0
                com.narvii.community.MyCommunityHelper r0 = r0.getMyCommunityHelper()
                int r1 = r7.id
                com.narvii.model.User r0 = r0.getUserProfile(r1)
                int r1 = r7.status
                r2 = 1
                r3 = 0
                r4 = 9
                if (r1 != r4) goto L1b
                r1 = 1
                goto L1c
            L1b:
                r1 = 0
            L1c:
                int r4 = r7.probationStatus
                if (r4 != r2) goto L2a
                if (r0 == 0) goto L2a
                boolean r0 = r0.isLeader()
                if (r0 == 0) goto L2a
                r0 = 1
                goto L2b
            L2a:
                r0 = 0
            L2b:
                com.narvii.widget.PromotionalImageView r4 = r6.getImage()
                r4.setCommunity(r7)
                com.narvii.widget.CommunityIconView r4 = r6.getIcon()
                java.lang.String r5 = r7.icon
                r4.setImageUrl(r5)
                com.narvii.widget.CommunityIconView r4 = r6.getIcon()
                int r5 = r7.themeColor()
                r4.setStrokeColor(r5)
                android.widget.TextView r4 = r6.getTitle()
                java.lang.String r5 = r7.name
                r4.setText(r5)
                android.view.View r4 = r6.getProbationView()
                r5 = 8
                if (r1 != 0) goto L5b
                if (r0 == 0) goto L5b
                r0 = 0
                goto L5d
            L5b:
                r0 = 8
            L5d:
                r4.setVisibility(r0)
                android.view.View r0 = r6.getDisabledView()
                if (r1 == 0) goto L67
                r5 = 0
            L67:
                r0.setVisibility(r5)
                android.view.View r0 = r6.itemView
                r1 = 2131298507(0x7f0908cb, float:1.821499E38)
                android.view.View r0 = r0.findViewById(r1)
                java.lang.String r1 = "v"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
                com.narvii.topic.adapter.MyCommunityListAdapter r1 = r6.this$0
                com.narvii.widget.SmoothProgressBar r1 = r1.launchProgress()
                r4 = 4
                if (r0 != r1) goto La7
                com.narvii.topic.adapter.MyCommunityListAdapter r1 = r6.this$0
                com.narvii.model.Community r1 = r1.launchCommunity()
                if (r1 == 0) goto La6
                com.narvii.topic.adapter.MyCommunityListAdapter r1 = r6.this$0
                com.narvii.model.Community r1 = r1.launchCommunity()
                if (r1 == 0) goto La1
                int r1 = r1.id
                int r5 = r7.id
                if (r1 == r5) goto La6
                com.narvii.topic.adapter.MyCommunityListAdapter r1 = r6.this$0
                com.narvii.community.MyCommunityHelper r1 = r1.getMyCommunityHelper()
                r1.cancelLaunch()
                goto La7
            La1:
                kotlin.jvm.internal.Intrinsics.throwNpe()
                r7 = 0
                throw r7
            La6:
                r4 = 0
            La7:
                r0.setVisibility(r4)
                com.narvii.topic.adapter.MyCommunityListAdapter r0 = r6.this$0
                com.narvii.community.MyCommunityHelper r0 = r0.getMyCommunityHelper()
                android.view.View r1 = r6.itemView
                java.lang.String r3 = "itemView"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r3)
                r0.updateRemindersInCell(r1, r7, r2)
                com.narvii.topic.adapter.MyCommunityListAdapter r0 = r6.this$0
                com.narvii.community.MyCommunityHelper r0 = r0.getMyCommunityHelper()
                android.view.View r1 = r6.itemView
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r3)
                r0.updateThemeProgressInCell(r1, r7)
                android.view.View r7 = r6.itemView
                com.narvii.topic.adapter.MyCommunityListAdapter r0 = r6.this$0
                android.view.View$OnClickListener r0 = r0.subviewClickListener
                r7.setOnClickListener(r0)
                android.view.View r7 = r6.itemView
                com.narvii.topic.adapter.MyCommunityListAdapter r0 = r6.this$0
                android.view.View$OnLongClickListener r0 = r0.subviewLongClickListener
                r7.setOnLongClickListener(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.topic.adapter.MyCommunityListAdapter.ViewHolder.updateData(com.narvii.model.Community):void");
        }
    }

    public final SmoothProgressBar launchProgress() {
        return this.myCommunityHelper.getLaunchProgress();
    }

    public final Community launchCommunity() {
        return this.myCommunityHelper.getLaunchCommunity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T extends View> Lazy<T> bind(final ViewHolder viewHolder, final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.topic.adapter.MyCommunityListAdapter.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                return viewHolder.itemView.findViewById(i);
            }
        });
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(MyCommunityListService myCommunityListService, MyCommunityListResponse myCommunityListResponse, Integer num) {
        Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.MyCommunityListAdapter.onListChanged.1
            @Override // java.lang.Runnable
            public final void run() {
                MyCommunityListAdapter.this.notifyDataListChanged();
                OnRefreshListener refreshListener = MyCommunityListAdapter.this.getRefreshListener();
                if (refreshListener != null) {
                    refreshListener.onListChanged();
                }
                ((NVRecyclerViewBaseAdapter) MyCommunityListAdapter.this).dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.topic.adapter.MyCommunityListAdapter.onListChanged.1.1
                    @Override // com.narvii.util.Callback
                    public final void call(NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener) {
                        dataSetChangeListener.onDataSetChanged();
                    }
                });
            }
        });
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(MyCommunityListService myCommunityListService) {
        Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.MyCommunityListAdapter.onReminderChanged.1
            @Override // java.lang.Runnable
            public final void run() {
                MyCommunityListAdapter.this.notifyDataListChanged();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyDataListChanged() {
        try {
            notifyDataSetChanged();
        } catch (Exception e) {
            Log.e(e.getMessage());
        }
    }
}
