package com.narvii.story.comment;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.comment.CommentHelper;
import com.narvii.comment.CommentListFooterAdapter;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.api.CommentListResponse;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NicknameView;

/* loaded from: classes3.dex */
public class StoryCommentListFragment extends NVListFragment implements View.OnClickListener {
    public static final String KEY_BLOG = "blog";
    public static final String KEY_COMMUNITY = "community";
    public static final String KEY_SHOW_COMMENT_POST = "show_comment_post";
    private Blog blog;
    private LinearLayout bottomEditText;
    private Community community;
    private MergeAdapter mergeAdapter;
    private PushNotificationHelper pushNotificationHelper;
    private TextView titleView;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "CommentList";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.pushNotificationHelper = new PushNotificationHelper(this);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_story_comment, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        this.blog = (Blog) JacksonUtils.readAs(getStringParam("blog"), Blog.class);
        this.community = (Community) JacksonUtils.readAs(getStringParam("community"), Community.class);
        super.onViewCreated(view, bundle);
        this.bottomEditText = (LinearLayout) view.findViewById(R.id.bottom_edit_text);
        this.bottomEditText.setOnClickListener(this);
        setEmptyView(R.layout.story_comment_empty_view);
        this.titleView = (TextView) view.findViewById(R.id.all_comments);
        this.titleView.setText(this.blog.getTotalCommentsCount() > 0 ? getString(R.string.story_all_comments, Integer.valueOf(this.blog.getTotalCommentsCount())) : getString(R.string.story_no_comments));
        view.findViewById(R.id.list_divider).setVisibility(this.blog.getCommentsCount(isGlobalInteractionScope()) <= 0 ? 4 : 0);
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
        this.mergeAdapter = new MergeAdapter(this);
        this.mergeAdapter.addAdapter(new StoryCommentAdapter(this, this.blog), true);
        if (this.blog.getCommentsCount(!isGlobalInteractionScope()) > 0) {
            this.mergeAdapter.addAdapter(new CommentListFooterAdapter(this, this.blog, false, this.community));
        }
        return this.mergeAdapter;
    }

    public void tryToShowPost() {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.story.comment.-$$Lambda$StoryCommentListFragment$iYMSuLQXOvyx-4nmsQLHtvS6Qm8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$tryToShowPost$0$StoryCommentListFragment();
            }
        }, 100L);
    }

    public /* synthetic */ void lambda$tryToShowPost$0$StoryCommentListFragment() {
        LinearLayout linearLayout;
        if (!getBooleanParam(KEY_SHOW_COMMENT_POST) || (linearLayout = this.bottomEditText) == null) {
            return;
        }
        linearLayout.performClick();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.bottom_edit_text) {
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.checkComment).area("CommentBar").object(this.blog).send();
        commentNew(null);
    }

    private void commentNew(String str) {
        if (!((AccountService) getService("account")).hasAccount()) {
            ensureLogin(new Intent());
            return;
        }
        Intent commentPostActivityIntent = CommentHelper.getCommentPostActivityIntent(this, this.blog, isGlobalInteractionScope());
        commentPostActivityIntent.putExtra("stickerCollectionId", str);
        INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(getContext());
        if (nVPlayer != null && nVPlayer.getPlayWhenReady()) {
            commentPostActivityIntent.putExtra("fromStoryCommentList", true);
        }
        startActivity(commentPostActivityIntent);
        this.pushNotificationHelper.checkRemindDialogWhenPostFinished();
    }

    private class StoryCommentAdapter extends CommentListAdapter {
        private Blog blog;

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return false;
        }

        public StoryCommentAdapter(NVContext nVContext, Blog blog) {
            super(nVContext);
            this.blog = blog;
            setDarkTheme(true);
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected NVObject getParent() {
            return this.blog;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return this.blog.getTotalCommentsCount() == 0;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, CommentListResponse commentListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) commentListResponse, i);
            StoryCommentListFragment.this.bottomEditText.setVisibility(0);
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected int getFeedNdcId() {
            return this.blog.ndcId;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
            View itemView = super.getItemView(obj, view, viewGroup);
            NicknameView nicknameView = (NicknameView) itemView.findViewById(R.id.nickname);
            if (nicknameView != null) {
                nicknameView.setShowAuthorViewBorder(false);
            }
            return itemView;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0030  */
        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.notification.NotificationListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onNotification(com.narvii.notification.Notification r7) {
            /*
                r6 = this;
                java.lang.Object r0 = r7.obj
                boolean r1 = r0 instanceof com.narvii.model.Comment
                if (r1 == 0) goto L72
                com.narvii.model.Comment r0 = (com.narvii.model.Comment) r0
                java.lang.String r0 = r0.parentId
                com.narvii.model.Blog r1 = r6.blog
                java.lang.String r1 = r1.blogId
                boolean r0 = com.narvii.util.Utils.isEqualsNotNull(r0, r1)
                if (r0 != 0) goto L30
                com.narvii.model.Blog r0 = r6.blog
                int r1 = r0.type
                r2 = 9
                if (r1 != r2) goto L72
                com.narvii.model.Feed r0 = r0.refObject
                if (r0 == 0) goto L72
                java.lang.Object r1 = r7.obj
                com.narvii.model.Comment r1 = (com.narvii.model.Comment) r1
                java.lang.String r1 = r1.parentId
                java.lang.String r0 = r0.id()
                boolean r0 = com.narvii.util.Utils.isEqualsNotNull(r1, r0)
                if (r0 == 0) goto L72
            L30:
                com.narvii.model.Blog r0 = r6.blog
                java.lang.Object r1 = r7.obj
                com.narvii.model.Comment r1 = (com.narvii.model.Comment) r1
                java.lang.String r2 = r7.action
                com.narvii.comment.CommentHelper.updateFeedWithComment(r0, r1, r2)
                com.narvii.story.comment.StoryCommentListFragment r0 = com.narvii.story.comment.StoryCommentListFragment.this
                android.widget.TextView r0 = com.narvii.story.comment.StoryCommentListFragment.access$100(r0)
                com.narvii.model.Blog r1 = r6.blog
                int r1 = r1.getTotalCommentsCount()
                if (r1 <= 0) goto L63
                com.narvii.story.comment.StoryCommentListFragment r1 = com.narvii.story.comment.StoryCommentListFragment.this
                r2 = 2131693635(0x7f0f1043, float:1.9016404E38)
                r3 = 1
                java.lang.Object[] r3 = new java.lang.Object[r3]
                r4 = 0
                com.narvii.model.Blog r5 = r6.blog
                int r5 = r5.getTotalCommentsCount()
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                r3[r4] = r5
                java.lang.String r1 = r1.getString(r2, r3)
                goto L6c
            L63:
                com.narvii.story.comment.StoryCommentListFragment r1 = com.narvii.story.comment.StoryCommentListFragment.this
                r2 = 2131693651(0x7f0f1053, float:1.9016436E38)
                java.lang.String r1 = r1.getString(r2)
            L6c:
                r0.setText(r1)
                r6.notifyDataSetChanged()
            L72:
                super.onNotification(r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.story.comment.StoryCommentListFragment.StoryCommentAdapter.onNotification(com.narvii.notification.Notification):void");
        }
    }

    public /* synthetic */ void lambda$onActivityResult$1$StoryCommentListFragment(Intent intent) {
        commentNew(intent.getStringExtra("collectionId"));
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, final Intent intent) {
        if (i == 102 && i2 == -1) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.story.comment.-$$Lambda$StoryCommentListFragment$Y_OoCWDKrA3tZbclKwOk4BG9QFQ
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onActivityResult$1$StoryCommentListFragment(intent);
                }
            }, 100L);
        }
        super.onActivityResult(i, i2, intent);
    }
}
