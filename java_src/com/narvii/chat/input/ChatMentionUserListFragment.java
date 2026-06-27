package com.narvii.chat.input;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.ViewCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.ThreadInfoHost;
import com.narvii.chat.input.ChatMentionUserListFragment;
import com.narvii.chat.input.ChatMentionUserListFragment.FetchMentionListTask;
import com.narvii.chat.util.ChatHelper;
import com.narvii.list.NVListFragment;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.user.list.UserListAdapter;
import com.narvii.util.http.ApiRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: ChatMentionUserListFragment.kt */
/* loaded from: classes2.dex */
public final class ChatMentionUserListFragment extends NVListFragment implements ThreadInfoHost {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatMentionUserListFragment.class), "fetchMentionListTask", "getFetchMentionListTask()Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatMentionUserListFragment.class), "handler", "getHandler()Landroid/os/Handler;"))};
    private HashMap _$_findViewCache;
    private boolean active;
    private Adapter adapter;
    private ChatHelper chatHelper;
    private ChatThread chatThread;
    private String curKeyword;
    private int curPageSize;
    private MentionRelatedUsersCallback mentionRelatedUsersCallback;
    private String threadId;
    private final int pageSizeLimit = 100;
    private final Lazy fetchMentionListTask$delegate = LazyKt__LazyJVMKt.lazy(new Function0<FetchMentionListTask>() { // from class: com.narvii.chat.input.ChatMentionUserListFragment$fetchMentionListTask$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ChatMentionUserListFragment.FetchMentionListTask invoke() {
            return this.this$0.new FetchMentionListTask();
        }
    });
    private final Lazy handler$delegate = LazyKt__LazyJVMKt.lazy(new Function0<Handler>() { // from class: com.narvii.chat.input.ChatMentionUserListFragment$handler$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Handler invoke() {
            return new Handler();
        }
    });

    /* compiled from: ChatMentionUserListFragment.kt */
    public interface MentionRelatedUsersCallback {
        void onMentionedUserListUpdated(List<? extends User> list);

        void onMentionedUserSelected(User user);
    }

    private final FetchMentionListTask getFetchMentionListTask() {
        Lazy lazy = this.fetchMentionListTask$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (FetchMentionListTask) lazy.getValue();
    }

    private final Handler getHandler() {
        Lazy lazy = this.handler$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (Handler) lazy.getValue();
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

    public static final /* synthetic */ Adapter access$getAdapter$p(ChatMentionUserListFragment chatMentionUserListFragment) {
        Adapter adapter = chatMentionUserListFragment.adapter;
        if (adapter != null) {
            return adapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        throw null;
    }

    public static final /* synthetic */ ChatHelper access$getChatHelper$p(ChatMentionUserListFragment chatMentionUserListFragment) {
        ChatHelper chatHelper = chatMentionUserListFragment.chatHelper;
        if (chatHelper != null) {
            return chatHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatHelper");
        throw null;
    }

    public static final /* synthetic */ String access$getThreadId$p(ChatMentionUserListFragment chatMentionUserListFragment) {
        String str = chatMentionUserListFragment.threadId;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("threadId");
        throw null;
    }

    public final MentionRelatedUsersCallback getMentionRelatedUsersCallback() {
        return this.mentionRelatedUsersCallback;
    }

    public final void setMentionRelatedUsersCallback(MentionRelatedUsersCallback mentionRelatedUsersCallback) {
        this.mentionRelatedUsersCallback = mentionRelatedUsersCallback;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        String string;
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("threadId", "")) == null) {
            string = "";
        }
        this.threadId = string;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_mentioned_members, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        this.chatHelper = new ChatHelper(context);
        this.chatThread = ChatHelper.Companion.getThreadFromThreadInfoHost(this);
        setDarkTheme(true);
        ListView listView = getListView();
        Intrinsics.checkExpressionValueIsNotNull(listView, "listView");
        listView.setDivider(null);
        ListView listView2 = getListView();
        Intrinsics.checkExpressionValueIsNotNull(listView2, "listView");
        listView2.setStackFromBottom(true);
        ListView listView3 = getListView();
        Intrinsics.checkExpressionValueIsNotNull(listView3, "listView");
        listView3.setBackground(new ColorDrawable(0));
        setOverScrollMode(2);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        getHandler().removeCallbacks(getFetchMentionListTask());
        this.mentionRelatedUsersCallback = null;
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.adapter = new Adapter(this, this);
        Adapter adapter = this.adapter;
        if (adapter != null) {
            return adapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        throw null;
    }

    public static /* synthetic */ void fetchMentionRelatedUserList$default(ChatMentionUserListFragment chatMentionUserListFragment, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        chatMentionUserListFragment.fetchMentionRelatedUserList(str, z);
    }

    public final void fetchMentionRelatedUserList(String str, boolean z) {
        this.active = true;
        getHandler().removeCallbacks(getFetchMentionListTask());
        getFetchMentionListTask().setKeyword(str);
        if (z) {
            getFetchMentionListTask().run();
        } else {
            getHandler().postDelayed(getFetchMentionListTask(), 100L);
        }
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public String getThreadId() {
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            return chatThread.threadId;
        }
        return null;
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public ChatThread getThread() {
        return this.chatThread;
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(ChatThread chatThread) {
        this.chatThread = chatThread;
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
    }

    /* compiled from: ChatMentionUserListFragment.kt */
    public final class FetchMentionListTask implements Runnable {
        private String keyword;

        public FetchMentionListTask() {
        }

        public final String getKeyword() {
            return this.keyword;
        }

        public final void setKeyword(String str) {
            this.keyword = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.keyword != null && ChatMentionUserListFragment.this.curPageSize < ChatMentionUserListFragment.this.pageSizeLimit) {
                if (ChatMentionUserListFragment.this.curKeyword != null) {
                    String str = this.keyword;
                    if (str != null) {
                        String str2 = ChatMentionUserListFragment.this.curKeyword;
                        if (str2 == null) {
                            Intrinsics.throwNpe();
                            throw null;
                        }
                        if (StringsKt__StringsKt.contains$default(str, str2, false, 2, null)) {
                        }
                    }
                    ChatMentionUserListFragment.this.curKeyword = this.keyword;
                    ChatMentionUserListFragment.access$getAdapter$p(ChatMentionUserListFragment.this).getUserList().clear();
                    ChatMentionUserListFragment.access$getAdapter$p(ChatMentionUserListFragment.this).refresh(0, null);
                }
                ChatMentionUserListFragment.this.curKeyword = this.keyword;
                ChatMentionUserListFragment.access$getAdapter$p(ChatMentionUserListFragment.this).setLocalFilterRequired(true);
            } else {
                ChatMentionUserListFragment.this.curKeyword = this.keyword;
                ChatMentionUserListFragment.access$getAdapter$p(ChatMentionUserListFragment.this).getUserList().clear();
                ChatMentionUserListFragment.access$getAdapter$p(ChatMentionUserListFragment.this).refresh(0, null);
            }
            ChatMentionUserListFragment.access$getAdapter$p(ChatMentionUserListFragment.this).notifyDataSetChanged();
        }
    }

    /* compiled from: ChatMentionUserListFragment.kt */
    public final class Adapter extends UserListAdapter {
        private boolean localFilterRequired;
        final /* synthetic */ ChatMentionUserListFragment this$0;
        private ArrayList<User> userList;

        @Override // com.narvii.user.list.UserListAdapter
        protected boolean filterYourself() {
            return true;
        }

        @Override // com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.mentioned_user_item;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(ChatMentionUserListFragment chatMentionUserListFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = chatMentionUserListFragment;
            this.userList = new ArrayList<>();
        }

        public final ArrayList<User> getUserList() {
            return this.userList;
        }

        public final void setUserList(ArrayList<User> arrayList) {
            Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
            this.userList = arrayList;
        }

        public final boolean getLocalFilterRequired() {
            return this.localFilterRequired;
        }

        public final void setLocalFilterRequired(boolean z) {
            this.localFilterRequired = z;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public View createLoadingItem(ViewGroup viewGroup, View view) {
            View viewCreateView = createView(R.layout.invisible_loading_list_item, viewGroup, view, "loading");
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView(com.narvii.li…  convertView, \"loading\")");
            return viewCreateView;
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof User) {
                MentionRelatedUsersCallback mentionRelatedUsersCallback = this.this$0.getMentionRelatedUsersCallback();
                if (mentionRelatedUsersCallback == null) {
                    return true;
                }
                mentionRelatedUsersCallback.onMentionedUserSelected((User) obj);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View cell = super.getView(i, view, viewGroup);
            Object item = getItem(i);
            if (item instanceof User) {
                String hostLabelName = ChatMentionUserListFragment.access$getChatHelper$p(this.this$0).getHostLabelName(this.this$0.chatThread, ((User) item).uid());
                if (hostLabelName == null) {
                    Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
                    TextView textView = (TextView) cell.findViewById(com.narvii.amino.R.id.host_label);
                    Intrinsics.checkExpressionValueIsNotNull(textView, "cell.host_label");
                    textView.setVisibility(8);
                } else {
                    Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
                    TextView textView2 = (TextView) cell.findViewById(com.narvii.amino.R.id.host_label);
                    Intrinsics.checkExpressionValueIsNotNull(textView2, "cell.host_label");
                    textView2.setVisibility(0);
                    TextView textView3 = (TextView) cell.findViewById(com.narvii.amino.R.id.host_label);
                    Intrinsics.checkExpressionValueIsNotNull(textView3, "cell.host_label");
                    textView3.setText(hostLabelName);
                }
            }
            if (this.this$0.isEmbedFragment()) {
                Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
                cell.setBackground(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
            }
            Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
            return cell;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (!this.this$0.active) {
                return null;
            }
            ApiRequest.Builder builderPath = new ApiRequest.Builder().path("/chat/thread/" + ChatMentionUserListFragment.access$getThreadId$p(this.this$0) + "/member");
            builderPath.param("type", "at");
            builderPath.param("q", this.this$0.curKeyword);
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return this.this$0.pageSizeLimit;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.userList;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i) {
            if ((userListResponse != null ? userListResponse.list() : null) != null) {
                this.this$0.curPageSize = userListResponse.list().size();
                if (this.userList.isEmpty()) {
                    this.this$0.getListView().setSelection(0);
                } else {
                    this.userList.clear();
                }
            }
            super.onPageResponse(apiRequest, (ApiRequest) userListResponse, i);
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00a8  */
        @Override // android.widget.BaseAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void notifyDataSetChanged() {
            /*
                Method dump skipped, instructions count: 298
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.input.ChatMentionUserListFragment.Adapter.notifyDataSetChanged():void");
        }
    }
}
