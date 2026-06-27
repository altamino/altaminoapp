package com.narvii.master.search;

import android.content.ComponentCallbacks;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
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
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: GlobalMyChatsSearchFragment.kt */
/* loaded from: classes3.dex */
public final class GlobalMyChatsSearchFragment extends NVListFragment implements SearchBar.OnSearchListener {
    private HashMap _$_findViewCache;
    private ChatSectionAdapter chatSectionAdapter;
    private ContentLanguageService contentLanguageService;
    private MergeAdapter mergeAdapter;
    private final HashMap<String, Community> communityMap = new HashMap<>();
    private final InstantSearchListener instantSearchListener = new InstantSearchListener();

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

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "MoreFromMyChats";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ ContentLanguageService access$getContentLanguageService$p(GlobalMyChatsSearchFragment globalMyChatsSearchFragment) {
        ContentLanguageService contentLanguageService = globalMyChatsSearchFragment.contentLanguageService;
        if (contentLanguageService != null) {
            return contentLanguageService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("contentLanguageService");
        throw null;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"content_language\")");
        this.contentLanguageService = (ContentLanguageService) service;
        this.instantSearchListener.setKeyword(getStringParam("search_key"));
        this.instantSearchListener.setRefreshListener(new InstantSearchListener.RefreshListener() { // from class: com.narvii.master.search.GlobalMyChatsSearchFragment.onCreate.1
            @Override // com.narvii.search.InstantSearchListener.RefreshListener
            public final void onRefresh(String str, boolean z) {
                if (!TextUtils.isEmpty(str) && z && (GlobalMyChatsSearchFragment.this.getParentFragment() instanceof ISearchBarHost)) {
                    ComponentCallbacks parentFragment = GlobalMyChatsSearchFragment.this.getParentFragment();
                    if (parentFragment == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.search.ISearchBarHost");
                    }
                    ((ISearchBarHost) parentFragment).onChildFragmentRealtimeSearch(GlobalMyChatsSearchFragment.this, str);
                }
            }
        });
        if (bundle != null) {
            InstantSearchListener instantSearchListener = this.instantSearchListener;
            instantSearchListener.setKeyword(bundle.getString("search_key", instantSearchListener.getKeyword()));
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this);
        MyChatSectionHeaderAdapter myChatSectionHeaderAdapter = new MyChatSectionHeaderAdapter(this, R.string.chat_my_chats);
        this.chatSectionAdapter = new ChatSectionAdapter(this, this);
        ChatSectionAdapter chatSectionAdapter = this.chatSectionAdapter;
        if (chatSectionAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatSectionAdapter");
            throw null;
        }
        myChatSectionHeaderAdapter.setAttachHost(chatSectionAdapter);
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.addAdapter(myChatSectionHeaderAdapter);
        }
        MyDividerAdapter myDividerAdapter = new MyDividerAdapter(this);
        ChatSectionAdapter chatSectionAdapter2 = this.chatSectionAdapter;
        if (chatSectionAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatSectionAdapter");
            throw null;
        }
        myDividerAdapter.setAdapter(chatSectionAdapter2);
        MergeAdapter mergeAdapter2 = this.mergeAdapter;
        if (mergeAdapter2 != null) {
            mergeAdapter2.addAdapter(myDividerAdapter, true);
        }
        InstantSearchListener instantSearchListener = this.instantSearchListener;
        ChatSectionAdapter chatSectionAdapter3 = this.chatSectionAdapter;
        if (chatSectionAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatSectionAdapter");
            throw null;
        }
        instantSearchListener.attachAdapter(chatSectionAdapter3);
        MergeAdapter mergeAdapter3 = this.mergeAdapter;
        if (mergeAdapter3 != null) {
            return mergeAdapter3;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setScrollToHideKeyboard(true);
        if (listView != null) {
            listView.setDivider(null);
        }
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        this.instantSearchListener.onTextChanged(searchBar, str);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        this.instantSearchListener.onSearch(searchBar, str);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkParameterIsNotNull(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("search_key", this.instantSearchListener.getKeyword());
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    /* compiled from: GlobalMyChatsSearchFragment.kt */
    public final class ChatSectionAdapter extends MyThreadListAdapter {
        final /* synthetic */ GlobalMyChatsSearchFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChatSectionAdapter(GlobalMyChatsSearchFragment globalMyChatsSearchFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalMyChatsSearchFragment;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest apiRequestBuild = new ApiRequest.Builder().global().path("chat/thread/search").param("q", this.this$0.instantSearchListener.getKeyword()).param("searchId", this.this$0.instantSearchListener.getKeyword() != null ? SearchUtils.getSearchId(this.this$0) : null).param("action", 0).param(IjkMediaMeta.IJKM_KEY_LANGUAGE, GlobalMyChatsSearchFragment.access$getContentLanguageService$p(this.this$0).getRequestPrefLanguageWithLocalAsDefault()).build();
            Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "ApiRequest.Builder()\n   …thLocalAsDefault).build()");
            return apiRequestBuild;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter
        public HashMap<String, Community> communityMap() {
            return this.this$0.communityMap;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter
        public String getSearchKey() {
            String keyword = this.this$0.instantSearchListener.getKeyword();
            Intrinsics.checkExpressionValueIsNotNull(keyword, "instantSearchListener.keyword");
            return keyword;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (super.isEmpty()) {
                String keyword = this.this$0.instantSearchListener.getKeyword();
                Intrinsics.checkExpressionValueIsNotNull(keyword, "instantSearchListener.keyword");
                if (keyword.length() > 0) {
                    return true;
                }
            }
            return false;
        }
    }

    /* compiled from: GlobalMyChatsSearchFragment.kt */
    public static final class MyDividerAdapter extends DividerAdapter {
        @Override // com.narvii.list.DividerAdapter
        protected int getDividerLayoutId() {
            return R.layout.list_divider_padding;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyDividerAdapter(NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        }
    }

    /* compiled from: GlobalMyChatsSearchFragment.kt */
    public static final class MyChatSectionHeaderAdapter extends SectionHeaderAdapter {
        private final int titleStrId;

        @Override // com.narvii.master.search.trending.SectionHeaderAdapter, com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return 1;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyChatSectionHeaderAdapter(NVContext ctx, int i) {
            super(ctx, i);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.titleStrId = i;
        }
    }
}
