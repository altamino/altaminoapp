package com.narvii.amino;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.master.search.SearchPrefsHelper;
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
import com.safedk.android.utils.Logger;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class FeaturedUserRecyclerView extends HorizontalRecyclerView {

    @NotNull
    private InfluencerAdapter adapter;
    private int cid;

    @NotNull
    private final CommunityService communityService;

    @Nullable
    private List<? extends User> list;

    public final class AllMembersHolder extends RecyclerView.ViewHolder {

        @NotNull
        private View allMembers;

        @NotNull
        private TextView memberCount;
        final /* synthetic */ FeaturedUserRecyclerView this$0;

        @NotNull
        public final View getAllMembers() {
            return this.allMembers;
        }

        @NotNull
        public final TextView getMemberCount() {
            return this.memberCount;
        }

        public final void setAllMembers(@NotNull View view) {
            t.j(view, "<set-?>");
            this.allMembers = view;
        }

        public final void setMemberCount(@NotNull TextView textView) {
            t.j(textView, "<set-?>");
            this.memberCount = textView;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AllMembersHolder(@NotNull FeaturedUserRecyclerView featuredUserRecyclerView, View itemView) {
            super(itemView);
            t.j(itemView, "itemView");
            this.this$0 = featuredUserRecyclerView;
            View viewFindViewById = itemView.findViewById(com.narvii.amino.master.R.id.member_count);
            t.i(viewFindViewById, "findViewById(...)");
            this.memberCount = (TextView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(com.narvii.amino.master.R.id.all_member_container);
            t.i(viewFindViewById2, "findViewById(...)");
            this.allMembers = viewFindViewById2;
        }
    }

    public final class FeaturedUserHolder extends RecyclerView.ViewHolder {

        @NotNull
        private MoodView moodView;

        @NotNull
        private NicknameView nicknameView;

        @NotNull
        private View onlineDot;
        final /* synthetic */ FeaturedUserRecyclerView this$0;

        @NotNull
        private UserAvatarLayout userAvatarLayout;

        @NotNull
        public final MoodView getMoodView() {
            return this.moodView;
        }

        @NotNull
        public final NicknameView getNicknameView() {
            return this.nicknameView;
        }

        @NotNull
        public final View getOnlineDot() {
            return this.onlineDot;
        }

        @NotNull
        public final UserAvatarLayout getUserAvatarLayout() {
            return this.userAvatarLayout;
        }

        public final void setMoodView(@NotNull MoodView moodView) {
            t.j(moodView, "<set-?>");
            this.moodView = moodView;
        }

        public final void setNicknameView(@NotNull NicknameView nicknameView) {
            t.j(nicknameView, "<set-?>");
            this.nicknameView = nicknameView;
        }

        public final void setOnlineDot(@NotNull View view) {
            t.j(view, "<set-?>");
            this.onlineDot = view;
        }

        public final void setUserAvatarLayout(@NotNull UserAvatarLayout userAvatarLayout) {
            t.j(userAvatarLayout, "<set-?>");
            this.userAvatarLayout = userAvatarLayout;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FeaturedUserHolder(@NotNull FeaturedUserRecyclerView featuredUserRecyclerView, View itemView) {
            super(itemView);
            t.j(itemView, "itemView");
            this.this$0 = featuredUserRecyclerView;
            View viewFindViewById = itemView.findViewById(com.narvii.amino.master.R.id.user_avatar_layout);
            t.i(viewFindViewById, "findViewById(...)");
            this.userAvatarLayout = (UserAvatarLayout) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(com.narvii.amino.master.R.id.nickname);
            t.i(viewFindViewById2, "findViewById(...)");
            this.nicknameView = (NicknameView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(com.narvii.amino.master.R.id.mood);
            t.i(viewFindViewById3, "findViewById(...)");
            this.moodView = (MoodView) viewFindViewById3;
            View viewFindViewById4 = itemView.findViewById(com.narvii.amino.master.R.id.online_status_oval);
            t.i(viewFindViewById4, "findViewById(...)");
            this.onlineDot = viewFindViewById4;
        }
    }

    public final class InfluencerAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public InfluencerAdapter() {
        }

        public final int getListSize() {
            List<User> list = FeaturedUserRecyclerView.this.getList();
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            t.j(holder, "holder");
            boolean z6 = false;
            if (!(holder instanceof FeaturedUserHolder)) {
                if (holder instanceof AllMembersHolder) {
                    Community community = FeaturedUserRecyclerView.this.getCommunityService().getCommunity(FeaturedUserRecyclerView.this.getCid());
                    int i11 = community != null ? community.membersCount : 0;
                    AllMembersHolder allMembersHolder = (AllMembersHolder) holder;
                    allMembersHolder.getMemberCount().setText(String.valueOf(i11));
                    ViewUtils.show(allMembersHolder.getMemberCount(), i11 > 0);
                    View allMembers = allMembersHolder.getAllMembers();
                    final FeaturedUserRecyclerView featuredUserRecyclerView = FeaturedUserRecyclerView.this;
                    allMembers.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.c
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            FeaturedUserRecyclerView.InfluencerAdapter.onBindViewHolder$lambda$1(featuredUserRecyclerView, view);
                        }
                    });
                    return;
                }
                return;
            }
            List<User> list = FeaturedUserRecyclerView.this.getList();
            final User user = list != null ? list.get(i10) : null;
            FeaturedUserHolder featuredUserHolder = (FeaturedUserHolder) holder;
            featuredUserHolder.getUserAvatarLayout().setUser(user);
            featuredUserHolder.getNicknameView().setUser(user);
            featuredUserHolder.getMoodView().setAnimate(true);
            featuredUserHolder.getMoodView().setMoodSticker(user);
            ViewUtils.visible(featuredUserHolder.getMoodView(), (user == null || !user.isOnline() || Sticker.isEmpty(user.getMoodSticker())) ? false : true);
            View onlineDot = featuredUserHolder.getOnlineDot();
            if (user != null && user.isOnline() && Sticker.isEmpty(user.getMoodSticker())) {
                z6 = true;
            }
            ViewUtils.visible(onlineDot, z6);
            View view = holder.itemView;
            final FeaturedUserRecyclerView featuredUserRecyclerView2 = FeaturedUserRecyclerView.this;
            view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    FeaturedUserRecyclerView.InfluencerAdapter.onBindViewHolder$lambda$0(featuredUserRecyclerView2, user, view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$0(FeaturedUserRecyclerView this$0, User user, View view) {
            t.j(this$0, "this$0");
            Intent intent = UserProfileFragment.intent(Utils.getNVContext(this$0.getContext()), user);
            if (intent != null) {
                intent.putExtra(UserProfileFragment.SEND_NOTIFICATION, true);
            }
            if (intent != null) {
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this$0.getContext(), intent);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$1(FeaturedUserRecyclerView this$0, View view) {
            t.j(this$0, "this$0");
            Intent intent = FragmentWrapperActivity.intent(PeopleListFragment.class);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Home Featured Members");
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this$0.getContext(), intent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return getListSize() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            if (i10 >= getListSize()) {
                return 1;
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            t.j(parent, "parent");
            if (i10 == 1) {
                View viewInflate = LayoutInflater.from(FeaturedUserRecyclerView.this.getContext()).inflate(com.narvii.amino.master.R.layout.home_item_featured_user_all_member, parent, false);
                FeaturedUserRecyclerView featuredUserRecyclerView = FeaturedUserRecyclerView.this;
                t.g(viewInflate);
                return new AllMembersHolder(featuredUserRecyclerView, viewInflate);
            }
            View viewInflate2 = LayoutInflater.from(FeaturedUserRecyclerView.this.getContext()).inflate(com.narvii.amino.master.R.layout.home_item_featured_user, parent, false);
            FeaturedUserRecyclerView featuredUserRecyclerView2 = FeaturedUserRecyclerView.this;
            t.g(viewInflate2);
            return new FeaturedUserHolder(featuredUserRecyclerView2, viewInflate2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    @NotNull
    public final InfluencerAdapter getAdapter() {
        return this.adapter;
    }

    public final int getCid() {
        return this.cid;
    }

    @NotNull
    public final CommunityService getCommunityService() {
        return this.communityService;
    }

    @Nullable
    public final List<User> getList() {
        return this.list;
    }

    public final void setAdapter(@NotNull InfluencerAdapter influencerAdapter) {
        t.j(influencerAdapter, "<set-?>");
        this.adapter = influencerAdapter;
    }

    public final void setCid(int i10) {
        this.cid = i10;
    }

    public final void setList(@Nullable List<? extends User> list) {
        this.list = list;
    }

    public final void notifyCommunityMemberChanged() {
        InfluencerAdapter influencerAdapter = this.adapter;
        influencerAdapter.notifyItemChanged(influencerAdapter.getItemCount() - 1);
    }

    public final void updateFeaturedUserList(@NotNull List<? extends User> list) {
        t.j(list, "list");
        this.list = list;
        this.adapter.notifyDataSetChanged();
    }

    public FeaturedUserRecyclerView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        InfluencerAdapter influencerAdapter = new InfluencerAdapter();
        this.adapter = influencerAdapter;
        setAdapter((RecyclerView.Adapter) influencerAdapter);
        addItemDecoration(new SpaceItemDecoration(Utils.dpToPxInt(getContext(), 10.0f)));
        setItemAnimator(null);
        NVContext nVContext = Utils.getNVContext(context);
        Object service = nVContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        t.i(service, "getService(...)");
        this.communityService = (CommunityService) service;
        this.cid = ((ConfigService) nVContext.getService("config")).getCommunityId();
    }
}
