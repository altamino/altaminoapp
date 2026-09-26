package com.narvii.chat.global;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.chat.MultiAvatarView;
import com.narvii.chat.thread.ThreadListItem;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.GlobalChatService;
import com.narvii.community.CommunityService;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogUtils;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes8.dex */
public final class RecentChatListComponent extends LinearLayout {
    private final int CHAT_ROOM_TYPE_GROUP;
    private final int CHAT_ROOM_TYPE_ONE_ON_ONE;
    private final int CHAT_ROOM_TYPE_PUBLIC;

    @NotNull
    private final ChatHelper chatHelper;
    private final CommunityService communityService;
    private final GlobalChatService globalChatService;

    @Nullable
    private NavigateToChatCallback navigateToChatCallback;

    @NotNull
    private final RecentChatListAdapter recentChatListAdapter;

    @NotNull
    private final m recentChatListBar$delegate;

    @Nullable
    private NVAdapter shownInAdapter;

    public interface NavigateToChatCallback {
        void onNavigateToChat(@NotNull String str, int i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class RecentChatItemHolder extends RecyclerView.ViewHolder {
        private final View fansOnlyMask;

        @NotNull
        private final m image$delegate;
        final /* synthetic */ RecentChatListComponent this$0;

        @NotNull
        private final m title$delegate;

        @NotNull
        private final m unreadSig$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RecentChatItemHolder(@NotNull RecentChatListComponent recentChatListComponent, View itemView) {
            super(itemView);
            t.j(itemView, "itemView");
            this.this$0 = recentChatListComponent;
            this.image$delegate = bind(this, R.id.image);
            this.title$delegate = bind(this, R.id.title);
            this.unreadSig$delegate = bind(this, R.id.chat_thread_unread);
            this.fansOnlyMask = itemView.findViewById(R.id.fans_only_content_indicator);
        }

        private final <T extends View> m<T> bind(RecentChatItemHolder recentChatItemHolder, @IdRes int i10) {
            return o.b(q.NONE, new RecentChatListComponent$RecentChatItemHolder$bind$1(recentChatItemHolder, i10));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bindData$lambda$1(RecentChatListComponent this$0, GlobalChatThread globalChatThread, View view) {
            t.j(this$0, "this$0");
            t.j(globalChatThread, "$globalChatThread");
            NVAdapter nVAdapter = this$0.shownInAdapter;
            if (nVAdapter != null) {
                nVAdapter.logClickEvent(globalChatThread, ActSemantic.checkDetail);
            }
            NavigateToChatCallback navigateToChatCallback = this$0.navigateToChatCallback;
            if (navigateToChatCallback != null) {
                String chatThreadId = globalChatThread.chatThreadId;
                t.i(chatThreadId, "chatThreadId");
                navigateToChatCallback.onNavigateToChat(chatThreadId, globalChatThread.communityId);
            }
        }

        private final View getImage() {
            return (View) this.image$delegate.getValue();
        }

        private final TextView getTitle() {
            return (TextView) this.title$delegate.getValue();
        }

        private final View getUnreadSig() {
            return (View) this.unreadSig$delegate.getValue();
        }

        public final void bindData(@NotNull final GlobalChatThread globalChatThread) {
            String string;
            t.j(globalChatThread, "globalChatThread");
            View image = getImage();
            if (image instanceof ThumbImageView) {
                View image2 = getImage();
                t.h(image2, "null cannot be cast to non-null type com.narvii.widget.ThumbImageView");
                ((ThumbImageView) image2).setImageUrl(globalChatThread.icon);
                getTitle().setText(globalChatThread.title);
            } else if (image instanceof UserAvatarLayout) {
                User user = globalChatThread.targetUser;
                View image3 = getImage();
                t.h(image3, "null cannot be cast to non-null type com.narvii.widget.UserAvatarLayout");
                ((UserAvatarLayout) image3).setUser(user);
                TextView title = getTitle();
                if (user == null || (string = user.nickname()) == null) {
                    string = this.this$0.getContext().getString(R.string.chat);
                }
                title.setText(string);
            } else if (image instanceof MultiAvatarView) {
                View image4 = getImage();
                t.h(image4, "null cannot be cast to non-null type com.narvii.chat.MultiAvatarView");
                ((MultiAvatarView) image4).setAvatars(globalChatThread.avatarList);
                getTitle().setText(globalChatThread.title);
            }
            View view = this.fansOnlyMask;
            if (view != null) {
                view.setVisibility(globalChatThread.isFansOnly ? 0 : 8);
            }
            getUnreadSig().setVisibility(this.this$0.globalChatService.isThreadUnread(globalChatThread.chatThreadId) ? 0 : 8);
            View view2 = this.itemView;
            final RecentChatListComponent recentChatListComponent = this.this$0;
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    RecentChatListComponent.RecentChatItemHolder.bindData$lambda$1(recentChatListComponent, globalChatThread, view3);
                }
            });
        }
    }

    private final class RecentChatListAdapter extends RecyclerView.Adapter<RecentChatItemHolder> {

        @NotNull
        private ArrayList<GlobalChatThread> chats = new ArrayList<>();

        public RecentChatListAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.chats.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            return ThreadListItem.getViewType(this.chats.get(i10));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecentChatItemHolder holder, int i10) {
            t.j(holder, "holder");
            GlobalChatThread globalChatThread = this.chats.get(i10);
            t.i(globalChatThread, "get(...)");
            GlobalChatThread globalChatThread2 = globalChatThread;
            LogUtils.setAttachedObject(holder.itemView, globalChatThread2);
            holder.bindData(globalChatThread2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public RecentChatItemHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            View viewInflate;
            t.j(parent, "parent");
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(RecentChatListComponent.this.getContext());
            if (i10 == RecentChatListComponent.this.CHAT_ROOM_TYPE_ONE_ON_ONE) {
                viewInflate = layoutInflaterFrom.inflate(R.layout.item_recent_chat_user, parent, false);
            } else {
                viewInflate = i10 == RecentChatListComponent.this.CHAT_ROOM_TYPE_GROUP ? layoutInflaterFrom.inflate(R.layout.item_recent_chat_group, parent, false) : layoutInflaterFrom.inflate(R.layout.item_recent_chat_hangout, parent, false);
            }
            RecentChatListComponent recentChatListComponent = RecentChatListComponent.this;
            t.g(viewInflate);
            return new RecentChatItemHolder(recentChatListComponent, viewInflate);
        }

        public final void updateChatList(@NotNull ArrayList<GlobalChatThread> chats) {
            t.j(chats, "chats");
            this.chats = chats;
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.chat.global.RecentChatListComponent$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @NotNull
        public final View invoke() {
            View viewFindViewById = RecentChatListComponent.this.findViewById(this.$res);
            t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.chat.global.RecentChatListComponent.bind");
            return viewFindViewById;
        }
    }

    public RecentChatListComponent(@Nullable Context context) {
        super(context);
        this.CHAT_ROOM_TYPE_GROUP = 1;
        this.CHAT_ROOM_TYPE_PUBLIC = 2;
        this.recentChatListBar$delegate = bind(this, R.id.recent_chat_bar);
        Context context2 = getContext();
        t.i(context2, "getContext(...)");
        this.chatHelper = new ChatHelper(context2);
        this.recentChatListAdapter = new RecentChatListAdapter();
        this.globalChatService = (GlobalChatService) Utils.getNVContext(getContext()).getService("globalChat");
        this.communityService = (CommunityService) Utils.getNVContext(getContext()).getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        LayoutInflater.from(getContext()).inflate(R.layout.component_recent_chat_list, (ViewGroup) this, true);
    }

    public final void setShownInAdapter(@NotNull NVAdapter adapter) {
        t.j(adapter, "adapter");
        this.shownInAdapter = adapter;
    }

    private final <T extends View> m<T> bind(RecentChatListComponent recentChatListComponent, @IdRes int i10) {
        return o.b(q.NONE, recentChatListComponent.new AnonymousClass1(i10));
    }

    private final HorizontalRecyclerView getRecentChatListBar() {
        return (HorizontalRecyclerView) this.recentChatListBar$delegate.getValue();
    }

    public final void setRecentChats(@NotNull ArrayList<GlobalChatThread> chats, @Nullable NavigateToChatCallback navigateToChatCallback) {
        t.j(chats, "chats");
        this.navigateToChatCallback = navigateToChatCallback;
        this.recentChatListAdapter.updateChatList(chats);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        getRecentChatListBar().setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        getRecentChatListBar().setAdapter(this.recentChatListAdapter);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecentChatListComponent(@Nullable Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(attributes, "attributes");
        this.CHAT_ROOM_TYPE_GROUP = 1;
        this.CHAT_ROOM_TYPE_PUBLIC = 2;
        this.recentChatListBar$delegate = bind(this, R.id.recent_chat_bar);
        Context context2 = getContext();
        t.i(context2, "getContext(...)");
        this.chatHelper = new ChatHelper(context2);
        this.recentChatListAdapter = new RecentChatListAdapter();
        this.globalChatService = (GlobalChatService) Utils.getNVContext(getContext()).getService("globalChat");
        this.communityService = (CommunityService) Utils.getNVContext(getContext()).getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        LayoutInflater.from(getContext()).inflate(R.layout.component_recent_chat_list, (ViewGroup) this, true);
    }
}
