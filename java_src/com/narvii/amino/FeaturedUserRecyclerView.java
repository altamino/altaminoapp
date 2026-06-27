package com.narvii.amino;

import android.content.Context;
import android.content.Intent;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.members.PeopleListFragment;
import com.narvii.model.Community;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.MoodView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpaceItemDecoration;
import com.narvii.widget.UserAvatarLayout;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FeaturedUserRecyclerView.kt */
/* loaded from: classes2.dex */
public final class FeaturedUserRecyclerView extends HorizontalRecyclerView {
    private HashMap _$_findViewCache;
    private InfluencerAdapter adapter;
    private int cid;
    private final CommunityService communityService;
    private List<? extends User> list;

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

    public FeaturedUserRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        this.adapter = new InfluencerAdapter();
        setAdapter((RecyclerView.Adapter) this.adapter);
        addItemDecoration(new SpaceItemDecoration(Utils.dpToPxInt(getContext(), 10.0f)));
        setItemAnimator(null);
        NVContext nVContext = Utils.getNVContext(context);
        Object service = nVContext.getService("community");
        Intrinsics.checkExpressionValueIsNotNull(service, "nvContext.getService<Com…nityService>(\"community\")");
        this.communityService = (CommunityService) service;
        Object service2 = nVContext.getService("config");
        Intrinsics.checkExpressionValueIsNotNull(service2, "nvContext.getService<ConfigService>(\"config\")");
        this.cid = ((ConfigService) service2).getCommunityId();
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

    public final int getCid() {
        return this.cid;
    }

    public final void setCid(int i) {
        this.cid = i;
    }

    public final CommunityService getCommunityService() {
        return this.communityService;
    }

    public final void updateFeaturedUserList(List<? extends User> list) {
        Intrinsics.checkParameterIsNotNull(list, "list");
        this.list = list;
        this.adapter.notifyDataSetChanged();
    }

    public final void notifyCommunityMemberChanged() {
        this.adapter.notifyItemChanged(r0.getItemCount() - 1);
    }

    /* compiled from: FeaturedUserRecyclerView.kt */
    public final class FeaturedUserHolder extends RecyclerView.ViewHolder {
        private MoodView moodView;
        private NicknameView nicknameView;
        private View onlineDot;
        final /* synthetic */ FeaturedUserRecyclerView this$0;
        private UserAvatarLayout userAvatarLayout;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FeaturedUserHolder(FeaturedUserRecyclerView featuredUserRecyclerView, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = featuredUserRecyclerView;
            View viewFindViewById = itemView.findViewById(com.narvii.amino.mastes.R.id.user_avatar_layout);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "itemView.findViewById(R.id.user_avatar_layout)");
            this.userAvatarLayout = (UserAvatarLayout) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(com.narvii.amino.mastes.R.id.nickname);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "itemView.findViewById(R.id.nickname)");
            this.nicknameView = (NicknameView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(com.narvii.amino.mastes.R.id.mood);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "itemView.findViewById(R.id.mood)");
            this.moodView = (MoodView) viewFindViewById3;
            View viewFindViewById4 = itemView.findViewById(com.narvii.amino.mastes.R.id.online_status_oval);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "itemView.findViewById(R.id.online_status_oval)");
            this.onlineDot = viewFindViewById4;
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

        public final MoodView getMoodView() {
            return this.moodView;
        }

        public final void setMoodView(MoodView moodView) {
            Intrinsics.checkParameterIsNotNull(moodView, "<set-?>");
            this.moodView = moodView;
        }

        public final View getOnlineDot() {
            return this.onlineDot;
        }

        public final void setOnlineDot(View view) {
            Intrinsics.checkParameterIsNotNull(view, "<set-?>");
            this.onlineDot = view;
        }
    }

    /* compiled from: FeaturedUserRecyclerView.kt */
    public final class AllMembersHolder extends RecyclerView.ViewHolder {
        private View allMembers;
        private TextView memberCount;
        final /* synthetic */ FeaturedUserRecyclerView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AllMembersHolder(FeaturedUserRecyclerView featuredUserRecyclerView, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = featuredUserRecyclerView;
            View viewFindViewById = itemView.findViewById(com.narvii.amino.mastes.R.id.member_count);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "itemView.findViewById(R.id.member_count)");
            this.memberCount = (TextView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(com.narvii.amino.mastes.R.id.all_member_container);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "itemView.findViewById(R.id.all_member_container)");
            this.allMembers = viewFindViewById2;
        }

        public final TextView getMemberCount() {
            return this.memberCount;
        }

        public final void setMemberCount(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.memberCount = textView;
        }

        public final View getAllMembers() {
            return this.allMembers;
        }

        public final void setAllMembers(View view) {
            Intrinsics.checkParameterIsNotNull(view, "<set-?>");
            this.allMembers = view;
        }
    }

    /* compiled from: FeaturedUserRecyclerView.kt */
    public final class InfluencerAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        public InfluencerAdapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (holder instanceof FeaturedUserHolder) {
                List<User> list = FeaturedUserRecyclerView.this.getList();
                final User user = list != null ? list.get(i) : null;
                FeaturedUserHolder featuredUserHolder = (FeaturedUserHolder) holder;
                featuredUserHolder.getUserAvatarLayout().setUser(user);
                featuredUserHolder.getNicknameView().setUser(user);
                featuredUserHolder.getMoodView().setAnimate(true);
                featuredUserHolder.getMoodView().setMoodSticker(user);
                ViewUtils.visible(featuredUserHolder.getMoodView(), (user == null || !user.isOnline() || Sticker.isEmpty(user.getMoodSticker())) ? false : true);
                ViewUtils.visible(featuredUserHolder.getOnlineDot(), user != null && user.isOnline() && Sticker.isEmpty(user.getMoodSticker()));
                holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        Intent intent = UserProfileFragment.intent(Utils.getNVContext(FeaturedUserRecyclerView.this.getContext()), user);
                        if (intent != null) {
                            intent.putExtra(UserProfileFragment.SEND_NOTIFICATION, true);
                        }
                        if (intent != null) {
                            FeaturedUserRecyclerView.this.getContext().startActivity(intent);
                        }
                    }
                });
                return;
            }
            if (holder instanceof AllMembersHolder) {
                Community community = FeaturedUserRecyclerView.this.getCommunityService().getCommunity(FeaturedUserRecyclerView.this.getCid());
                int i2 = community != null ? community.membersCount : 0;
                AllMembersHolder allMembersHolder = (AllMembersHolder) holder;
                allMembersHolder.getMemberCount().setText(String.valueOf(i2));
                ViewUtils.show(allMembersHolder.getMemberCount(), i2 > 0);
                allMembersHolder.getAllMembers().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        Intent intent = FragmentWrapperActivity.intent(PeopleListFragment.class);
                        intent.putExtra("Source", "Home Featured Members");
                        FeaturedUserRecyclerView.this.getContext().startActivity(intent);
                    }
                });
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return getListSize() + 1;
        }

        public final int getListSize() {
            List<User> list = FeaturedUserRecyclerView.this.getList();
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i >= getListSize() ? 1 : 0;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            if (i == 1) {
                View cell = LayoutInflater.from(FeaturedUserRecyclerView.this.getContext()).inflate(com.narvii.amino.mastes.R.layout.home_item_featured_user_all_member, parent, false);
                FeaturedUserRecyclerView featuredUserRecyclerView = FeaturedUserRecyclerView.this;
                Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
                return new AllMembersHolder(featuredUserRecyclerView, cell);
            }
            View cell2 = LayoutInflater.from(FeaturedUserRecyclerView.this.getContext()).inflate(com.narvii.amino.mastes.R.layout.home_item_featured_user, parent, false);
            FeaturedUserRecyclerView featuredUserRecyclerView2 = FeaturedUserRecyclerView.this;
            Intrinsics.checkExpressionValueIsNotNull(cell2, "cell");
            return new FeaturedUserHolder(featuredUserRecyclerView2, cell2);
        }
    }
}
