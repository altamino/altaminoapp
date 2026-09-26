package com.narvii.master.search.history;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.master.search.trending.FlowLayoutAdapter;
import com.narvii.search.ISearchBarHost;
import com.narvii.util.Utils;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.widget.ACMAlertDialog;
import e8.l;
import java.util.ArrayList;
import kotlin.collections.c0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class SearchHistoryDelegate {

    @NotNull
    private final NVContext ctx;

    @Nullable
    private l<? super String, l0> onSearchHistory;

    @NotNull
    private SearchPrefsHelper prefsHelper;

    @Nullable
    private SearchHistoryAdapter searchHistoryAdapter;

    @Nullable
    private e8.a<Boolean> showSearchHistory;

    /* JADX INFO: Access modifiers changed from: private */
    final class SearchHistoryAdapter extends FlowLayoutAdapter<String> {
        final /* synthetic */ SearchHistoryDelegate this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SearchHistoryAdapter(@NotNull SearchHistoryDelegate searchHistoryDelegate, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = searchHistoryDelegate;
            refreshList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void updateChildView$lambda$1(SearchHistoryDelegate this$0, String data, View view) {
            t.j(this$0, "this$0");
            t.j(data, "$data");
            if ((this$0.getCtx() instanceof NVFragment) && (((NVFragment) this$0.getCtx()).getParentContext() instanceof ISearchBarHost)) {
                NVContext parentContext = ((NVFragment) this$0.getCtx()).getParentContext();
                t.h(parentContext, "null cannot be cast to non-null type com.narvii.search.ISearchBarHost");
                ((ISearchBarHost) parentContext).onSearchFromHistory((NVFragment) this$0.getCtx(), data);
            }
            l<String, l0> onSearchHistory = this$0.getOnSearchHistory();
            if (onSearchHistory != null) {
                onSearchHistory.invoke(data);
            }
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        @NotNull
        public View createChildView(@NotNull ViewGroup parent) {
            t.j(parent, "parent");
            View viewInflate = this.inflater.inflate(R.layout.all_search_history_item_view, parent, false);
            t.i(viewInflate, "inflate(...)");
            return viewInflate;
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter, com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            e8.a<Boolean> showSearchHistory = this.this$0.getShowSearchHistory();
            if (showSearchHistory == null || !showSearchHistory.invoke().booleanValue()) {
                return 0;
            }
            return super.getCount();
        }

        public final void refreshList() {
            ArrayList arrayList = new ArrayList(this.this$0.prefsHelper.getHistoryList());
            c0.X(arrayList);
            setList(arrayList);
            notifyDataSetChanged();
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        public void updateChildView(@NotNull final String data, @NotNull View view) {
            t.j(data, "data");
            t.j(view, "view");
            ((TextView) view.findViewById(R.id.history_search_text)).setText(data);
            final SearchHistoryDelegate searchHistoryDelegate = this.this$0;
            view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.search.history.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SearchHistoryDelegate.SearchHistoryAdapter.updateChildView$lambda$1(searchHistoryDelegate, data, view2);
                }
            });
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        protected void updateFlowLayout(@NotNull NVFlowLayout cell) {
            t.j(cell, "cell");
            int iDpToPxInt = Utils.dpToPxInt(getContext(), 10.0f);
            cell.setPadding(iDpToPxInt, iDpToPxInt, iDpToPxInt, iDpToPxInt * 2);
        }
    }

    public static final class SearchHistoryHeaderAdapter extends AdriftAdapter {

        @Nullable
        private NVAdapter host;

        @Nullable
        private e8.a<l0> onClearSearch;

        @Nullable
        public final NVAdapter getHost() {
            return this.host;
        }

        @Nullable
        public final e8.a<l0> getOnClearSearch() {
            return this.onClearSearch;
        }

        public final void setHost(@Nullable NVAdapter nVAdapter) {
            this.host = nVAdapter;
        }

        public final void setOnClearSearch(@Nullable e8.a<l0> aVar) {
            this.onClearSearch = aVar;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SearchHistoryHeaderAdapter(@NotNull NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void getView$lambda$0(SearchHistoryHeaderAdapter this$0, View view) {
            t.j(this$0, "this$0");
            e8.a<l0> aVar = this$0.onClearSearch;
            if (aVar != null) {
                aVar.invoke();
            }
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            NVAdapter nVAdapter = this.host;
            return (nVAdapter == null || nVAdapter.getCount() <= 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_history_section_header, viewGroup, view);
            t.i(viewCreateView, "createView(...)");
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(getContext().getString(R.string.recent_searches));
            viewCreateView.findViewById(R.id.clear_search_history).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.search.history.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SearchHistoryDelegate.SearchHistoryHeaderAdapter.getView$lambda$0(this.f2414a, view2);
                }
            });
            return viewCreateView;
        }
    }

    /* JADX INFO: renamed from: com.narvii.master.search.history.SearchHistoryDelegate$addSearchHistoryAdapters$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.a<l0> {
        AnonymousClass1() {
            super(0);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            SearchHistoryDelegate.this.showDeleteSearchHistoryDialog();
        }
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @Nullable
    public final l<String, l0> getOnSearchHistory() {
        return this.onSearchHistory;
    }

    @Nullable
    public final e8.a<Boolean> getShowSearchHistory() {
        return this.showSearchHistory;
    }

    public final void setOnSearchHistory(@Nullable l<? super String, l0> lVar) {
        this.onSearchHistory = lVar;
    }

    public final void setShowSearchHistory(@Nullable e8.a<Boolean> aVar) {
        this.showSearchHistory = aVar;
    }

    public SearchHistoryDelegate(@NotNull NVContext ctx, @NotNull String prefKey) {
        t.j(ctx, "ctx");
        t.j(prefKey, "prefKey");
        this.ctx = ctx;
        Context context = ctx.getContext();
        t.i(context, "getContext(...)");
        this.prefsHelper = new SearchPrefsHelper(context, prefKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showDeleteSearchHistoryDialog() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(R.string.delete_search_history_confirm);
        aCMAlertDialog.addButton(R.string.cancel, null);
        aCMAlertDialog.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.master.search.history.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchHistoryDelegate.showDeleteSearchHistoryDialog$lambda$0(this.f2411a, view);
            }
        }, SupportMenu.CATEGORY_MASK);
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDeleteSearchHistoryDialog$lambda$0(SearchHistoryDelegate this$0, View view) {
        t.j(this$0, "this$0");
        this$0.prefsHelper.clearSearchHistoryList();
        SearchHistoryAdapter searchHistoryAdapter = this$0.searchHistoryAdapter;
        if (searchHistoryAdapter != null) {
            searchHistoryAdapter.refreshList();
        }
    }

    public final void addSearchHistory(@NotNull String keyword) {
        t.j(keyword, "keyword");
        this.prefsHelper.addSearchKeyword(keyword);
        SearchHistoryAdapter searchHistoryAdapter = this.searchHistoryAdapter;
        if (searchHistoryAdapter != null) {
            searchHistoryAdapter.refreshList();
        }
    }

    public final void addSearchHistoryAdapters(@Nullable MergeAdapter mergeAdapter) {
        SearchHistoryHeaderAdapter searchHistoryHeaderAdapter = new SearchHistoryHeaderAdapter(this.ctx);
        searchHistoryHeaderAdapter.setOnClearSearch(new AnonymousClass1());
        SearchHistoryAdapter searchHistoryAdapter = new SearchHistoryAdapter(this, this.ctx);
        this.searchHistoryAdapter = searchHistoryAdapter;
        searchHistoryHeaderAdapter.setHost(searchHistoryAdapter);
        if (mergeAdapter != null) {
            mergeAdapter.addAdapter(searchHistoryHeaderAdapter);
        }
        if (mergeAdapter != null) {
            mergeAdapter.addAdapter(this.searchHistoryAdapter);
        }
    }

    public final int getSearchHistoryCount() {
        SearchHistoryAdapter searchHistoryAdapter = this.searchHistoryAdapter;
        if (searchHistoryAdapter != null) {
            return searchHistoryAdapter.getCount();
        }
        return 0;
    }
}
