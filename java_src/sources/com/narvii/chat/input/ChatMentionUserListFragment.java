package com.narvii.chat.input;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.narvii.amino.databinding.FragmentMentionedMembersBinding;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.ThreadInfoHost;
import com.narvii.chat.util.ChatHelper;
import com.narvii.list.NVListFragment;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.user.list.UserListAdapter;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.http.ApiRequest;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.d0;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes6.dex */
public final class ChatMentionUserListFragment extends NVListFragment implements ThreadInfoHost {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(ChatMentionUserListFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentMentionedMembersBinding;", 0))};
    private boolean active;
    private Adapter adapter;
    private ChatHelper chatHelper;

    @Nullable
    private ChatThread chatThread;

    @Nullable
    private String curKeyword;
    private int curPageSize;

    @Nullable
    private MentionRelatedUsersCallback mentionRelatedUsersCallback;
    private String threadId;
    private final int pageSizeLimit = 100;

    @NotNull
    private final m fetchMentionListTask$delegate = o.a(new ChatMentionUserListFragment$fetchMentionListTask$2(this));

    @NotNull
    private final m handler$delegate = o.a(ChatMentionUserListFragment$handler$2.INSTANCE);

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, ChatMentionUserListFragment$binding$2.INSTANCE);

    public final class Adapter extends UserListAdapter {
        private boolean localFilterRequired;
        final /* synthetic */ ChatMentionUserListFragment this$0;

        @NotNull
        private ArrayList<User> userList;

        @Override // com.narvii.user.list.UserListAdapter
        protected boolean filterYourself() {
            return true;
        }

        public final boolean getLocalFilterRequired() {
            return this.localFilterRequired;
        }

        @NotNull
        public final ArrayList<User> getUserList() {
            return this.userList;
        }

        @Override // com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.mentioned_user_item;
        }

        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        public List<?> list() {
            return this.userList;
        }

        public final void setLocalFilterRequired(boolean z6) {
            this.localFilterRequired = z6;
        }

        public final void setUserList(@NotNull ArrayList<User> arrayList) {
            t.j(arrayList, "<set-?>");
            this.userList = arrayList;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(@NotNull ChatMentionUserListFragment chatMentionUserListFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = chatMentionUserListFragment;
            this.userList = new ArrayList<>();
        }

        @Override // com.narvii.list.NVPagedAdapter
        @Nullable
        protected ApiRequest createRequest(boolean z6) {
            String str = null;
            if (!this.this$0.active) {
                return null;
            }
            ApiRequest.Builder builder = new ApiRequest.Builder();
            String str2 = this.this$0.threadId;
            if (str2 == null) {
                t.B("threadId");
            } else {
                str = str2;
            }
            ApiRequest.Builder builderPath = builder.path("/chat/thread/" + str + "/member");
            builderPath.param("type", "at");
            builderPath.param("q", this.this$0.curKeyword);
            return builderPath.build();
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            if (this.userList.isEmpty()) {
                this.userList.addAll(rawList());
            }
            if (this.localFilterRequired) {
                if (this.this$0.curKeyword != null) {
                    ArrayList<User> arrayList = this.userList;
                    ChatMentionUserListFragment chatMentionUserListFragment = this.this$0;
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : arrayList) {
                        String strNickname = ((User) obj).nickname();
                        t.i(strNickname, "nickname(...)");
                        String str = chatMentionUserListFragment.curKeyword;
                        t.g(str);
                        if (kotlin.text.t.I(strNickname, str, true)) {
                            arrayList2.add(obj);
                        }
                    }
                    List listL0 = d0.L0(arrayList2, new Comparator() { // from class: com.narvii.chat.input.ChatMentionUserListFragment$Adapter$notifyDataSetChanged$$inlined$sortedBy$1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.util.Comparator
                        public final int compare(T t5, T t10) {
                            String strNickname2 = ((User) t5).nickname();
                            t.i(strNickname2, "nickname(...)");
                            Locale US = Locale.US;
                            t.i(US, "US");
                            String lowerCase = strNickname2.toLowerCase(US);
                            t.i(lowerCase, "toLowerCase(...)");
                            String strNickname3 = ((User) t10).nickname();
                            t.i(strNickname3, "nickname(...)");
                            t.i(US, "US");
                            String lowerCase2 = strNickname3.toLowerCase(US);
                            t.i(lowerCase2, "toLowerCase(...)");
                            return y7.c.d(lowerCase, lowerCase2);
                        }
                    });
                    ArrayList<User> arrayList3 = this.userList;
                    ChatMentionUserListFragment chatMentionUserListFragment2 = this.this$0;
                    ArrayList arrayList4 = new ArrayList();
                    for (Object obj2 : arrayList3) {
                        User user = (User) obj2;
                        String strNickname2 = user.nickname();
                        t.i(strNickname2, "nickname(...)");
                        String str2 = chatMentionUserListFragment2.curKeyword;
                        t.g(str2);
                        if (!kotlin.text.t.I(strNickname2, str2, true)) {
                            String strNickname3 = user.nickname();
                            t.i(strNickname3, "nickname(...)");
                            String str3 = chatMentionUserListFragment2.curKeyword;
                            t.g(str3);
                            if (u.N(strNickname3, str3, true)) {
                                arrayList4.add(obj2);
                            }
                        }
                    }
                    List listD0 = d0.D0(listL0, d0.L0(arrayList4, new Comparator() { // from class: com.narvii.chat.input.ChatMentionUserListFragment$Adapter$notifyDataSetChanged$$inlined$sortedBy$2
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.util.Comparator
                        public final int compare(T t5, T t10) {
                            String strNickname4 = ((User) t5).nickname();
                            t.i(strNickname4, "nickname(...)");
                            Locale US = Locale.US;
                            t.i(US, "US");
                            String lowerCase = strNickname4.toLowerCase(US);
                            t.i(lowerCase, "toLowerCase(...)");
                            String strNickname5 = ((User) t10).nickname();
                            t.i(strNickname5, "nickname(...)");
                            t.i(US, "US");
                            String lowerCase2 = strNickname5.toLowerCase(US);
                            t.i(lowerCase2, "toLowerCase(...)");
                            return y7.c.d(lowerCase, lowerCase2);
                        }
                    }));
                    t.h(listD0, "null cannot be cast to non-null type java.util.ArrayList<com.narvii.model.User>{ kotlin.collections.TypeAliasesKt.ArrayList<com.narvii.model.User> }");
                    this.userList = (ArrayList) listD0;
                    ArrayList arrayList5 = new ArrayList();
                    arrayList5.addAll(this.userList);
                    setList(arrayList5);
                }
                this.localFilterRequired = false;
            }
            super.notifyDataSetChanged();
            int dimensionPixelSize = this.this$0.getResources().getDimensionPixelSize(R.dimen.mentioned_user_item_height) * Math.min(4, this.userList.size());
            ViewGroup.LayoutParams layoutParams = this.this$0.getBinding().bgView.getLayoutParams();
            layoutParams.height = dimensionPixelSize;
            this.this$0.getBinding().bgView.setLayoutParams(layoutParams);
            MentionRelatedUsersCallback mentionRelatedUsersCallback = this.this$0.getMentionRelatedUsersCallback();
            if (mentionRelatedUsersCallback != null) {
                mentionRelatedUsersCallback.onMentionedUserListUpdated(this.userList);
            }
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            if (!(obj instanceof User)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            MentionRelatedUsersCallback mentionRelatedUsersCallback = this.this$0.getMentionRelatedUsersCallback();
            if (mentionRelatedUsersCallback == null) {
                return true;
            }
            mentionRelatedUsersCallback.onMentionedUserSelected((User) obj);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(@Nullable ApiRequest apiRequest, @Nullable UserListResponse userListResponse, int i10) {
            if ((userListResponse != null ? userListResponse.list() : null) != null) {
                this.this$0.curPageSize = userListResponse.list().size();
                if (this.userList.isEmpty()) {
                    this.this$0.getListView().setSelection(0);
                } else {
                    this.userList.clear();
                }
            }
            super.onPageResponse(apiRequest, userListResponse, i10);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return this.this$0.pageSizeLimit;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        @NotNull
        public View createLoadingItem(@Nullable ViewGroup viewGroup, @Nullable View view) {
            View viewCreateView = createView(R.layout.invisible_loading_list_item, viewGroup, view, "loading");
            t.i(viewCreateView, "createView(...)");
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            View view2 = super.getView(i10, view, viewGroup);
            TextView textView = (TextView) view2.findViewById(R.id.host_label);
            Object item = getItem(i10);
            if (item instanceof User) {
                ChatHelper chatHelper = this.this$0.chatHelper;
                if (chatHelper == null) {
                    t.B("chatHelper");
                    chatHelper = null;
                }
                String hostLabelName = chatHelper.getHostLabelName(this.this$0.chatThread, ((User) item).uid());
                if (hostLabelName == null) {
                    textView.setVisibility(8);
                } else {
                    textView.setVisibility(0);
                    textView.setText(hostLabelName);
                }
            }
            if (this.this$0.isEmbedFragment()) {
                view2.setBackground(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
            }
            t.g(view2);
            return view2;
        }
    }

    public final class FetchMentionListTask implements Runnable {

        @Nullable
        private String keyword;

        @Nullable
        public final String getKeyword() {
            return this.keyword;
        }

        public final void setKeyword(@Nullable String str) {
            this.keyword = str;
        }

        public FetchMentionListTask() {
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0059  */
        /* JADX WARN: Code duplicated, block: B:21:0x006c  */
        @Override // java.lang.Runnable
        public void run() {
            Adapter adapter;
            Adapter adapter2;
            Adapter adapter3 = null;
            if (this.keyword == null || ChatMentionUserListFragment.this.curPageSize >= ChatMentionUserListFragment.this.pageSizeLimit) {
                ChatMentionUserListFragment.this.curKeyword = this.keyword;
                adapter = ChatMentionUserListFragment.this.adapter;
                if (adapter == null) {
                    t.B("adapter");
                    adapter = null;
                }
                adapter.getUserList().clear();
                adapter2 = ChatMentionUserListFragment.this.adapter;
                if (adapter2 == null) {
                    t.B("adapter");
                    adapter2 = null;
                }
                adapter2.refresh(0, null);
            } else {
                if (ChatMentionUserListFragment.this.curKeyword != null) {
                    String str = this.keyword;
                    if (str != null) {
                        String str2 = ChatMentionUserListFragment.this.curKeyword;
                        t.g(str2);
                        if (u.P(str, str2, false, 2, null)) {
                        }
                    }
                    ChatMentionUserListFragment.this.curKeyword = this.keyword;
                    adapter = ChatMentionUserListFragment.this.adapter;
                    if (adapter == null) {
                        t.B("adapter");
                        adapter = null;
                    }
                    adapter.getUserList().clear();
                    adapter2 = ChatMentionUserListFragment.this.adapter;
                    if (adapter2 == null) {
                        t.B("adapter");
                        adapter2 = null;
                    }
                    adapter2.refresh(0, null);
                }
                ChatMentionUserListFragment.this.curKeyword = this.keyword;
                Adapter adapter4 = ChatMentionUserListFragment.this.adapter;
                if (adapter4 == null) {
                    t.B("adapter");
                    adapter4 = null;
                }
                adapter4.setLocalFilterRequired(true);
            }
            Adapter adapter5 = ChatMentionUserListFragment.this.adapter;
            if (adapter5 == null) {
                t.B("adapter");
            } else {
                adapter3 = adapter5;
            }
            adapter3.notifyDataSetChanged();
        }
    }

    public interface MentionRelatedUsersCallback {
        void onMentionedUserListUpdated(@Nullable List<? extends User> list);

        void onMentionedUserSelected(@NotNull User user);
    }

    public final void fetchMentionRelatedUserList(@Nullable String str, boolean z6) {
        this.active = true;
        getHandler().removeCallbacks(getFetchMentionListTask());
        getFetchMentionListTask().setKeyword(str);
        if (z6) {
            getFetchMentionListTask().run();
        } else {
            getHandler().postDelayed(getFetchMentionListTask(), 100L);
        }
    }

    @Nullable
    public final MentionRelatedUsersCallback getMentionRelatedUsersCallback() {
        return this.mentionRelatedUsersCallback;
    }

    @Override // com.narvii.chat.ThreadInfoHost
    @Nullable
    public ChatThread getThread() {
        return this.chatThread;
    }

    public final void setMentionRelatedUsersCallback(@Nullable MentionRelatedUsersCallback mentionRelatedUsersCallback) {
        this.mentionRelatedUsersCallback = mentionRelatedUsersCallback;
    }

    public static /* synthetic */ void fetchMentionRelatedUserList$default(ChatMentionUserListFragment chatMentionUserListFragment, String str, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        chatMentionUserListFragment.fetchMentionRelatedUserList(str, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FragmentMentionedMembersBinding getBinding() {
        return (FragmentMentionedMembersBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final FetchMentionListTask getFetchMentionListTask() {
        return (FetchMentionListTask) this.fetchMentionListTask$delegate.getValue();
    }

    private final Handler getHandler() {
        return (Handler) this.handler$delegate.getValue();
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        Adapter adapter = new Adapter(this, this);
        this.adapter = adapter;
        return adapter;
    }

    @Override // com.narvii.chat.ThreadInfoHost
    @Nullable
    public String getThreadId() {
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            return chatThread.threadId;
        }
        return null;
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        FrameLayout root = getBinding().getRoot();
        t.i(root, "getRoot(...)");
        return root;
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(@Nullable ChatThread chatThread) {
        this.chatThread = chatThread;
        Adapter adapter = this.adapter;
        if (adapter == null) {
            t.B("adapter");
            adapter = null;
        }
        adapter.notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        Context context = getContext();
        t.i(context, "getContext(...)");
        this.chatHelper = new ChatHelper(context);
        this.chatThread = ChatHelper.Companion.getThreadFromThreadInfoHost(this);
        setDarkTheme(true);
        getListView().setDivider(null);
        getListView().setStackFromBottom(true);
        getListView().setBackground(new ColorDrawable(0));
        setOverScrollMode(2);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        String string;
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        String str = "";
        if (arguments != null) {
            string = arguments.getString("threadId", "");
        } else {
            string = null;
        }
        if (string != null) {
            str = string;
        }
        this.threadId = str;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        getHandler().removeCallbacks(getFetchMentionListTask());
        this.mentionRelatedUsersCallback = null;
    }
}
