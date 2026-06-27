package com.narvii.feed.vote;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.model.SharedFile;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.story.detail.VoteHelper;
import com.narvii.user.list.UserListExAdapter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.VoteIcon;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class VoterListFragment extends NVListFragment {
    Adapter adapter;
    Community community;
    NVObject nvObject;
    int objectType;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "AllLikes";
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.objectType = getIntParam(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, -1);
        int i = this.objectType;
        if (i == -1 || i == 1 || i == 2 || i == 131) {
            this.nvObject = (NVObject) JacksonUtils.readUsing(getStringParam("nvObject"), new Feed.FeedDeserializer());
        } else if (i == 109) {
            this.nvObject = (NVObject) JacksonUtils.readAs(getStringParam("nvObject"), SharedFile.class);
        }
        this.community = (Community) JacksonUtils.readAs(getStringParam("community"), Community.class);
        if (this.nvObject == null) {
            finish();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        NVObject nVObject = this.nvObject;
        if (nVObject != null && (nVObject instanceof Blog) && ((Blog) nVObject).type == 4) {
            setTitle(R.string.voters);
            return;
        }
        setTitle(R.string.comment_all_likes);
        NVObject nVObject2 = this.nvObject;
        if (nVObject2 instanceof Blog) {
            setTitle(getString(R.string.story_all_likes, Integer.valueOf(((Blog) nVObject2).getTotalVotesCount())));
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.adapter = new Adapter();
        DividerAdapter dividerAdapter = new DividerAdapter(this.adapter);
        dividerAdapter.setAdapter(this.adapter);
        mergeAdapter.addAdapter(dividerAdapter, true);
        NVObject nVObject = this.nvObject;
        if ((nVObject instanceof Feed) && ((Feed) nVObject).getVoteCount(!isGlobalInteractionScope()) > 0) {
            mergeAdapter.addAdapter(new VoterListFooterAdapter(this, (Feed) this.nvObject, true, this.community));
        }
        return mergeAdapter;
    }

    private class Adapter extends UserListExAdapter {
        final HashMap<String, Integer> map;

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.user_item_voter;
        }

        public Adapter() {
            super(VoterListFragment.this);
            this.map = new HashMap<>();
            this.source = "All Likes";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        public Class<? extends UserListResponse> responseType() {
            return VoterListResponse.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) userListResponse, i);
            HashMap<String, Integer> map = ((VoterListResponse) userListResponse).votedValueMap;
            if (map != null) {
                this.map.putAll(map);
            }
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            VoteIcon voteIcon = (VoteIcon) itemView.findViewById(R.id.icon);
            Integer num = obj instanceof User ? this.map.get(((User) obj).uid) : null;
            voteIcon.setVisibility(num == null ? 4 : 0);
            if (num != null) {
                voteIcon.setVotedValue(num.intValue());
            }
            return itemView;
        }

        @Override // com.narvii.user.list.UserListExAdapter
        protected boolean followingEnabled() {
            return VoterListFragment.this.getBooleanParam("followingEnabled", true);
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            String votePath = VoteHelper.getVotePath(VoterListFragment.this.nvObject, isGlobalInteractionScope());
            if (votePath == null) {
                return null;
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path(votePath);
            Community community = VoterListFragment.this.community;
            if (community != null) {
                builderPath.communityId(community.id);
            }
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            NVObject nVObject = VoterListFragment.this.nvObject;
            if (nVObject instanceof Feed) {
                return ((Feed) nVObject).getTotalVotesCount() == 0;
            }
            return super.isEmpty();
        }
    }
}
