package com.narvii.story.vote;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.feed.vote.VoterListFooterAdapter;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.story.IStoryBottomSheetListener;
import com.narvii.story.detail.VoteHelper;
import com.narvii.story.vote.FollowView;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class StoryVoteListFragment extends NVListFragment implements NotificationListener {
    public static final String KEY_BLOG = "blog";
    public static final String KEY_COMMUNITY = "community";
    AccountService account;
    private Blog blog;
    private IStoryBottomSheetListener bottomSheetListener;
    private Community community;
    ConfigService configService;
    private IStoryVoteListener storyVoteListener;
    VoteHelper.OnVoteListener voteListener;
    private Map<String, VotedTimeBean> votedTimeMap = new HashMap();

    public interface IStoryVoteListener {
        void cancelVote();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "AllLikes";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_story_vote, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        this.blog = (Blog) JacksonUtils.readAs(getStringParam("blog"), Blog.class);
        this.community = (Community) JacksonUtils.readAs(getStringParam("community"), Community.class);
        super.onViewCreated(view, bundle);
        ((TextView) view.findViewById(R.id.all_likes)).setText(this.blog.getTotalVotesCount() > 0 ? getString(R.string.story_all_likes, Integer.valueOf(this.blog.getTotalVotesCount())) : getString(R.string.comment_all_likes));
        view.findViewById(R.id.list_divider).setVisibility(this.blog.getVoteCount(isGlobalInteractionScope()) <= 0 ? 4 : 0);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        if (this.blog == null) {
            return null;
        }
        this.configService = (ConfigService) getService("config");
        this.account = (AccountService) getService("account");
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(new MyVoteAdapter(this));
        StoryVoteAdapter storyVoteAdapter = new StoryVoteAdapter(this, this.blog);
        DividerAdapter dividerAdapter = new DividerAdapter(storyVoteAdapter);
        dividerAdapter.setAdapter(storyVoteAdapter);
        dividerAdapter.setDarkTheme(true);
        mergeAdapter.addAdapter(dividerAdapter, true);
        if (this.blog.getVoteCount(true ^ isGlobalInteractionScope()) > 0) {
            mergeAdapter.addAdapter(new VoterListFooterAdapter(this, this.blog, false, this.community));
        }
        return mergeAdapter;
    }

    public void setBottomSheetListener(IStoryBottomSheetListener iStoryBottomSheetListener) {
        this.bottomSheetListener = iStoryBottomSheetListener;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z, Intent intent) {
        if (z && Utils.isEqualsNotNull(intent.getAction(), "openUserProfile")) {
            this.bottomSheetListener.onBottomSheetHide();
            startActivity(UserProfileFragment.intent(this, this.account.getUserAccount()));
        } else {
            super.onLoginResult(z, intent);
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        Object obj = notification.obj;
        if (obj instanceof Blog) {
            Blog blog = (Blog) obj;
            String strId = blog.id();
            Blog blog2 = this.blog;
            if (Utils.isEqualsNotNull(strId, blog2 == null ? null : blog2.id())) {
                this.blog = (Blog) blog.m46clone();
            }
        }
    }

    class StoryVoteAdapter extends NVPagedAdapter<User, VotedUserListResponse> implements FollowView.OnFollowClickListener, NotificationListener {
        Blog blog;
        DateTimeFormatter dateTimeFormatter;
        List<User> users;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "UserList";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return false;
        }

        public StoryVoteAdapter(NVContext nVContext, Blog blog) {
            super(nVContext);
            this.blog = blog;
            setDarkTheme(true);
            this.dateTimeFormatter = DateTimeFormatter.getInstance(nVContext.getContext());
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new LinearImpressionCollector(User.class));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<User> dataType() {
            return User.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends VotedUserListResponse> responseType() {
            return VotedUserListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return generateVoteRequest(this.blog).build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.users;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            List<? extends User> listRawList = rawList();
            if (listRawList == null) {
                this.users = null;
            } else if (listRawList.isEmpty()) {
                this.users = new ArrayList();
            } else {
                this.users = new ArrayList();
                for (User user : listRawList) {
                    if (!Utils.isEqualsNotNull(user.uid(), StoryVoteListFragment.this.account.getUserId())) {
                        this.users.add(user);
                    }
                }
            }
            super.notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, VotedUserListResponse votedUserListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) votedUserListResponse, i);
            if (votedUserListResponse == null || votedUserListResponse.votedTimeMap == null) {
                return;
            }
            StoryVoteListFragment.this.votedTimeMap.putAll(votedUserListResponse.votedTimeMap);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof User)) {
                return null;
            }
            User user = (User) obj;
            View viewCreateView = createView(R.layout.fragment_story_vote_item, viewGroup, view);
            UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewCreateView.findViewById(R.id.ic_avatar);
            userAvatarLayout.setUser(user);
            userAvatarLayout.setOnClickListener(this.subviewClickListener);
            NicknameView nicknameView = (NicknameView) viewCreateView.findViewById(R.id.user_name);
            nicknameView.setUser(user);
            nicknameView.setRole2(Utils.isEqualsNotNull(user.uid(), this.blog.uid()) ? StoryVoteListFragment.this.getResources().getString(R.string.comment_owner) : null, User.ROLE_COLOR_AUTHOR);
            nicknameView.setOnClickListener(this.subviewClickListener);
            VotedTimeBean votedTimeBean = (VotedTimeBean) StoryVoteListFragment.this.votedTimeMap.get(user.uid);
            if (votedTimeBean != null) {
                TextView textView = (TextView) viewCreateView.findViewById(R.id.vote_time);
                textView.setText(this.dateTimeFormatter.formatHeadlineFeedTime(votedTimeBean.createdTime));
                textView.setOnClickListener(this.subviewClickListener);
            }
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.cancel);
            textView2.setVisibility(4);
            textView2.setOnClickListener(null);
            FollowView followView = (FollowView) viewCreateView.findViewById(R.id.follow_view);
            if (textView2.getVisibility() == 4) {
                followView.setVisibility(0);
                followView.setOnFollowClickListener(this);
                int i = user.membershipStatus;
                followView.initViews(user, this, i == 0 || i == 2);
            } else {
                followView.setVisibility(4);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if ((view2 == null || view2.getId() == R.id.ic_avatar) && (obj instanceof User)) {
                logClickEvent(obj, ActSemantic.checkDetail);
                StoryVoteListFragment.this.openUserProfile((User) obj);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        private ApiRequest.Builder generateVoteRequest(Blog blog) {
            int communityId = blog.ndcId;
            if (communityId == -1) {
                communityId = StoryVoteListFragment.this.configService.getCommunityId();
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.path(VoteHelper.getVotePath(blog, isGlobalInteractionScope()));
            if (communityId != -1) {
                builder.communityId(communityId);
            }
            return builder;
        }

        @Override // com.narvii.story.vote.FollowView.OnFollowClickListener
        public void onFollowClicked(User user) {
            logClickEvent(user, ActSemantic.follow);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            ApiRequest apiRequestCreateRequest;
            if (notification.obj instanceof User) {
                String str = notification.action;
                if ((str == "new" || (str == "delete" && notification.parentId != null)) && (apiRequestCreateRequest = createRequest(true)) != null && apiRequestCreateRequest.url().contains(notification.parentId)) {
                    editList(notification, false);
                }
                String str2 = notification.action;
                if (str2 == "update" || str2 == "edit") {
                    editList(notification, false);
                }
            }
        }
    }

    class MyVoteAdapter extends NVAdapter {
        DateTimeFormatter dateTimeFormatter;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public MyVoteAdapter(NVContext nVContext) {
            super(nVContext);
            this.dateTimeFormatter = DateTimeFormatter.getInstance(nVContext.getContext());
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            User userProfile = isGlobalInteractionScope() ? StoryVoteListFragment.this.account.getUserProfile(0) : StoryVoteListFragment.this.account.getUserProfile();
            View viewCreateView = createView(R.layout.fragment_story_vote_item, viewGroup, view);
            UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewCreateView.findViewById(R.id.ic_avatar);
            userAvatarLayout.setUser(userProfile);
            userAvatarLayout.setOnClickListener(this.subviewClickListener);
            NicknameView nicknameView = (NicknameView) viewCreateView.findViewById(R.id.user_name);
            nicknameView.setUser(userProfile);
            nicknameView.setRole2(Utils.isEqualsNotNull(userProfile.uid(), StoryVoteListFragment.this.blog.uid()) ? StoryVoteListFragment.this.getResources().getString(R.string.comment_owner) : null, User.ROLE_COLOR_AUTHOR);
            nicknameView.setOnClickListener(this.subviewClickListener);
            VotedTimeBean votedTimeBean = (VotedTimeBean) StoryVoteListFragment.this.votedTimeMap.get(userProfile.uid);
            if (votedTimeBean != null) {
                TextView textView = (TextView) viewCreateView.findViewById(R.id.vote_time);
                textView.setText(this.dateTimeFormatter.formatHeadlineFeedTime(votedTimeBean.createdTime));
                textView.setOnClickListener(this.subviewClickListener);
            }
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.cancel);
            textView2.setVisibility(0);
            textView2.setOnClickListener(this.subviewClickListener);
            ((FollowView) viewCreateView.findViewById(R.id.follow_view)).setVisibility(4);
            if (StoryVoteListFragment.this.blog.getVoteCount(isGlobalInteractionScope()) > 0) {
                viewCreateView.findViewById(R.id.list_divider).setVisibility(0);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 == null || view2.getId() == R.id.ic_avatar) {
                logClickEvent(StoryVoteListFragment.this.account.getUserProfile(), ActSemantic.checkDetail);
                StoryVoteListFragment storyVoteListFragment = StoryVoteListFragment.this;
                storyVoteListFragment.openUserProfile(storyVoteListFragment.account.getUserProfile());
                return true;
            }
            if (view2 != null && view2.getId() == R.id.cancel) {
                logClickEvent(StoryVoteListFragment.this.blog, ActSemantic.dislike);
                VoteHelper.OnVoteListener onVoteListener = StoryVoteListFragment.this.voteListener;
                if (onVoteListener != null) {
                    onVoteListener.onVoteStart();
                }
                StoryVoteListFragment.this.cancelVote();
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelVote() {
        IStoryVoteListener iStoryVoteListener = this.storyVoteListener;
        if (iStoryVoteListener != null) {
            iStoryVoteListener.cancelVote();
        }
        IStoryBottomSheetListener iStoryBottomSheetListener = this.bottomSheetListener;
        if (iStoryBottomSheetListener != null) {
            iStoryBottomSheetListener.onBottomSheetHide();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openUserProfile(User user) {
        if (this.account.hasAccount()) {
            startActivity(UserProfileFragment.intent(this, user));
        } else {
            ensureLogin(new Intent("openUserProfile"));
        }
    }

    public void setStoryVoteListener(IStoryVoteListener iStoryVoteListener) {
        this.storyVoteListener = iStoryVoteListener;
    }
}
