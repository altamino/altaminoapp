package com.narvii.master.home.discover.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.logging.Area;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewColumnAdapter;
import com.narvii.topic.TopicRelatedDiscoverFragment;
import com.narvii.topic.model.ModuleItemCountHost;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ShowAllStoryAdapter.kt */
/* loaded from: classes3.dex */
public class ShowAllStoryAdapter extends NVRecyclerViewBaseAdapter {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_COUNT = 1000;
    private static final int MEDIUM_COUNT = 100;
    private static final int MIN_COUNT = 50;
    private View.OnClickListener clickListener;
    private final NVContext ctx;
    private NVRecyclerViewBaseAdapter host;
    private final int minSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShowAllStoryAdapter(NVContext ctx, int i) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.minSize = i;
    }

    public /* synthetic */ ShowAllStoryAdapter(NVContext nVContext, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVContext, (i2 & 2) != 0 ? 4 : i);
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final int getMinSize() {
        return this.minSize;
    }

    public final NVRecyclerViewBaseAdapter getHost() {
        return this.host;
    }

    public final void setHost(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        this.host = nVRecyclerViewBaseAdapter;
    }

    public final View.OnClickListener getClickListener() {
        return this.clickListener;
    }

    public final void setClickListener(View.OnClickListener onClickListener) {
        this.clickListener = onClickListener;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_show_more_story, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…ore_story, parent, false)");
        return new ShowAllStoryViewHolder(this, viewInflate);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.host;
        if (nVRecyclerViewBaseAdapter != null) {
            if (nVRecyclerViewBaseAdapter == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            if (nVRecyclerViewBaseAdapter.isListShow()) {
                NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = this.host;
                if (nVRecyclerViewBaseAdapter2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                if (nVRecyclerViewBaseAdapter2.getItemCount() > 0) {
                    Area area = this.host;
                    if (area instanceof ModuleItemCountHost) {
                        if (area != null) {
                            return ((ModuleItemCountHost) area).allItemCount() > this.minSize ? 1 : 0;
                        }
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.topic.model.ModuleItemCountHost");
                    }
                }
            }
        }
        return 0;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        if (holder instanceof ShowAllStoryViewHolder) {
            Area area = this.host;
            if (area instanceof RecyclerViewColumnAdapter) {
                if (area == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.paging.adapter.RecyclerViewColumnAdapter");
                }
                area = ((RecyclerViewColumnAdapter) area).wrapped;
            }
            if (this.ctx instanceof TopicRelatedDiscoverFragment) {
                int iAllItemCount = area instanceof ModuleItemCountHost ? ((ModuleItemCountHost) area).allItemCount() : 0;
                if (this.minSize + 1 <= iAllItemCount && 50 >= iAllItemCount) {
                    ((ShowAllStoryViewHolder) holder).getText().setText(getContext().getString(R.string.show_all));
                    return;
                }
                if (51 <= iAllItemCount && 100 >= iAllItemCount) {
                    ((ShowAllStoryViewHolder) holder).getText().setText(getContext().getString(R.string.show_all_number, 50));
                    return;
                } else if (1001 <= iAllItemCount && Integer.MAX_VALUE >= iAllItemCount) {
                    ((ShowAllStoryViewHolder) holder).getText().setText(getContext().getString(R.string.show_all_number, 1000));
                    return;
                } else {
                    ((ShowAllStoryViewHolder) holder).getText().setText(getContext().getString(R.string.show_all_number, Integer.valueOf(((iAllItemCount - 1) / 100) * 100)));
                    return;
                }
            }
            int iAllItemCount2 = area instanceof ModuleItemCountHost ? ((ModuleItemCountHost) area).allItemCount() : 0;
            if (this.minSize + 1 <= iAllItemCount2 && 1000 >= iAllItemCount2) {
                ((ShowAllStoryViewHolder) holder).getText().setText(getContext().getString(R.string.show_all));
            } else {
                ((ShowAllStoryViewHolder) holder).getText().setText(getContext().getString(R.string.show_all_number, 1000));
            }
        }
    }

    /* compiled from: ShowAllStoryAdapter.kt */
    public final class ShowAllStoryViewHolder extends BaseViewHolder {
        private final TextView text;
        final /* synthetic */ ShowAllStoryAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShowAllStoryViewHolder(ShowAllStoryAdapter showAllStoryAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = showAllStoryAdapter;
            TextView textView = (TextView) itemView.findViewById(com.narvii.amino.R.id.count_text);
            Intrinsics.checkExpressionValueIsNotNull(textView, "itemView.count_text");
            this.text = textView;
            itemView.setOnClickListener(showAllStoryAdapter.subviewClickListener);
        }

        public final TextView getText() {
            return this.text;
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        View.OnClickListener onClickListener = this.clickListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
    }

    /* compiled from: ShowAllStoryAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
