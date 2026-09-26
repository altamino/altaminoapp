package com.narvii.comment.list;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
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
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.comment.CommentListFooterAdapter;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.Blog;
import com.narvii.model.Comment;
import com.narvii.model.Feed;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.CommentListResponse;
import com.narvii.notification.Notification;
import com.narvii.prefs.PostCommentPrivilegeFragment;
import com.narvii.theme.IFakeActionBar;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.narvii.widget.FullscreenBackgroundView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.util.Comparator;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public class CommentListFragment extends NVListFragment implements IFakeActionBar {
    public static final String COMMENT_KEY_AUTO_JOIN = "autoJoin";
    public static final String COMMENT_KEY_BACKGROUND = "background";
    public static final String COMMENT_KEY_BACKGROUND_TYPE = "backgroundType";
    public static final String COMMENT_KEY_BLUR_BACKGROUND = "blurBackground";
    public static final String COMMENT_KEY_FEED = "feed";
    public static final String COMMENT_KEY_IS_ANNOUNCEMENT = "isAnnouncement";
    public static final String COMMENT_KEY_IS_QUESTION = "isQuestion";
    public static final String COMMENT_KEY_LOGGING_ORIGIN = "loggingOrigin";
    public static final String COMMENT_KEY_LOGGING_SOURCE = "loggingSource";
    public static final String COMMENT_KEY_PARENT_ID = "parent-id";
    public static final String COMMENT_KEY_PARENT_TYPE = "parent-type";
    public static final String COMMENT_KEY_SHOW_EMOJI_ONLY = "showEmojiOnly";
    public static final String COMMENT_KEY_SOURCE = "source";
    public static final String COMMENT_KEY_TYPE = "type";
    public static final String COMMENT_KEY_id = "id";
    private static final Comparator<Comment> votesComparator = new Comparator<Comment>() { // from class: com.narvii.comment.list.CommentListFragment.4
        @Override // java.util.Comparator
        public int compare(Comment comment, Comment comment2) {
            int i10 = comment.votesSum;
            int i11 = comment2.votesSum;
            if (i10 != i11) {
                return i11 - i10;
            }
            Date date = comment.modifiedTime;
            long time = date == null ? 0L : date.getTime();
            Date date2 = comment2.modifiedTime;
            long time2 = (date2 == null ? 0L : date2.getTime()) - time;
            if (time2 > 0) {
                return 1;
            }
            return time2 < 0 ? -1 : 0;
        }
    };
    private View actionBarOverlay;
    Adapter adapter;
    private boolean autoKeyboardShowed;
    View fakeActionBar;
    private boolean isQuestion;
    AbsListView.OnScrollListener onScrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.comment.list.CommentListFragment.1
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            View childAt = absListView.getChildAt(0);
            if (!CommentListFragment.this.isDarkTheme() || CommentListFragment.this.isEmbedFragment()) {
                CommentListFragment.this.actionBarOverlay.setVisibility(8);
                return;
            }
            if (i10 != 0 || childAt == null || childAt.getHeight() == 0) {
                CommentListFragment.this.actionBarOverlay.setVisibility(0);
                CommentListFragment.this.actionBarOverlay.setAlpha(1.0f);
            } else {
                float top = 1.0f - (((childAt.getTop() + childAt.getHeight()) * 1.0f) / childAt.getHeight());
                CommentListFragment.this.actionBarOverlay.setVisibility(0);
                CommentListFragment.this.actionBarOverlay.setAlpha(top);
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
        }
    };
    NVObject parent;
    private PushNotificationHelper pushNotificationHelper;
    private boolean requestBack;

    private class Adapter extends CommentListAdapter {
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i10) {
            return false;
        }

        public Adapter() {
            super(CommentListFragment.this);
            this.source = CommentListFragment.this.getStringParam("source");
            this.loggingSource = LoggingSource.CommentDetailView;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected NVObject getParent() {
            return CommentListFragment.this.parent;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected boolean isAnnouncement() {
            return CommentListFragment.this.getBooleanParam(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT);
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            NVObject nVObject = CommentListFragment.this.parent;
            if (nVObject instanceof Feed) {
                return ((Feed) nVObject).getTotalCommentsCount() == 0;
            }
            return super.isEmpty();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, CommentListResponse commentListResponse, int i10) {
            super.onPageResponse(apiRequest, commentListResponse, i10);
            CommentListFragment.this.requestBack = true;
            CommentListFragment.this.autoShowKeyboard();
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected void onViewStickerClicked(Intent intent) {
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(CommentListFragment.this, intent, 111);
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected boolean isQuestionAndAnswer() {
            if (!super.isQuestionAndAnswer() && !CommentListFragment.this.isQuestion) {
                return false;
            }
            return true;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            String str;
            super.onNotification(notification);
            if ("vote".equals(sortName()) && (str = notification.parentId) != null && (notification.obj instanceof Comment) && Utils.isEquals(str, CommentListFragment.this.parentId())) {
                notifyDataSetChanged();
                final int iIndexOf = list().indexOf(notification.obj);
                if (iIndexOf >= 0) {
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.comment.list.CommentListFragment.Adapter.1
                        @Override // java.lang.Runnable
                        public void run() {
                            int firstVisiblePosition = CommentListFragment.this.getListView().getFirstVisiblePosition();
                            int childCount = CommentListFragment.this.getListView().getChildCount() + firstVisiblePosition;
                            int i10 = iIndexOf;
                            if (i10 <= firstVisiblePosition || i10 >= childCount) {
                                CommentListFragment.this.getListView().smoothScrollToPosition(iIndexOf);
                            }
                        }
                    }, 400L);
                }
            }
        }
    }

    private class AddNewCommentAdapter extends NVAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        public AddNewCommentAdapter() {
            super(CommentListFragment.this);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 == null) {
                return true;
            }
            int id = view2.getId();
            if (id == R.id.add_comment) {
                LogEvent.clickBuilder(this, ActSemantic.checkComment).area("CommentBar").object(CommentListFragment.this.parent).send();
                CommentListFragment.this.commentNew(null);
                return true;
            }
            if (id != R.id.user_avatar_layout) {
                return true;
            }
            AccountService accountService = (AccountService) getService("account");
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, UserProfileFragment.intent(this, CommentListFragment.this.isGlobalInteractionScope() ? accountService.getUserProfile(0) : accountService.getUserProfile()));
            return true;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            int i12;
            View viewCreateView = createView(R.layout.detail_comment_add_item, viewGroup, view);
            AccountService accountService = (AccountService) getService("account");
            User userProfile = accountService.getUserProfile();
            if (isGlobalInteractionScope()) {
                userProfile = accountService.getUserProfile(0);
            }
            UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout);
            userAvatarLayout.setUser(userProfile);
            userAvatarLayout.setDarkTheme(this.darkTheme, ((NVFragment) CommentListFragment.this)._backgroundColor, false);
            userAvatarLayout.setOnClickListener(this.subviewClickListener);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.add_comment);
            if (this.darkTheme) {
                i11 = -1;
            } else {
                i11 = -7829368;
            }
            textView.setTextColor(i11);
            textView.setOnClickListener(this.subviewClickListener);
            View viewFindViewById = viewCreateView.findViewById(R.id.add_comment);
            if (this.darkTheme) {
                i12 = R.drawable.edit_round_light;
            } else {
                i12 = R.drawable.edit_round_normal;
            }
            viewFindViewById.setBackgroundResource(i12);
            return viewCreateView;
        }
    }

    public static class IntentBuilder {
        Intent intent = FragmentWrapperActivity.intent(CommentListFragment.class);

        public Intent build() {
            return this.intent;
        }

        public IntentBuilder autoJoin(boolean z6) {
            this.intent.putExtra("autoJoin", z6);
            return this;
        }

        public IntentBuilder background(Media media) {
            this.intent.putExtra("background", JacksonUtils.writeAsString(media));
            return this;
        }

        public IntentBuilder backgroundType(String str) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_BACKGROUND_TYPE, str);
            return this;
        }

        public IntentBuilder blurBackground(boolean z6) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_BLUR_BACKGROUND, z6);
            return this;
        }

        public IntentBuilder communityId(int i10) {
            this.intent.putExtra("__communityId", i10);
            return this;
        }

        public IntentBuilder feed(String str) {
            this.intent.putExtra("feed", str);
            return this;
        }

        public IntentBuilder id(String str) {
            this.intent.putExtra("id", str);
            return this;
        }

        public IntentBuilder isAnnouncement(boolean z6) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, z6);
            return this;
        }

        public IntentBuilder isQuestion(boolean z6) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_IS_QUESTION, z6);
            return this;
        }

        public IntentBuilder loggingOrigin(String str) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, str);
            return this;
        }

        public IntentBuilder loggingSource(String str) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, str);
            return this;
        }

        public IntentBuilder parentId(String str) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_PARENT_ID, str);
            return this;
        }

        public IntentBuilder parentType(int i10) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_PARENT_TYPE, i10);
            return this;
        }

        public IntentBuilder showEmojiOnly(boolean z6) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_SHOW_EMOJI_ONLY, z6);
            return this;
        }

        public IntentBuilder source(String str) {
            this.intent.putExtra("source", str);
            return this;
        }

        public IntentBuilder type(int i10) {
            this.intent.putExtra("type", i10);
            return this;
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "comment_list";
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 2);
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected boolean observeThemeDownloadFinish() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autoShowKeyboard() {
        if (this.autoKeyboardShowed || this.adapter == null || !this.requestBack) {
            return;
        }
        this.autoKeyboardShowed = true;
        commentNew(null);
    }

    void commentNew(String str) {
        Intent intent = new Intent(getActivity(), (Class<?>) CommentPostActivity.class);
        intent.putExtra("parentType", parentType());
        intent.putExtra("parentId", parentId());
        NVObject nVObject = this.parent;
        if (nVObject instanceof Blog) {
            intent.putExtra("parentSubType", ((Blog) nVObject).type);
        }
        NVObject nVObject2 = this.parent;
        if (nVObject2 instanceof Feed) {
            intent.putExtra("feed", JacksonUtils.writeAsString(nVObject2));
        }
        intent.putExtra("__communityId", communityId());
        intent.putExtra(EventConstants.CommentPost.STAT_PARENT_TYPE, StatisticHelper.getStatisticSource(this, this.parent, parentType()));
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Comment List");
        intent.putExtra(COMMENT_KEY_LOGGING_SOURCE, LoggingSource.CommentDetailView.name());
        intent.putExtra(COMMENT_KEY_LOGGING_ORIGIN, getStringParam(COMMENT_KEY_LOGGING_ORIGIN));
        intent.putExtra("autoJoin", getBooleanParam("autoJoin"));
        intent.putExtra(COMMENT_KEY_IS_ANNOUNCEMENT, getBooleanParam(COMMENT_KEY_IS_ANNOUNCEMENT));
        intent.putExtra(COMMENT_KEY_SHOW_EMOJI_ONLY, getBooleanParam(COMMENT_KEY_SHOW_EMOJI_ONLY));
        intent.putExtra("stickerCollectionId", str);
        intent.putExtra(NVActivity.INTERACTION_SCOPE, isGlobalInteractionScope());
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        this.pushNotificationHelper.checkRemindDialogWhenPostFinished();
    }

    int communityId() {
        return getIntParam("__communityId");
    }

    /* JADX WARN: Code duplicated, block: B:21:0x009c  */
    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        adapter.setDarkTheme(isDarkTheme());
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        AddNewCommentAdapter addNewCommentAdapter = new AddNewCommentAdapter();
        addNewCommentAdapter.setDarkTheme(isDarkTheme());
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        if (isDarkTheme()) {
            mergeAdapter.addAdapter(staticViewAdapter);
        }
        mergeAdapter.addAdapter(addNewCommentAdapter, false);
        mergeAdapter.addAdapter(this.adapter, true);
        setTitle(this.adapter.isQuestionAndAnswer() ? R.string.answers : R.string.comments);
        StaticViewAdapter staticViewAdapter2 = new StaticViewAdapter();
        if (getBooleanParam("show_footer", true)) {
            NVObject nVObject = this.parent;
            if (!(nVObject instanceof Feed) || ((Feed) nVObject).getCommentsCount(!isGlobalInteractionScope()) <= 0) {
                staticViewAdapter2.addLayouts(R.layout.list_bottom_placeholder);
                mergeAdapter.addAdapter(staticViewAdapter2);
            } else {
                Feed feed = (Feed) this.parent;
                if (feed.ndcId < 0) {
                    feed.ndcId = communityId();
                }
                if (feed.getCommentsCount(!isGlobalInteractionScope()) > 0) {
                    mergeAdapter.addAdapter(new CommentListFooterAdapter(this, feed, true, null));
                }
            }
        } else {
            staticViewAdapter2.addLayouts(R.layout.list_bottom_placeholder);
            mergeAdapter.addAdapter(staticViewAdapter2);
        }
        return mergeAdapter;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return getStringParam("background") != null;
    }

    public boolean isMine() {
        if (this.parent != null) {
            return Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), this.parent.uid());
        }
        return false;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 111 && i11 == -1) {
            commentNew(intent.getStringExtra("collectionId"));
        }
        super.onActivityResult(i10, i11, intent);
    }

    String parentId() {
        NVObject nVObject = this.parent;
        return nVObject == null ? getStringParam(COMMENT_KEY_PARENT_ID) : nVObject.id();
    }

    int parentType() {
        NVObject nVObject = this.parent;
        return nVObject == null ? getIntParam(COMMENT_KEY_PARENT_TYPE) : nVObject.objectType();
    }

    @Override // com.narvii.theme.IFakeActionBar
    public void updateFakeActionBarThemeUI() {
        if (this.fakeActionBar != null) {
            this.fakeActionBar.setBackgroundDrawable(((ConfigService) getService("config")).getTheme().fakeActionbarBackground());
            this.fakeActionBar.setVisibility((isDarkTheme() || isEmbedFragment()) ? 8 : 0);
        }
    }

    private boolean supportPermissionSetting() {
        if (parentType() == 1 && (this.parent instanceof Blog)) {
            return isMine();
        }
        return false;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        LiveLayerService liveLayerService;
        super.onActiveChanged(z6);
        if (((ConfigService) getService("config")).getCommunityId() != 0 && (liveLayerService = (LiveLayerService) getService("liveLayer")) != null) {
            liveLayerService.reportBrowsing("comment-list?parent-type=" + parentType() + "&parent-id=" + parentId(), z6);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        NVObject nVObject = (NVObject) JacksonUtils.readUsing(getStringParam("feed"), new Feed.FeedDeserializer());
        this.parent = nVObject;
        if (nVObject == null) {
            this.parent = new NVObject() { // from class: com.narvii.comment.list.CommentListFragment.2
                String id;
                int type;

                @Override // com.narvii.model.NVObject
                public String id() {
                    return this.id;
                }

                @Override // com.narvii.model.NVObject
                public int objectType() {
                    return this.type;
                }

                @Override // com.narvii.model.NVObject
                public String parentId() {
                    return null;
                }

                @Override // com.narvii.model.NVObject
                public int status() {
                    return 0;
                }

                @Override // com.narvii.model.NVObject
                public String uid() {
                    return null;
                }

                {
                    this.id = CommentListFragment.this.getStringParam(CommentListFragment.COMMENT_KEY_PARENT_ID);
                    this.type = CommentListFragment.this.getIntParam(CommentListFragment.COMMENT_KEY_PARENT_TYPE);
                }
            };
        }
        if (bundle == null) {
            this.isQuestion = getBooleanParam(COMMENT_KEY_IS_QUESTION, false);
        } else {
            this.isQuestion = bundle.getBoolean(COMMENT_KEY_IS_QUESTION);
        }
        this.pushNotificationHelper = new PushNotificationHelper(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        if (supportPermissionSetting()) {
            menu.add(0, R.string.prefs_settings, 0, R.string.prefs_settings).setIcon(ContextCompat.getDrawable(getContext(), R.drawable.home_setting)).setShowAsAction(2);
        }
        menu.add(0, R.string.comment_sort, 0, R.string.comment_sort).setIcon(ContextCompat.getDrawable(getContext(), R.drawable.comment_slides_shadow)).setShowAsAction(2);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_comment_list, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setOnScrollListener(this.onScrollListener);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int i10;
        int i11;
        if (menuItem.getItemId() == R.string.comment_sort) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            final boolean booleanParam = getBooleanParam(COMMENT_KEY_IS_ANNOUNCEMENT);
            int i12 = 8;
            if (!booleanParam) {
                if (this.adapter.sort() == 2) {
                    i11 = 4;
                } else {
                    i11 = 8;
                }
                actionSheetDialog.addItem(R.string.comment_sort_top, i11);
            }
            if (this.adapter.sort() == 0) {
                i10 = 4;
            } else {
                i10 = 8;
            }
            actionSheetDialog.addItem(R.string.comment_sort_newest, i10);
            if (this.adapter.sort() == 1) {
                i12 = 4;
            }
            actionSheetDialog.addItem(R.string.comment_sort_oldest, i12);
            actionSheetDialog.addItem(R.string.refresh, 0);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.comment.list.CommentListFragment.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i13) {
                    if (booleanParam) {
                        if (i13 == 0) {
                            CommentListFragment.this.adapter.setSort(0);
                            return;
                        } else if (i13 == 1) {
                            CommentListFragment.this.adapter.setSort(1);
                            return;
                        } else {
                            if (i13 != 2) {
                                return;
                            }
                            CommentListFragment.this.adapter.resetList();
                            return;
                        }
                    }
                    if (i13 == 0) {
                        CommentListFragment.this.adapter.setSort(2);
                        return;
                    }
                    if (i13 == 1) {
                        CommentListFragment.this.adapter.setSort(0);
                    } else if (i13 == 2) {
                        CommentListFragment.this.adapter.setSort(1);
                    } else {
                        if (i13 != 3) {
                            return;
                        }
                        CommentListFragment.this.adapter.resetList();
                    }
                }
            });
            actionSheetDialog.show();
            return true;
        }
        if (menuItem.getItemId() == R.string.prefs_settings) {
            Intent intent = FragmentWrapperActivity.intent(PostCommentPrivilegeFragment.class);
            intent.putExtra("blogId", parentId());
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        autoShowKeyboard();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(COMMENT_KEY_IS_QUESTION, this.isQuestion);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        int i10;
        super.onViewCreated(view, bundle);
        FullscreenBackgroundView fullscreenBackgroundView = (FullscreenBackgroundView) view.findViewById(R.id.background);
        if (getStringParam(COMMENT_KEY_BACKGROUND_TYPE) != null) {
            NVImageView nVImageView = fullscreenBackgroundView.backgroundView;
            nVImageView.hidePlayButton = true;
            nVImageView.imageType = getStringParam(COMMENT_KEY_BACKGROUND_TYPE);
        }
        fullscreenBackgroundView.setBackgroundMedia((Media) JacksonUtils.readAs(getStringParam("background"), Media.class));
        RealtimeBlurView realtimeBlurView = (RealtimeBlurView) view.findViewById(R.id.blur);
        if (realtimeBlurView != null) {
            if (getBooleanParam(COMMENT_KEY_BLUR_BACKGROUND)) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            realtimeBlurView.setVisibility(i10);
        }
        this.fakeActionBar = view.findViewById(R.id.fake_action_bar);
        this.actionBarOverlay = view.findViewById(R.id.action_bar_overlay);
        updateFakeActionBarThemeUI();
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }
}
