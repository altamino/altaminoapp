package com.narvii.master.home.discover.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.logging.Area;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewColumnAdapter;
import com.narvii.topic.model.ModuleItemCountHost;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class ShowAllStoryAdapter extends NVRecyclerViewBaseAdapter {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int MAX_COUNT = 1000;
    private static final int MEDIUM_COUNT = 100;
    private static final int MIN_COUNT = 50;

    @Nullable
    private View.OnClickListener clickListener;

    @NotNull
    private final NVContext ctx;

    @Nullable
    private NVRecyclerViewBaseAdapter host;
    private final int minSize;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class ShowAllStoryViewHolder extends BaseViewHolder {

        @NotNull
        private final TextView text;
        final /* synthetic */ ShowAllStoryAdapter this$0;

        @NotNull
        public final TextView getText() {
            return this.text;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShowAllStoryViewHolder(@NotNull ShowAllStoryAdapter showAllStoryAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = showAllStoryAdapter;
            View viewFindViewById = itemView.findViewById(R.id.count_text);
            kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
            this.text = (TextView) viewFindViewById;
            itemView.setOnClickListener(showAllStoryAdapter.subviewClickListener);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShowAllStoryAdapter(@NotNull NVContext ctx, int i10) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        this.ctx = ctx;
        this.minSize = i10;
    }

    @Nullable
    public final View.OnClickListener getClickListener() {
        return this.clickListener;
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @Nullable
    public final NVRecyclerViewBaseAdapter getHost() {
        return this.host;
    }

    public final int getMinSize() {
        return this.minSize;
    }

    public final void setClickListener(@Nullable View.OnClickListener onClickListener) {
        this.clickListener = onClickListener;
    }

    public final void setHost(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        this.host = nVRecyclerViewBaseAdapter;
    }

    public /* synthetic */ ShowAllStoryAdapter(NVContext nVContext, int i10, int i11, kotlin.jvm.internal.k kVar) {
        this(nVContext, (i11 & 2) != 0 ? 4 : i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.host;
        if (nVRecyclerViewBaseAdapter == null) {
            return 0;
        }
        kotlin.jvm.internal.t.g(nVRecyclerViewBaseAdapter);
        if (!nVRecyclerViewBaseAdapter.isListShow()) {
            return 0;
        }
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = this.host;
        kotlin.jvm.internal.t.g(nVRecyclerViewBaseAdapter2);
        if (nVRecyclerViewBaseAdapter2.getItemCount() <= 0) {
            return 0;
        }
        Area area = this.host;
        if (!(area instanceof ModuleItemCountHost)) {
            return 0;
        }
        kotlin.jvm.internal.t.h(area, "null cannot be cast to non-null type com.narvii.topic.model.ModuleItemCountHost");
        return ((ModuleItemCountHost) area).allItemCount() > this.minSize ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        kotlin.jvm.internal.t.j(holder, "holder");
        if (holder instanceof ShowAllStoryViewHolder) {
            Area area = this.host;
            if (area instanceof RecyclerViewColumnAdapter) {
                kotlin.jvm.internal.t.h(area, "null cannot be cast to non-null type com.narvii.paging.adapter.RecyclerViewColumnAdapter");
                area = ((RecyclerViewColumnAdapter) area).wrapped;
            }
            int iAllItemCount = area instanceof ModuleItemCountHost ? ((ModuleItemCountHost) area).allItemCount() : 0;
            if (this.minSize + 1 > iAllItemCount || iAllItemCount >= 1001) {
                ((ShowAllStoryViewHolder) holder).getText().setText(getContext().getString(R.string.show_all_number, 1000));
            } else {
                ((ShowAllStoryViewHolder) holder).getText().setText(getContext().getString(R.string.show_all));
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_show_more_story, parent, false);
        kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
        return new ShowAllStoryViewHolder(this, viewInflate);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
        View.OnClickListener onClickListener = this.clickListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
    }
}
