package com.narvii.chat.thread;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.util.ChatHelper;
import com.narvii.list.NVListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.search.InstantSearchListener;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SearchBar;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchMyChatsFragment.kt */
/* loaded from: classes2.dex */
public final class SearchMyChatsFragment extends NVListFragment implements SearchBar.OnSearchListener {
    private HashMap _$_findViewCache;
    private ChatHelper chatHelper;
    private MyChatsAdapter chatsAdapter;
    private final InstantSearchListener instantSearchListener = new InstantSearchListener();
    private SearchBar searchBar;

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
        return "SearchMyChat";
    }

    /* renamed from: hasPostEntry, reason: collision with other method in class */
    public boolean m40hasPostEntry() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean showListviewWhenLoading() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public /* bridge */ /* synthetic */ Boolean hasPostEntry() {
        return Boolean.valueOf(m40hasPostEntry());
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.chat_my_chats);
        Context context = getContext();
        if (context != null) {
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            this.chatHelper = new ChatHelper(context);
            this.instantSearchListener.setKeyword("");
            this.instantSearchListener.setRefreshListener(new InstantSearchListener.RefreshListener() { // from class: com.narvii.chat.thread.SearchMyChatsFragment.onCreate.1
                @Override // com.narvii.search.InstantSearchListener.RefreshListener
                public final void onRefresh(String str, boolean z) {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    LogEvent.clickBuilder(SearchMyChatsFragment.this, ActSemantic.search).extraParam("inputText", str).objectType(ObjectType.query).area("InputArea").send();
                }
            });
            if (bundle != null) {
                InstantSearchListener instantSearchListener = this.instantSearchListener;
                instantSearchListener.setKeyword(bundle.getString("search_key", instantSearchListener.getKeyword()));
                return;
            }
            return;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_search_my_chats, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkParameterIsNotNull(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("search_key", this.instantSearchListener.getKeyword());
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        this.instantSearchListener.onTextChanged(searchBar, str);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        this.instantSearchListener.onSearch(searchBar, str);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(final View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.search_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById(R.id.search_layout)");
        this.searchBar = (SearchBar) viewFindViewById;
        SearchBar searchBar = this.searchBar;
        if (searchBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBar");
            throw null;
        }
        searchBar.setOnSearchListener(this);
        ((Button) _$_findCachedViewById(com.narvii.amino.R.id.search_cancel)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.thread.SearchMyChatsFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SearchMyChatsFragment.this.finish();
            }
        });
        Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.thread.SearchMyChatsFragment.onViewCreated.2
            @Override // java.lang.Runnable
            public final void run() {
                SoftKeyboard.showSoftKeyboard((EditText) view.findViewById(R.id.search_text));
            }
        }, 200L);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setScrollToHideKeyboard(true);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.chatsAdapter = new MyChatsAdapter(this, this);
        InstantSearchListener instantSearchListener = this.instantSearchListener;
        MyChatsAdapter myChatsAdapter = this.chatsAdapter;
        if (myChatsAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatsAdapter");
            throw null;
        }
        instantSearchListener.attachAdapter(myChatsAdapter);
        MyChatsAdapter myChatsAdapter2 = this.chatsAdapter;
        if (myChatsAdapter2 != null) {
            return myChatsAdapter2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatsAdapter");
        throw null;
    }

    /* compiled from: SearchMyChatsFragment.kt */
    private final class MyChatsAdapter extends MyThreadListAdapter {
        final /* synthetic */ SearchMyChatsFragment this$0;

        @Override // com.narvii.chat.thread.MyThreadListAdapter, com.narvii.list.NVAdapter
        public boolean isDarkNVTheme() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyChatsAdapter(SearchMyChatsFragment searchMyChatsFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = searchMyChatsFragment;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest apiRequestBuild = new ApiRequest.Builder().path("/chat/thread/search").param("q", this.this$0.instantSearchListener.getKeyword()).param("action", 0).build();
            Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "ApiRequest.Builder().pat…ARCH_ACTION_NONE).build()");
            return apiRequestBuild;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return super.isEmpty() && !TextUtils.isEmpty(this.this$0.instantSearchListener.getKeyword());
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter
        public ThreadListItem createThreadItem(int i, View view, ViewGroup viewGroup) {
            if (i == 2) {
                View viewCreateView = createView(R.layout.chat_thread_hangout_item, viewGroup, view, "hangout");
                Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView(R.layout.chat…, convertView, \"hangout\")");
                return (ThreadListItem) viewCreateView;
            }
            if (i == 0) {
                View viewCreateView2 = createView(R.layout.chat_thread_user_item, viewGroup, view, "plain");
                Intrinsics.checkExpressionValueIsNotNull(viewCreateView2, "createView(R.layout.chat…nt, convertView, \"plain\")");
                return (ThreadListItem) viewCreateView2;
            }
            View viewCreateView3 = createView(R.layout.chat_thread_group_item, viewGroup, view, "group");
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView3, "createView(R.layout.chat…nt, convertView, \"group\")");
            return (ThreadListItem) viewCreateView3;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            if (itemView == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.chat.thread.ThreadListItem");
            }
            customItemView((ThreadListItem) itemView);
            return itemView;
        }

        private final void customItemView(ThreadListItem threadListItem) {
            TextView textView = threadListItem.datetime;
            Intrinsics.checkExpressionValueIsNotNull(textView, "view.datetime");
            textView.setVisibility(4);
            TextView textView2 = threadListItem.content;
            Intrinsics.checkExpressionValueIsNotNull(textView2, "view.content");
            textView2.setVisibility(8);
            NVImageView nVImageView = threadListItem.rctIndicatorIcon;
            Intrinsics.checkExpressionValueIsNotNull(nVImageView, "view.rctIndicatorIcon");
            nVImageView.setVisibility(8);
            View view = threadListItem.unread;
            Intrinsics.checkExpressionValueIsNotNull(view, "view.unread");
            view.setVisibility(4);
            TextView textView3 = threadListItem.title;
            Intrinsics.checkExpressionValueIsNotNull(textView3, "view.title");
            ViewGroup.LayoutParams layoutParams = textView3.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                layoutParams2.addRule(15, 1);
                layoutParams2.addRule(10, 0);
                TextView textView4 = threadListItem.title;
                Intrinsics.checkExpressionValueIsNotNull(textView4, "view.title");
                textView4.setLayoutParams(layoutParams);
            }
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter
        public String getSearchKey() {
            String keyword = this.this$0.instantSearchListener.getKeyword();
            Intrinsics.checkExpressionValueIsNotNull(keyword, "instantSearchListener.keyword");
            return keyword;
        }
    }
}
