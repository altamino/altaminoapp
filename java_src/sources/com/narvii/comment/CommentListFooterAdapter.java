package com.narvii.comment;

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
import com.narvii.util.Utils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.CommunityIconView;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes7.dex */
public class CommentListFooterAdapter extends NVAdapter {
    public static final int TYPE_COMMENT = 2;
    private AffiliationsService affiliationsService;
    private Feed blog;
    protected Community community;
    private CommunityService communityService;
    private boolean dark;
    private NVContext nvContext;

    private Feed getCommentCommunityFeed() {
        return this.blog;
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
        Feed feed = this.blog;
        if (feed == null) {
            return 0;
        }
        return feed instanceof Blog ? ((Blog) feed).getPublishNdcId() : feed.ndcId;
    }

    private boolean isCommunityJoined() {
        return this.affiliationsService.contains(getPublishNdcId());
    }

    private void openDetailList() {
        LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area(isGlobalInteractionScope() ? "CommunityCommentsBar" : "GuestCommentsBar").send();
        Intent commentIntent = CommentHelper.getCommentIntent(this, getCommentCommunityFeed(), false, false);
        commentIntent.putExtra(NVActivity.INTERACTION_SCOPE, !isGlobalInteractionScope());
        commentIntent.putExtra("__model", !isGlobalInteractionScope());
        commentIntent.putExtra("__communityId", isGlobalInteractionScope() ? getPublishNdcId() : 0);
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, commentIntent);
    }

    private void tryJoinCommunity() {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", getPublishNdcId());
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.blog == null) {
            return 0;
        }
        if (isGlobalInteractionScope()) {
            return (getPublishNdcId() <= 0 || this.blog.getCommentsCount(false) <= 0) ? 0 : 1;
        }
        return this.blog.getCommentsCount(true) > 0 ? 1 : 0;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(this.dark ? R.layout.fragment_story_vote_footer_dark : R.layout.fragment_story_vote_footer, viewGroup, view);
        if (!isGlobalInteractionScope()) {
            viewCreateView.findViewById(R.id.guest_like_container).setVisibility(4);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.guest_like_text);
            textView.setVisibility(0);
            int commentsCount = this.blog.getCommentsCount(!isGlobalInteractionScope());
            if (commentsCount > 1) {
                textView.setText(this.nvContext.getContext().getString(R.string.guest_comments, Integer.valueOf(commentsCount)));
            } else {
                textView.setText(this.nvContext.getContext().getString(R.string.guest_comments_1));
            }
        } else if (this.community != null) {
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.total_likes_from);
            int commentsCount2 = this.blog.getCommentsCount(!isGlobalInteractionScope());
            if (commentsCount2 > 1) {
                textView2.setText(this.nvContext.getContext().getString(R.string.story_all_comments_from, Integer.valueOf(commentsCount2)));
            } else {
                textView2.setText(this.nvContext.getContext().getString(R.string.story_comment_from, Integer.valueOf(commentsCount2)));
            }
            ((CommunityIconView) viewCreateView.findViewById(R.id.community_icon)).setImageUrl(this.community.icon);
            TextView textView3 = (TextView) viewCreateView.findViewById(R.id.community_name);
            textView3.setText(this.community.name);
            textView3.setMaxWidth(Utils.dpToPxInt(this.context.getContext(), 90.0f));
            viewCreateView.setOnClickListener(this.subviewClickListener);
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
        aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.comment.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                this.f2220a.lambda$onItemClick$0(view3);
            }
        });
        aCMAlertDialog.show();
        return true;
    }

    public CommentListFooterAdapter(NVContext nVContext, Feed feed, boolean z6, Community community) {
        super(nVContext);
        this.community = community;
        this.nvContext = nVContext;
        this.blog = feed;
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        if (community == null) {
            CommunityService communityService = (CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
            this.communityService = communityService;
            this.community = communityService.getCommunity(getPublishNdcId());
        }
        this.dark = z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemClick$0(View view) {
        tryJoinCommunity();
    }
}
