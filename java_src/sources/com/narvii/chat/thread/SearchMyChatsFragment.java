package com.narvii.chat.thread;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import com.narvii.amino.databinding.FragmentSearchMyChatsBinding;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.util.ChatHelper;
import com.narvii.list.NVListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.search.InstantSearchListener;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.SearchBar;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class SearchMyChatsFragment extends NVListFragment implements SearchBar.OnSearchListener {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(SearchMyChatsFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentSearchMyChatsBinding;", 0))};
    private ChatHelper chatHelper;
    private MyChatsAdapter chatsAdapter;
    private SearchBar searchBar;

    @NotNull
    private final InstantSearchListener instantSearchListener = new InstantSearchListener();

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, SearchMyChatsFragment$binding$2.INSTANCE);

    private final class MyChatsAdapter extends MyThreadListAdapter {
        final /* synthetic */ SearchMyChatsFragment this$0;

        @Override // com.narvii.chat.thread.MyThreadListAdapter, com.narvii.list.NVAdapter
        public boolean isDarkNVTheme() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyChatsAdapter(@NotNull SearchMyChatsFragment searchMyChatsFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = searchMyChatsFragment;
        }

        private final void customItemView(ThreadListItem threadListItem) {
            threadListItem.datetime.setVisibility(4);
            threadListItem.content.setVisibility(8);
            threadListItem.rctIndicatorIcon.setVisibility(8);
            threadListItem.unread.setVisibility(4);
            ViewGroup.LayoutParams layoutParams = threadListItem.title.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                layoutParams2.addRule(15, 1);
                layoutParams2.addRule(10, 0);
                threadListItem.title.setLayoutParams(layoutParams);
            }
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter, com.narvii.list.NVPagedAdapter
        @NotNull
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest apiRequestBuild = new ApiRequest.Builder().path("/chat/thread/search").param("q", this.this$0.instantSearchListener.getKeyword()).param("action", 0).build();
            t.i(apiRequestBuild, "build(...)");
            return apiRequestBuild;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter
        @NotNull
        public ThreadListItem createThreadItem(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            if (i10 == 0) {
                View viewCreateView = createView(R.layout.chat_thread_user_item, viewGroup, view, "plain");
                t.i(viewCreateView, "createView(...)");
                return (ThreadListItem) viewCreateView;
            }
            if (i10 != 2) {
                View viewCreateView2 = createView(R.layout.chat_thread_group_item, viewGroup, view, "group");
                t.i(viewCreateView2, "createView(...)");
                return (ThreadListItem) viewCreateView2;
            }
            View viewCreateView3 = createView(R.layout.chat_thread_hangout_item, viewGroup, view, "hangout");
            t.i(viewCreateView3, "createView(...)");
            return (ThreadListItem) viewCreateView3;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter
        @NotNull
        public String getSearchKey() {
            String keyword = this.this$0.instantSearchListener.getKeyword();
            t.i(keyword, "getKeyword(...)");
            return keyword;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter, com.narvii.list.NVPagedAdapter
        @NotNull
        protected View getItemView(@Nullable Object obj, @Nullable View view, @Nullable ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            t.h(itemView, "null cannot be cast to non-null type com.narvii.chat.thread.ThreadListItem");
            customItemView((ThreadListItem) itemView);
            return itemView;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (super.isEmpty() && !TextUtils.isEmpty(this.this$0.instantSearchListener.getKeyword())) {
                return true;
            }
            return false;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "search_my_chat";
    }

    @Override // com.narvii.app.NVFragment
    @NotNull
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean showListviewWhenLoading() {
        return true;
    }

    private final FragmentSearchMyChatsBinding getBinding() {
        return (FragmentSearchMyChatsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$0(SearchMyChatsFragment this$0, String str, boolean z6) {
        t.j(this$0, "this$0");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        LogEvent.clickBuilder(this$0, ActSemantic.search).extraParam("inputText", str).objectType(ObjectType.query).area("InputArea").send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2(SearchMyChatsFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(View view) {
        t.j(view, "$view");
        SoftKeyboard.showSoftKeyboard((EditText) view.findViewById(R.id.search_text));
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        MyChatsAdapter myChatsAdapter = new MyChatsAdapter(this, this);
        this.chatsAdapter = myChatsAdapter;
        this.instantSearchListener.attachAdapter(myChatsAdapter);
        MyChatsAdapter myChatsAdapter2 = this.chatsAdapter;
        if (myChatsAdapter2 != null) {
            return myChatsAdapter2;
        }
        t.B("chatsAdapter");
        return null;
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("search_key", this.instantSearchListener.getKeyword());
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(@Nullable SearchBar searchBar, @Nullable String str) {
        this.instantSearchListener.onSearch(searchBar, str);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(@Nullable SearchBar searchBar, @Nullable String str) {
        this.instantSearchListener.onTextChanged(searchBar, str);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull final View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        SearchBar searchLayout = getBinding().chatSearchBar.searchLayout;
        t.i(searchLayout, "searchLayout");
        this.searchBar = searchLayout;
        if (searchLayout == null) {
            t.B("searchBar");
            searchLayout = null;
        }
        searchLayout.setOnSearchListener(this);
        getBinding().chatSearchBar.searchCancel.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.thread.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SearchMyChatsFragment.onViewCreated$lambda$2(this.f2077a, view2);
            }
        });
        Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.thread.g
            @Override // java.lang.Runnable
            public final void run() {
                SearchMyChatsFragment.onViewCreated$lambda$3(view);
            }
        }, 200L);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.chat_my_chats);
        Context contextRequireContext = requireContext();
        t.i(contextRequireContext, "requireContext(...)");
        this.chatHelper = new ChatHelper(contextRequireContext);
        this.instantSearchListener.setKeyword("");
        this.instantSearchListener.setRefreshListener(new InstantSearchListener.RefreshListener() { // from class: com.narvii.chat.thread.h
            @Override // com.narvii.search.InstantSearchListener.RefreshListener
            public final void onRefresh(String str, boolean z6) {
                SearchMyChatsFragment.onCreate$lambda$0(this.f2079a, str, z6);
            }
        });
        if (bundle != null) {
            InstantSearchListener instantSearchListener = this.instantSearchListener;
            instantSearchListener.setKeyword(bundle.getString("search_key", instantSearchListener.getKeyword()));
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(@Nullable ListView listView, @Nullable Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setScrollToHideKeyboard(true);
    }
}
