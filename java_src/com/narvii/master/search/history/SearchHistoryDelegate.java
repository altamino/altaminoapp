package com.narvii.master.search.history;

import android.content.Context;
import android.support.v4.internal.view.SupportMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
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
import java.util.ArrayList;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsJvmKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchHistoryDelegate.kt */
/* loaded from: classes3.dex */
public final class SearchHistoryDelegate {
    private final NVContext ctx;
    private Function1<? super String, Unit> onSearchHistory;
    private SearchPrefsHelper prefsHelper;
    private SearchHistoryAdapter searchHistoryAdapter;
    private Function0<Boolean> showSearchHistory;

    public SearchHistoryDelegate(NVContext ctx, String prefKey) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(prefKey, "prefKey");
        this.ctx = ctx;
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        this.prefsHelper = new SearchPrefsHelper(context, prefKey);
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final Function1<String, Unit> getOnSearchHistory() {
        return this.onSearchHistory;
    }

    public final void setOnSearchHistory(Function1<? super String, Unit> function1) {
        this.onSearchHistory = function1;
    }

    public final Function0<Boolean> getShowSearchHistory() {
        return this.showSearchHistory;
    }

    public final void setShowSearchHistory(Function0<Boolean> function0) {
        this.showSearchHistory = function0;
    }

    public final void addSearchHistoryAdapters(MergeAdapter mergeAdapter) {
        SearchHistoryHeaderAdapter searchHistoryHeaderAdapter = new SearchHistoryHeaderAdapter(this.ctx);
        searchHistoryHeaderAdapter.setOnClearSearch(new Function0<Unit>() { // from class: com.narvii.master.search.history.SearchHistoryDelegate.addSearchHistoryAdapters.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SearchHistoryDelegate.this.showDeleteSearchHistoryDialog();
            }
        });
        this.searchHistoryAdapter = new SearchHistoryAdapter(this, this.ctx);
        searchHistoryHeaderAdapter.setHost(this.searchHistoryAdapter);
        if (mergeAdapter != null) {
            mergeAdapter.addAdapter(searchHistoryHeaderAdapter);
        }
        if (mergeAdapter != null) {
            mergeAdapter.addAdapter(this.searchHistoryAdapter);
        }
    }

    public final void addSearchHistory(String keyword) {
        Intrinsics.checkParameterIsNotNull(keyword, "keyword");
        this.prefsHelper.addSearchKeyword(keyword);
        SearchHistoryAdapter searchHistoryAdapter = this.searchHistoryAdapter;
        if (searchHistoryAdapter != null) {
            searchHistoryAdapter.refreshList();
        }
    }

    public final int getSearchHistoryCount() {
        SearchHistoryAdapter searchHistoryAdapter = this.searchHistoryAdapter;
        if (searchHistoryAdapter != null) {
            return searchHistoryAdapter.getCount();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showDeleteSearchHistoryDialog() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(R.string.delete_search_history_confirm);
        aCMAlertDialog.addButton(R.string.cancel, null);
        aCMAlertDialog.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.master.search.history.SearchHistoryDelegate.showDeleteSearchHistoryDialog.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchHistoryDelegate.this.prefsHelper.clearSearchHistoryList();
                SearchHistoryAdapter searchHistoryAdapter = SearchHistoryDelegate.this.searchHistoryAdapter;
                if (searchHistoryAdapter != null) {
                    searchHistoryAdapter.refreshList();
                }
            }
        }, SupportMenu.CATEGORY_MASK);
        aCMAlertDialog.show();
    }

    /* compiled from: SearchHistoryDelegate.kt */
    public static final class SearchHistoryHeaderAdapter extends AdriftAdapter {
        private NVAdapter host;
        private Function0<Unit> onClearSearch;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SearchHistoryHeaderAdapter(NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        }

        public final NVAdapter getHost() {
            return this.host;
        }

        public final void setHost(NVAdapter nVAdapter) {
            this.host = nVAdapter;
        }

        public final Function0<Unit> getOnClearSearch() {
            return this.onClearSearch;
        }

        public final void setOnClearSearch(Function0<Unit> function0) {
            this.onClearSearch = function0;
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            NVAdapter nVAdapter = this.host;
            return (nVAdapter != null ? nVAdapter.getCount() : 0) > 0 ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_history_section_header, viewGroup, view);
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView(R.layout.item…der, parent, convertView)");
            TextView title = (TextView) viewCreateView.findViewById(R.id.title);
            Intrinsics.checkExpressionValueIsNotNull(title, "title");
            title.setText(getContext().getString(R.string.recent_searches));
            viewCreateView.findViewById(R.id.clear_search_history).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.search.history.SearchHistoryDelegate$SearchHistoryHeaderAdapter$getView$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    Function0<Unit> onClearSearch = this.this$0.getOnClearSearch();
                    if (onClearSearch != null) {
                        onClearSearch.invoke();
                    }
                }
            });
            return viewCreateView;
        }
    }

    /* compiled from: SearchHistoryDelegate.kt */
    private final class SearchHistoryAdapter extends FlowLayoutAdapter<String> {
        final /* synthetic */ SearchHistoryDelegate this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SearchHistoryAdapter(SearchHistoryDelegate searchHistoryDelegate, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = searchHistoryDelegate;
            refreshList();
        }

        public final void refreshList() {
            ArrayList arrayList = new ArrayList(this.this$0.prefsHelper.getHistoryList());
            CollectionsKt___CollectionsJvmKt.reverse(arrayList);
            setList(arrayList);
            notifyDataSetChanged();
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        public View createChildView(ViewGroup parent) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View viewInflate = this.inflater.inflate(R.layout.all_search_history_item_view, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "inflater.inflate(R.layou…item_view, parent, false)");
            return viewInflate;
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        public void updateChildView(final String data, View view) {
            Intrinsics.checkParameterIsNotNull(data, "data");
            Intrinsics.checkParameterIsNotNull(view, "view");
            TextView tv2 = (TextView) view.findViewById(R.id.history_search_text);
            Intrinsics.checkExpressionValueIsNotNull(tv2, "tv");
            tv2.setText(data);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.search.history.SearchHistoryDelegate$SearchHistoryAdapter$updateChildView$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    if ((this.this$0.this$0.getCtx() instanceof NVFragment) && (((NVFragment) this.this$0.this$0.getCtx()).getParentContext() instanceof ISearchBarHost)) {
                        NVContext parentContext = ((NVFragment) this.this$0.this$0.getCtx()).getParentContext();
                        if (parentContext == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.search.ISearchBarHost");
                        }
                        ((ISearchBarHost) parentContext).onSearchFromHistory((NVFragment) this.this$0.this$0.getCtx(), data);
                    }
                    Function1<String, Unit> onSearchHistory = this.this$0.this$0.getOnSearchHistory();
                    if (onSearchHistory != null) {
                        onSearchHistory.invoke(data);
                    }
                }
            });
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        protected void updateFlowLayout(NVFlowLayout cell) {
            Intrinsics.checkParameterIsNotNull(cell, "cell");
            int iDpToPxInt = Utils.dpToPxInt(getContext(), 10.0f);
            cell.setPadding(iDpToPxInt, iDpToPxInt, iDpToPxInt, iDpToPxInt * 2);
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter, com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            Function0<Boolean> showSearchHistory = this.this$0.getShowSearchHistory();
            if (showSearchHistory == null || !showSearchHistory.invoke().booleanValue()) {
                return 0;
            }
            return super.getCount();
        }
    }
}
