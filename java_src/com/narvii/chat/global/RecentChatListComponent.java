package com.narvii.chat.global;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.MultiAvatarView;
import com.narvii.chat.global.RecentChatListComponent;
import com.narvii.chat.thread.ThreadListItem;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.GlobalChatService;
import com.narvii.community.CommunityService;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogUtils;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: RecentChatListComponent.kt */
/* loaded from: classes2.dex */
public final class RecentChatListComponent extends LinearLayout {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RecentChatListComponent.class), "recentChatListBar", "getRecentChatListBar()Lcom/narvii/widget/HorizontalRecyclerView;"))};
    private final int CHAT_ROOM_TYPE_GROUP;
    private final int CHAT_ROOM_TYPE_ONE_ON_ONE;
    private final int CHAT_ROOM_TYPE_PUBLIC;
    private HashMap _$_findViewCache;
    private final ChatHelper chatHelper;
    private final CommunityService communityService;
    private final GlobalChatService globalChatService;
    private NavigateToChatCallback navigateToChatCallback;
    private final RecentChatListAdapter recentChatListAdapter;
    private final Lazy recentChatListBar$delegate;
    private NVAdapter shownInAdapter;

    /* compiled from: RecentChatListComponent.kt */
    public interface NavigateToChatCallback {
        void onNavigateToChat(String str, int i);
    }

    private final HorizontalRecyclerView getRecentChatListBar() {
        Lazy lazy = this.recentChatListBar$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (HorizontalRecyclerView) lazy.getValue();
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public RecentChatListComponent(Context context) {
        super(context);
        this.CHAT_ROOM_TYPE_GROUP = 1;
        this.CHAT_ROOM_TYPE_PUBLIC = 2;
        this.recentChatListBar$delegate = bind(this, R.id.recent_chat_bar);
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        this.chatHelper = new ChatHelper(context2);
        this.recentChatListAdapter = new RecentChatListAdapter();
        this.globalChatService = (GlobalChatService) Utils.getNVContext(getContext()).getService("globalChat");
        this.communityService = (CommunityService) Utils.getNVContext(getContext()).getService("community");
        LayoutInflater.from(getContext()).inflate(R.layout.component_recent_chat_list, (ViewGroup) this, true);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecentChatListComponent(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        this.CHAT_ROOM_TYPE_GROUP = 1;
        this.CHAT_ROOM_TYPE_PUBLIC = 2;
        this.recentChatListBar$delegate = bind(this, R.id.recent_chat_bar);
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        this.chatHelper = new ChatHelper(context2);
        this.recentChatListAdapter = new RecentChatListAdapter();
        this.globalChatService = (GlobalChatService) Utils.getNVContext(getContext()).getService("globalChat");
        this.communityService = (CommunityService) Utils.getNVContext(getContext()).getService("community");
        LayoutInflater.from(getContext()).inflate(R.layout.component_recent_chat_list, (ViewGroup) this, true);
    }

    private final <T extends View> Lazy<T> bind(RecentChatListComponent recentChatListComponent, final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.chat.global.RecentChatListComponent.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View viewFindViewById = RecentChatListComponent.this.findViewById(i);
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }

    public final void setShownInAdapter(NVAdapter adapter) {
        Intrinsics.checkParameterIsNotNull(adapter, "adapter");
        this.shownInAdapter = adapter;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        getRecentChatListBar().setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        getRecentChatListBar().setAdapter(this.recentChatListAdapter);
    }

    public final void setRecentChats(ArrayList<GlobalChatThread> chats, NavigateToChatCallback navigateToChatCallback) {
        Intrinsics.checkParameterIsNotNull(chats, "chats");
        this.navigateToChatCallback = navigateToChatCallback;
        this.recentChatListAdapter.updateChatList(chats);
    }

    /* compiled from: RecentChatListComponent.kt */
    private final class RecentChatItemHolder extends RecyclerView.ViewHolder {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RecentChatItemHolder.class), "image", "getImage()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RecentChatItemHolder.class), "title", "getTitle()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RecentChatItemHolder.class), "unreadSig", "getUnreadSig()Landroid/view/View;"))};
        private final View fansOnlyMask;
        private final Lazy image$delegate;
        final /* synthetic */ RecentChatListComponent this$0;
        private final Lazy title$delegate;
        private final Lazy unreadSig$delegate;

        private final View getImage() {
            Lazy lazy = this.image$delegate;
            KProperty kProperty = $$delegatedProperties[0];
            return (View) lazy.getValue();
        }

        private final TextView getTitle() {
            Lazy lazy = this.title$delegate;
            KProperty kProperty = $$delegatedProperties[1];
            return (TextView) lazy.getValue();
        }

        private final View getUnreadSig() {
            Lazy lazy = this.unreadSig$delegate;
            KProperty kProperty = $$delegatedProperties[2];
            return (View) lazy.getValue();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RecentChatItemHolder(RecentChatListComponent recentChatListComponent, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = recentChatListComponent;
            this.image$delegate = bind(this, R.id.image);
            this.title$delegate = bind(this, R.id.title);
            this.unreadSig$delegate = bind(this, R.id.chat_thread_unread);
            this.fansOnlyMask = itemView.findViewById(R.id.fans_only_content_indicator);
        }

        private final <T extends View> Lazy<T> bind(final RecentChatItemHolder recentChatItemHolder, final int i) {
            return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.chat.global.RecentChatListComponent$RecentChatItemHolder$bind$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Incorrect return type in method signature: ()TT; */
                @Override // kotlin.jvm.functions.Function0
                public final View invoke() {
                    return this.$this_bind.itemView.findViewById(i);
                }
            });
        }

        public final void bindData(final GlobalChatThread globalChatThread) {
            String string;
            Intrinsics.checkParameterIsNotNull(globalChatThread, "globalChatThread");
            View image = getImage();
            if (image instanceof ThumbImageView) {
                View image2 = getImage();
                if (image2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.ThumbImageView");
                }
                ((ThumbImageView) image2).setImageUrl(globalChatThread.icon);
                getTitle().setText(globalChatThread.title);
            } else if (image instanceof UserAvatarLayout) {
                User user = globalChatThread.targetUser;
                View image3 = getImage();
                if (image3 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.UserAvatarLayout");
                }
                ((UserAvatarLayout) image3).setUser(user);
                TextView title = getTitle();
                if (user == null || (string = user.nickname()) == null) {
                    string = this.this$0.getContext().getString(R.string.chat);
                }
                title.setText(string);
            } else if (image instanceof MultiAvatarView) {
                View image4 = getImage();
                if (image4 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.chat.MultiAvatarView");
                }
                ((MultiAvatarView) image4).setAvatars(globalChatThread.avatarList);
                getTitle().setText(globalChatThread.title);
            }
            View view = this.fansOnlyMask;
            if (view != null) {
                view.setVisibility(globalChatThread.isFansOnly ? 0 : 8);
            }
            getUnreadSig().setVisibility(this.this$0.globalChatService.isThreadUnread(globalChatThread.chatThreadId) ? 0 : 8);
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.RecentChatListComponent$RecentChatItemHolder$bindData$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    NVAdapter nVAdapter = this.this$0.this$0.shownInAdapter;
                    if (nVAdapter != null) {
                        nVAdapter.logClickEvent(globalChatThread, ActSemantic.checkDetail);
                    }
                    RecentChatListComponent.NavigateToChatCallback navigateToChatCallback = this.this$0.this$0.navigateToChatCallback;
                    if (navigateToChatCallback != null) {
                        String str = globalChatThread.chatThreadId;
                        Intrinsics.checkExpressionValueIsNotNull(str, "globalChatThread.chatThreadId");
                        navigateToChatCallback.onNavigateToChat(str, globalChatThread.communityId);
                    }
                }
            });
        }
    }

    /* compiled from: RecentChatListComponent.kt */
    private final class RecentChatListAdapter extends RecyclerView.Adapter<RecentChatItemHolder> {
        private ArrayList<GlobalChatThread> chats = new ArrayList<>();

        public RecentChatListAdapter() {
        }

        public final void updateChatList(ArrayList<GlobalChatThread> chats) {
            Intrinsics.checkParameterIsNotNull(chats, "chats");
            this.chats = chats;
            notifyDataSetChanged();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecentChatItemHolder onCreateViewHolder(ViewGroup parent, int i) {
            View view;
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(RecentChatListComponent.this.getContext());
            if (i == RecentChatListComponent.this.CHAT_ROOM_TYPE_ONE_ON_ONE) {
                view = layoutInflaterFrom.inflate(R.layout.item_recent_chat_user, parent, false);
            } else {
                view = i == RecentChatListComponent.this.CHAT_ROOM_TYPE_GROUP ? layoutInflaterFrom.inflate(R.layout.item_recent_chat_group, parent, false) : layoutInflaterFrom.inflate(R.layout.item_recent_chat_hangout, parent, false);
            }
            RecentChatListComponent recentChatListComponent = RecentChatListComponent.this;
            Intrinsics.checkExpressionValueIsNotNull(view, "view");
            return new RecentChatItemHolder(recentChatListComponent, view);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecentChatItemHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            GlobalChatThread globalChatThread = this.chats.get(i);
            Intrinsics.checkExpressionValueIsNotNull(globalChatThread, "chats[position]");
            GlobalChatThread globalChatThread2 = globalChatThread;
            LogUtils.setAttachedObject(holder.itemView, globalChatThread2);
            holder.bindData(globalChatThread2);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.chats.size();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return ThreadListItem.getViewType(this.chats.get(i));
        }
    }
}
