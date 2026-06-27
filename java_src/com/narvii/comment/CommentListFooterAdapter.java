package com.narvii.comment;

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
import com.narvii.util.Utils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.CommunityIconView;

/* loaded from: classes2.dex */
public class CommentListFooterAdapter extends NVAdapter {
    public static final int TYPE_COMMENT = 2;
    private AffiliationsService affiliationsService;
    private Feed blog;
    protected Community community;
    private CommunityService communityService;
    private boolean dark;
    private NVContext nvContext;

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    public CommentListFooterAdapter(NVContext nVContext, Feed feed, boolean z, Community community) {
        super(nVContext);
        this.community = community;
        this.nvContext = nVContext;
        this.blog = feed;
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        if (community == null) {
            this.communityService = (CommunityService) getService("community");
            this.community = this.communityService.getCommunity(getPublishNdcId());
        }
        this.dark = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.blog == null) {
            return 0;
        }
        return isGlobalInteractionScope() ? (getPublishNdcId() <= 0 || this.blog.getCommentsCount(false) <= 0) ? 0 : 1 : this.blog.getCommentsCount(true) > 0 ? 1 : 0;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(this.dark ? R.layout.fragment_story_vote_footer_dark : R.layout.fragment_story_vote_footer, viewGroup, view);
        if (isGlobalInteractionScope()) {
            if (this.community != null) {
                TextView textView = (TextView) viewCreateView.findViewById(R.id.total_likes_from);
                int commentsCount = this.blog.getCommentsCount(!isGlobalInteractionScope());
                if (commentsCount > 1) {
                    textView.setText(this.nvContext.getContext().getString(R.string.story_all_comments_from, Integer.valueOf(commentsCount)));
                } else {
                    textView.setText(this.nvContext.getContext().getString(R.string.story_comment_from, Integer.valueOf(commentsCount)));
                }
                ((CommunityIconView) viewCreateView.findViewById(R.id.community_icon)).setImageUrl(this.community.icon);
                TextView textView2 = (TextView) viewCreateView.findViewById(R.id.community_name);
                textView2.setText(this.community.name);
                textView2.setMaxWidth(Utils.dpToPxInt(this.context.getContext(), 90.0f));
                viewCreateView.setOnClickListener(this.subviewClickListener);
            }
        } else {
            viewCreateView.findViewById(R.id.guest_like_container).setVisibility(4);
            TextView textView3 = (TextView) viewCreateView.findViewById(R.id.guest_like_text);
            textView3.setVisibility(0);
            int commentsCount2 = this.blog.getCommentsCount(!isGlobalInteractionScope());
            if (commentsCount2 > 1) {
                textView3.setText(this.nvContext.getContext().getString(R.string.guest_comments, Integer.valueOf(commentsCount2)));
            } else {
                textView3.setText(this.nvContext.getContext().getString(R.string.guest_comments_1));
            }
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
                aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.comment.-$$Lambda$CommentListFooterAdapter$Bxy59uC2KtGyPBjJtYjkk0RhDOU
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        this.f$0.lambda$onItemClick$0$CommentListFooterAdapter(view3);
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

    public /* synthetic */ void lambda$onItemClick$0$CommentListFooterAdapter(View view) {
        tryJoinCommunity();
    }

    private void openDetailList() {
        LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area(isGlobalInteractionScope() ? "CommunityCommentsBar" : "GuestCommentsBar").send();
        Intent commentIntent = CommentHelper.getCommentIntent(this, getCommentCommunityFeed(), false, false);
        commentIntent.putExtra(NVActivity.INTERACTION_SCOPE, !isGlobalInteractionScope());
        commentIntent.putExtra("__model", !isGlobalInteractionScope());
        commentIntent.putExtra("__communityId", isGlobalInteractionScope() ? getPublishNdcId() : 0);
        startActivity(commentIntent);
    }

    private void tryJoinCommunity() {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", getPublishNdcId());
        startActivity(intent);
    }

    private boolean isCommunityJoined() {
        return this.affiliationsService.contains(getPublishNdcId());
    }

    private int getPublishNdcId() {
        Feed feed = this.blog;
        if (feed == null) {
            return 0;
        }
        return feed instanceof Blog ? ((Blog) feed).getPublishNdcId() : feed.ndcId;
    }

    private Feed getCommentCommunityFeed() {
        Feed feed = this.blog;
        if ((feed instanceof Blog) && ((Blog) feed).type == 9 && ((Blog) feed).refObject != null) {
            return ((Blog) feed).refObject;
        }
        return this.blog;
    }
}
