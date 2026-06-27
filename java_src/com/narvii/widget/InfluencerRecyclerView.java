package com.narvii.widget;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.InfluencerInfo;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.InfluencerRecyclerView;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InfluencerRecyclerView.kt */
/* loaded from: classes3.dex */
public final class InfluencerRecyclerView extends HorizontalRecyclerView {
    private HashMap _$_findViewCache;
    private InfluencerAdapter adapter;
    private List<? extends User> list;
    private OnUserClickListener onUserClickListener;

    /* compiled from: InfluencerRecyclerView.kt */
    public interface OnUserClickListener {
        void onUserClicked(User user);
    }

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

    public InfluencerRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        this.adapter = new InfluencerAdapter();
        setAdapter((RecyclerView.Adapter) this.adapter);
        addItemDecoration(new SpaceItemDecoration(Utils.dpToPxInt(getContext(), 10.0f)));
    }

    @Override // android.support.v7.widget.RecyclerView
    public final InfluencerAdapter getAdapter() {
        return this.adapter;
    }

    public final void setAdapter(InfluencerAdapter influencerAdapter) {
        Intrinsics.checkParameterIsNotNull(influencerAdapter, "<set-?>");
        this.adapter = influencerAdapter;
    }

    public final List<User> getList() {
        return this.list;
    }

    public final void setList(List<? extends User> list) {
        this.list = list;
    }

    public final OnUserClickListener getOnUserClickListener() {
        return this.onUserClickListener;
    }

    public final void setOnUserClickListener(OnUserClickListener onUserClickListener) {
        this.onUserClickListener = onUserClickListener;
    }

    public final void updateInfluencerList(List<? extends User> list) {
        Intrinsics.checkParameterIsNotNull(list, "list");
        this.list = list;
        this.adapter.notifyDataSetChanged();
    }

    /* compiled from: InfluencerRecyclerView.kt */
    public final class InfluencerHolder extends RecyclerView.ViewHolder {
        private TextView fanClubMemberCount;
        private NicknameView nicknameView;
        final /* synthetic */ InfluencerRecyclerView this$0;
        private UserAvatarLayout userAvatarLayout;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InfluencerHolder(InfluencerRecyclerView influencerRecyclerView, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = influencerRecyclerView;
            View viewFindViewById = itemView.findViewById(R.id.user_avatar_layout);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "itemView.findViewById(R.id.user_avatar_layout)");
            this.userAvatarLayout = (UserAvatarLayout) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R.id.nickname);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "itemView.findViewById(R.id.nickname)");
            this.nicknameView = (NicknameView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R.id.fan_club_member);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "itemView.findViewById(R.id.fan_club_member)");
            this.fanClubMemberCount = (TextView) viewFindViewById3;
        }

        public final UserAvatarLayout getUserAvatarLayout() {
            return this.userAvatarLayout;
        }

        public final void setUserAvatarLayout(UserAvatarLayout userAvatarLayout) {
            Intrinsics.checkParameterIsNotNull(userAvatarLayout, "<set-?>");
            this.userAvatarLayout = userAvatarLayout;
        }

        public final NicknameView getNicknameView() {
            return this.nicknameView;
        }

        public final void setNicknameView(NicknameView nicknameView) {
            Intrinsics.checkParameterIsNotNull(nicknameView, "<set-?>");
            this.nicknameView = nicknameView;
        }

        public final TextView getFanClubMemberCount() {
            return this.fanClubMemberCount;
        }

        public final void setFanClubMemberCount(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.fanClubMemberCount = textView;
        }
    }

    /* compiled from: InfluencerRecyclerView.kt */
    public final class InfluencerAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        public InfluencerAdapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            InfluencerInfo influencerInfo;
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (holder instanceof InfluencerHolder) {
                List<User> list = InfluencerRecyclerView.this.getList();
                final User user = list != null ? list.get(i) : null;
                InfluencerHolder influencerHolder = (InfluencerHolder) holder;
                influencerHolder.getUserAvatarLayout().setUser(user);
                influencerHolder.getNicknameView().setUser(user);
                influencerHolder.getFanClubMemberCount().setText(TextUtils.getCountText(InfluencerRecyclerView.this.getContext(), (user == null || (influencerInfo = user.influencerInfo) == null) ? 0 : influencerInfo.fansCount, R.string.one_fan_club_member, R.string.n_fan_club_members));
                holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.widget.InfluencerRecyclerView$InfluencerAdapter$onBindViewHolder$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        InfluencerRecyclerView.OnUserClickListener onUserClickListener = InfluencerRecyclerView.this.getOnUserClickListener();
                        if (onUserClickListener != null) {
                            onUserClickListener.onUserClicked(user);
                        }
                    }
                });
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<User> list = InfluencerRecyclerView.this.getList();
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View cell = LayoutInflater.from(InfluencerRecyclerView.this.getContext()).inflate(R.layout.item_community_detail_influencer_cell, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
            cell.getLayoutParams().width = (int) (Utils.getScreenWidth(InfluencerRecyclerView.this.getContext()) * 0.6f);
            return new InfluencerHolder(InfluencerRecyclerView.this, cell);
        }
    }
}
