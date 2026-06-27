package com.narvii.feed.vote;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.CommunityIconView;

/* loaded from: classes2.dex */
public class VoterListFooterAdapter extends NVAdapter {
    private AffiliationsService affiliationsService;
    protected Community community;
    private CommunityService communityService;
    private boolean dark;
    private Feed feed;
    private NVContext nvContext;

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    public VoterListFooterAdapter(NVContext nVContext, Feed feed, boolean z, Community community) {
        super(nVContext);
        this.community = community;
        this.nvContext = nVContext;
        this.feed = feed;
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        if (community == null) {
            this.communityService = (CommunityService) getService("community");
            this.community = this.communityService.getCommunity(getPublishNdcId());
        }
        this.dark = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return isGlobalInteractionScope() ? (getPublishNdcId() <= 0 || this.feed.getVoteCount(false) <= 0) ? 0 : 1 : this.feed.getVoteCount(true) > 0 ? 1 : 0;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(this.dark ? R.layout.fragment_story_vote_footer_dark : R.layout.fragment_story_vote_footer, viewGroup, view);
        if (isGlobalInteractionScope()) {
            if (this.community != null) {
                TextView textView = (TextView) viewCreateView.findViewById(R.id.total_likes_from);
                int voteCount = this.feed.getVoteCount(!isGlobalInteractionScope());
                if (voteCount > 1) {
                    textView.setText(this.nvContext.getContext().getResources().getString(R.string.story_all_likes_from, Integer.valueOf(voteCount)));
                } else {
                    textView.setText(this.nvContext.getContext().getResources().getString(R.string.story_like_from, Integer.valueOf(voteCount)));
                }
                ((CommunityIconView) viewCreateView.findViewById(R.id.community_icon)).setImageUrl(this.community.icon);
                ((TextView) viewCreateView.findViewById(R.id.community_name)).setText(this.community.name);
            }
        } else {
            viewCreateView.findViewById(R.id.guest_like_container).setVisibility(4);
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.guest_like_text);
            textView2.setVisibility(0);
            textView2.setText(this.nvContext.getContext().getString(R.string.guest_likes, Integer.valueOf(this.feed.getVoteCount(true ^ isGlobalInteractionScope()))));
        }
        viewCreateView.setOnClickListener(this.subviewClickListener);
        return viewCreateView;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (view2 != null && view2.getId() == R.id.footer_layout) {
            if (!isCommunityJoined()) {
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
            openDetailList();
            return true;
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    private void openDetailList() {
        LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area(isGlobalInteractionScope() ? "CommunityLikesBar" : "GuestLikesBar").send();
        Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
        intent.putExtra(NVActivity.INTERACTION_SCOPE, !isGlobalInteractionScope());
        intent.putExtra("followingEnabled", true);
        intent.putExtra("nvObject", JacksonUtils.writeAsString(getVoteCommunityFeed()));
        intent.putExtra("__communityId", isGlobalInteractionScope() ? getPublishNdcId() : 0);
        intent.putExtra("__model", !isGlobalInteractionScope());
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryJoinCommunity() {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", this.community.id);
        startActivity(intent);
    }

    private boolean isCommunityJoined() {
        return this.affiliationsService.contains(getPublishNdcId());
    }

    private int getPublishNdcId() {
        Feed feed = this.feed;
        if (feed == null) {
            return 0;
        }
        return feed instanceof Blog ? ((Blog) feed).getPublishNdcId() : feed.ndcId;
    }

    private Feed getVoteCommunityFeed() {
        Feed feed = this.feed;
        if ((feed instanceof Blog) && ((Blog) feed).type == 9 && ((Blog) feed).refObject != null) {
            return ((Blog) feed).refObject;
        }
        return this.feed;
    }
}
