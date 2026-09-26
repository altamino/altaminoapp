package com.narvii.master.home.widgets;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
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
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class ProfileLinkedCommuView extends LinearLayout {

    @NotNull
    private LinkedCommuAdapter adapter;

    @NotNull
    private List<Community> commuList;

    @Nullable
    private NVContext page;

    /* JADX INFO: Access modifiers changed from: private */
    final class LinkedCommuAdapter extends NVRecyclerViewBaseAdapter {
        final /* synthetic */ ProfileLinkedCommuView this$0;

        private final class LinkedCommuViewHolder extends RecyclerView.ViewHolder {

            @NotNull
            private TextView communityIdTV;

            @NotNull
            private ThumbImageView iconIV;

            @NotNull
            private TextView nameTV;
            final /* synthetic */ LinkedCommuAdapter this$0;

            @NotNull
            public final TextView getCommunityIdTV() {
                return this.communityIdTV;
            }

            @NotNull
            public final ThumbImageView getIconIV() {
                return this.iconIV;
            }

            @NotNull
            public final TextView getNameTV() {
                return this.nameTV;
            }

            public final void setCommunityIdTV(@NotNull TextView textView) {
                t.j(textView, "<set-?>");
                this.communityIdTV = textView;
            }

            public final void setIconIV(@NotNull ThumbImageView thumbImageView) {
                t.j(thumbImageView, "<set-?>");
                this.iconIV = thumbImageView;
            }

            public final void setNameTV(@NotNull TextView textView) {
                t.j(textView, "<set-?>");
                this.nameTV = textView;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public LinkedCommuViewHolder(@NotNull LinkedCommuAdapter linkedCommuAdapter, View view) {
                super(view);
                t.j(view, "view");
                this.this$0 = linkedCommuAdapter;
                View viewFindViewById = view.findViewById(R.id.community_icon);
                t.i(viewFindViewById, "findViewById(...)");
                this.iconIV = (ThumbImageView) viewFindViewById;
                View viewFindViewById2 = view.findViewById(R.id.community_name);
                t.i(viewFindViewById2, "findViewById(...)");
                this.nameTV = (TextView) viewFindViewById2;
                View viewFindViewById3 = view.findViewById(R.id.community_id);
                t.i(viewFindViewById3, "findViewById(...)");
                this.communityIdTV = (TextView) viewFindViewById3;
            }
        }

        public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinkedCommuAdapter(@NotNull ProfileLinkedCommuView profileLinkedCommuView, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = profileLinkedCommuView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$0(ProfileLinkedCommuView this$0, Community community, LinkedCommuAdapter this$1, View view) {
            t.j(this$0, "this$0");
            t.j(community, "$community");
            t.j(this$1, "this$1");
            LogEvent.clickBuilder(this$0.getPage(), ActSemantic.checkDetail).area("LinkedCommunities").object(community).send();
            Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
            intent.putExtra("id", community.id);
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this$1.getContext(), intent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.this$0.commuList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            t.j(holder, "holder");
            final Community community = (Community) this.this$0.commuList.get(i10);
            if (holder instanceof LinkedCommuViewHolder) {
                LinkedCommuViewHolder linkedCommuViewHolder = (LinkedCommuViewHolder) holder;
                linkedCommuViewHolder.getIconIV().setImageUrl(community.icon);
                linkedCommuViewHolder.getNameTV().setText(community.name);
                TextView communityIdTV = linkedCommuViewHolder.getCommunityIdTV();
                Resources resources = this.this$0.getResources();
                Object[] objArr = new Object[1];
                String str = community.endpoint;
                if (str == null) {
                    str = null;
                }
                objArr[0] = str;
                communityIdTV.setText(resources.getString(R.string.id_with_name, objArr));
                View view = holder.itemView;
                final ProfileLinkedCommuView profileLinkedCommuView = this.this$0;
                view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.widgets.b
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        ProfileLinkedCommuView.LinkedCommuAdapter.onBindViewHolder$lambda$0(profileLinkedCommuView, community, this, view2);
                    }
                });
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            t.j(parent, "parent");
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.linked_community_view_holder_layout, parent, false);
            t.i(viewInflate, "inflate(...)");
            return new LinkedCommuViewHolder(this, viewInflate);
        }
    }

    public ProfileLinkedCommuView(@Nullable Context context) {
        super(context);
        this.commuList = new ArrayList();
        View.inflate(getContext(), R.layout.linked_community_layout, this);
        NVContext nVContext = Utils.getNVContext(getContext());
        t.g(nVContext);
        this.adapter = new LinkedCommuAdapter(this, nVContext);
        NVRecyclerView nVRecyclerView = (NVRecyclerView) findViewById(R.id.recycler_view);
        nVRecyclerView.setAdapter(this.adapter);
        nVRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
    }

    @Nullable
    public final NVContext getPage() {
        return this.page;
    }

    public final void setPage(@Nullable NVContext nVContext) {
        this.page = nVContext;
    }

    private final void updateViews() {
        if (this.commuList.isEmpty()) {
            setVisibility(8);
        } else {
            setVisibility(0);
            this.adapter.notifyDataSetChanged();
        }
    }

    public final void updateLinkedCommunities(@Nullable List<? extends Community> list) {
        this.commuList.clear();
        if (list != null) {
            this.commuList.addAll(list);
        }
        updateViews();
    }

    public ProfileLinkedCommuView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.commuList = new ArrayList();
        View.inflate(getContext(), R.layout.linked_community_layout, this);
        NVContext nVContext = Utils.getNVContext(getContext());
        t.g(nVContext);
        this.adapter = new LinkedCommuAdapter(this, nVContext);
        NVRecyclerView nVRecyclerView = (NVRecyclerView) findViewById(R.id.recycler_view);
        nVRecyclerView.setAdapter(this.adapter);
        nVRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
    }

    public ProfileLinkedCommuView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.commuList = new ArrayList();
        View.inflate(getContext(), R.layout.linked_community_layout, this);
        NVContext nVContext = Utils.getNVContext(getContext());
        t.g(nVContext);
        this.adapter = new LinkedCommuAdapter(this, nVContext);
        NVRecyclerView nVRecyclerView = (NVRecyclerView) findViewById(R.id.recycler_view);
        nVRecyclerView.setAdapter(this.adapter);
        nVRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
    }
}
