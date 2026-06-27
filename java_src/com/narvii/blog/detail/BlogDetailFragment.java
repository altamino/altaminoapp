package com.narvii.blog.detail;

import android.app.AlertDialog;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.ColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.blog.post.BlogPost;
import com.narvii.blog.post.StoryPostActivity;
import com.narvii.comment.CommentHelper;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.AffiliationsService;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailFragment;
import com.narvii.detail.FeedDetailAdapter;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.editor.utils.MeisheUtils;
import com.narvii.editors.ffmpeg.FFmpegJni;
import com.narvii.feed.ExternalPostListFragment;
import com.narvii.feed.FeedContinuousViewer;
import com.narvii.feed.FeedHelper;
import com.narvii.feed.FeedListItem;
import com.narvii.feed.quizzes.QuizCoverView;
import com.narvii.feed.quizzes.QuizzesResultRankingListFragment;
import com.narvii.feed.vote.VoteAnimationHelper;
import com.narvii.feed.vote.VotePopupDialog;
import com.narvii.feed.vote.VoterListFragment;
import com.narvii.influencer.FansOnlyHintDialog;
import com.narvii.influencer.InfluencerHelper;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.media.MediaGalleryOptionActivity;
import com.narvii.model.Blog;
import com.narvii.model.BlogCategory;
import com.narvii.model.Comment;
import com.narvii.model.Community;
import com.narvii.model.CurrentQuizzesResult;
import com.narvii.model.ExternalSource;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.LinkSummary;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.model.api.FeedResponse;
import com.narvii.model.extension.FeedExtensionKt;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.notification.Notification;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoPlayHost;
import com.narvii.nvplayerview.listener.VideoViewClickListener;
import com.narvii.poll.PollAdapter;
import com.narvii.poll.PollOptionListLayout;
import com.narvii.post.DraftInfo;
import com.narvii.post.DraftManager;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.prefs.PostCommentPrivilegeFragment;
import com.narvii.scene.TemplateListFragment;
import com.narvii.scene.model.TemplateConfig;
import com.narvii.scene.notification.CloseSceneTemplateObject;
import com.narvii.scene.notification.PromotedFromObject;
import com.narvii.scene.service.ChooseSceneTemplateService;
import com.narvii.scene.template.SceneTemplateGeneratorFragment;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryListFragment;
import com.narvii.story.StoryNotificationStub;
import com.narvii.story.detail.VoteHelper;
import com.narvii.theme.IFakeActionBar;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.NVToast;
import com.narvii.util.PaletteUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.AddressView;
import com.narvii.widget.FullscreenBackgroundView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.PromoteStoryView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.VoteIcon;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public class BlogDetailFragment extends FeedDetailFragment<Blog> implements PromoteStoryView.OnPromoteListener, FragmentOnBackListener, IFakeActionBar {
    public static final int REQUEST_CHANGE_CATELOG = 201;
    private AccountService accountService;
    private View actionBarOverlay;
    AdvancedOptionDialog advancedOptionDialog;
    Adapter blogAdapter;
    private List<BlogCategory> categories;
    CommentAdapter commentAdapter;
    private DraftManager draftManager;
    private EntryManager entryManager;
    View fakeActionBar;
    boolean isAnnouncement;
    private boolean justCreated;
    private View.OnLongClickListener longClickVote = new View.OnLongClickListener() { // from class: com.narvii.blog.detail.BlogDetailFragment.5
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (!BlogDetailFragment.this.checkCommunityJoined()) {
                return true;
            }
            Blog feed = BlogDetailFragment.this.getFeed();
            if (feed == null) {
                return false;
            }
            final View viewFindViewById = view.findViewById(R.id.vote_icon);
            VotePopupDialog votePopupDialog = new VotePopupDialog(BlogDetailFragment.this.getContext());
            votePopupDialog.setFeed(feed);
            votePopupDialog.setPosition(view);
            votePopupDialog.setVoteListener(new Callback<Integer>() { // from class: com.narvii.blog.detail.BlogDetailFragment.5.1
                @Override // com.narvii.util.Callback
                public void call(Integer num) {
                    BlogDetailFragment.this.voteIconView = viewFindViewById;
                    Intent intent = new Intent(StoryNotificationStub.ACTION_VOTE);
                    intent.putExtra("voteValue", num.intValue());
                    BlogDetailFragment.this.ensureLogin(intent);
                }
            });
            votePopupDialog.show();
            return true;
        }
    };
    private MergeAdapter mergeAdapter;
    public Callback<Blog> onFinishListener;
    boolean optinPaidAds;
    private PromoteStoryView promoteStoryView;
    private PushNotificationHelper pushNotificationHelper;
    private List<Community> relatedCommunities;
    private ChooseSceneTemplateService sceneTemplateService;
    private boolean showingBlogTitle;
    boolean stated;
    private TopAdapter topAdapter;
    View voteIconView;
    static final DetailAdapter.CellType TITLE = new DetailAdapter.CellType("detail.title");
    static final DetailAdapter.CellType USER_VOTE = new DetailAdapter.CellType("detail.user-vote");
    static final DetailAdapter.CellType ADDRESS = new DetailAdapter.CellType("detail.address");
    static final DetailAdapter.CellType QUIZ = new DetailAdapter.CellType("detail.quiz");
    static final DetailAdapter.CellType REF_NULL = new DetailAdapter.CellType("detail.ref-null");
    static final DetailAdapter.CellType REF_DISABLE = new DetailAdapter.CellType("detail.ref-disable");
    static final DetailAdapter.HeaderTag LIKES_HEADER = new DetailAdapter.HeaderTag("detail.likes", R.string.likes);
    static final DetailAdapter.CellType PAGE_SNIPPET = new DetailAdapter.CellType("detail.snippet");
    static final DetailAdapter.CellType READ_IT = new DetailAdapter.CellType("detail.readit");
    static final DetailAdapter.CellType LINK_CUSTOM_CONTENT_PADDING = new DetailAdapter.CellType("detail.link.custom.title");
    static final DetailAdapter.CellType RELATED_AMINOS = new DetailAdapter.CellType("detail.related.aminos");
    static final DetailAdapter.CellType STORY = new DetailAdapter.CellType("detail.story");
    static final List<DetailAdapter.CellType> ADS = Arrays.asList(new DetailAdapter.CellType("adbanner1", false), new DetailAdapter.CellType("adbanner2", false), new DetailAdapter.CellType("adbanner3", false), new DetailAdapter.CellType("adbanner4", false), new DetailAdapter.CellType("adbanner5", false), new DetailAdapter.CellType("adbanner6", false), new DetailAdapter.CellType("adbanner7", false), new DetailAdapter.CellType("adbanner8", false), new DetailAdapter.CellType("adbanner9", false), new DetailAdapter.CellType("adbanner10", false), new DetailAdapter.CellType("adbanner11", false), new DetailAdapter.CellType("adbanner12", false), new DetailAdapter.CellType("adbanner13", false), new DetailAdapter.CellType("adbanner14", false), new DetailAdapter.CellType("adbanner15", false), new DetailAdapter.CellType("adbanner16", false), new DetailAdapter.CellType("adbanner17", false), new DetailAdapter.CellType("adbanner18", false), new DetailAdapter.CellType("adbanner19", false), new DetailAdapter.CellType("adbanner20", false));
    static final DetailAdapter.CellType AD_ABOVECOMMENT = new DetailAdapter.CellType("adbanner_abovecomment", false);

    static /* synthetic */ void lambda$onPromoteStory$2(DialogInterface dialogInterface) {
    }

    protected boolean disableOptinAds() {
        return false;
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected String getLiveLayerTopic() {
        return "users-browsing-blog-at";
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "BlogDetail";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected boolean observeThemeDownloadFinish() {
        return true;
    }

    protected boolean showCommentBarInStoryDetail() {
        return true;
    }

    protected boolean showSearchBarInStoryDetail() {
        return false;
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        if (bundle == null && getActivity() != null && getActivity().getIntent().hasExtra("__savedInstanceState")) {
            bundle = getActivity().getIntent().getBundleExtra("__savedInstanceState");
        }
        super.onCreate(bundle);
        this.isAnnouncement = getBooleanParam(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, false);
        this.justCreated = getBooleanParam("justCreated", false);
        if (this.isAnnouncement) {
            setTitle(R.string.announcement);
        } else {
            setTitle(R.string.detail_blog);
        }
        if (bundle != null) {
            this.stated = bundle.getBoolean("stated");
        }
        this.actions.add(LiveLayerService.ACTION_BROWSING);
        this.entryManager = new EntryManager(this);
        this.draftManager = (DraftManager) getService(EntryManager.ENTRY_DRAFT);
        this.accountService = (AccountService) getService("account");
        this.sceneTemplateService = (ChooseSceneTemplateService) getService("chooseSceneTemplate");
        this.sceneTemplateService.setOnChooseTemplateListener(new AnonymousClass1());
        this.pushNotificationHelper = new PushNotificationHelper(this);
    }

    /* renamed from: com.narvii.blog.detail.BlogDetailFragment$1, reason: invalid class name */
    class AnonymousClass1 implements TemplateListFragment.OnChooseTemplateListener {
        AnonymousClass1() {
        }

        @Override // com.narvii.scene.TemplateListFragment.OnChooseTemplateListener
        public void onChoose(TemplateConfig templateConfig) {
            if (!MeisheUtils.isSupportMeishe() || !FFmpegJni.ffmpegInstalled) {
                final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(BlogDetailFragment.this.getActivity());
                aCMAlertDialog.setMessage(BlogDetailFragment.this.getString(R.string.av_not_supported));
                aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.blog.detail.-$$Lambda$BlogDetailFragment$1$m_q7sbAuDTWkOg51kOlNpUmSOT0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        aCMAlertDialog.dismiss();
                    }
                });
                aCMAlertDialog.setCancelable(false);
                aCMAlertDialog.show();
                return;
            }
            Intent intent = FragmentWrapperActivity.intent(SceneTemplateGeneratorFragment.class);
            intent.putExtra("blogPost", JacksonUtils.writeAsString(BlogDetailFragment.this.getFeed()));
            intent.putExtra("templateConfig", JacksonUtils.writeAsString(templateConfig));
            BlogDetailFragment.this.startActivity(intent);
        }

        @Override // com.narvii.scene.TemplateListFragment.OnChooseTemplateListener
        public void onDismiss() {
            if (BlogDetailFragment.this.getLifecycleState() >= 3) {
                BlogDetailFragment.this.onActiveChanged(true);
            }
        }
    }

    @Override // com.narvii.detail.DetailFragment
    protected int objectType() {
        return this.isAnnouncement ? 131 : 1;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("stated", this.stated);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.semicontext.SemiStateTransfer
    public Intent getTransferIntent(Intent intent) {
        Bundle bundle = new Bundle();
        onSaveInstanceState(bundle);
        intent.putExtra("__savedInstanceState", bundle);
        return super.getTransferIntent(intent);
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment
    protected boolean shouldBlockClick(Object obj) {
        if (this.notJoined && (obj == READ_IT || obj == USER_VOTE || obj == LIKES_HEADER || obj == DetailAdapter.USER_GRID || (obj instanceof Comment))) {
            return false;
        }
        if (!isMeAccessibleToThisPost()) {
            if (obj == USER_VOTE) {
                return false;
            }
            if (getFeed() == null) {
                return true;
            }
            FansOnlyHintDialog.showFansOnlyHintDialog(this, getFeed(), "Page Detailed View");
            return true;
        }
        if (obj == STORY) {
            return false;
        }
        return super.shouldBlockClick(obj);
    }

    @Override // com.narvii.app.NVFragment
    public boolean isPageBackgroundEnabled() {
        return !isEmbedFragment();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.blogAdapter = new Adapter();
        this.commentAdapter = new CommentAdapter();
        this.mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.blog.detail.BlogDetailFragment.2
            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                if ((view2 == null || view2.getId() != R.id.start_quiz) && BlogDetailFragment.this.shouldBlockClick(obj)) {
                    return true;
                }
                BlogDetailFragment.this.blockPass.set(true);
                return super.onItemClick(listAdapter, i, obj, view, view2);
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                if (BlogDetailFragment.this.shouldBlockClick(obj)) {
                    return true;
                }
                BlogDetailFragment.this.blockPass.set(true);
                return super.onLongClick(listAdapter, i, obj, view, view2);
            }
        };
        this.mergeAdapter.setFlags(1);
        this.topAdapter = new TopAdapter(this, null);
        this.topAdapter.addViews(new OverlayListPlaceholder(getContext()));
        this.mergeAdapter.addAdapter(this.topAdapter);
        this.mergeAdapter.addAdapter(this.blogAdapter, true);
        if (!newPreview()) {
            this.mergeAdapter.addAdapter(this.commentAdapter);
            if (!this.isAnnouncement) {
                this.mergeAdapter.addAdapter(new FeedDetailFragment.CommentFooterAdapter(this));
            }
        }
        if (!newPreview()) {
            StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
            staticViewAdapter.addLayouts(R.layout.blog_detail_fotter_padding);
            this.mergeAdapter.addAdapter(staticViewAdapter);
        }
        return this.mergeAdapter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        this.fakeActionBar = view.findViewById(R.id.fake_action_bar);
        this.actionBarOverlay = view.findViewById(R.id.action_bar_overlay);
        super.onViewCreated(view, bundle);
        updateteBottomLayout((Feed) this.blogAdapter.getObject());
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.list.NVListFragment
    protected void onListViewCreated(final ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        changeListViewMargin();
        if (listView instanceof NVListView) {
            ((NVListView) listView).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.blog.detail.BlogDetailFragment.3
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i) {
                    if (i == 0 || BlogDetailFragment.this.promoteStoryView == null) {
                        return;
                    }
                    BlogDetailFragment.this.promoteStoryView.hide();
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                    Adapter adapter;
                    Blog blog;
                    ListAdapter adapter2 = listView.getAdapter();
                    if (adapter2 == null || (adapter = BlogDetailFragment.this.blogAdapter) == null || (blog = (Blog) adapter.getObject()) == null) {
                        return;
                    }
                    int i4 = 0;
                    while (true) {
                        if (i4 >= adapter2.getCount()) {
                            i4 = -1;
                            break;
                        } else if (adapter2.getItem(i4) == BlogDetailFragment.TITLE) {
                            break;
                        } else {
                            i4++;
                        }
                    }
                    if (i4 != -1) {
                        if (i > i4) {
                            if (BlogDetailFragment.this.showingBlogTitle) {
                                return;
                            }
                            BlogDetailFragment.this.setTitle(blog.title);
                            BlogDetailFragment.this.showingBlogTitle = true;
                            return;
                        }
                        if (BlogDetailFragment.this.showingBlogTitle) {
                            BlogDetailFragment.this.setTypeTitle(blog);
                            BlogDetailFragment.this.showingBlogTitle = false;
                        }
                    }
                }
            });
        }
    }

    @Override // com.narvii.detail.DetailFragment
    public void setDisabledStatus(NVObject nVObject) {
        super.setDisabledStatus(nVObject);
        if (isFloatingSwipeable()) {
            changeListViewMargin();
            resetHover();
        }
    }

    private void changeListViewMargin() {
        ListView listView = getListView();
        if (listView != null) {
            ViewUtils.setMarginTop(listView, getListViewMarginTop());
        }
    }

    private int getListViewMarginTop() {
        if (!isFloatingSwipeable() || this.disabled) {
            return 0;
        }
        return getTotalOverlaySize();
    }

    @Override // com.narvii.detail.FeedDetailFragment, android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (this.isAnnouncement) {
            menu.add(0, R.string.copy_link, 1, R.string.copy_link).setShowAsAction(0);
            return;
        }
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.bookmark, 7, R.string.bookmark).setShowAsAction(0);
        menu.add(0, R.string.un_save, 7, R.string.un_save).setShowAsAction(0);
        menu.add(0, R.string.advanced, 10, R.string.advanced).setShowAsAction(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.detail.FeedDetailFragment, android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        if (this.isAnnouncement) {
            menu.findItem(R.string.copy_link).setVisible(true);
            return;
        }
        super.onPrepareOptionsMenu(menu);
        Adapter adapter = this.blogAdapter;
        if (adapter != null && adapter.getResponse() != null && !isGlobalInteractionScope()) {
            MenuItem menuItemFindItem = menu.findItem(R.string.un_save);
            Adapter adapter2 = this.blogAdapter;
            menuItemFindItem.setVisible((!adapter2.isBookmarked || adapter2.getObject() == 0 || ((Blog) this.blogAdapter.getObject()).status() == 9) ? false : true);
            MenuItem menuItemFindItem2 = menu.findItem(R.string.bookmark);
            Adapter adapter3 = this.blogAdapter;
            menuItemFindItem2.setVisible((adapter3.isBookmarked || adapter3.getObject() == 0 || ((Blog) this.blogAdapter.getObject()).status() == 9) ? false : true);
        } else {
            menu.findItem(R.string.un_save).setVisible(false);
            menu.findItem(R.string.bookmark).setVisible(false);
        }
        User userProfile = ((AccountService) getService("account")).getUserProfile();
        menu.findItem(R.string.advanced).setVisible((getFeed() == null || userProfile == null || !userProfile.isCurator() || isGlobalInteractionScope()) ? false : true);
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected boolean showBottomBar() {
        return super.showBottomBar() && !this.isAnnouncement;
    }

    @Override // com.narvii.detail.FeedDetailFragment, android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.string.advanced) {
            showModerationDialog();
            return true;
        }
        if (itemId == R.string.bookmark) {
            sendHeaderAreaLog(ActSemantic.save);
            bookmark("Post Detail Menu");
            return true;
        }
        if (itemId == R.string.un_save) {
            new FeedHelper(this).unBookmark(getFeed(), new Callback<ApiResponse>() { // from class: com.narvii.blog.detail.BlogDetailFragment.4
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    Adapter adapter = BlogDetailFragment.this.blogAdapter;
                    if (adapter != null) {
                        adapter.isBookmarked = false;
                    }
                }
            });
            return true;
        }
        if (this.isAnnouncement && menuItem.getItemId() == R.string.copy_link) {
            try {
                ((ClipboardManager) getContext().getSystemService("clipboard")).setText(getFeed().shareURLFullPath);
                NVToast.makeText(getContext(), R.string.share_copy_to_clipboard_success, 0).show();
            } catch (Exception unused) {
            }
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.detail.DetailFragment
    protected boolean shouldShowNotAvailable(NVObject nVObject) {
        if (nVObject instanceof Blog) {
            if (((Blog) nVObject).type == 2) {
                return !r0.isAccessibleByUserIgnoreRefObject(((AccountService) getService("account")).getUserProfile());
            }
        }
        return super.shouldShowNotAvailable(nVObject);
    }

    @Override // com.narvii.detail.DetailFragment
    protected int getDisableStrId(NVObject nVObject) {
        if (nVObject == null) {
            return 0;
        }
        if ((nVObject instanceof Blog) && ((Blog) nVObject).type == 8) {
            return nVObject.isAccessibleByUserItSelf(null) ? R.string.external_source_not_available : getDetailObjectDisableStrId();
        }
        return super.getDisableStrId(nVObject);
    }

    @Override // com.narvii.app.NVFragment
    protected void completePageViewEvent(LogEvent.Builder builder, boolean z) {
        super.completePageViewEvent(builder, z);
        FeedDetailAdapter<Blog> feedDetailAdapter = getFeedDetailAdapter();
        if (feedDetailAdapter != null && feedDetailAdapter.getObject() != null) {
            builder.object(feedDetailAdapter.getObject());
        } else {
            builder.objectId(id()).objectType(ObjectType.blog);
        }
    }

    @Override // com.narvii.detail.DetailFragment
    protected boolean shouldShowDisableBar(NVObject nVObject) {
        if (nVObject instanceof Blog) {
            return !((Blog) nVObject).isAccessibleByUserIgnoreRefObject(null);
        }
        return super.shouldShowDisableBar(nVObject);
    }

    @Override // com.narvii.detail.FeedDetailFragment
    public FeedDetailAdapter<Blog> getFeedDetailAdapter() {
        return this.blogAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean setListContentBgWhenHasPageBackground() {
        return !this._hasBackground;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        AdvancedOptionDialog advancedOptionDialog = this.advancedOptionDialog;
        if (advancedOptionDialog != null && advancedOptionDialog.isShowing()) {
            this.advancedOptionDialog.dismiss();
        }
        super.onPause();
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        ChooseSceneTemplateService chooseSceneTemplateService = this.sceneTemplateService;
        if (chooseSceneTemplateService != null && chooseSceneTemplateService.isShowing() && z) {
            return;
        }
        super.onActiveChanged(z);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.blogAdapter.pollAdapter != null && i == 62977) {
            this.blogAdapter.pollAdapter.onActivityResult(i, i2, intent);
        }
        if (i == 201 && i2 == -1) {
            NVToast.makeText(getContext(), getString(R.string.change_category_successfully), 0).show();
        }
        if (i == 111 && i2 == -1) {
            this.blogAdapter.commentNew(intent.getStringExtra("collectionId"));
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.list.HoverAdapter
    public boolean isHover(int i) {
        return (this.mergeAdapter == null || isFloatingSwipeable() || this.mergeAdapter.getItem(i) != DetailAdapter.COMMENT_ADD) ? false : true;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        ChooseSceneTemplateService chooseSceneTemplateService = this.sceneTemplateService;
        if (chooseSceneTemplateService == null || !chooseSceneTemplateService.isShowing()) {
            return false;
        }
        this.sceneTemplateService.dismiss();
        return true;
    }

    private class TopAdapter extends StaticViewAdapter {
        private TopAdapter() {
        }

        /* synthetic */ TopAdapter(BlogDetailFragment blogDetailFragment, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
        public int getCount() {
            if (!BlogDetailFragment.this.hasBackground() || ((DetailFragment) BlogDetailFragment.this).disabled) {
                return 0;
            }
            return super.getCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class Adapter extends FeedDetailAdapter<Blog> {
        private PollAdapter pollAdapter;
        VideoViewClickListener videoViewClickListener;
        private boolean voting;

        @Override // com.narvii.detail.DetailAdapter
        protected boolean showEmptyContent() {
            return false;
        }

        @Override // com.narvii.detail.DetailAdapter
        public boolean showShareMediaBar() {
            return false;
        }

        public Adapter() {
            super(BlogDetailFragment.this);
            this.videoViewClickListener = new VideoViewClickListener() { // from class: com.narvii.blog.detail.BlogDetailFragment.Adapter.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.narvii.nvplayerview.listener.VideoViewClickListener
                public void onVideoViewClicked(Media media, NVObject nVObject) {
                    Blog blog;
                    Adapter.this.sendMainLogEvent(ActSemantic.enterStoryDetail);
                    if (nVObject instanceof Blog) {
                        blog = (Blog) nVObject;
                        if (Utils.isEqualsNotNull(blog.id(), ((Blog) Adapter.this.getObject()).id())) {
                            blog = (Blog) Adapter.this.getObject();
                        }
                    } else {
                        blog = null;
                    }
                    if (blog != null) {
                        Intent storyDetailPageIntent = BlogDetailFragment.this.getStoryDetailPageIntent(blog);
                        storyDetailPageIntent.putExtra("preview", Adapter.this.preview());
                        Adapter.this.startActivity(storyDetailPageIntent);
                    }
                }

                @Override // com.narvii.nvplayerview.listener.VideoViewClickListener
                public boolean interceptClickEvent(NVObject nVObject) {
                    return (nVObject instanceof Blog) && ((Blog) nVObject).type == 9;
                }
            };
            NVContext nVContext = this.context;
            if (nVContext instanceof NVVideoPlayHost) {
                IVideoListDelegate videoDelegate = ((NVVideoPlayHost) nVContext).getVideoDelegate();
                if (videoDelegate instanceof NVVideoListDelegate) {
                    ((NVVideoListDelegate) videoDelegate).setVideoViewClickListener(this.videoViewClickListener);
                }
            }
        }

        @Override // com.narvii.list.NVAdapter
        public void onDetach() {
            super.onDetach();
            PollAdapter pollAdapter = this.pollAdapter;
            if (pollAdapter != null) {
                pollAdapter.destory();
            }
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            if (BlogDetailFragment.this.isPageBackgroundEnabled() && getResponse() == null) {
                return true;
            }
            return super.isListShown();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (BlogDetailFragment.this.isPageBackgroundEnabled() && getResponse() == null) {
                return false;
            }
            return super.isEmpty();
        }

        @Override // com.narvii.detail.DetailAdapter, android.widget.Adapter
        public int getCount() {
            if (BlogDetailFragment.this.isPageBackgroundEnabled() && getResponse() == null) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.detail.DetailAdapter
        public void commentNew() {
            BlogDetailFragment.this.blockPass.set(true);
            super.commentNew();
        }

        @Override // com.narvii.detail.FeedDetailAdapter
        protected boolean preview() {
            return BlogDetailFragment.this.preview;
        }

        @Override // com.narvii.detail.FeedDetailAdapter
        protected boolean notJoined() {
            return ((FeedDetailFragment) BlogDetailFragment.this).notJoined;
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends Blog> objectType() {
            return Blog.class;
        }

        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter
        protected Class<? extends FeedResponse<Blog>> responseType() {
            return BlogResponse.class;
        }

        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            Blog blog;
            super.onNotification(notification);
            PollAdapter pollAdapter = this.pollAdapter;
            if (pollAdapter != null) {
                pollAdapter.onNotification(notification);
            }
            if (notification.action.equals("update") || ((notification.obj instanceof Comment) && (notification.action.equals("new") || notification.action.equals("delete")))) {
                Blog feed = BlogDetailFragment.this.getFeed();
                if (feed != null && feed.type == 2 && feed.refObject != null && notification.action.equals("update")) {
                    Object obj = notification.obj;
                    if ((obj instanceof Feed) && Utils.isEqualsNotNull(((Feed) obj).id(), feed.refObject.id())) {
                        feed.refObject = (Feed) notification.obj;
                        Adapter adapter = BlogDetailFragment.this.blogAdapter;
                        if (adapter != null) {
                            adapter.notifyDataSetChanged();
                        }
                    }
                }
                if (((FeedDetailFragment) BlogDetailFragment.this).continuousLoader == null || feed == null) {
                    return;
                }
                Object obj2 = notification.obj;
                if (obj2 instanceof Comment) {
                    CommentHelper.updateFeedWithComment(feed, (Comment) obj2, notification.action);
                }
                BlogDetailFragment.this.updateteBottomLayout(feed);
                return;
            }
            if (notification.action.equals("edit") || notification.action.equals("delete")) {
                Blog feed2 = BlogDetailFragment.this.getFeed();
                if (feed2 != null && (notification.obj instanceof Blog) && TextUtils.equals(feed2.getLinkedBlogId(), ((Blog) notification.obj).blogId)) {
                    BlogDetailFragment.this.showPromoteStoryView(notification.action.equals("delete") ? null : (Blog) notification.obj);
                    if (BlogDetailFragment.this.sceneTemplateService != null) {
                        BlogDetailFragment.this.sceneTemplateService.dismiss();
                        return;
                    }
                    return;
                }
                return;
            }
            if (notification.action.equals("new") && (notification.obj instanceof PromotedFromObject)) {
                Blog feed3 = BlogDetailFragment.this.getFeed();
                PromotedFromObject promotedFromObject = (PromotedFromObject) notification.obj;
                if (feed3 == null || !TextUtils.isEmpty(feed3.getLinkedBlogId()) || !TextUtils.equals(promotedFromObject.promotedFrom, feed3.blogId) || (blog = promotedFromObject.story) == null) {
                    return;
                }
                feed3.setLinkedBlogId(blog.blogId);
                BlogDetailFragment.this.showPromoteStoryView(promotedFromObject.story);
                if (BlogDetailFragment.this.sceneTemplateService != null) {
                    BlogDetailFragment.this.sceneTemplateService.dismiss();
                    return;
                }
                return;
            }
            if (notification.action.equals("new") && (notification.obj instanceof CloseSceneTemplateObject) && BlogDetailFragment.this.sceneTemplateService != null) {
                BlogDetailFragment.this.sceneTemplateService.dismiss();
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void onTipBoxClicked(boolean z) {
            super.onTipBoxClicked(z);
            if (z) {
                return;
            }
            BlogDetailFragment.this.tippingTooltipDone();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.DetailAdapter
        public void onObjectResponse(ApiRequest apiRequest, FeedResponse<? extends Blog> feedResponse) {
            if (BlogDetailFragment.this.preview && (feedResponse instanceof BlogResponse)) {
                Blog blog = (Blog) getObject();
                if (blog != null) {
                    Blog blog2 = ((BlogResponse) feedResponse).blog;
                    blog2.type = blog.type;
                    blog2.title = blog.title;
                    blog2.content = blog.content;
                    blog2.mediaList = blog.mediaList;
                    blog2.endTime = blog.endTime;
                    blog2.latitude = blog.latitude;
                    blog2.longitude = blog.longitude;
                    blog2.address = blog.address;
                    blog2.modifiedTime = blog.modifiedTime;
                    blog2.extensions = blog.extensions;
                    blog2.quizQuestionList = blog.quizQuestionList;
                    blog2.polloptList = blog.polloptList;
                    blog2.userAddedTopicList = blog.userAddedTopicList;
                    blog2.sceneList = blog.sceneList;
                    blog2.credits = blog.credits;
                }
                super.onObjectResponse(apiRequest, (ApiRequest) feedResponse);
                return;
            }
            BlogDetailFragment.this.onFeedObjectResponse();
            super.onObjectResponse(apiRequest, (ApiRequest) feedResponse);
            BlogDetailFragment.this.getListView().post(new Runnable() { // from class: com.narvii.blog.detail.BlogDetailFragment.Adapter.2
                @Override // java.lang.Runnable
                public void run() {
                    if (((NVListFragment) BlogDetailFragment.this).mVideoListDelegate == null || !(((NVListFragment) BlogDetailFragment.this).mVideoListDelegate instanceof NVVideoListDelegate)) {
                        return;
                    }
                    int desiredPlayerPosition = ((NVVideoListDelegate) ((NVListFragment) BlogDetailFragment.this).mVideoListDelegate).getDesiredPlayerPosition();
                    int playerPosition = ((NVVideoListDelegate) ((NVListFragment) BlogDetailFragment.this).mVideoListDelegate).getPlayerPosition();
                    if (playerPosition == -1 || desiredPlayerPosition == playerPosition) {
                        return;
                    }
                    ((NVListFragment) BlogDetailFragment.this).mVideoListDelegate.onRefresh();
                }
            });
            BlogDetailFragment.this.tryReportActiveStatus();
            BlogDetailFragment.this.sendFeedUpdateGlobalNotification((Feed) getObject());
            sendImagePostUpdateNotificaion((Feed) getObject());
            if (BlogDetailFragment.this.isFloatingSwipeable() || isGlobalInteractionScope()) {
                return;
            }
            requestLinkedBlog();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void requestLinkedBlog() {
            if (getObject() == 0) {
                return;
            }
            int i = ((Blog) getObject()).type;
            String linkedBlogId = ((Blog) getObject()).getLinkedBlogId();
            if (i != 7 && i != 3 && i != 0 && i != 5) {
                BlogDetailFragment.this.afterPromoteStoryViewProcessed();
                return;
            }
            if (BlogDetailFragment.this.isMine() && TextUtils.isEmpty(linkedBlogId)) {
                BlogDetailFragment.this.showPromoteStoryView(null);
                if (BlogDetailFragment.this.justCreated) {
                    final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(BlogDetailFragment.this.getActivity());
                    aCMAlertDialog.setMessage(BlogDetailFragment.this.getString(R.string.do_you_want_to_promote_your_post));
                    aCMAlertDialog.addButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.blog.detail.-$$Lambda$BlogDetailFragment$Adapter$0BUIgOLnUj8eBHghOsqsqU8fx_g
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            aCMAlertDialog.dismiss();
                        }
                    });
                    aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.blog.detail.-$$Lambda$BlogDetailFragment$Adapter$isWKPKFkBiETnew16KQyr6Jy2n4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$requestLinkedBlog$1$BlogDetailFragment$Adapter(aCMAlertDialog, view);
                        }
                    });
                    aCMAlertDialog.setCancelable(false);
                    aCMAlertDialog.show();
                    BlogDetailFragment.this.justCreated = false;
                    return;
                }
                return;
            }
            if (TextUtils.isEmpty(linkedBlogId)) {
                return;
            }
            ((ApiService) getService("api")).exec(ApiRequest.builder().path("/blog/" + linkedBlogId).build(), new ApiResponseListener<FeedResponse<Blog>>(BlogResponse.class) { // from class: com.narvii.blog.detail.BlogDetailFragment.Adapter.3
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, FeedResponse<Blog> feedResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) feedResponse);
                    Blog blog = (Blog) feedResponse.object();
                    if (blog != null) {
                        BlogDetailFragment.this.showPromoteStoryView(blog);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i2, list, str, apiResponse, th);
                    if (BlogDetailFragment.this.isMine() && i2 == 500) {
                        BlogDetailFragment.this.showPromoteStoryView(null);
                    }
                }
            });
            BlogDetailFragment.this.afterPromoteStoryViewProcessed();
        }

        public /* synthetic */ void lambda$requestLinkedBlog$1$BlogDetailFragment$Adapter(ACMAlertDialog aCMAlertDialog, View view) {
            BlogDetailFragment.this.onPromoteStory();
            aCMAlertDialog.dismiss();
        }

        private void sendImagePostUpdateNotificaion(Feed feed) {
            if (feed == null || !(feed instanceof Blog) || ((Blog) feed).type != 7 || feed.needHidden) {
                return;
            }
            sendNotification(new Notification("update", feed.m46clone()));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter
        public void setResponse(FeedResponse<? extends Blog> feedResponse) {
            Callback<Blog> callback;
            if (BlogDetailFragment.this.getActivity() == null) {
                return;
            }
            Blog blog = (Blog) getObject();
            boolean z = feedResponse instanceof BlogResponse;
            if (z) {
                BlogDetailFragment.this.relatedCommunities = ((BlogResponse) feedResponse).suggestedCommunityList;
            }
            if (((FeedDetailFragment) BlogDetailFragment.this).fromHeadline) {
                ((Blog) feedResponse.object()).ndcId = BlogDetailFragment.this.getIntParam("__communityId");
            }
            super.setResponse((FeedResponse) feedResponse);
            Blog blog2 = (Blog) getObject();
            if (blog2 != null) {
                BlogDetailFragment.this.setDisabledStatus(blog2);
            }
            if (blog2 != null) {
                ((DetailFragment) BlogDetailFragment.this)._hasBackground = blog2.hasBackground();
                ((DetailFragment) BlogDetailFragment.this)._isBackgroundDark = blog2.getBackgroundMedia() != null || PaletteUtils.isDarkColor(blog2.getBackgroundColor());
                ((NVFragment) BlogDetailFragment.this)._backgroundColor = blog2.getBackgroundColor();
                BlogDetailFragment.this.updateBackground();
                BlogDetailFragment.this.updateListViewContentBackground();
            }
            this.isBookmarked = feedResponse.isBookmarked;
            if (feedResponse.timestamp != null && (callback = BlogDetailFragment.this.onFinishListener) != 0) {
                callback.call(feedResponse.object());
            }
            if (z) {
                BlogDetailFragment.this.categories = ((BlogResponse) feedResponse).taggedBlogCategoryList;
            }
            if (blog2 != null) {
                BlogDetailFragment.this.setTypeTitle(blog2);
            }
            CommentAdapter commentAdapter = BlogDetailFragment.this.commentAdapter;
            if (commentAdapter != null && blog == null && blog2 != null) {
                commentAdapter.resetList();
            }
            if (blog2 != null && blog2.type == 4) {
                if (this.pollAdapter == null) {
                    this.pollAdapter = new PollAdapter(this, BlogDetailFragment.this) { // from class: com.narvii.blog.detail.BlogDetailFragment.Adapter.4
                        @Override // com.narvii.poll.PollAdapter
                        protected boolean showResult() {
                            return super.showResult() && BlogDetailFragment.this.isMeAccessibleToThisPost();
                        }
                    };
                    this.pollAdapter.setDarkTheme(BlogDetailFragment.this.isBackgroundColorDark(), ((NVFragment) BlogDetailFragment.this)._backgroundColor);
                    if (((FeedDetailFragment) BlogDetailFragment.this).notJoined) {
                        this.pollAdapter.previewBlockListener = new PollOptionListLayout.PollPreviewBlockListener() { // from class: com.narvii.blog.detail.BlogDetailFragment.Adapter.5
                            @Override // com.narvii.poll.PollOptionListLayout.PollPreviewBlockListener
                            public void onPreviewBlocked() {
                                BlogDetailFragment.this.checkCommunityJoined();
                            }
                        };
                    }
                }
                this.pollAdapter.setBlog((Blog) feedResponse.object());
            }
            BlogDetailFragment.this.updateteBottomLayout(blog2);
            BlogDetailFragment.this.resetHover();
            if (blog2 != null) {
                BlogDetailFragment blogDetailFragment = BlogDetailFragment.this;
                if (blogDetailFragment.stated) {
                    return;
                }
                blogDetailFragment.stated = true;
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(Blog blog) {
            BlogResponse blogResponse = (BlogResponse) getResponse();
            if (blogResponse == null) {
                blogResponse = new BlogResponse();
            }
            blogResponse.blog = blog;
            setResponse((FeedResponse<? extends Blog>) blogResponse);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            if (BlogDetailFragment.this.newPreview()) {
                return null;
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.path("/" + FeedExtensionKt.apiTypeNameForBlog(BlogDetailFragment.this.isAnnouncement) + "/" + BlogDetailFragment.this.id());
            return builder.build();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createUserListRequest(int i, int i2) {
            if (BlogDetailFragment.this.id() == null) {
                return null;
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            StringBuilder sb = new StringBuilder();
            sb.append("/");
            sb.append(FeedExtensionKt.apiTypeNameForBlog(BlogDetailFragment.this.isAnnouncement));
            sb.append("/");
            sb.append(BlogDetailFragment.this.id());
            sb.append(BlogDetailFragment.this.isGlobalInteractionScope() ? "/g-vote" : "/vote");
            builder.path(sb.toString()).param(TtmlNode.START, Integer.valueOf(i)).param("size", Integer.valueOf(i2)).param("cv", "1.2");
            return builder.build();
        }

        @Override // com.narvii.detail.FeedDetailAdapter
        public List<Item> taggedObjects() {
            BlogDetailFragment blogDetailFragment = BlogDetailFragment.this;
            if (blogDetailFragment.preview) {
                return JacksonUtils.readListAs(blogDetailFragment.getStringParam("taggedObjects"), Item.class);
            }
            return super.taggedObjects();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List<Object> list) {
            boolean z;
            Blog blog = (Blog) getObject();
            List<Item> listTaggedObjects = taggedObjects();
            boolean z2 = blog.refObject != null || blog.type == 2;
            if (!z2 && !TextUtils.isEmpty(blog.title())) {
                list.add(BlogDetailFragment.TITLE);
            }
            list.add(BlogDetailFragment.USER_VOTE);
            if (blog.type == 6) {
                list.add(BlogDetailFragment.QUIZ);
            }
            PollAdapter pollAdapter = this.pollAdapter;
            if (pollAdapter != null) {
                BlogDetailFragment blogDetailFragment = BlogDetailFragment.this;
                pollAdapter.setPreview(blogDetailFragment.preview || ((FeedDetailFragment) blogDetailFragment).notJoined);
                this.pollAdapter.buildCells(list);
            }
            String string = z2 ? getContext().getString(R.string.feed_blog_repost) : "";
            if (TextUtils.isEmpty(blog.content) && z2) {
                string = string + getContext().getString(R.string.feed_blog_repost_default);
            } else if (!TextUtils.isEmpty(blog.content)) {
                string = string + blog.content;
            }
            String str = string;
            int size = list.size();
            ArrayList arrayList = new ArrayList();
            List<Object> arrayList2 = new ArrayList<>();
            splitSegments(str, blog.mediaList, arrayList2, arrayList, blog.type == 8 || !BlogDetailFragment.this.isMeAccessibleToThisPost());
            list.addAll(arrayList2);
            if (blog.type == 5 && (list.get(list.size() - 1) instanceof String)) {
                list.add(BlogDetailFragment.LINK_CUSTOM_CONTENT_PADDING);
            }
            while (true) {
                if (size >= list.size()) {
                    z = false;
                    break;
                } else {
                    if (list.get(size) instanceof Media) {
                        z = true;
                        break;
                    }
                    size++;
                }
            }
            if (blog.type == 9) {
                list.add(BlogDetailFragment.STORY);
            }
            if (blog.type == 6 && blog.firstMedia() != null) {
                arrayList.remove(blog.firstMedia());
            }
            if (blog.getLinkSummary() != null && blog.type == 5) {
                list.add(BlogDetailFragment.PAGE_SNIPPET);
            }
            if (arrayList.size() > 0) {
                int i = blog.type;
                if (i != 7 && i != 8) {
                    list.add(z ? DetailAdapter.MORE_PHOTOS_HEADER : DetailAdapter.PHOTOS_HEADER);
                }
                list.addAll(arrayList);
            }
            if (z2) {
                Feed feed = blog.refObject;
                if (feed != null) {
                    if (feed.isDisabled()) {
                        list.add(BlogDetailFragment.REF_DISABLE);
                    } else {
                        list.add(blog.refObject);
                    }
                } else {
                    list.add(BlogDetailFragment.REF_NULL);
                }
            }
            int i2 = blog.type;
            if (i2 == 5 || i2 == 8) {
                list.add(BlogDetailFragment.READ_IT);
            }
            addDivider(list);
            if (BlogDetailFragment.this.isMeAccessibleToThisPost()) {
                if (listTaggedObjects != null && listTaggedObjects.size() > 0) {
                    list.add(FeedDetailAdapter.LINKED_HEADER);
                    list.add(FeedDetailAdapter.LINKED);
                }
                if (allowTipping()) {
                    list.add(DetailAdapter.TIPPING);
                }
                if (BlogDetailFragment.this.getBooleanParam("fromHeadline") && BlogDetailFragment.this.relatedCommunities != null && BlogDetailFragment.this.relatedCommunities.size() > 0) {
                    list.add(BlogDetailFragment.RELATED_AMINOS);
                }
                int totalVotesCount = blog.getTotalVotesCount();
                if (totalVotesCount > 0) {
                    BlogDetailFragment.LIKES_HEADER.setCount(totalVotesCount);
                    list.add(BlogDetailFragment.LIKES_HEADER);
                    list.add(DetailAdapter.USER_GRID);
                }
                list.add(DetailAdapter.COMMENT_HEADER);
                list.add(DetailAdapter.COMMENT_ADD);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.DetailAdapter
        public boolean allowTipping() {
            if (BlogDetailFragment.this.isAnnouncement) {
                return false;
            }
            Blog blog = (Blog) getObject();
            if (blog == null || blog.type != 8) {
                return super.allowTipping();
            }
            return false;
        }

        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(BlogDetailFragment.TITLE);
            list.add(BlogDetailFragment.USER_VOTE);
            list.add(BlogDetailFragment.ADDRESS);
            list.add(BlogDetailFragment.STORY);
            list.add(BlogDetailFragment.QUIZ);
            list.add(BlogDetailFragment.REF_NULL);
            list.add(BlogDetailFragment.REF_DISABLE);
            list.add(BlogDetailFragment.PAGE_SNIPPET);
            list.add(BlogDetailFragment.READ_IT);
            list.add(BlogDetailFragment.LINK_CUSTOM_CONTENT_PADDING);
            list.add(new DetailAdapter.CellType((Class<?>) Blog.class));
            list.add(new DetailAdapter.CellType((Class<?>) Item.class));
            list.add(BlogDetailFragment.RELATED_AMINOS);
            list.addAll(BlogDetailFragment.ADS);
            list.add(BlogDetailFragment.AD_ABOVECOMMENT);
            PollAdapter.getCellTypes(list);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected boolean showUserCommentSetting() {
            return BlogDetailFragment.this.isMine();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void openCommentSetting() {
            Intent intent = FragmentWrapperActivity.intent(PostCommentPrivilegeFragment.class);
            intent.putExtra("blogId", BlogDetailFragment.this.id());
            startActivity(intent);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            Adapter adapter;
            View cell;
            if (obj == BlogDetailFragment.PAGE_SNIPPET) {
                View viewCreateView = createView(R.layout.detail_page_snippet, viewGroup, view);
                Blog blog = (Blog) getObject();
                LinkSummary linkSummary = blog.getLinkSummary();
                if (linkSummary == null) {
                    return null;
                }
                boolean z = (TextUtils.isEmpty(linkSummary.getTitle()) || blog.title.contains(linkSummary.getTitle())) ? false : true;
                TextView textView = (TextView) viewCreateView.findViewById(R.id.snippet_title);
                textView.setVisibility(z ? 0 : 8);
                textView.setText(linkSummary.getTitle());
                ((TextView) viewCreateView.findViewById(R.id.snippet_content)).setText(TextUtils.isEmpty(linkSummary.getBody()) ? linkSummary.getLink() : linkSummary.getBody());
                NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.snippet_image);
                String firstMediaUrl = linkSummary.getFirstMediaUrl();
                nVImageView.setVisibility(TextUtils.isEmpty(firstMediaUrl) ? 8 : 0);
                nVImageView.setImageUrl(firstMediaUrl);
                nVImageView.setOnClickListener(this.subviewClickListener);
                ThumbImageView thumbImageView = (ThumbImageView) viewCreateView.findViewById(R.id.snippet_favicon);
                ColorFilter colorFilterTintColorFilter = TintButton.tintColorFilter(BlogDetailFragment.this.getResources().getColor(R.color.button_text_gray));
                if (TextUtils.isEmpty(linkSummary.getShowFavIcon())) {
                    thumbImageView.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.favicon_default_s));
                    thumbImageView.setColorFilter(colorFilterTintColorFilter);
                } else {
                    thumbImageView.setImageUrl(linkSummary.getShowFavIcon());
                    thumbImageView.setColorFilter((ColorFilter) null);
                }
                TextView textView2 = (TextView) viewCreateView.findViewById(R.id.snippet_source);
                textView2.setText(linkSummary.getShowSource());
                textView2.setVisibility(TextUtils.isEmpty(linkSummary.getShowSource()) ? 8 : 0);
                setTextColor(viewCreateView, R.id.snippet_title, -13421773, -1);
                setTextColor(viewCreateView, R.id.snippet_content, -13421773, -1);
                setTextColor(viewCreateView, R.id.snippet_source, -4210753, -1996488705);
                if (blog.isContentAccessible()) {
                    NVVideoListDelegate.markVideoCell(viewCreateView, R.id.snippet_image, linkSummary.getFirstMedia(), (Media) null, (NVObject) BlogDetailFragment.this.getFeed(), 0, true);
                }
                return viewCreateView;
            }
            if (obj == BlogDetailFragment.TITLE) {
                View viewCreateView2 = createView(R.layout.detail_title_item, viewGroup, view);
                TextView textView3 = (TextView) viewCreateView2.findViewById(R.id.title);
                textView3.setTextColor(this.darkTheme ? -1 : -13421773);
                textView3.setText(((Blog) getObject()).title);
                View viewFindViewById = viewCreateView2.findViewById(R.id.fans_only_content_indicator);
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(((Blog) getObject()).isFansOnly() ? 0 : 8);
                }
                return viewCreateView2;
            }
            if (obj == BlogDetailFragment.ADDRESS) {
                View viewCreateView3 = createView(R.layout.detail_address_item, viewGroup, view);
                Blog blog2 = (Blog) getObject();
                ((TintButton) viewCreateView3.findViewById(R.id.icon)).setTintColor(this.darkTheme ? -1711276033 : -8487298);
                ((AddressView) viewCreateView3.findViewById(R.id.address)).setLatLngE6(blog2.latitude, blog2.longitude, blog2.address, true);
                ((AddressView) viewCreateView3.findViewById(R.id.address)).setDarkTheme(this.darkTheme);
                ((AddressView) viewCreateView3.findViewById(R.id.address)).setVisibility(8);
                return viewCreateView3;
            }
            if (obj == BlogDetailFragment.USER_VOTE) {
                Blog blog3 = (Blog) getObject();
                boolean z2 = blog3.type == 8;
                int i = R.layout.detail_user_vote_item;
                if (z2) {
                    i = R.layout.detail_external_post_vote_item;
                } else if (blog3.type == 7) {
                    i = R.layout.detail_user_vote_item_image_post;
                }
                View viewCreateView4 = createView(i, viewGroup, view);
                NVImageView nVImageView2 = (NVImageView) viewCreateView4.findViewById(R.id.avatar);
                UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewCreateView4.findViewById(R.id.user_avatar_layout);
                Drawable externalOriginDrawable = blog3.getExternalOriginDrawable(getContext());
                if (z2 && externalOriginDrawable != null && nVImageView2 != null) {
                    nVImageView2.setImageDrawable(externalOriginDrawable);
                } else if (userAvatarLayout != null) {
                    userAvatarLayout.setUser(blog3.author);
                    userAvatarLayout.setDarkTheme(this.darkTheme, ((NVFragment) BlogDetailFragment.this)._backgroundColor, false);
                } else if (nVImageView2 != null) {
                    User user = blog3.author;
                    nVImageView2.setImageUrl(user != null ? user.icon() : null);
                }
                View viewFindViewById2 = viewCreateView4.findViewById(R.id.nickname);
                if (viewFindViewById2 instanceof NicknameView) {
                    if (z2) {
                        ((NicknameView) viewFindViewById2).setText(blog3.getDisplayNickname(getContext()));
                    } else {
                        ((NicknameView) viewFindViewById2).setUser(blog3.author);
                    }
                    ((NicknameView) viewFindViewById2).setDarkTheme(this.darkTheme);
                } else if (viewFindViewById2 instanceof TextView) {
                    TextView textView4 = (TextView) viewFindViewById2;
                    textView4.setText(blog3.getDisplayNickname(getContext()));
                    textView4.setTextColor(this.darkTheme ? -1 : -5592406);
                }
                TextView textView5 = (TextView) viewCreateView4.findViewById(R.id.datetime);
                if (textView5 != null) {
                    String str = DateTimeFormatter.getInstance(getContext()).format(blog3.createdTime);
                    Integer num = blog3.viewCount;
                    if (num != null && num.intValue() > 0) {
                        if (blog3.viewCount.intValue() == 1) {
                            str = str + " | " + this.context.getContext().getString(R.string.feed_view_counts_1);
                        } else {
                            str = str + " | " + this.context.getContext().getString(R.string.feed_view_counts_n, com.narvii.util.text.TextUtils.getLiteCount2(blog3.viewCount.intValue()));
                        }
                    }
                    textView5.setText(str);
                    textView5.setTextColor(this.darkTheme ? -1711276033 : -5592406);
                }
                View viewFindViewById3 = viewCreateView4.findViewById(R.id.user_layout);
                if (viewFindViewById3 != null) {
                    viewFindViewById3.setOnClickListener(this.subviewClickListener);
                }
                View viewFindViewById4 = viewCreateView4.findViewById(R.id.fans_only_content_indicator);
                if (viewFindViewById4 != null) {
                    viewFindViewById4.setVisibility((blog3.isFansOnly() && TextUtils.isEmpty(blog3.title)) ? 0 : 8);
                }
                boolean z3 = blog3.refObject != null || blog3.type == 2;
                View viewFindViewById5 = viewCreateView4.findViewById(R.id.divider);
                viewFindViewById5.setVisibility((z3 || (TextUtils.isEmpty(blog3.title()) && (blog3.latitude == 0 || blog3.longitude == 0))) ? 8 : 0);
                viewFindViewById5.setBackgroundColor(this.darkTheme ? 352321535 : -1513240);
                View viewFindViewById6 = viewCreateView4.findViewById(R.id.vote_btn);
                viewFindViewById6.setOnClickListener(this.subviewClickListener);
                viewFindViewById6.setOnLongClickListener(BlogDetailFragment.this.longClickVote);
                int i2 = R.drawable.detail_vote_btn;
                if (BlogDetailFragment.this.hasBackground()) {
                    int backgroundColor = blog3.getBackgroundColor();
                    i2 = (backgroundColor == 0 || PaletteUtils.isDarkColor(backgroundColor)) ? R.drawable.detail_vote_btn_dark : R.drawable.detail_vote_btn_light;
                }
                viewFindViewById6.setBackgroundResource(i2);
                VoteIcon voteIcon = (VoteIcon) viewFindViewById6.findViewById(R.id.vote_icon);
                voteIcon.setVotedValue(blog3.getVotedValue(BlogDetailFragment.this.isGlobalInteractionScope()));
                voteIcon.setNoneColor(!this.darkTheme ? -11184811 : -1);
                voteIcon.setVisibility(this.voting ? 8 : 0);
                setTextColor(viewCreateView4, R.id.vote_count, -11184811, -1118482);
                SpinningView spinningView = (SpinningView) viewFindViewById6.findViewById(R.id.vote_progress);
                if (spinningView != null) {
                    spinningView.setSpinColor(this.darkTheme ? -1 : -11184811);
                    spinningView.setVisibility(this.voting ? 0 : 8);
                }
                ((TextView) viewFindViewById6.findViewById(R.id.vote_count)).setText(blog3.getTotalVotesCount() == 0 ? BlogDetailFragment.this.getString(R.string.like) : String.valueOf(blog3.getTotalVotesCount()));
                return viewCreateView4;
            }
            if (obj == DetailAdapter.COMMENT_HEADER) {
                return super.getCell(obj, view, viewGroup);
            }
            if (obj == BlogDetailFragment.REF_NULL) {
                View viewCreateView5 = createView(R.layout.detail_repost_null_item, viewGroup, view);
                ((TextView) viewCreateView5.findViewById(R.id.null_text)).setTextColor(this.darkTheme ? -1 : -11184811);
                return viewCreateView5;
            }
            if (obj == BlogDetailFragment.READ_IT) {
                View viewCreateView6 = createView(R.layout.blog_detail_read_it, viewGroup, view);
                TextView textView6 = (TextView) viewCreateView6.findViewById(R.id.read_it);
                textView6.setTextColor(this.darkTheme ? -1 : -9145228);
                textView6.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), this.darkTheme ? R.drawable.selector_detail_read_it_dark : R.drawable.selector_detail_read_it));
                textView6.setOnClickListener(this.subviewClickListener);
                return viewCreateView6;
            }
            if (obj == BlogDetailFragment.STORY) {
                Media extraCoverMedia = ((Blog) getObject()).getExtraCoverMedia();
                if (extraCoverMedia != null && !extraCoverMedia.isVideo()) {
                    extraCoverMedia.type = 102;
                }
                if (extraCoverMedia == null && ((Blog) getObject()).getFeedPreviewMediaList() != null && ((Blog) getObject()).getFeedPreviewMediaList().size() > 0) {
                    extraCoverMedia = ((Blog) getObject()).getFeedPreviewMediaList().get(0);
                }
                return createMediaView(extraCoverMedia, view, viewGroup);
            }
            int i3 = 4;
            if (obj == BlogDetailFragment.QUIZ) {
                Blog blog4 = (Blog) getObject();
                View viewCreateView7 = createView(R.layout.detail_quiz_item, viewGroup, view);
                ((TextView) viewCreateView7.findViewById(R.id.quiz_played_times)).setText(new FeedHelper(this).getQuizHintInfo(blog4));
                setTextColor(viewCreateView7, R.id.quiz_played_times, -7829368);
                QuizCoverView quizCoverView = (QuizCoverView) viewCreateView7.findViewById(R.id.quiz_cover);
                quizCoverView.setDarkTheme(this.darkTheme);
                quizCoverView.setQuiz(blog4);
                View viewFindViewById7 = viewCreateView7.findViewById(R.id.quiz_played_tag);
                if (viewFindViewById7 != null) {
                    CurrentQuizzesResult currentQuizzesResult = blog4.quizResultOfCurrentUser;
                    if (currentQuizzesResult != null && currentQuizzesResult.totalTimes != 0) {
                        i3 = 0;
                    }
                    viewFindViewById7.setVisibility(i3);
                }
                quizCoverView.setOnClickListener(blog4.firstMedia() != null ? this.subviewClickListener : null);
                viewCreateView7.findViewById(R.id.start_quiz).setOnClickListener(this.subviewClickListener);
                viewCreateView7.findViewById(R.id.start_quiz).setBackgroundResource(this.darkTheme ? R.drawable.blog_detail_start_quiz_dark : R.drawable.blog_detail_start_quiz);
                viewCreateView7.findViewById(R.id.quiz_rankings_layout).setOnClickListener(this.subviewClickListener);
                ((TextView) viewCreateView7.findViewById(R.id.quiz_rankings)).setTextColor(this.darkTheme ? -1 : -6579301);
                viewCreateView7.findViewById(R.id.quiz_rankings_icon).setBackgroundDrawable(ContextCompat.getDrawable(getContext(), this.darkTheme ? R.drawable.ic_quiz_ranking_dark : R.drawable.ic_quiz_ranking));
                viewCreateView7.findViewById(R.id.quiz_rankings_line).setBackgroundColor(this.darkTheme ? -1 : -6579301);
                if (blog4.isContentAccessible()) {
                    NVVideoListDelegate.markVideoCell(viewCreateView7, R.id.quiz_cover_image, blog4.firstMedia(), (Media) null, (NVObject) BlogDetailFragment.this.getFeed(), 1, true);
                }
                return viewCreateView7;
            }
            if (obj == BlogDetailFragment.LINK_CUSTOM_CONTENT_PADDING) {
                View viewCreateView8 = createView(R.layout.detail_margin_item_link, viewGroup, view);
                configLinkPostCustomContentBackground(viewCreateView8.findViewById(R.id.padding));
                return viewCreateView8;
            }
            if (obj == BlogDetailFragment.RELATED_AMINOS) {
                View viewCreateView9 = createView(R.layout.item_feed_related_amino, viewGroup, view);
                RecyclerView recyclerView = (RecyclerView) viewCreateView9.findViewById(R.id.gallery);
                if (recyclerView.getLayoutManager() == null) {
                    recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
                }
                FeedRelatedAminosAdapter feedRelatedAminosAdapter = new FeedRelatedAminosAdapter(this, BlogDetailFragment.this.relatedCommunities) { // from class: com.narvii.blog.detail.BlogDetailFragment.Adapter.6
                    @Override // com.narvii.community.CommunityRecycleAdapter
                    protected void onItemClick(Community community) {
                        BlogDetailFragment.this.blockPass.set(true);
                        super.onItemClick(community);
                    }
                };
                recyclerView.setAdapter(feedRelatedAminosAdapter);
                feedRelatedAminosAdapter.setDarkTheme(this.darkTheme);
                ((TextView) viewCreateView9.findViewById(R.id.section_layout)).setTextColor(this.darkTheme ? -1 : -11908534);
                viewCreateView9.findViewById(R.id.section_layout).setBackgroundColor(this.darkTheme ? getHeaderBackgroundColor() : ContextCompat.getColor(getContext(), R.color.header_color_light));
                return viewCreateView9;
            }
            if (obj == BlogDetailFragment.LIKES_HEADER) {
                View cell2 = super.getCell(obj, view, viewGroup);
                cell2.setOnClickListener(this.subviewClickListener);
                return cell2;
            }
            PollAdapter pollAdapter = this.pollAdapter;
            if (pollAdapter != null && (cell = pollAdapter.getCell(obj, view, viewGroup)) != null) {
                return cell;
            }
            if (obj == BlogDetailFragment.REF_DISABLE && (adapter = BlogDetailFragment.this.blogAdapter) != null && adapter.getObject() != 0 && ((Blog) BlogDetailFragment.this.blogAdapter.getObject()).refObject != null) {
                View viewCreateView10 = createView(R.layout.detail_repost_disable_item, viewGroup, view);
                FeedListItem feedListItem = (FeedListItem) viewCreateView10.findViewById(R.id.ref);
                feedListItem.setDarkTheme(this.darkTheme, ((NVFragment) BlogDetailFragment.this)._backgroundColor);
                feedListItem.setDisabledFeed(((Blog) BlogDetailFragment.this.blogAdapter.getObject()).refObject);
                feedListItem.setOnClickListener(this.subviewClickListener);
                return viewCreateView10;
            }
            if (obj instanceof Blog) {
                int i4 = ((Blog) obj).type;
                i = i4 == 3 ? R.layout.detail_repost_topic_item : i4 == 6 ? R.layout.detail_repost_quiz_item : i4 == 4 ? R.layout.detail_repost_poll_item : i4 == 8 ? R.layout.detail_repost_external_post_item : R.layout.detail_repost_blog_item;
            } else if (obj instanceof Item) {
                i = R.layout.detail_repost_item_item;
            }
            if (i != 0) {
                View viewCreateView11 = createView(i, viewGroup, view);
                FeedListItem feedListItem2 = (FeedListItem) viewCreateView11.findViewById(R.id.ref);
                feedListItem2.setDarkTheme(this.darkTheme, ((NVFragment) BlogDetailFragment.this)._backgroundColor);
                feedListItem2.setFeed((Feed) obj);
                feedListItem2.setOnClickListener(this.subviewClickListener);
                View viewFindViewById8 = feedListItem2.findViewById(R.id.start_quiz);
                if (viewFindViewById8 != null) {
                    viewFindViewById8.setOnClickListener(this.subviewClickListener);
                }
                return viewCreateView11;
            }
            return super.getCell(obj, view, viewGroup);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.DetailAdapter
        public View createTextView(String str, View view, ViewGroup viewGroup) {
            View viewCreateTextView = createTextView(str, ((Blog) getObject()).type == 5 ? R.layout.detail_text_item_link_post : R.layout.detail_text_item, view, viewGroup, true, DefaultTagClickListener.instance);
            configLinkPostCustomContentBackground(viewCreateTextView.findViewById(R.id.text));
            return viewCreateTextView;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter
        public View createMediaView(Media media, View view, ViewGroup viewGroup) {
            View view2;
            ViewGroup viewGroup2;
            int i;
            Blog blog = (Blog) getObject();
            boolean z = blog.type == 5;
            boolean z2 = blog.type == 9;
            if (z) {
                view2 = view;
                viewGroup2 = viewGroup;
                i = R.layout.detail_media_item_link;
            } else if (z2) {
                view2 = view;
                viewGroup2 = viewGroup;
                i = R.layout.detail_story_cover_item;
            } else {
                view2 = view;
                viewGroup2 = viewGroup;
                i = R.layout.detail_media_item;
            }
            View viewCreateMediaView = createMediaView(media, i, view2, viewGroup2);
            if (blog.isContentAccessible()) {
                if (blog.type == 9) {
                    NVVideoListDelegate.markVideoCell(viewCreateMediaView, R.id.image, blog.getPreviewVideoList(false), media, (NVObject) BlogDetailFragment.this.getFeed(), 0, true);
                } else {
                    NVVideoListDelegate.markVideoCell(viewCreateMediaView, R.id.image, media, media, (NVObject) BlogDetailFragment.this.getFeed(), 0, true);
                }
            }
            configLinkPostCustomContentBackground(viewCreateMediaView.findViewById(R.id.media_container));
            return viewCreateMediaView;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void configLinkPostCustomContentBackground(View view) {
            ColorDrawable colorDrawable;
            if (view == null) {
                return;
            }
            if (((Blog) getObject()).type == 5) {
                colorDrawable = new ColorDrawable(!this.darkTheme ? -592138 : 1056964608);
            } else {
                colorDrawable = null;
            }
            view.setBackgroundDrawable(colorDrawable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            Blog feed;
            Media mediaFirstMedia;
            Feed feed2;
            Intent intent;
            ExternalSource externalSource;
            PollAdapter pollAdapter = this.pollAdapter;
            if (pollAdapter != null && pollAdapter.onItemClick(listAdapter, i, obj, view, view2)) {
                return true;
            }
            if (obj == BlogDetailFragment.USER_VOTE && view2 != null && view2.getId() == R.id.user_layout) {
                Feed feed3 = (Feed) getObject();
                if (feed3 instanceof Blog) {
                    Blog blog = (Blog) feed3;
                    if (blog.type == 8 && (externalSource = blog.externalSource) != null) {
                        if (externalSource.isNotAvaileable()) {
                            new FeedHelper(this).showExternalSourceNotAvailable();
                            return true;
                        }
                        Intent intent2 = FragmentWrapperActivity.intent(ExternalPostListFragment.class);
                        intent2.putExtra(ExternalPostListFragment.KEY_EXTERNAL_SOURCE, JacksonUtils.writeAsString(externalSource));
                        intent2.putExtra(ExternalPostListFragment.KEY_SOURCE_ORIGIN_ID, externalSource.sourceId);
                        startActivity(intent2);
                        return true;
                    }
                }
                LogEvent.clickBuilder(BlogDetailFragment.this, ActSemantic.checkDetail).area("UserIcon").object(feed3.author).send();
                if (!BlogDetailFragment.this.checkCommunityJoined() || (intent = UserProfileFragment.intent(this, feed3.author)) == null) {
                    return true;
                }
                intent.putExtra("Source", "Page Detailed View");
                startActivity(intent);
                return true;
            }
            if (obj == BlogDetailFragment.USER_VOTE && view2 != null && view2.getId() == R.id.vote_btn) {
                if (notJoined()) {
                    BlogDetailFragment.this.vote(null, null, false);
                } else {
                    BlogDetailFragment.this.voteIconView = view2.findViewById(R.id.vote_icon);
                    if (((FeedDetailFragment) BlogDetailFragment.this).fromHeadline) {
                        BlogDetailFragment.this.vote(null, null, false);
                    } else {
                        ensureLogin(new Intent(StoryNotificationStub.ACTION_VOTE));
                    }
                }
                return true;
            }
            if (view2 != null && obj == BlogDetailFragment.REF_DISABLE) {
                Blog blog2 = (Blog) getObject();
                if (blog2 != null && (feed2 = blog2.refObject) != null) {
                    if (feed2.isiModeDisableForUser(BlogDetailFragment.this.accountService != null ? BlogDetailFragment.this.accountService.getUserProfile() : null)) {
                        final AlertDialog alertDialog = new AlertDialog(getContext());
                        View viewInflate = this.inflater.inflate(R.layout.feed_disable_by_imod_layout, (ViewGroup) null);
                        if (viewInflate.findViewById(R.id.action) != null) {
                            viewInflate.findViewById(R.id.action).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.blog.detail.BlogDetailFragment.Adapter.7
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view3) {
                                    alertDialog.dismiss();
                                }
                            });
                        }
                        alertDialog.setContentView(viewInflate);
                        alertDialog.show();
                        return true;
                    }
                    Intent intent3 = FeedDetailFragment.intent(blog2.refObject);
                    intent3.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, BlogDetailFragment.this.isAnnouncement);
                    intent3.putExtra("Source", "Repost");
                    startActivity(intent3);
                }
                return true;
            }
            if (view2 != null && (obj instanceof Feed)) {
                Intent intent4 = FeedDetailFragment.intent((Feed) obj);
                intent4.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, BlogDetailFragment.this.isAnnouncement);
                intent4.putExtra("Source", "Repost");
                startActivity(intent4);
                return true;
            }
            if (obj == BlogDetailFragment.PAGE_SNIPPET) {
                if (view2 != null && view2.getId() == R.id.snippet_image) {
                    Blog blog3 = (Blog) getObject();
                    Media linkSummaryMedia = blog3 != null ? blog3.getLinkSummaryMedia() : null;
                    if (linkSummaryMedia != null) {
                        if (linkSummaryMedia.isVideo()) {
                            startActivity(NVFullScreenVideoActivity.intent(linkSummaryMedia));
                        } else {
                            Intent intent5 = new Intent(getContext(), (Class<?>) MediaGalleryOptionActivity.class);
                            intent5.putExtra("parent", JacksonUtils.writeAsString(blog3));
                            intent5.putExtra("parentClass", Feed.class);
                            ArrayList arrayList = new ArrayList();
                            List<Media> list = blog3.mediaList;
                            if (list != null) {
                                arrayList.addAll(list);
                            }
                            arrayList.add(0, linkSummaryMedia);
                            intent5.putExtra("list", JacksonUtils.writeAsString(arrayList));
                            intent5.putExtra("position", 0);
                            startActivity(intent5);
                        }
                    }
                }
                return true;
            }
            if (obj == BlogDetailFragment.QUIZ) {
                if (view2 != null && view2.getId() == R.id.quiz_cover && (mediaFirstMedia = (feed = BlogDetailFragment.this.getFeed()).firstMedia()) != null) {
                    if (mediaFirstMedia.isVideo()) {
                        startActivity(NVFullScreenVideoActivity.intent(mediaFirstMedia));
                    } else {
                        Intent intent6 = new Intent(getContext(), (Class<?>) MediaGalleryOptionActivity.class);
                        intent6.putExtra("parent", JacksonUtils.writeAsString(feed));
                        intent6.putExtra("parentClass", Blog.class);
                        intent6.putExtra("list", JacksonUtils.writeAsString(feed.mediaList));
                        intent6.putExtra("position", feed.firstMediaIndex());
                        startActivity(intent6);
                    }
                }
                if (view2 != null && view2.getId() == R.id.quiz_rankings_layout) {
                    Blog feed4 = BlogDetailFragment.this.getFeed();
                    if (new InfluencerHelper(this.context).checkNeedShowFansOnlyHintDialog(feed4, "Page Detailed View")) {
                        return true;
                    }
                    Intent intent7 = FragmentWrapperActivity.intent(QuizzesResultRankingListFragment.class);
                    intent7.putExtra(QuizzesResultRankingListFragment.KEY_CURRENT_QUIZ, JacksonUtils.writeAsString(feed4));
                    if (feed4.quizResultOfCurrentUser == null) {
                        intent7.putExtra(QuizzesResultRankingListFragment.KEY_GUEST_MODE, true);
                    }
                    intent7.putExtra(QuizzesResultRankingListFragment.KEY_SHOW_NEXT_QUIZ_LAYOUT, false);
                    new FeedHelper(this.context).addQuizListExtra(BlogDetailFragment.this.getActivity().getIntent(), intent7);
                    startActivity(intent7);
                }
                if (view2 != null && view2.getId() == R.id.start_quiz) {
                    if (new InfluencerHelper(this.context).checkNeedShowFansOnlyHintDialog(BlogDetailFragment.this.getFeed(), "Page Detailed View")) {
                        return true;
                    }
                    FeedHelper feedHelper = new FeedHelper(this.context);
                    feedHelper.loggingSource = LoggingSource.PostDetailView;
                    feedHelper.startQuiz((Blog) getObject(), BlogDetailFragment.this.getActivity().getIntent());
                }
                return true;
            }
            if (obj == BlogDetailFragment.READ_IT) {
                Blog blog4 = (Blog) getObject();
                Intent intent8 = new Intent("android.intent.action.VIEW", Uri.parse(blog4.getLinkSummary().getLink()));
                int i2 = blog4.type;
                if (i2 == 8) {
                    intent8.putExtra("Source", "External Content");
                } else if (i2 == 5) {
                    intent8.putExtra("Source", "Link Post");
                }
                intent8.putExtra("loggingObjectType", blog4.objectType());
                intent8.putExtra("loggingObjectId", blog4.id());
                intent8.putExtra("loggingBlogType", blog4.type);
                startActivity(intent8);
            }
            if (obj == BlogDetailFragment.STORY) {
                sendMainLogEvent(ActSemantic.enterStoryDetail);
                Intent storyDetailPageIntent = BlogDetailFragment.this.getStoryDetailPageIntent((Blog) getObject());
                storyDetailPageIntent.putExtra("preview", preview());
                startActivity(storyDetailPageIntent);
            }
            if (obj == BlogDetailFragment.LIKES_HEADER) {
                onUserGridClick(view2, null);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected boolean onUserGridClick(View view, String str) {
            if (!super.onUserGridClick(view, str)) {
                getClickEventBuilder(this.userIPC, null, ActSemantic.checkAllLikes).send();
                Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
                intent.putExtra("nvObject", JacksonUtils.writeAsString(BlogDetailFragment.this.getFeed()));
                intent.putExtra("__communityId", isGlobalInteractionScope() ? 0 : getPublishNdcId());
                intent.putExtra("__model", !isGlobalInteractionScope());
                startActivity(intent);
            }
            return true;
        }

        @Override // com.narvii.detail.DetailAdapter
        public void commentNew(String str) {
            super.commentNew(str);
            CommentPostActivity.setStatusListener(BlogDetailFragment.this.commentAdapter);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected int commentSort() {
            return BlogDetailFragment.this.commentAdapter.sort();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void setCommentSort(int i) {
            BlogDetailFragment blogDetailFragment = BlogDetailFragment.this;
            blogDetailFragment.commentAdapter.flHeight = blogDetailFragment.commentExtraHeight();
            BlogDetailFragment.this.commentAdapter.setSort(i);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void commentRefresh() {
            BlogDetailFragment blogDetailFragment = BlogDetailFragment.this;
            blogDetailFragment.commentAdapter.flHeight = blogDetailFragment.commentExtraHeight();
            BlogDetailFragment.this.commentAdapter.resetList();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected boolean showEmojiOnly() {
            AffiliationsService affiliationsService = (AffiliationsService) getService("affiliations");
            boolean z = (BlogDetailFragment.this.getFeed().ndcId > 0 && affiliationsService.contains(BlogDetailFragment.this.getFeed().ndcId)) || (BlogDetailFragment.this.getIntParam("__communityId") > 0 && affiliationsService.contains(BlogDetailFragment.this.getIntParam("__communityId")));
            BlogDetailFragment blogDetailFragment = BlogDetailFragment.this;
            if (blogDetailFragment.isAnnouncement) {
                return true;
            }
            return !z && ((FeedDetailFragment) blogDetailFragment).fromHeadline;
        }

        @Override // com.narvii.detail.FeedDetailAdapter
        protected boolean shouldBlockShareMedia() {
            if (!BlogDetailFragment.this.isMeAccessibleToThisPost()) {
                FansOnlyHintDialog.showFansOnlyHintDialog(this, BlogDetailFragment.this.getFeed(), "Page Detailed View");
                return true;
            }
            return super.shouldBlockShareMedia();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Intent getStoryDetailPageIntent(Blog blog) {
        return new StoryListFragment.IntentBuilder(blog).autoLoadNextPage(false).source(StoryApi.COMMUNITY_PLAYER).showCommentBar(showCommentBarInStoryDetail()).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTypeTitle(Blog blog) {
        if (this.isAnnouncement) {
            setTitle(R.string.announcement);
            return;
        }
        switch (blog.type) {
            case 3:
                setTitle(R.string.detail_question);
                break;
            case 4:
                setTitle(R.string.detail_poll);
                break;
            case 5:
                setTitle(R.string.post_link_title);
                break;
            case 6:
                setTitle(R.string.detail_quiz);
                break;
            case 7:
                setTitle(R.string.post_type_image_post);
                break;
            case 8:
                setTitle(R.string.detail_external_post);
                break;
            case 9:
                setTitle(R.string.post_type_story);
                break;
            default:
                setTitle(R.string.detail_blog);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void updateBackground() {
        updateFakeActionBarThemeUI();
        if (getListView() instanceof NVListView) {
            ((NVListView) getListView()).setListContentBackground((hasBackground() || !shouldShowPageBackground()) ? null : new ColorDrawable(-1));
        }
        TopAdapter topAdapter = this.topAdapter;
        if (topAdapter != null) {
            topAdapter.notifyDataSetChanged();
        }
        Blog blog = (Blog) this.blogAdapter.getObject();
        if (blog == null) {
            return;
        }
        FullscreenBackgroundView fullscreenBackgroundView = this.backgroundView;
        if (fullscreenBackgroundView != null) {
            fullscreenBackgroundView.setBackgroundSource(blog);
        }
        setDarkTheme(isBackgroundColorDark());
        updateSBB(blog.getBackgroundMedia() == null ? blog.getBackgroundColor() : 0);
        Adapter adapter = this.blogAdapter;
        if (adapter != null) {
            adapter.setDarkTheme(isBackgroundColorDark(), this._backgroundColor);
        }
        if (this.blogAdapter.pollAdapter != null) {
            this.blogAdapter.pollAdapter.setDarkTheme(isBackgroundColorDark(), this._backgroundColor);
        }
        CommentAdapter commentAdapter = this.commentAdapter;
        if (commentAdapter != null) {
            commentAdapter.setDarkTheme(isBackgroundColorDark(), this._backgroundColor);
        }
        if (!hasBackground() || this.disabled || isEmbedFragment()) {
            this.actionBarOverlay.setVisibility(8);
        } else {
            this.actionBarOverlay.setVisibility(0);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean hoverBelowOverlayPlaceHolder() {
        return (isFloatingSwipeable() || !hasBackground() || this.disabled) ? false : true;
    }

    @Override // com.narvii.list.NVListFragment
    protected int getHoveFrameMarginTop() {
        return getListViewMarginTop();
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z, Intent intent) {
        if (z && (StoryNotificationStub.ACTION_VOTE.equals(intent.getAction()) || "voteFromBottom".equals(intent.getAction()))) {
            vote(intent.hasExtra("voteValue") ? Integer.valueOf(intent.getIntExtra("voteValue", 4)) : null, null, "voteFromBottom".equals(intent.getAction()));
        } else {
            super.onLoginResult(z, intent);
        }
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void vote(Integer num, final ApiService apiService, final boolean z) {
        FeedContinuousViewer.ContinuousLoaderListener continuousLoaderListener;
        final Blog feed = getFeed();
        final int targetVotedValue = VoteHelper.getTargetVotedValue(num, feed, isGlobalInteractionScope());
        if (num == null && targetVotedValue == 0) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.unlike, true);
            actionSheetDialog.addItem(R.string.comment_all_likes, false);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.blog.detail.BlogDetailFragment.6
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == 0) {
                        BlogDetailFragment.this.vote(0, apiService, z);
                    } else if (i == 1) {
                        Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
                        intent.putExtra("nvObject", JacksonUtils.writeAsString(feed));
                        BlogDetailFragment.this.startActivity(intent);
                    }
                }
            });
            actionSheetDialog.show();
            return;
        }
        LogEvent.clickBuilder(this, targetVotedValue == 0 ? ActSemantic.dislike : ActSemantic.like).area(z ? "BottomArea" : "EngagementArea").object(getFeed()).send();
        if (z && (continuousLoaderListener = this.continuousLoaderListener) != null) {
            continuousLoaderListener.onStart(R.id.bottom_vote, Integer.valueOf(feed.getVotedValue(isGlobalInteractionScope()) == 0 ? 1 : 2));
        }
        LoggingSource loggingSource = z ? LoggingSource.SBB : LoggingSource.PostDetailView;
        LiveLayerUtils.reportVoting(getParentContext(), feed, targetVotedValue);
        VoteHelper voteHelper = new VoteHelper(this);
        voteHelper.loggingSource = loggingSource;
        voteHelper.loggingOriginName = getStringParam(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN);
        voteHelper.vote(feed, Integer.valueOf(targetVotedValue), apiService, new VoteHelper.OnVoteListenerAdapter() { // from class: com.narvii.blog.detail.BlogDetailFragment.7
            @Override // com.narvii.story.detail.VoteHelper.OnVoteListenerAdapter, com.narvii.story.detail.VoteHelper.OnVoteListener
            public void onVoteEnd(boolean z2) {
                BlogDetailFragment.this.blogAdapter.voting = false;
                BlogDetailFragment.this.blogAdapter.notifyDataSetChanged();
                if (z2) {
                    if (z && ((FeedDetailFragment) BlogDetailFragment.this).continuousLoaderListener != null) {
                        ((FeedDetailFragment) BlogDetailFragment.this).continuousLoaderListener.onFinish(R.id.bottom_vote, Integer.valueOf(feed.getVotedValue(BlogDetailFragment.this.isGlobalInteractionScope()) == 0 ? 1 : 2));
                    }
                    if (targetVotedValue != 0) {
                        BlogDetailFragment blogDetailFragment = BlogDetailFragment.this;
                        if (blogDetailFragment.voteIconView != null) {
                            new VoteAnimationHelper(blogDetailFragment.getContext()).startAnimation(BlogDetailFragment.this.voteIconView, targetVotedValue, null);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (z) {
                    if (((FeedDetailFragment) BlogDetailFragment.this).continuousLoaderListener != null) {
                        ((FeedDetailFragment) BlogDetailFragment.this).continuousLoaderListener.onFail(R.id.bottom_vote, 0);
                    }
                } else if (((FeedDetailFragment) BlogDetailFragment.this).continuousLoader != null) {
                    ((FeedDetailFragment) BlogDetailFragment.this).continuousLoader.updateVoteIcon(BlogDetailFragment.this.getFeed().getVotedValue(BlogDetailFragment.this.isGlobalInteractionScope()), false, BlogDetailFragment.this.getFeed().getTotalVotesCount());
                }
            }
        });
        this.blogAdapter.voting = true;
        this.blogAdapter.notifyDataSetChanged();
    }

    private class CommentAdapter extends CommentListAdapter {
        int flHeight;

        @Override // com.narvii.list.NVPagedAdapter
        public boolean autoLoadNextPage() {
            return true;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected int bottomPadding() {
            return 0;
        }

        public CommentAdapter() {
            super(BlogDetailFragment.this);
            this.source = "Page Detailed View";
            this.loggingSource = LoggingSource.PostDetailView;
            String stringParam = BlogDetailFragment.this.getStringParam(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN);
            if (stringParam != null) {
                this.loggingOrigin = LoggingOrigin.valueOf(stringParam);
            }
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected NVObject getParent() {
            return BlogDetailFragment.this.getFeed();
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected int firstLoadingHeight() {
            return this.flHeight;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (BlogDetailFragment.this.isMeAccessibleToThisPost()) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected void onViewStickerClicked(Intent intent) {
            BlogDetailFragment.this.startActivityForResult(intent, 111);
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected boolean isAnnouncement() {
            return BlogDetailFragment.this.isAnnouncement;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return BlogDetailFragment.this.getFeed() == null || BlogDetailFragment.this.getFeed().getCommentsCount(isGlobalInteractionScope() ^ true) <= 0;
        }
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void unVote() {
        vote(null, null, true);
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void showModerationDialog() {
        this.advancedOptionDialog = new AdvancedOptionDialog.Builder(this).nvObject(getFeed()).attachBlogCateLog(this.categories).build();
        this.advancedOptionDialog.show();
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void bookmark(String str) {
        super.bookmark(str);
        new FeedHelper(this).source(str).bookmark(getFeed(), new Callback<ApiResponse>() { // from class: com.narvii.blog.detail.BlogDetailFragment.8
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                NVToast.makeText(BlogDetailFragment.this.getContext(), R.string.bookmark_successful, 0).show();
                Adapter adapter = BlogDetailFragment.this.blogAdapter;
                if (adapter != null) {
                    adapter.isBookmarked = true;
                    adapter.notifyDataSetChanged();
                }
            }
        });
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void bottomComment() {
        if (this.blogAdapter != null) {
            this.blockPass.set(true);
            this.blogAdapter.commentNew();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.NVInteractionScope
    public boolean isGlobalInteractionScope() {
        return this.isAnnouncement || super.isGlobalInteractionScope();
    }

    private void initPromoteStoryView() {
        if (this.promoteStoryView != null || getActivity() == null || getActivity().getWindow() == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) ((ViewGroup) getActivity().getWindow().getDecorView()).findViewById(android.R.id.content);
        this.promoteStoryView = (PromoteStoryView) LayoutInflater.from(getContext()).inflate(R.layout.view_attached_story, viewGroup, false).findViewById(R.id.promote_story_view);
        this.promoteStoryView.setOnPromoteListener(this);
        viewGroup.addView(this.promoteStoryView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPromoteStoryView(Blog blog) {
        if (blog != null || isStoryEnable()) {
            initPromoteStoryView();
            PromoteStoryView promoteStoryView = this.promoteStoryView;
            if (promoteStoryView != null) {
                promoteStoryView.show(blog);
            }
        }
    }

    private boolean isStoryEnable() {
        User userProfile = this.accountService.hasAccount() ? this.accountService.getUserProfile() : null;
        return this.entryManager.isEntryEnabled(userProfile, "story") && this.entryManager.canCurUserPost(userProfile, "story").isEligible;
    }

    @Override // com.narvii.widget.PromoteStoryView.OnPromoteListener
    public void onPromoteStory() {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Promote").object(getFeed()).send();
        if (isStoryEnable()) {
            final String linkedStoryDraftId = getLinkedStoryDraftId();
            if (TextUtils.isEmpty(linkedStoryDraftId)) {
                showTemplateList();
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setMessage(R.string.post_draft_restore_draft_msg);
            builder.setPositiveButton(R.string.post_draft_restore, new DialogInterface.OnClickListener() { // from class: com.narvii.blog.detail.-$$Lambda$BlogDetailFragment$lZdQkUHkHHPtySBtIGc2e3a8UuQ
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.lambda$onPromoteStory$0$BlogDetailFragment(linkedStoryDraftId, dialogInterface, i);
                }
            });
            builder.setNeutralButton(R.string.post_draft_discard, new DialogInterface.OnClickListener() { // from class: com.narvii.blog.detail.-$$Lambda$BlogDetailFragment$_QRm8chzof1wUOlhvoOGXDRDwhg
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.lambda$onPromoteStory$1$BlogDetailFragment(linkedStoryDraftId, dialogInterface, i);
                }
            });
            builder.setNegativeButton(R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
            builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.blog.detail.-$$Lambda$BlogDetailFragment$oDr2PlPWC5pkN60ZwPn-nGBGkNM
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    BlogDetailFragment.lambda$onPromoteStory$2(dialogInterface);
                }
            });
            builder.show();
        }
    }

    public /* synthetic */ void lambda$onPromoteStory$0$BlogDetailFragment(String str, DialogInterface dialogInterface, int i) {
        Intent intent = new Intent(getContext(), (Class<?>) StoryPostActivity.class);
        intent.putExtra("draftId", str);
        startActivity(intent);
    }

    public /* synthetic */ void lambda$onPromoteStory$1$BlogDetailFragment(String str, DialogInterface dialogInterface, int i) {
        this.draftManager.deleteDraft(str);
        showTemplateList();
    }

    /* renamed from: com.narvii.blog.detail.BlogDetailFragment$9, reason: invalid class name */
    class AnonymousClass9 implements TemplateListFragment.OnChooseTemplateListener {
        AnonymousClass9() {
        }

        @Override // com.narvii.scene.TemplateListFragment.OnChooseTemplateListener
        public void onChoose(TemplateConfig templateConfig) {
            if (!MeisheUtils.isSupportMeishe() || !FFmpegJni.ffmpegInstalled) {
                final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(BlogDetailFragment.this.getActivity());
                aCMAlertDialog.setMessage(BlogDetailFragment.this.getString(R.string.av_not_supported));
                aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.blog.detail.-$$Lambda$BlogDetailFragment$9$SZ12jqv-O5xE6CBVIIs8ji-0hW8
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        aCMAlertDialog.dismiss();
                    }
                });
                aCMAlertDialog.setCancelable(false);
                aCMAlertDialog.show();
                return;
            }
            Intent intent = FragmentWrapperActivity.intent(SceneTemplateGeneratorFragment.class);
            intent.putExtra("blogPost", JacksonUtils.writeAsString(BlogDetailFragment.this.getFeed()));
            intent.putExtra("templateConfig", JacksonUtils.writeAsString(templateConfig));
            BlogDetailFragment.this.startActivity(intent);
        }

        @Override // com.narvii.scene.TemplateListFragment.OnChooseTemplateListener
        public void onDismiss() {
            if (BlogDetailFragment.this.getLifecycleState() >= 3) {
                BlogDetailFragment.this.onActiveChanged(true);
            }
            BlogDetailFragment.this.afterPromoteStoryViewProcessed();
        }
    }

    private void showTemplateList() {
        this.sceneTemplateService.setFrom(1);
        this.sceneTemplateService.setOnChooseTemplateListener(new AnonymousClass9());
        onActiveChanged(false);
        this.sceneTemplateService.show();
    }

    @Override // com.narvii.widget.PromoteStoryView.OnPromoteListener
    public void onPlayStory(Blog blog) {
        LogEvent.clickBuilder(this, ActSemantic.checkDetail).area("LinkedStory").object(getFeed()).send();
        startActivity(new StoryListFragment.IntentBuilder(blog).source(StoryApi.COMMUNITY_PLAYER).autoLoadNextPage(false).showCommentBar(true).loadRawVideo(true).build());
    }

    public String getLinkedStoryDraftId() {
        if (getFeed() != null && this.draftManager.hasDraft("story")) {
            for (DraftInfo draftInfo : this.draftManager.list("story")) {
                if (TextUtils.equals(((BlogPost) this.draftManager.readPost(draftInfo.id, BlogPost.class)).promotedFrom, getFeed().blogId)) {
                    return draftInfo.id;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void afterPromoteStoryViewProcessed() {
        if (getBooleanParam("justCreated", false)) {
            this.pushNotificationHelper.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_CREATE_POST);
        }
    }

    @Override // com.narvii.theme.IFakeActionBar
    public void updateFakeActionBarThemeUI() {
        if (this.fakeActionBar != null) {
            Drawable drawableFakeActionbarBackground = ((ConfigService) getService("config")).getTheme().fakeActionbarBackground();
            View view = this.fakeActionBar;
            if (shouldShowPageBackground() && ((NVActivity) getActivity()).hasPageBackground()) {
                drawableFakeActionbarBackground = null;
            }
            view.setBackgroundDrawable(drawableFakeActionbarBackground);
            this.fakeActionBar.setVisibility(hasBackground() || this.disabled || isEmbedFragment() ? 8 : 0);
        }
    }
}
