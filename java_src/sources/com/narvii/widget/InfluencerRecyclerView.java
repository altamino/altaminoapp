package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.model.InfluencerInfo;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class InfluencerRecyclerView extends HorizontalRecyclerView {

    @NotNull
    private InfluencerAdapter adapter;

    @Nullable
    private List<? extends User> list;

    @Nullable
    private OnUserClickListener onUserClickListener;

    public final class InfluencerAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        public InfluencerAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<User> list = InfluencerRecyclerView.this.getList();
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            InfluencerInfo influencerInfo;
            t.j(holder, "holder");
            if (holder instanceof InfluencerHolder) {
                List<User> list = InfluencerRecyclerView.this.getList();
                final User user = list != null ? list.get(i10) : null;
                InfluencerHolder influencerHolder = (InfluencerHolder) holder;
                influencerHolder.getUserAvatarLayout().setUser(user);
                influencerHolder.getNicknameView().setUser(user);
                influencerHolder.getFanClubMemberCount().setText(TextUtils.getCountText(InfluencerRecyclerView.this.getContext(), (user == null || (influencerInfo = user.influencerInfo) == null) ? 0 : influencerInfo.fansCount, R.string.one_fan_club_member, R.string.n_fan_club_members));
                View view = holder.itemView;
                final InfluencerRecyclerView influencerRecyclerView = InfluencerRecyclerView.this;
                view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.widget.h
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        InfluencerRecyclerView.InfluencerAdapter.onBindViewHolder$lambda$0(influencerRecyclerView, user, view2);
                    }
                });
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            t.j(parent, "parent");
            View viewInflate = LayoutInflater.from(InfluencerRecyclerView.this.getContext()).inflate(R.layout.item_community_detail_influencer_cell, parent, false);
            viewInflate.getLayoutParams().width = (int) (Utils.getScreenWidth(InfluencerRecyclerView.this.getContext()) * 0.6f);
            InfluencerRecyclerView influencerRecyclerView = InfluencerRecyclerView.this;
            t.g(viewInflate);
            return new InfluencerHolder(influencerRecyclerView, viewInflate);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$0(InfluencerRecyclerView this$0, User user, View view) {
            t.j(this$0, "this$0");
            OnUserClickListener onUserClickListener = this$0.getOnUserClickListener();
            if (onUserClickListener != null) {
                onUserClickListener.onUserClicked(user);
            }
        }
    }

    public final class InfluencerHolder extends RecyclerView.ViewHolder {

        @NotNull
        private TextView fanClubMemberCount;

        @NotNull
        private NicknameView nicknameView;
        final /* synthetic */ InfluencerRecyclerView this$0;

        @NotNull
        private UserAvatarLayout userAvatarLayout;

        @NotNull
        public final TextView getFanClubMemberCount() {
            return this.fanClubMemberCount;
        }

        @NotNull
        public final NicknameView getNicknameView() {
            return this.nicknameView;
        }

        @NotNull
        public final UserAvatarLayout getUserAvatarLayout() {
            return this.userAvatarLayout;
        }

        public final void setFanClubMemberCount(@NotNull TextView textView) {
            t.j(textView, "<set-?>");
            this.fanClubMemberCount = textView;
        }

        public final void setNicknameView(@NotNull NicknameView nicknameView) {
            t.j(nicknameView, "<set-?>");
            this.nicknameView = nicknameView;
        }

        public final void setUserAvatarLayout(@NotNull UserAvatarLayout userAvatarLayout) {
            t.j(userAvatarLayout, "<set-?>");
            this.userAvatarLayout = userAvatarLayout;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InfluencerHolder(@NotNull InfluencerRecyclerView influencerRecyclerView, View itemView) {
            super(itemView);
            t.j(itemView, "itemView");
            this.this$0 = influencerRecyclerView;
            View viewFindViewById = itemView.findViewById(R.id.user_avatar_layout);
            t.i(viewFindViewById, "findViewById(...)");
            this.userAvatarLayout = (UserAvatarLayout) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R.id.nickname);
            t.i(viewFindViewById2, "findViewById(...)");
            this.nicknameView = (NicknameView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R.id.fan_club_member);
            t.i(viewFindViewById3, "findViewById(...)");
            this.fanClubMemberCount = (TextView) viewFindViewById3;
        }
    }

    public interface OnUserClickListener {
        void onUserClicked(@Nullable User user);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    @NotNull
    public final InfluencerAdapter getAdapter() {
        return this.adapter;
    }

    @Nullable
    public final List<User> getList() {
        return this.list;
    }

    @Nullable
    public final OnUserClickListener getOnUserClickListener() {
        return this.onUserClickListener;
    }

    public final void setAdapter(@NotNull InfluencerAdapter influencerAdapter) {
        t.j(influencerAdapter, "<set-?>");
        this.adapter = influencerAdapter;
    }

    public final void setList(@Nullable List<? extends User> list) {
        this.list = list;
    }

    public final void setOnUserClickListener(@Nullable OnUserClickListener onUserClickListener) {
        this.onUserClickListener = onUserClickListener;
    }

    public final void updateInfluencerList(@NotNull List<? extends User> list) {
        t.j(list, "list");
        this.list = list;
        this.adapter.notifyDataSetChanged();
    }

    public InfluencerRecyclerView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        InfluencerAdapter influencerAdapter = new InfluencerAdapter();
        this.adapter = influencerAdapter;
        setAdapter((RecyclerView.Adapter) influencerAdapter);
        addItemDecoration(new SpaceItemDecoration(Utils.dpToPxInt(getContext(), 10.0f)));
    }
}
