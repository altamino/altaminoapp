package com.narvii.feed.vote;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.CommunityIconView;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes6.dex */
public class VoterListFooterAdapter extends NVAdapter {
    private AffiliationsService affiliationsService;
    protected Community community;
    private CommunityService communityService;
    private boolean dark;
    private Feed feed;
    private NVContext nvContext;

    private Feed getVoteCommunityFeed() {
        return this.feed;
    }

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    private int getPublishNdcId() {
        Feed feed = this.feed;
        if (feed == null) {
            return 0;
        }
        return feed instanceof Blog ? ((Blog) feed).getPublishNdcId() : feed.ndcId;
    }

    private boolean isCommunityJoined() {
        return this.affiliationsService.contains(getPublishNdcId());
    }

    private void openDetailList() {
        LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area(isGlobalInteractionScope() ? "CommunityLikesBar" : "GuestLikesBar").send();
        Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
        intent.putExtra(NVActivity.INTERACTION_SCOPE, !isGlobalInteractionScope());
        intent.putExtra("followingEnabled", true);
        intent.putExtra("nvObject", JacksonUtils.writeAsString(getVoteCommunityFeed()));
        intent.putExtra("__communityId", isGlobalInteractionScope() ? getPublishNdcId() : 0);
        intent.putExtra("__model", !isGlobalInteractionScope());
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryJoinCommunity() {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", this.community.id);
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(this.dark ? R.layout.fragment_story_vote_footer_dark : R.layout.fragment_story_vote_footer, viewGroup, view);
        if (!isGlobalInteractionScope()) {
            viewCreateView.findViewById(R.id.guest_like_container).setVisibility(4);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.guest_like_text);
            textView.setVisibility(0);
            textView.setText(this.nvContext.getContext().getString(R.string.guest_likes, Integer.valueOf(this.feed.getVoteCount(true ^ isGlobalInteractionScope()))));
        } else if (this.community != null) {
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.total_likes_from);
            int voteCount = this.feed.getVoteCount(!isGlobalInteractionScope());
            if (voteCount > 1) {
                textView2.setText(this.nvContext.getContext().getResources().getString(R.string.story_all_likes_from, Integer.valueOf(voteCount)));
            } else {
                textView2.setText(this.nvContext.getContext().getResources().getString(R.string.story_like_from, Integer.valueOf(voteCount)));
            }
            ((CommunityIconView) viewCreateView.findViewById(R.id.community_icon)).setImageUrl(this.community.icon);
            ((TextView) viewCreateView.findViewById(R.id.community_name)).setText(this.community.name);
        }
        viewCreateView.setOnClickListener(this.subviewClickListener);
        return viewCreateView;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (view2 == null || view2.getId() != R.id.footer_layout) {
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
        if (isCommunityJoined()) {
            openDetailList();
            return true;
        }
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(R.string.headline_join_amino_first);
        aCMAlertDialog.addButton(R.string.cancel, null);
        aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.feed.vote.VoterListFooterAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view3) {
                VoterListFooterAdapter.this.tryJoinCommunity();
            }
        });
        aCMAlertDialog.show();
        return true;
    }

    public VoterListFooterAdapter(NVContext nVContext, Feed feed, boolean z6, Community community) {
        super(nVContext);
        this.community = community;
        this.nvContext = nVContext;
        this.feed = feed;
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        if (community == null) {
            CommunityService communityService = (CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
            this.communityService = communityService;
            this.community = communityService.getCommunity(getPublishNdcId());
        }
        this.dark = z6;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (isGlobalInteractionScope()) {
            if (getPublishNdcId() > 0 && this.feed.getVoteCount(false) > 0) {
                return 1;
            }
            return 0;
        }
        if (this.feed.getVoteCount(true) > 0) {
            return 1;
        }
        return 0;
    }
}
