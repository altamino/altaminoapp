package com.narvii.item.detail;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.blog.post.BlogPost;
import com.narvii.blog.post.BlogPostActivity;
import com.narvii.comment.CommentHelper;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.AffiliationsService;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailFragment;
import com.narvii.detail.FeedDetailAdapter;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.FeedContinuousViewer;
import com.narvii.feed.FeedHelper;
import com.narvii.feed.FeedListAdapter;
import com.narvii.feed.vote.VoteAnimationHelper;
import com.narvii.feed.vote.VotePopupDialog;
import com.narvii.feed.vote.VoterListFragment;
import com.narvii.influencer.FansOnlyHintDialog;
import com.narvii.item.ItemHelper;
import com.narvii.item.contributor.Contributor;
import com.narvii.item.contributor.ContributorListFragment;
import com.narvii.item.contributor.ContributorListResponse;
import com.narvii.item.property.ItemPropertyList;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.media.MediaGalleryActivity;
import com.narvii.media.MediaGalleryOptionActivity;
import com.narvii.model.Comment;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.FeedResponse;
import com.narvii.model.api.ItemResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.optionmenu.OptionMenuFragment;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.story.StoryNotificationStub;
import com.narvii.story.detail.VoteHelper;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.NVToast;
import com.narvii.util.PaletteUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.KeywordsView;
import com.narvii.widget.NVListView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SlideshowView;
import com.narvii.widget.ThumbGallery;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class ItemDetailFragment extends FeedDetailFragment<Item> {
    static final int CONTRIBUTOR_REQUEST = 4;
    static final int COPY_AND_EDIT_REQUEST = 8;
    AdvancedOptionDialog advancedOptionDialog;
    CommentAdapter commentAdapter;
    CommunityConfigHelper communityConfigHelper;
    DividerAdapter divAdapter;
    boolean fromMyCatalog;
    OverlayLayout header;
    private HeaderLayout headerLayout;
    private View headerPlaceHolder;
    Adapter itemAdapter;
    private ItemHelper itemHelper;
    private int keywordsHeight;
    private MergeAdapter mergeAdapter;
    public Callback<Item> onFinishListener;
    private RelatedBlogHeaderAdapter relatedBlogHeaderAdapter;
    SwipeRefreshLayout swipeRefreshLayout;
    TagRelatedAdapter tagRelatedAdapter;
    View voteIconView;
    static final DetailAdapter.CellType HEADER = new DetailAdapter.CellType("detail.item.header", true);
    static final DetailAdapter.CellType PROPERTY = new DetailAdapter.CellType("detail.property");
    static final DetailAdapter.HeaderTag ABOUT_HEADER = new DetailAdapter.HeaderTag("detail.about.header", R.string.detail_about);
    static final DetailAdapter.HeaderTag GALLERY_HEADER = new DetailAdapter.HeaderTag("detail.gallery.header", R.string.gallery);
    static final DetailAdapter.HeaderTag AUTHOR_HEADER = new DetailAdapter.HeaderTag("detail.user.header", R.string.author);
    static final DetailAdapter.AddTag ADD_DESC = new DetailAdapter.AddTag("detail.add_desc", R.string.detail_add_desc);
    static final DetailAdapter.CellType GALLERY = new DetailAdapter.CellType("detail.gallery");
    static final DetailAdapter.CellType CONTRIBUTORS = new DetailAdapter.CellType("detail.contributors");
    static final DetailAdapter.HeaderTag CONTRIBUTORS_HEADER = new DetailAdapter.HeaderTag("detail.contributors.header", R.string.contributors);
    static final DetailAdapter.CellType USER = new DetailAdapter.CellType("detail.user", true);
    static final DetailAdapter.HeaderTag LIKES_HEADER = new DetailAdapter.HeaderTag("detail.likes", R.string.likes);
    static final List<DetailAdapter.CellType> ADS = Arrays.asList(new DetailAdapter.CellType("adbanner1", false), new DetailAdapter.CellType("adbanner2", false), new DetailAdapter.CellType("adbanner3", false), new DetailAdapter.CellType("adbanner4", false), new DetailAdapter.CellType("adbanner5", false), new DetailAdapter.CellType("adbanner6", false), new DetailAdapter.CellType("adbanner7", false), new DetailAdapter.CellType("adbanner8", false), new DetailAdapter.CellType("adbanner9", false), new DetailAdapter.CellType("adbanner10", false), new DetailAdapter.CellType("adbanner11", false), new DetailAdapter.CellType("adbanner12", false), new DetailAdapter.CellType("adbanner13", false), new DetailAdapter.CellType("adbanner14", false), new DetailAdapter.CellType("adbanner15", false), new DetailAdapter.CellType("adbanner16", false), new DetailAdapter.CellType("adbanner17", false), new DetailAdapter.CellType("adbanner18", false), new DetailAdapter.CellType("adbanner19", false), new DetailAdapter.CellType("adbanner20", false));
    static final DetailAdapter.CellType AD_ABOVECOMMENT = new DetailAdapter.CellType("adbanner_abovecomment", false);
    private final View.OnClickListener headerClickListener = new View.OnClickListener() { // from class: com.narvii.item.detail.ItemDetailFragment.6
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
            if (itemDetailFragment.preview) {
                DetailFragment.showPreviewToast(itemDetailFragment.getContext());
            } else if (view.getId() == R.id.vote_btn) {
                ItemDetailFragment.this.voteIconView = view.findViewById(R.id.vote_icon);
                ItemDetailFragment.this.ensureLogin(new Intent(StoryNotificationStub.ACTION_VOTE));
            }
        }
    };
    private final View.OnLongClickListener longClickVote = new View.OnLongClickListener() { // from class: com.narvii.item.detail.ItemDetailFragment.7
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (!ItemDetailFragment.this.checkCommunityJoined()) {
                return true;
            }
            ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
            if (itemDetailFragment.preview) {
                DetailFragment.showPreviewToast(itemDetailFragment.getContext());
                return true;
            }
            Item feed = itemDetailFragment.getFeed();
            if (feed == null) {
                return false;
            }
            final View viewFindViewById = view.findViewById(R.id.vote_icon);
            VotePopupDialog votePopupDialog = new VotePopupDialog(ItemDetailFragment.this.getContext());
            votePopupDialog.setFeed(feed);
            votePopupDialog.setPosition(view);
            votePopupDialog.setVoteListener(new Callback<Integer>() { // from class: com.narvii.item.detail.ItemDetailFragment.7.1
                @Override // com.narvii.util.Callback
                public void call(Integer num) {
                    ItemDetailFragment.this.voteIconView = viewFindViewById;
                    Intent intent = new Intent(StoryNotificationStub.ACTION_VOTE);
                    intent.putExtra("voteValue", num.intValue());
                    ItemDetailFragment.this.ensureLogin(intent);
                }
            });
            votePopupDialog.show();
            return true;
        }
    };
    private final Callback callback = new Callback() { // from class: com.narvii.item.detail.ItemDetailFragment.11
        @Override // com.narvii.util.Callback
        public void call(Object obj) {
            ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
            Adapter adapter = itemDetailFragment.itemAdapter;
            if (adapter != null) {
                itemDetailFragment.fromMyCatalog = true;
                adapter.inMyFavorites = true;
                itemDetailFragment.invalidateOptionsMenu();
            }
        }
    };

    protected boolean disableOptinAds() {
        return false;
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected String getLiveLayerTopic() {
        return "users-browsing-item-at";
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "WikiEntryDetail";
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean hoverBelowOverlayPlaceHolder() {
        return true;
    }

    @Override // com.narvii.detail.DetailFragment
    protected int objectType() {
        return 2;
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        if (bundle == null && getActivity() != null && getActivity().getIntent().hasExtra("__savedInstanceState")) {
            bundle = getActivity().getIntent().getBundleExtra("__savedInstanceState");
        }
        super.onCreate(bundle);
        this.itemHelper = new ItemHelper(this);
        setTitle("");
        if (bundle == null) {
            this.fromMyCatalog = getBooleanParam("fromMyCatalog");
        } else {
            this.fromMyCatalog = bundle.getBoolean("fromMyCatalog");
        }
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.actions.add(LiveLayerService.ACTION_BROWSING);
        if (getBooleanParam("justCreated", true)) {
            new PushNotificationHelper(this).showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_CREATE_POST);
        }
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.list_overlay_item_detail, viewGroup, false);
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        this.header = (OverlayLayout) view.findViewById(R.id.overlay);
        super.onViewCreated(view, bundle);
        this.header.attach((NVListView) getListView());
        updateHeader();
        this.swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh);
        if (!this.preview) {
            this.swipeRefreshLayout.setEnabled(false);
            this.swipeRefreshLayout.setVisibility(0);
            this.swipeRefreshLayout.setTarget((NVListView) getListView());
            this.swipeRefreshLayout.setOnRefreshListener(this);
        }
        if (getActivity() instanceof NVActivity) {
            this.header.setHeight1(getActionBarOverlaySize() + getStatusBarOverlaySize());
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        AdvancedOptionDialog advancedOptionDialog = this.advancedOptionDialog;
        if (advancedOptionDialog != null && advancedOptionDialog.isShowing()) {
            this.advancedOptionDialog.dismiss();
        }
        super.onPause();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("fromMyCatalog", this.fromMyCatalog);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.semicontext.SemiStateTransfer
    public Intent getTransferIntent(Intent intent) {
        Bundle bundle = new Bundle();
        onSaveInstanceState(bundle);
        intent.putExtra("__savedInstanceState", bundle);
        return super.getTransferIntent(intent);
    }

    @Override // com.narvii.detail.FeedDetailFragment, android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        final MenuItem menuItemAdd = menu.add(0, R.string.copy_to_my_favorites, 0, R.string.copy_to_my_favorites);
        menuItemAdd.setShowAsAction(2);
        if (isEmbedFragment()) {
            menuItemAdd.setActionView(R.layout.item_menu_pin_to_favorite);
            menuItemAdd.getActionView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.item.detail.ItemDetailFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ItemDetailFragment.this.onOptionsItemSelected(menuItemAdd);
                }
            });
            menuItemAdd.getActionView().setTag(R.id.embed_menu_background, 0);
            menuItemAdd.getActionView().setTag(R.id.embed_menu_scale, 1);
        } else {
            menuItemAdd.setIcon(R.drawable.ic_pin_menu);
        }
        menu.add(0, R.string.bookmark, 7, R.string.bookmark).setShowAsAction(0);
        menu.add(0, R.string.un_save, 7, R.string.un_save).setShowAsAction(0);
        menu.add(0, R.string.catalog_submit_to_official, 8, R.string.catalog_submit_to_official);
        menu.add(0, R.string.catalog_add_to_my_favorites, 8, R.string.catalog_add_to_my_favorites);
        menu.add(0, R.string.more, 8, R.string.more);
        menu.add(0, R.string.advanced, 10, R.string.advanced).setShowAsAction(0);
    }

    @Override // com.narvii.app.NVFragment
    protected void completePageViewEvent(LogEvent.Builder builder, boolean z) {
        super.completePageViewEvent(builder, z);
        FeedDetailAdapter<Item> feedDetailAdapter = getFeedDetailAdapter();
        if (feedDetailAdapter != null && feedDetailAdapter.getObject() != null) {
            builder.object(feedDetailAdapter.getObject());
        } else {
            builder.objectId(id()).objectType(ObjectType.item);
        }
    }

    @Override // com.narvii.detail.FeedDetailFragment, android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        User user;
        User user2;
        User user3;
        super.onPrepareOptionsMenu(menu);
        boolean zIsMine = isMine();
        Item feed = getFeed();
        boolean z = (feed == null || feed.status() == 9) ? false : true;
        Adapter adapter = this.itemAdapter;
        boolean z2 = adapter != null && adapter.inMyFavorites;
        AccountService accountService = (AccountService) getService("account");
        User userProfile = accountService.getUserProfile();
        menu.findItem(R.string.more).setVisible(z2 && z && userProfile != null && !zIsMine && (user3 = feed.author) != null && user3.role == 254);
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this);
        menu.findItem(R.string.catalog_submit_to_official).setVisible(z && zIsMine && communityConfigHelper.isCatalogEnable() && communityConfigHelper.isCatalogCutaionEnable());
        menu.findItem(R.string.share).setShowAsAction((z2 || !z || userProfile == null || zIsMine || (user2 = feed.author) == null || user2.role != 254) ? 2 : 0);
        boolean z3 = (!accountService.hasAccount() || z2 || !z || userProfile == null || zIsMine || (user = feed.author) == null || user.role != 254) ? false : true;
        menu.findItem(R.string.copy_to_my_favorites).setVisible(z3);
        menu.findItem(R.string.catalog_add_to_my_favorites).setVisible(z3);
        User userProfile2 = accountService.getUserProfile();
        menu.findItem(R.string.advanced).setVisible((getFeed() == null || userProfile2 == null || !userProfile2.isCurator() || isGlobalInteractionScope()) ? false : true);
        Adapter adapter2 = this.itemAdapter;
        if (adapter2 != null && adapter2.getResponse() != null && !isGlobalInteractionScope()) {
            MenuItem menuItemFindItem = menu.findItem(R.string.un_save);
            Adapter adapter3 = this.itemAdapter;
            menuItemFindItem.setVisible(adapter3.isBookmarked && adapter3.getObject() != 0);
            MenuItem menuItemFindItem2 = menu.findItem(R.string.bookmark);
            Adapter adapter4 = this.itemAdapter;
            menuItemFindItem2.setVisible((adapter4.isBookmarked || adapter4.getObject() == 0) ? false : true);
            return;
        }
        menu.findItem(R.string.un_save).setVisible(false);
        menu.findItem(R.string.bookmark).setVisible(false);
    }

    @Override // com.narvii.detail.FeedDetailFragment, android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.more) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.create_my_own_version, 0);
            actionSheetDialog.addItem(R.string.remove_from_my_favorites, 1);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.item.detail.ItemDetailFragment.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == 0) {
                        new FeedHelper(ItemDetailFragment.this) { // from class: com.narvii.item.detail.ItemDetailFragment.2.1
                            @Override // com.narvii.feed.FeedHelper
                            public void startActivity(Intent intent) {
                                intent.putExtra("disableOpenCallback", true);
                                ItemDetailFragment.this.startActivityForResult(intent, 8);
                            }
                        }.copyAndEdit(ItemDetailFragment.this.getFeed());
                    }
                    if (i == 1) {
                        new FeedHelper(ItemDetailFragment.this).delete(ItemDetailFragment.this.getFeed(), true);
                    }
                }
            });
            actionSheetDialog.show();
            return true;
        }
        if (menuItem.getItemId() == R.string.catalog_submit_to_official) {
            submitOfficialCatalog();
            return true;
        }
        if (menuItem.getItemId() == R.string.catalog_add_to_my_favorites || menuItem.getItemId() == R.string.copy_to_my_favorites) {
            this.itemHelper.source = menuItem.getItemId() == R.string.copy_to_my_favorites ? "titlebar" : "moremenu";
            addToMyFavorites();
            return true;
        }
        int itemId = menuItem.getItemId();
        if (itemId == R.string.advanced) {
            showModerationDialog();
            return true;
        }
        if (itemId == R.string.bookmark) {
            bookmark("Post Detail Menu");
            return true;
        }
        if (itemId == R.string.un_save) {
            new FeedHelper(this).unBookmark(getFeed(), new Callback<ApiResponse>() { // from class: com.narvii.item.detail.ItemDetailFragment.3
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    Adapter adapter = ItemDetailFragment.this.itemAdapter;
                    if (adapter != null) {
                        adapter.isBookmarked = false;
                    }
                }
            });
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.itemAdapter = new Adapter();
        this.commentAdapter = new CommentAdapter();
        this.tagRelatedAdapter = new TagRelatedAdapter();
        this.mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.item.detail.ItemDetailFragment.4
            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                if (ItemDetailFragment.this.shouldBlockClick(obj)) {
                    return true;
                }
                return super.onItemClick(listAdapter, i, obj, view, view2);
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                if (ItemDetailFragment.this.shouldBlockClick(obj)) {
                    return true;
                }
                return super.onLongClick(listAdapter, i, obj, view, view2);
            }
        };
        this.mergeAdapter.setFlags(1);
        this.mergeAdapter.addAdapter(this.itemAdapter);
        this.relatedBlogHeaderAdapter = new RelatedBlogHeaderAdapter(this);
        WriteRelatedBlogAdapter writeRelatedBlogAdapter = new WriteRelatedBlogAdapter();
        this.divAdapter = new DividerAdapter(this);
        this.divAdapter.setAdapter(this.tagRelatedAdapter, 0);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addLayouts(R.layout.list_bottom_placeholder);
        if (!newPreview()) {
            this.mergeAdapter.addAdapter(this.commentAdapter);
            this.mergeAdapter.addAdapter(new FeedDetailFragment.CommentFooterAdapter(this));
        }
        this.mergeAdapter.addAdapter(this.relatedBlogHeaderAdapter);
        this.mergeAdapter.addAdapter(writeRelatedBlogAdapter);
        if (!newPreview()) {
            this.mergeAdapter.addAdapter(this.divAdapter);
        }
        this.mergeAdapter.addAdapter(staticViewAdapter);
        return this.mergeAdapter;
    }

    @Override // com.narvii.detail.FeedDetailFragment
    public FeedDetailAdapter<Item> getFeedDetailAdapter() {
        return this.itemAdapter;
    }

    private int getHeaderVoteLayoutHeight() {
        return (int) Utils.dpToPx(getContext(), 60.0f);
    }

    private int getOverlayHeaderHeight() {
        return getResources().getDisplayMetrics().widthPixels + getHeaderVoteLayoutHeight() + this.keywordsHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void updateHeader() {
        Item item = (Item) this.itemAdapter.getObject();
        boolean z = item != null && new FilterHelper(this).keepForLeaderAndCurator().isAccessible(item);
        if (item == null || !z) {
            this.header.setVisibility(8);
            return;
        }
        this.header.setVisibility(0);
        int overlayHeaderHeight = getOverlayHeaderHeight();
        updateHeaderPlaceHolder();
        this.header.setLayout(R.layout.detail_item_header, overlayHeaderHeight);
        this.headerLayout = (HeaderLayout) this.header.findViewById(R.id.item_header);
        if (this.fromHeadline) {
            this.headerLayout.removeActionBar2();
        }
        this.headerLayout.setPreview(this.preview);
        this.headerLayout.setIsHiddenPost(true ^ isMeAccessibleToThisPost());
        this.headerLayout.setItem(item);
        this.headerLayout.setHeight1(overlayHeaderHeight);
        this.headerLayout.setHeaderClickListener(this.headerClickListener);
        this.headerLayout.setLongClickVoteListener(this.longClickVote);
        ViewGroup.LayoutParams layoutParams = this.headerLayout.gradient.getLayoutParams();
        layoutParams.height = (getResources().getDisplayMetrics().widthPixels / 4) + getHeaderVoteLayoutHeight() + this.keywordsHeight;
        this.headerLayout.gradient.setLayoutParams(layoutParams);
        this.headerLayout.keywordsView.setOnSizeChangedListener(new KeywordsView.OnSizeChangedListener() { // from class: com.narvii.item.detail.ItemDetailFragment.5
            @Override // com.narvii.widget.KeywordsView.OnSizeChangedListener
            public void onSizeChanged(int i, int i2) {
                ItemDetailFragment.this.keywordsHeight = i2;
                ItemDetailFragment.this.updateHeader();
            }
        });
        updateteBottomLayout(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeaderPlaceHolder() {
        View view = this.headerPlaceHolder;
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = getOverlayHeaderHeight();
        this.headerPlaceHolder.setLayoutParams(layoutParams);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        Callback<Integer> callback = new Callback<Integer>() { // from class: com.narvii.item.detail.ItemDetailFragment.8
            int n;

            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                int i = this.n + 1;
                this.n = i;
                if (i == 3) {
                    ItemDetailFragment.this.swipeRefreshLayout.setRefreshing(false);
                }
            }
        };
        this.itemAdapter.refresh(1, callback);
        this.commentAdapter.refresh(1, callback);
        this.tagRelatedAdapter.refresh(1, callback);
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean setListContentBgWhenHasPageBackground() {
        return !this._hasBackground;
    }

    @Override // com.narvii.list.HoverAdapter
    public boolean isHover(int i) {
        MergeAdapter mergeAdapter = this.mergeAdapter;
        return (mergeAdapter == null || this.disabled || mergeAdapter.getItem(i) != DetailAdapter.COMMENT_ADD) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void updateBackground() {
        Adapter adapter;
        Item item;
        int i;
        View view = getView();
        if (this.backgroundView == null || (adapter = this.itemAdapter) == null || (item = (Item) adapter.getObject()) == null) {
            return;
        }
        this.backgroundView.setBackgroundSource(item);
        setDarkTheme(isBackgroundColorDark());
        updateSBB(item.getBackgroundMedia() == null ? item.getBackgroundColor() : 0);
        this.divAdapter.setDarkTheme(isBackgroundColorDark());
        if (this.headerLayout != null) {
            this.headerLayout.setDarkTheme(isBackgroundColorDark(), item.getBackgroundColor() != 0);
        }
        if (view != null) {
            int backgroundColor = item.getBackgroundColor();
            View viewFindViewById = view.findViewById(R.id.gradient);
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RectShape());
            if (hasBackground()) {
                if (backgroundColor == 0) {
                    backgroundColor = Utils.getColor(ViewCompat.MEASURED_STATE_MASK, 0.2f);
                }
                i = backgroundColor;
            } else {
                i = -1;
            }
            shapeDrawable.getPaint().setShader(new LinearGradient(0.0f, 0.0f, 0.0f, getContext().getResources().getDisplayMetrics().widthPixels / 4, 0, i, Shader.TileMode.CLAMP));
            if (viewFindViewById != null) {
                viewFindViewById.setBackgroundDrawable(shapeDrawable);
            }
        }
        setTextColor(view, R.id.label, -13619152);
        TextView textView = ViewUtils.getTextView(view, R.id.label);
        if (textView != null) {
            textView.setShadowLayer(3.0f, 0.0f, 2.0f, isDarkTheme() ? -872415232 : 0);
        }
        CommentAdapter commentAdapter = this.commentAdapter;
        if (commentAdapter != null) {
            commentAdapter.setDarkTheme(isBackgroundColorDark());
        }
        TagRelatedAdapter tagRelatedAdapter = this.tagRelatedAdapter;
        if (tagRelatedAdapter != null) {
            tagRelatedAdapter.setDarkTheme(isBackgroundColorDark());
        }
        Adapter adapter2 = this.itemAdapter;
        if (adapter2 != null) {
            adapter2.setDarkTheme(isBackgroundColorDark());
        }
        RelatedBlogHeaderAdapter relatedBlogHeaderAdapter = this.relatedBlogHeaderAdapter;
        if (relatedBlogHeaderAdapter != null) {
            relatedBlogHeaderAdapter.setDarkTheme(isBackgroundColorDark());
        }
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.notifyDataSetChanged();
        }
    }

    private class Adapter extends FeedDetailAdapter<Item> implements ThumbGallery.OnItemClickListener {
        List<Contributor> contributorList;
        final ApiResponseListener<ContributorListResponse> contributorListener;
        ApiRequest contributorRequest;
        String contributorsErrorMsg;
        DateTimeFormatter fmt;
        boolean inMyFavorites;
        final boolean optinAds;

        public Adapter() {
            super(ItemDetailFragment.this);
            this.contributorListener = new ApiResponseListener<ContributorListResponse>(ContributorListResponse.class) { // from class: com.narvii.item.detail.ItemDetailFragment.Adapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ContributorListResponse contributorListResponse) throws Exception {
                    Adapter.this.contributorList = new ArrayList();
                    if (contributorListResponse.contributorList != null && ItemDetailFragment.this.getFeed() != null && ItemDetailFragment.this.getFeed().author != null) {
                        for (Contributor contributor : contributorListResponse.contributorList) {
                            if (!contributor.uid().equals(ItemDetailFragment.this.getFeed().author.id())) {
                                Adapter.this.contributorList.add(contributor);
                            }
                        }
                    }
                    Adapter adapter = Adapter.this;
                    adapter.contributorList = new FilterHelper(adapter.getParentContext()).filter(Adapter.this.contributorList);
                    Adapter adapter2 = Adapter.this;
                    if (adapter2.contributorList == null) {
                        adapter2.contributorList = new ArrayList();
                    }
                    Adapter.this.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    Adapter adapter = Adapter.this;
                    adapter.contributorsErrorMsg = str;
                    adapter.notifyDataSetChanged();
                }
            };
            this.fmt = new DateTimeFormatter();
            this.optinAds = true;
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            if (ItemDetailFragment.this.isPageBackgroundEnabled() && getResponse() == null) {
                return true;
            }
            return super.isListShown();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (ItemDetailFragment.this.isPageBackgroundEnabled() && getResponse() == null) {
                return false;
            }
            return super.isEmpty();
        }

        @Override // com.narvii.detail.DetailAdapter, android.widget.Adapter
        public int getCount() {
            if (ItemDetailFragment.this.isPageBackgroundEnabled() && getResponse() == null) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            super.onNotification(notification);
            if (!notification.action.equals("update")) {
                if (!(notification.obj instanceof Comment)) {
                    return;
                }
                if (!notification.action.equals("new") && !notification.action.equals("delete")) {
                    return;
                }
            }
            Item feed = ItemDetailFragment.this.getFeed();
            if (((FeedDetailFragment) ItemDetailFragment.this).continuousLoader == null || feed == null) {
                return;
            }
            Object obj = notification.obj;
            if (obj instanceof Comment) {
                CommentHelper.updateFeedWithComment(feed, (Comment) obj, notification.action);
            }
            ItemDetailFragment.this.updateteBottomLayout(feed);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void commentNew() {
            ItemDetailFragment.this.blockPass.set(true);
            super.commentNew();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void onTipBoxClicked(boolean z) {
            super.onTipBoxClicked(z);
            if (z) {
                return;
            }
            ItemDetailFragment.this.tippingTooltipDone();
        }

        @Override // com.narvii.detail.FeedDetailAdapter
        protected boolean preview() {
            return ItemDetailFragment.this.preview;
        }

        @Override // com.narvii.detail.FeedDetailAdapter
        protected boolean notJoined() {
            return ((FeedDetailFragment) ItemDetailFragment.this).notJoined;
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("inMyFavorites", this.inMyFavorites);
            return bundleOnSaveInstanceState;
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            this.inMyFavorites = bundle.getBoolean("inMyFavorites");
        }

        @Override // com.narvii.detail.DetailAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            ItemDetailFragment.this.updateHeader();
            if (this.contributorRequest == null) {
                sendContributorRequest();
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends Item> objectType() {
            return Item.class;
        }

        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter
        protected Class<ItemResponse> responseType() {
            return ItemResponse.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(Item item) {
            ItemResponse itemResponse;
            if (getResponse() == null) {
                itemResponse = new ItemResponse();
            } else {
                itemResponse = (ItemResponse) getResponse();
            }
            itemResponse.inMyFavorites = this.inMyFavorites ? 1 : 0;
            itemResponse.item = item;
            setResponse((FeedResponse<? extends Item>) itemResponse);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.DetailAdapter
        public void onObjectResponse(ApiRequest apiRequest, FeedResponse<? extends Item> feedResponse) {
            if (ItemDetailFragment.this.preview && (feedResponse instanceof ItemResponse)) {
                Item item = (Item) getObject();
                if (item != null) {
                    Item item2 = ((ItemResponse) feedResponse).item;
                    item2.label = item.label;
                    item2.keywords = item.keywords;
                    item2.content = item.content;
                    item2.extensions = item.extensions;
                    item2.latitude = item.latitude;
                    item2.longitude = item.longitude;
                    item2.address = item.address;
                    item2.modifiedTime = item.modifiedTime;
                    item2.mediaList = item.mediaList;
                    super.onObjectResponse(apiRequest, (ApiRequest) feedResponse);
                    return;
                }
                return;
            }
            ItemDetailFragment.this.onFeedObjectResponse();
            super.onObjectResponse(apiRequest, (ApiRequest) feedResponse);
            ItemDetailFragment.this.tryReportActiveStatus();
            ItemDetailFragment.this.sendFeedUpdateGlobalNotification((Feed) getObject());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter
        public void setResponse(FeedResponse<? extends Item> feedResponse) {
            Callback<Item> callback;
            ItemResponse itemResponse = (ItemResponse) feedResponse;
            boolean z = true;
            this.inMyFavorites = itemResponse.inMyFavorites > 0;
            super.setResponse((FeedResponse) feedResponse);
            Item item = itemResponse.item;
            if (item != null) {
                ((DetailFragment) ItemDetailFragment.this)._hasBackground = item.hasBackground();
                ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
                if (item.getBackgroundMedia() == null && !PaletteUtils.isDarkColor(item.getBackgroundColor())) {
                    z = false;
                }
                ((DetailFragment) itemDetailFragment)._isBackgroundDark = z;
                ((NVFragment) ItemDetailFragment.this)._backgroundColor = item.getBackgroundColor();
                ItemDetailFragment.this.updateBackground();
                ItemDetailFragment.this.updateListViewContentBackground();
            }
            this.isBookmarked = feedResponse.isBookmarked;
            if (feedResponse.timestamp != null && (callback = ItemDetailFragment.this.onFinishListener) != 0) {
                callback.call(feedResponse.object());
            }
            ItemDetailFragment.this.resetHover();
            ItemDetailFragment.this.setDisabledStatus(item);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            if (ItemDetailFragment.this.newPreview()) {
                return null;
            }
            return ApiRequest.builder().path("/item/" + ItemDetailFragment.this.id()).build();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createUserListRequest(int i, int i2) {
            if (ItemDetailFragment.this.id() == null) {
                return null;
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            StringBuilder sb = new StringBuilder();
            sb.append("/item/");
            sb.append(ItemDetailFragment.this.id());
            sb.append(isGlobalInteractionScope() ? "/g-vote" : "/vote");
            sb.append("?start=");
            sb.append(i);
            sb.append("&size=");
            sb.append(i2);
            sb.append("&cv=1.2");
            return builder.path(sb.toString()).build();
        }

        void sendContributorRequest() {
            Item feed = ItemDetailFragment.this.getFeed();
            if (feed == null || ItemDetailFragment.this.id() == null) {
                return;
            }
            this.contributorRequest = ApiRequest.builder().path("/item/" + feed.itemId + "/contributors").build();
            ((ApiService) getService("api")).exec(this.contributorRequest, this.contributorListener);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List<Object> list) {
            int i;
            Item item = (Item) getObject();
            List<Item> listTaggedObjects = taggedObjects();
            User user = item.author;
            boolean z = user != null && user.isSystem();
            list.add(ItemDetailFragment.HEADER);
            list.add(ItemDetailFragment.ABOUT_HEADER);
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(item.extensions, "props");
            if (jsonNodeNodePath != null) {
                if (jsonNodeNodePath == null || !jsonNodeNodePath.isArray()) {
                    i = 0;
                } else {
                    int size = jsonNodeNodePath.size();
                    i = 0;
                    for (int i2 = 0; i2 < size; i2++) {
                        if (!TextUtils.isEmpty(JacksonUtils.nodeString(jsonNodeNodePath.get(i2), "value"))) {
                            i++;
                        }
                    }
                }
                if (i > 0) {
                    list.add(ItemDetailFragment.PROPERTY);
                    list.add(DetailAdapter.DIVIDER_LINE);
                }
            }
            if (TextUtils.isEmpty(item.content) && ItemDetailFragment.this.isMine()) {
                list.add(ItemDetailFragment.ADD_DESC);
            } else {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                splitSegments(item.content, item.mediaList, arrayList2, arrayList);
                list.addAll(arrayList2);
            }
            if (ItemDetailFragment.this.isMeAccessibleToThisPost()) {
                addDivider(list);
                List<Media> list2 = item.mediaList;
                if (list2 != null && list2.size() > 1) {
                    list.add(ItemDetailFragment.GALLERY_HEADER);
                    list.add(ItemDetailFragment.GALLERY);
                }
                if (listTaggedObjects != null && listTaggedObjects.size() > 0) {
                    list.add(FeedDetailAdapter.LINKED_HEADER);
                    list.add(FeedDetailAdapter.LINKED);
                }
                if (allowTipping()) {
                    list.add(DetailAdapter.TIPPING);
                }
                if (this.optinAds) {
                    list.add(ItemDetailFragment.AD_ABOVECOMMENT);
                }
                if (!z) {
                    list.add(ItemDetailFragment.AUTHOR_HEADER);
                    list.add(ItemDetailFragment.USER);
                }
                List<Contributor> list3 = this.contributorList;
                if (list3 != null && !list3.isEmpty()) {
                    list.add(ItemDetailFragment.CONTRIBUTORS_HEADER);
                    list.add(ItemDetailFragment.CONTRIBUTORS);
                }
                if (!z && item.getTotalVotesCount() > 0 && (!((FeedDetailFragment) ItemDetailFragment.this).fromHeadline || !((FeedDetailFragment) ItemDetailFragment.this).notJoined || item.getVotedValue(isGlobalInteractionScope()) == 0 || item.getTotalVotesCount() != 1)) {
                    ItemDetailFragment.LIKES_HEADER.setCount(item.getTotalVotesCount());
                    list.add(ItemDetailFragment.LIKES_HEADER);
                    list.add(DetailAdapter.USER_GRID);
                }
                list.add(DetailAdapter.COMMENT_HEADER);
                list.add(DetailAdapter.COMMENT_ADD);
            }
        }

        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(ItemDetailFragment.HEADER);
            list.add(ItemDetailFragment.PROPERTY);
            list.add(ItemDetailFragment.GALLERY);
            list.add(ItemDetailFragment.USER);
            list.add(ItemDetailFragment.CONTRIBUTORS);
            list.addAll(ItemDetailFragment.ADS);
            list.add(ItemDetailFragment.AD_ABOVECOMMENT);
        }

        @Override // com.narvii.detail.FeedDetailAdapter
        public List<Item> taggedObjects() {
            ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
            if (itemDetailFragment.preview) {
                return JacksonUtils.readListAs(itemDetailFragment.getStringParam("taggedObjects"), Item.class);
            }
            return super.taggedObjects();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            Contributor contributor;
            if (obj == ItemDetailFragment.HEADER) {
                ItemDetailFragment.this.headerPlaceHolder = createView(R.layout.detail_item_header_placeholder, viewGroup, view);
                ItemDetailFragment.this.updateHeaderPlaceHolder();
                return ItemDetailFragment.this.headerPlaceHolder;
            }
            ArrayList arrayList = null;
            if (obj == ItemDetailFragment.GALLERY) {
                View viewCreateView = createView(R.layout.detail_gallery_item, viewGroup, view);
                Item item = (Item) getObject();
                List<Media> list = item.mediaList;
                if (list != null && list.size() > 0) {
                    arrayList = new ArrayList(item.mediaList);
                    arrayList.remove(0);
                }
                ThumbGallery thumbGallery = (ThumbGallery) viewCreateView.findViewById(R.id.pager);
                thumbGallery.setDarkTheme(this.darkTheme);
                thumbGallery.setMediaList(arrayList);
                thumbGallery.setOnItemClickListener(this);
                return viewCreateView;
            }
            if (obj == ItemDetailFragment.USER) {
                View viewCreateView2 = createView(R.layout.detail_item_user_item, viewGroup, view);
                Item item2 = (Item) getObject();
                ((UserAvatarLayout) viewCreateView2.findViewById(R.id.user_avatar_layout)).setUser(item2.author);
                NicknameView nicknameView = (NicknameView) viewCreateView2.findViewById(R.id.nickname);
                nicknameView.setUser(item2.author, true);
                nicknameView.setDarkTheme(this.darkTheme);
                ((TextView) viewCreateView2.findViewById(R.id.datetime)).setText(this.fmt.format(item2.modifiedTime));
                ((TextView) viewCreateView2.findViewById(R.id.datetime)).setTextColor(!ItemDetailFragment.this.isDarkTheme() ? -5592406 : -1);
                return viewCreateView2;
            }
            if (obj == ItemDetailFragment.CONTRIBUTORS) {
                View viewCreateView3 = createView(R.layout.detail_item_contributors_item, viewGroup, view);
                View[] viewArr = {viewCreateView3.findViewById(R.id.contributor1), viewCreateView3.findViewById(R.id.contributor2), viewCreateView3.findViewById(R.id.contributor3), viewCreateView3.findViewById(R.id.contributor4), viewCreateView3.findViewById(R.id.contributor5), viewCreateView3.findViewById(R.id.contributor6)};
                ArrayList arrayList2 = new ArrayList();
                List<Contributor> list2 = this.contributorList;
                if (list2 != null) {
                    contributor = null;
                    for (Contributor contributor2 : list2) {
                        if (contributor2.isOriginalAuthor()) {
                            contributor = contributor2;
                        } else {
                            arrayList2.add(contributor2);
                        }
                    }
                } else {
                    contributor = null;
                }
                int i = 0;
                while (i < viewArr.length) {
                    View view2 = viewArr[i];
                    Contributor contributor3 = arrayList2.size() > i ? (Contributor) arrayList2.get(i) : null;
                    if (contributor3 == null) {
                        view2.setVisibility(8);
                    } else if (i == viewArr.length - 1 && arrayList2.size() > viewArr.length) {
                        view2.setVisibility(8);
                    } else {
                        view2.setVisibility(0);
                        view2.setOnClickListener(this.subviewClickListener);
                        ((UserAvatarLayout) view2.findViewById(R.id.user_avatar_layout)).setUser(contributor3);
                        NicknameView nicknameView2 = (NicknameView) view2.findViewById(R.id.nickname);
                        nicknameView2.setUser(contributor3);
                        nicknameView2.setDarkTheme(this.darkTheme);
                    }
                    i++;
                }
                View viewFindViewById = viewCreateView3.findViewById(R.id.contributor_original);
                if (contributor == null) {
                    viewFindViewById.setVisibility(8);
                } else {
                    viewFindViewById.setVisibility(0);
                    viewFindViewById.setOnClickListener(this.subviewClickListener);
                    ((UserAvatarLayout) viewFindViewById.findViewById(R.id.user_avatar_layout)).setUser(contributor);
                    NicknameView nicknameView3 = (NicknameView) viewFindViewById.findViewById(R.id.nickname);
                    nicknameView3.setUser(contributor);
                    nicknameView3.setDarkTheme(this.darkTheme);
                    ((NicknameView) viewFindViewById.findViewById(R.id.nickname)).setRole2(ItemDetailFragment.this.getString(R.string.original_author), User.ROLE_COLOR_AUTHOR);
                }
                viewCreateView3.findViewById(R.id.see_all_contributors).setVisibility(arrayList2.size() > viewArr.length ? 0 : 8);
                TextView textView = (TextView) viewCreateView3.findViewById(R.id.see_all_contributors);
                ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
                Object[] objArr = new Object[1];
                List<Contributor> list3 = this.contributorList;
                objArr[0] = Integer.valueOf(list3 == null ? 0 : list3.size());
                textView.setText(itemDetailFragment.getString(R.string.see_all_contributors, objArr));
                setTextColorSelector(viewCreateView3, R.id.see_all_contributors, R.color.text_clickable, R.color.text_clickable_white);
                viewCreateView3.findViewById(R.id.see_all_contributors).setOnClickListener(this.subviewClickListener);
                viewCreateView3.findViewById(R.id.retry).setVisibility((this.contributorList != null || this.contributorsErrorMsg == null) ? 8 : 0);
                viewCreateView3.findViewById(R.id.retry).setOnClickListener(this.subviewClickListener);
                viewCreateView3.findViewById(R.id.progress).setVisibility((this.contributorList == null && this.contributorsErrorMsg == null) ? 0 : 8);
                return viewCreateView3;
            }
            if (obj == ItemDetailFragment.PROPERTY) {
                View viewCreateView4 = createView(R.layout.detail_item_property_item, viewGroup, view);
                ((ItemPropertyList) viewCreateView4.findViewById(R.id.item_property_view_list)).setItemProperties(JacksonUtils.nodePath(((Item) getObject()).extensions, "props"), ItemDetailFragment.this.isDarkTheme());
                return viewCreateView4;
            }
            View cell = super.getCell(obj, view, viewGroup);
            if (obj == DetailAdapter.COMMENT_HEADER) {
                ((TextView) cell.findViewById(R.id.comment_count)).setText(((Item) getObject()).getTotalCommentsCount() == 0 ? "" : "(" + ((Item) getObject()).getTotalCommentsCount() + ")");
                return cell;
            }
            if (obj == ItemDetailFragment.ABOUT_HEADER) {
                cell.setPadding(0, 0, 0, 0);
            }
            if (obj == ItemDetailFragment.LIKES_HEADER) {
                cell.setOnClickListener(this.subviewClickListener);
            }
            return cell;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            Contributor contributor;
            if (!ItemDetailFragment.this.isMeAccessibleToThisPost() && obj != ItemDetailFragment.USER) {
                FansOnlyHintDialog.showFansOnlyHintDialog(this, ItemDetailFragment.this.getFeed(), "Page Detailed View");
                return true;
            }
            if (obj == ItemDetailFragment.HEADER && view2 == null) {
                Item item = (Item) getObject();
                Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryActivity.class);
                intent.putExtra("parent", JacksonUtils.writeAsString(item));
                intent.putExtra("parentClass", Item.class);
                intent.putExtra("list", JacksonUtils.writeAsString(item.mediaList));
                SlideshowView slideshowView = (SlideshowView) ItemDetailFragment.this.header.findViewById(R.id.slideshow);
                if (slideshowView != null) {
                    intent.putExtra("position", slideshowView.getCurrentIndex());
                }
                intent.putExtra("preview", ItemDetailFragment.this.preview);
                startActivity(intent);
                return true;
            }
            if (obj == ItemDetailFragment.USER) {
                Intent intent2 = UserProfileFragment.intent(this, ItemDetailFragment.this.getFeed().author);
                if (intent2 == null) {
                    return true;
                }
                intent2.putExtra("Source", "Page Detailed View");
                startActivity(intent2);
                return true;
            }
            if (obj == ItemDetailFragment.CONTRIBUTORS) {
                ArrayList arrayList = new ArrayList();
                List<Contributor> list = this.contributorList;
                if (list != null) {
                    contributor = null;
                    for (Contributor contributor2 : list) {
                        if (contributor2.isOriginalAuthor()) {
                            contributor = contributor2;
                        } else {
                            arrayList.add(contributor2);
                        }
                    }
                } else {
                    contributor = null;
                }
                if (view2 != null) {
                    if (view2.getId() == R.id.contributor_original) {
                        startActivity(UserProfileFragment.intent(this, contributor));
                    } else if (view2.getId() == R.id.contributor1) {
                        startActivity(UserProfileFragment.intent(this, (User) arrayList.get(0)));
                    } else if (view2.getId() == R.id.contributor2) {
                        startActivity(UserProfileFragment.intent(this, (User) arrayList.get(1)));
                    } else if (view2.getId() == R.id.contributor3) {
                        startActivity(UserProfileFragment.intent(this, (User) arrayList.get(2)));
                    } else if (view2.getId() == R.id.contributor4) {
                        startActivity(UserProfileFragment.intent(this, (User) arrayList.get(3)));
                    } else if (view2.getId() == R.id.contributor5) {
                        startActivity(UserProfileFragment.intent(this, (User) arrayList.get(4)));
                    } else if (view2.getId() == R.id.contributor6) {
                        startActivity(UserProfileFragment.intent(this, (User) arrayList.get(5)));
                    } else if (view2.getId() == R.id.retry) {
                        this.contributorsErrorMsg = null;
                        sendContributorRequest();
                        notifyDataSetChanged();
                    } else if (view2.getId() == R.id.see_all_contributors) {
                        Intent intent3 = FragmentWrapperActivity.intent(ContributorListFragment.class);
                        intent3.putExtra("itemId", ItemDetailFragment.this.getFeed().itemId);
                        intent3.putExtra("canReorder", ItemDetailFragment.this.getFeed().author.isSystem());
                        intent3.putExtra("contributorList", JacksonUtils.writeAsString(this.contributorList));
                        ItemDetailFragment.this.startActivityForResult(intent3, 4);
                    }
                }
                return true;
            }
            if (obj == ItemDetailFragment.ADD_DESC) {
                if (view2 != null && view2.getId() == R.id.add_dec_container) {
                    new FeedHelper(this).refreshAndEdit(ItemDetailFragment.this.getFeed());
                }
                return true;
            }
            if (obj != ItemDetailFragment.LIKES_HEADER) {
                return super.onItemClick(listAdapter, i, obj, view, view2);
            }
            if (view2 != null) {
                onUserGridClick(view2, null);
            }
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.widget.ThumbGallery.OnItemClickListener
        public void onItemClick(Media media) {
            if (!ItemDetailFragment.this.isMeAccessibleToThisPost()) {
                FansOnlyHintDialog.showFansOnlyHintDialog(this, ItemDetailFragment.this.getFeed(), "Page Detailed View");
                return;
            }
            Item item = (Item) getObject();
            if (media.isVideo()) {
                getContext().startActivity(NVFullScreenVideoActivity.intent(media, item, (Class<? extends NVFragment>) OptionMenuFragment.class));
                return;
            }
            List<Media> list = item.mediaList;
            int iIndexOf = list.indexOf(media);
            Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryOptionActivity.class);
            intent.putExtra("parent", JacksonUtils.writeAsString(item));
            intent.putExtra("parentClass", Item.class);
            intent.putExtra("preview", ItemDetailFragment.this.preview);
            intent.putExtra("list", JacksonUtils.writeAsString(list));
            if (iIndexOf >= 0) {
                intent.putExtra("position", iIndexOf);
            }
            startActivity(intent);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected boolean onUserGridClick(View view, String str) {
            if (!ItemDetailFragment.this.isMeAccessibleToThisPost()) {
                FansOnlyHintDialog.showFansOnlyHintDialog(this, ItemDetailFragment.this.getFeed(), "Page Detailed View");
                return true;
            }
            if (!super.onUserGridClick(view, str)) {
                Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
                intent.putExtra("nvObject", JacksonUtils.writeAsString(ItemDetailFragment.this.getFeed()));
                startActivity(intent);
            }
            return true;
        }

        @Override // com.narvii.detail.DetailAdapter
        public void commentNew(String str) {
            super.commentNew(str);
            CommentPostActivity.setStatusListener(ItemDetailFragment.this.commentAdapter);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected int commentSort() {
            return ItemDetailFragment.this.commentAdapter.sort();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void setCommentSort(int i) {
            ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
            itemDetailFragment.commentAdapter.flHeight = itemDetailFragment.commentExtraHeight();
            ItemDetailFragment.this.commentAdapter.setSort(i);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void commentRefresh() {
            ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
            itemDetailFragment.commentAdapter.flHeight = itemDetailFragment.commentExtraHeight();
            ItemDetailFragment.this.commentAdapter.resetList();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected boolean showEmojiOnly() {
            AffiliationsService affiliationsService = (AffiliationsService) getService("affiliations");
            return !((ItemDetailFragment.this.getFeed().ndcId > 0 && affiliationsService.contains(ItemDetailFragment.this.getFeed().ndcId)) || (ItemDetailFragment.this.getIntParam("__communityId") > 0 && affiliationsService.contains(ItemDetailFragment.this.getIntParam("__communityId")))) && ((FeedDetailFragment) ItemDetailFragment.this).fromHeadline;
        }

        @Override // com.narvii.detail.FeedDetailAdapter
        protected boolean shouldBlockShareMedia() {
            if (!ItemDetailFragment.this.isMeAccessibleToThisPost()) {
                FansOnlyHintDialog.showFansOnlyHintDialog(this, ItemDetailFragment.this.getFeed(), "Page Detailed View");
                return true;
            }
            return super.shouldBlockShareMedia();
        }
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z, Intent intent) {
        if (z && (StoryNotificationStub.ACTION_VOTE.equals(intent.getAction()) || "voteFromBottom".equals(intent.getAction()))) {
            if (this.tagRelatedAdapter != null && Utils.isEquals(intent.getStringExtra("__adapterClass"), TagRelatedAdapter.class.getName())) {
                this.tagRelatedAdapter.onLoginResult(z, intent);
                return;
            } else {
                vote(intent.hasExtra("voteValue") ? Integer.valueOf(intent.getIntExtra("voteValue", 4)) : null, null, "voteFromBottom".equals(intent.getAction()));
                return;
            }
        }
        super.onLoginResult(z, intent);
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void vote(Integer num, final ApiService apiService, final boolean z) {
        FeedContinuousViewer.ContinuousLoaderListener continuousLoaderListener;
        final Item feed = getFeed();
        final int targetVotedValue = VoteHelper.getTargetVotedValue(num, feed, isGlobalInteractionScope());
        if (num == null && targetVotedValue == 0) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.unlike, true);
            actionSheetDialog.addItem(R.string.comment_all_likes, false);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.item.detail.ItemDetailFragment.9
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == 0) {
                        ItemDetailFragment.this.vote(0, apiService, z);
                    } else if (i == 1) {
                        Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
                        intent.putExtra("nvObject", JacksonUtils.writeAsString(feed));
                        ItemDetailFragment.this.startActivity(intent);
                    }
                }
            });
            actionSheetDialog.show();
            return;
        }
        if (z && (continuousLoaderListener = this.continuousLoaderListener) != null) {
            continuousLoaderListener.onStart(R.id.bottom_vote, Integer.valueOf(feed.getVotedValue(isGlobalInteractionScope()) == 0 ? 1 : 2));
        }
        LoggingSource loggingSource = z ? LoggingSource.SBB : LoggingSource.PostDetailView;
        LiveLayerUtils.reportVoting(getParentContext(), feed, targetVotedValue);
        VoteHelper voteHelper = new VoteHelper(this);
        voteHelper.loggingSource = loggingSource;
        voteHelper.loggingOriginName = getStringParam(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN);
        voteHelper.vote(feed, Integer.valueOf(targetVotedValue), apiService, new VoteHelper.OnVoteListenerAdapter() { // from class: com.narvii.item.detail.ItemDetailFragment.10
            @Override // com.narvii.story.detail.VoteHelper.OnVoteListenerAdapter, com.narvii.story.detail.VoteHelper.OnVoteListener
            public void onVoteEnd(boolean z2) {
                if (ItemDetailFragment.this.headerLayout != null) {
                    ItemDetailFragment.this.headerLayout.setVoting(false);
                }
                Adapter adapter = ItemDetailFragment.this.itemAdapter;
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
                if (z2) {
                    if (z && ((FeedDetailFragment) ItemDetailFragment.this).continuousLoaderListener != null) {
                        ((FeedDetailFragment) ItemDetailFragment.this).continuousLoaderListener.onFinish(R.id.bottom_vote, Integer.valueOf(feed.getVotedValue(ItemDetailFragment.this.isGlobalInteractionScope()) == 0 ? 1 : 2));
                    }
                    if (targetVotedValue != 0) {
                        ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
                        if (itemDetailFragment.voteIconView != null) {
                            new VoteAnimationHelper(itemDetailFragment.getContext()).startAnimation(ItemDetailFragment.this.voteIconView, targetVotedValue, null);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (z) {
                    if (((FeedDetailFragment) ItemDetailFragment.this).continuousLoaderListener != null) {
                        ((FeedDetailFragment) ItemDetailFragment.this).continuousLoaderListener.onFinish(R.id.bottom_vote, 0);
                    }
                } else if (((FeedDetailFragment) ItemDetailFragment.this).continuousLoader != null) {
                    ((FeedDetailFragment) ItemDetailFragment.this).continuousLoader.updateVoteIcon(ItemDetailFragment.this.getFeed().getVotedValue(ItemDetailFragment.this.isGlobalInteractionScope()), false, ItemDetailFragment.this.getFeed().getTotalVotesCount());
                }
            }
        });
        HeaderLayout headerLayout = this.headerLayout;
        if (headerLayout != null) {
            headerLayout.setVoting(true);
        }
        Adapter adapter = this.itemAdapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    private class CommentAdapter extends CommentListAdapter {
        int flHeight;

        @Override // com.narvii.list.NVPagedAdapter
        public boolean autoLoadNextPage() {
            return true;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return i <= 0;
        }

        public CommentAdapter() {
            super(ItemDetailFragment.this);
            this.source = "Page Detailed View";
            this.loggingSource = LoggingSource.PostDetailView;
            String stringParam = ItemDetailFragment.this.getStringParam(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN);
            if (stringParam != null) {
                this.loggingOrigin = LoggingOrigin.valueOf(stringParam);
            }
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected NVObject getParent() {
            return ItemDetailFragment.this.getFeed();
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (!ItemDetailFragment.this.isMeAccessibleToThisPost()) {
                return 0;
            }
            int count = super.getCount();
            int size = rawList() != null ? rawList().size() : 0;
            return (size <= 0 || size >= pageSize()) ? count : count - 1;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj == NVPagedAdapter.LOAD_MORE) {
                startActivity(new CommentListFragment.IntentBuilder().feed(JacksonUtils.writeAsString(ItemDetailFragment.this.getFeed())).type(2).id(ItemDetailFragment.this.getStringParam("id")).source("Page Detailed View").build());
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected int firstLoadingHeight() {
            return this.flHeight;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected void onViewStickerClicked(Intent intent) {
            ItemDetailFragment.this.startActivityForResult(intent, 111);
        }
    }

    private class RelatedBlogHeaderAdapter extends NVAdapter {
        private boolean isListEmpty;

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public RelatedBlogHeaderAdapter(NVContext nVContext) {
            super(nVContext);
            this.isListEmpty = true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (ItemDetailFragment.this.isMeAccessibleToThisPost()) {
                return (ItemDetailFragment.this.isMine() || !this.isListEmpty) ? 1 : 0;
            }
            return 0;
        }

        public void setListEmpty(boolean z) {
            this.isListEmpty = z;
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.detail_header_item_top_margin, viewGroup, view);
            View viewFindViewById = viewCreateView.findViewById(R.id.header_layout);
            if (viewFindViewById != null) {
                viewFindViewById.setBackgroundColor(ContextCompat.getColor(getContext(), this.darkTheme ? R.color.header_bg_dark : R.color.header_color_light));
            }
            TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
            if (textView != null) {
                textView.setText(R.string.detail_related_pages);
                textView.setTextColor(this.darkTheme ? -1 : -7829368);
            }
            return viewCreateView;
        }
    }

    private class WriteRelatedBlogAdapter extends NVAdapter {
        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 2;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return i == 0;
        }

        public WriteRelatedBlogAdapter() {
            super(ItemDetailFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (ItemDetailFragment.this.isMeAccessibleToThisPost() && ItemDetailFragment.this.isMine()) ? 2 : 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return hashCode() + i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (i == 0) {
                View viewCreateView = createView(R.layout.detail_write_related_blog_item, viewGroup, view);
                ((ImageView) viewCreateView.findViewById(R.id.create_plus)).setImageResource(!ItemDetailFragment.this.isDarkTheme() ? R.drawable.ic_create_plus_green : R.drawable.ic_create_plus_white);
                ItemDetailFragment.this.setTextColor(viewCreateView, R.id.write_new_blog, -7829368);
                return viewCreateView;
            }
            int i2 = !ItemDetailFragment.this.isDarkTheme() ? R.layout.list_divider : R.layout.list_divider_dark;
            return createView(i2, viewGroup, view, String.valueOf(i2));
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            Intent intent = new Intent(ItemDetailFragment.this.getActivity(), (Class<?>) BlogPostActivity.class);
            BlogPost blogPost = new BlogPost();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ItemDetailFragment.this.getFeed());
            blogPost.itemList = arrayList;
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost));
            intent.putExtra("Source", "Write a Blog About This Favorite");
            intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, LoggingSource.PostDetailView.name());
            startActivity(intent);
            return true;
        }
    }

    private class TagRelatedAdapter extends FeedListAdapter {
        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return false;
        }

        public TagRelatedAdapter() {
            super(ItemDetailFragment.this);
            this.source = "Favorite Related Pages";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected Class<? extends ListResponse<? extends Feed>> responseType() {
            return TagRelatedListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (ItemDetailFragment.this.isMeAccessibleToThisPost()) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().path("/item/" + ItemDetailFragment.this.id() + "/tag-related").build();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected void onPageResponse(ApiRequest apiRequest, ListResponse<? extends Feed> listResponse, int i) {
            if (this._start == 0 && ItemDetailFragment.this.relatedBlogHeaderAdapter != null) {
                ItemDetailFragment.this.relatedBlogHeaderAdapter.setListEmpty(listResponse.list() == null || listResponse.list().isEmpty());
            }
            super.onPageResponse(apiRequest, listResponse, i);
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter
        public void onLoginResult(boolean z, Intent intent) {
            super.onLoginResult(z, intent);
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj == NVPagedAdapter.LIST_END) {
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    void addToMyFavorites() {
        this.itemHelper.addToMyFavorites(getFeed().id(), this.callback);
    }

    void addToCategory(List<ItemCategory> list) {
        this.itemHelper.addToCategory(list, getFeed().id(), this.callback);
    }

    void submitOfficialCatalog() {
        this.itemHelper.submitOfficialCatalog(getFeed());
        this.itemHelper.source = "Profile";
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 100 && i2 == -1 && intent != null) {
            addToCategory(JacksonUtils.readListAs(intent.getStringExtra("categoryList"), ItemCategory.class));
        }
        if (i == 4 && i2 == -1 && intent != null) {
            this.itemAdapter.contributorList = JacksonUtils.readListAs(intent.getStringExtra("contributorList"), Contributor.class);
            this.itemAdapter.notifyDataSetChanged();
        }
        if (i == 8 && i2 == -1 && intent != null) {
            Item item = (Item) JacksonUtils.readAs(intent.getStringExtra("object"), Item.class);
            if (!Utils.isEquals(item.itemId, getFeed().itemId)) {
                Intent intent2 = FeedDetailFragment.intent(item);
                intent2.putExtra("fromMyCatalog", this.fromMyCatalog);
                startActivity(intent2);
                getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                finish();
            }
        }
        if (i == 111 && i2 == -1) {
            this.itemAdapter.commentNew(intent.getStringExtra("collectionId"));
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void unVote() {
        vote(null, null, true);
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void showModerationDialog() {
        this.advancedOptionDialog = new AdvancedOptionDialog.Builder(this).nvObject(getFeed()).build();
        this.advancedOptionDialog.show();
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void bookmark(String str) {
        super.bookmark(str);
        new FeedHelper(this).source(str).bookmark(getFeed(), new Callback<ApiResponse>() { // from class: com.narvii.item.detail.ItemDetailFragment.12
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                if (!ItemDetailFragment.this.isAdded() || ItemDetailFragment.this.getActivity() == null) {
                    return;
                }
                NVToast.makeText(ItemDetailFragment.this.getContext(), ItemDetailFragment.this.getString(R.string.bookmark_successful), 0).show();
                Adapter adapter = ItemDetailFragment.this.itemAdapter;
                if (adapter != null) {
                    adapter.isBookmarked = true;
                    adapter.notifyDataSetChanged();
                }
            }
        });
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void bottomComment() {
        if (this.itemAdapter != null) {
            this.blockPass.set(true);
            this.itemAdapter.commentNew();
        }
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment
    protected boolean shouldBlockClick(Object obj) {
        if (this.notJoined && (obj == LIKES_HEADER || obj == DetailAdapter.USER_GRID || obj == DetailAdapter.COMMENT_HEADER)) {
            return false;
        }
        return super.shouldBlockClick(obj);
    }
}
