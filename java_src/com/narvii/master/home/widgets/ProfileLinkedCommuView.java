package com.narvii.master.home.widgets;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Community;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.util.Utils;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.recycleview.NVRecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ProfileLinkedCommuView.kt */
/* loaded from: classes3.dex */
public final class ProfileLinkedCommuView extends LinearLayout {
    private HashMap _$_findViewCache;
    private LinkedCommuAdapter adapter;
    private List<Community> commuList;
    private NVContext page;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public final NVContext getPage() {
        return this.page;
    }

    public final void setPage(NVContext nVContext) {
        this.page = nVContext;
    }

    public ProfileLinkedCommuView(Context context) {
        super(context);
        this.commuList = new ArrayList();
        View.inflate(getContext(), R.layout.linked_community_layout, this);
        NVContext nvContext = Utils.getNVContext(getContext());
        Intrinsics.checkExpressionValueIsNotNull(nvContext, "nvContext");
        this.adapter = new LinkedCommuAdapter(this, nvContext);
        NVRecyclerView recyclerView = (NVRecyclerView) findViewById(R.id.recycler_view);
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "recyclerView");
        recyclerView.setAdapter(this.adapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
    }

    public ProfileLinkedCommuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.commuList = new ArrayList();
        View.inflate(getContext(), R.layout.linked_community_layout, this);
        NVContext nvContext = Utils.getNVContext(getContext());
        Intrinsics.checkExpressionValueIsNotNull(nvContext, "nvContext");
        this.adapter = new LinkedCommuAdapter(this, nvContext);
        NVRecyclerView recyclerView = (NVRecyclerView) findViewById(R.id.recycler_view);
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "recyclerView");
        recyclerView.setAdapter(this.adapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
    }

    public ProfileLinkedCommuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.commuList = new ArrayList();
        View.inflate(getContext(), R.layout.linked_community_layout, this);
        NVContext nvContext = Utils.getNVContext(getContext());
        Intrinsics.checkExpressionValueIsNotNull(nvContext, "nvContext");
        this.adapter = new LinkedCommuAdapter(this, nvContext);
        NVRecyclerView recyclerView = (NVRecyclerView) findViewById(R.id.recycler_view);
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "recyclerView");
        recyclerView.setAdapter(this.adapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
    }

    public final void updateLinkedCommunities(List<? extends Community> list) {
        this.commuList.clear();
        if (list != null) {
            this.commuList.addAll(list);
        }
        updateViews();
    }

    private final void updateViews() {
        if (this.commuList.isEmpty()) {
            setVisibility(8);
        } else {
            setVisibility(0);
            this.adapter.notifyDataSetChanged();
        }
    }

    /* compiled from: ProfileLinkedCommuView.kt */
    private final class LinkedCommuAdapter extends NVRecyclerViewBaseAdapter {
        final /* synthetic */ ProfileLinkedCommuView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinkedCommuAdapter(ProfileLinkedCommuView profileLinkedCommuView, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = profileLinkedCommuView;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.linked_community_view_holder_layout, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…er_layout, parent, false)");
            return new LinkedCommuViewHolder(this, viewInflate);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.this$0.commuList.size();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            final Community community = (Community) this.this$0.commuList.get(i);
            if (holder instanceof LinkedCommuViewHolder) {
                LinkedCommuViewHolder linkedCommuViewHolder = (LinkedCommuViewHolder) holder;
                linkedCommuViewHolder.getIconIV().setImageUrl(community.icon);
                linkedCommuViewHolder.getNameTV().setText(community.name);
                TextView communityIdTV = linkedCommuViewHolder.getCommunityIdTV();
                Resources resources = this.this$0.getResources();
                Object[] objArr = new Object[1];
                String str = community.endpoint;
                objArr[0] = str != null ? str.toString() : null;
                communityIdTV.setText(resources.getString(R.string.id_with_name, objArr));
                holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.widgets.ProfileLinkedCommuView$LinkedCommuAdapter$onBindViewHolder$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        LogEvent.clickBuilder(this.this$0.this$0.getPage(), ActSemantic.checkDetail).area("LinkedCommunities").object(community).send();
                        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                        intent.putExtra("id", community.id);
                        this.this$0.getContext().startActivity(intent);
                    }
                });
            }
        }

        /* compiled from: ProfileLinkedCommuView.kt */
        private final class LinkedCommuViewHolder extends RecyclerView.ViewHolder {
            private TextView communityIdTV;
            private ThumbImageView iconIV;
            private TextView nameTV;
            final /* synthetic */ LinkedCommuAdapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public LinkedCommuViewHolder(LinkedCommuAdapter linkedCommuAdapter, View view) {
                super(view);
                Intrinsics.checkParameterIsNotNull(view, "view");
                this.this$0 = linkedCommuAdapter;
                View viewFindViewById = view.findViewById(R.id.community_icon);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById(R.id.community_icon)");
                this.iconIV = (ThumbImageView) viewFindViewById;
                View viewFindViewById2 = view.findViewById(R.id.community_name);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "view.findViewById(R.id.community_name)");
                this.nameTV = (TextView) viewFindViewById2;
                View viewFindViewById3 = view.findViewById(R.id.community_id);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "view.findViewById(R.id.community_id)");
                this.communityIdTV = (TextView) viewFindViewById3;
            }

            public final ThumbImageView getIconIV() {
                return this.iconIV;
            }

            public final void setIconIV(ThumbImageView thumbImageView) {
                Intrinsics.checkParameterIsNotNull(thumbImageView, "<set-?>");
                this.iconIV = thumbImageView;
            }

            public final TextView getNameTV() {
                return this.nameTV;
            }

            public final void setNameTV(TextView textView) {
                Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
                this.nameTV = textView;
            }

            public final TextView getCommunityIdTV() {
                return this.communityIdTV;
            }

            public final void setCommunityIdTV(TextView textView) {
                Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
                this.communityIdTV = textView;
            }
        }
    }
}
