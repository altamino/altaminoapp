package com.narvii.master.search;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.activity.result.ActivityResultCaller;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.thread.MyThreadListAdapter;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.master.search.trending.SectionHeaderAdapter;
import com.narvii.model.Community;
import com.narvii.search.ISearchBarHost;
import com.narvii.search.InstantSearchListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.SearchBar;
import java.util.HashMap;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class GlobalMyChatsSearchFragment extends NVListFragment implements SearchBar.OnSearchListener {
    private ChatSectionAdapter chatSectionAdapter;
    private ContentLanguageService contentLanguageService;

    @Nullable
    private MergeAdapter mergeAdapter;

    @NotNull
    private final HashMap<String, Community> communityMap = new HashMap<>();

    @NotNull
    private final InstantSearchListener instantSearchListener = new InstantSearchListener();

    public final class ChatSectionAdapter extends MyThreadListAdapter {
        final /* synthetic */ GlobalMyChatsSearchFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChatSectionAdapter(@NotNull GlobalMyChatsSearchFragment globalMyChatsSearchFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = globalMyChatsSearchFragment;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter
        @NotNull
        public HashMap<String, Community> communityMap() {
            return this.this$0.communityMap;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter, com.narvii.list.NVPagedAdapter
        @NotNull
        protected ApiRequest createRequest(boolean z6) {
            ContentLanguageService contentLanguageService = null;
            ApiRequest.Builder builderParam = new ApiRequest.Builder().global().path("chat/thread/search").param("q", this.this$0.instantSearchListener.getKeyword()).param("searchId", this.this$0.instantSearchListener.getKeyword() != null ? SearchUtils.getSearchId(this.this$0) : null).param("action", 0);
            ContentLanguageService contentLanguageService2 = this.this$0.contentLanguageService;
            if (contentLanguageService2 == null) {
                t.B("contentLanguageService");
            } else {
                contentLanguageService = contentLanguageService2;
            }
            ApiRequest apiRequestBuild = builderParam.param("language", contentLanguageService.getRequestPrefLanguageWithLocalAsDefault()).build();
            t.i(apiRequestBuild, "build(...)");
            return apiRequestBuild;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter
        @NotNull
        public String getSearchKey() {
            String keyword = this.this$0.instantSearchListener.getKeyword();
            t.i(keyword, "getKeyword(...)");
            return keyword;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (super.isEmpty()) {
                String keyword = this.this$0.instantSearchListener.getKeyword();
                t.i(keyword, "getKeyword(...)");
                if (keyword.length() > 0) {
                    return true;
                }
            }
            return false;
        }
    }

    public static final class MyChatSectionHeaderAdapter extends SectionHeaderAdapter {
        private final int titleStrId;

        @Override // com.narvii.master.search.trending.SectionHeaderAdapter, com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return 1;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyChatSectionHeaderAdapter(@NotNull NVContext ctx, int i10) {
            super(ctx, i10);
            t.j(ctx, "ctx");
            this.titleStrId = i10;
        }
    }

    public static final class MyDividerAdapter extends DividerAdapter {
        @Override // com.narvii.list.DividerAdapter
        protected int getDividerLayoutId() {
            return R.layout.list_divider_padding;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyDividerAdapter(@NotNull NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "global_my_chats_search";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$0(GlobalMyChatsSearchFragment this$0, String str, boolean z6) {
        t.j(this$0, "this$0");
        if (!TextUtils.isEmpty(str) && z6 && (this$0.getParentFragment() instanceof ISearchBarHost)) {
            ActivityResultCaller parentFragment = this$0.getParentFragment();
            t.h(parentFragment, "null cannot be cast to non-null type com.narvii.search.ISearchBarHost");
            ((ISearchBarHost) parentFragment).onChildFragmentRealtimeSearch(this$0, str);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this);
        MyChatSectionHeaderAdapter myChatSectionHeaderAdapter = new MyChatSectionHeaderAdapter(this, R.string.chat_my_chats);
        ChatSectionAdapter chatSectionAdapter = new ChatSectionAdapter(this, this);
        this.chatSectionAdapter = chatSectionAdapter;
        myChatSectionHeaderAdapter.setAttachHost(chatSectionAdapter);
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.addAdapter(myChatSectionHeaderAdapter);
        }
        MyDividerAdapter myDividerAdapter = new MyDividerAdapter(this);
        ChatSectionAdapter chatSectionAdapter2 = this.chatSectionAdapter;
        ChatSectionAdapter chatSectionAdapter3 = null;
        if (chatSectionAdapter2 == null) {
            t.B("chatSectionAdapter");
            chatSectionAdapter2 = null;
        }
        myDividerAdapter.setAdapter(chatSectionAdapter2);
        MergeAdapter mergeAdapter2 = this.mergeAdapter;
        if (mergeAdapter2 != null) {
            mergeAdapter2.addAdapter(myDividerAdapter, true);
        }
        InstantSearchListener instantSearchListener = this.instantSearchListener;
        ChatSectionAdapter chatSectionAdapter4 = this.chatSectionAdapter;
        if (chatSectionAdapter4 == null) {
            t.B("chatSectionAdapter");
        } else {
            chatSectionAdapter3 = chatSectionAdapter4;
        }
        instantSearchListener.attachAdapter(chatSectionAdapter3);
        MergeAdapter mergeAdapter3 = this.mergeAdapter;
        t.g(mergeAdapter3);
        return mergeAdapter3;
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    public Drawable getListSelector() {
        return new ColorDrawable(0);
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("content_language");
        t.i(service, "getService(...)");
        this.contentLanguageService = (ContentLanguageService) service;
        this.instantSearchListener.setKeyword(getStringParam("search_key"));
        this.instantSearchListener.setRefreshListener(new InstantSearchListener.RefreshListener() { // from class: com.narvii.master.search.b
            @Override // com.narvii.search.InstantSearchListener.RefreshListener
            public final void onRefresh(String str, boolean z6) {
                GlobalMyChatsSearchFragment.onCreate$lambda$0(this.f2403a, str, z6);
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
        if (listView != null) {
            listView.setDivider(null);
        }
    }
}
