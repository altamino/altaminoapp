package com.narvii.comment.list;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
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
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.config.ConfigService;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
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
import com.narvii.story.StoryNotificationStub;
import com.narvii.theme.IFakeActionBar;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.logging.LoggingSource;
import com.narvii.widget.FullscreenBackgroundView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.Comparator;
import java.util.Date;

/* loaded from: classes2.dex */
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
            int i = comment.votesSum;
            int i2 = comment2.votesSum;
            if (i != i2) {
                return i2 - i;
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
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            View childAt = absListView.getChildAt(0);
            if (!CommentListFragment.this.isDarkTheme() || CommentListFragment.this.isEmbedFragment()) {
                CommentListFragment.this.actionBarOverlay.setVisibility(8);
                return;
            }
            if (i != 0 || childAt == null || childAt.getHeight() == 0) {
                CommentListFragment.this.actionBarOverlay.setVisibility(0);
                CommentListFragment.this.actionBarOverlay.setAlpha(1.0f);
            } else {
                CommentListFragment.this.actionBarOverlay.setVisibility(0);
                CommentListFragment.this.actionBarOverlay.setAlpha(1.0f - (((childAt.getTop() + childAt.getHeight()) * 1.0f) / childAt.getHeight()));
            }
        }
    };
    NVObject parent;
    private PushNotificationHelper pushNotificationHelper;
    private boolean requestBack;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "CommentList";
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected boolean observeThemeDownloadFinish() {
        return true;
    }

    public static class IntentBuilder {
        Intent intent = FragmentWrapperActivity.intent(CommentListFragment.class);

        public IntentBuilder feed(String str) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_FEED, str);
            return this;
        }

        public IntentBuilder parentId(String str) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_PARENT_ID, str);
            return this;
        }

        public IntentBuilder parentType(int i) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_PARENT_TYPE, i);
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

        public IntentBuilder loggingOrigin(String str) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, str);
            return this;
        }

        public IntentBuilder source(String str) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_SOURCE, str);
            return this;
        }

        public IntentBuilder isQuestion(boolean z) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_IS_QUESTION, z);
            return this;
        }

        public IntentBuilder autoJoin(boolean z) {
            this.intent.putExtra("autoJoin", z);
            return this;
        }

        public IntentBuilder isAnnouncement(boolean z) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, z);
            return this;
        }

        public IntentBuilder showEmojiOnly(boolean z) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_SHOW_EMOJI_ONLY, z);
            return this;
        }

        public IntentBuilder blurBackground(boolean z) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_BLUR_BACKGROUND, z);
            return this;
        }

        public IntentBuilder type(int i) {
            this.intent.putExtra("type", i);
            return this;
        }

        public IntentBuilder id(String str) {
            this.intent.putExtra("id", str);
            return this;
        }

        public IntentBuilder communityId(int i) {
            this.intent.putExtra("__communityId", i);
            return this;
        }

        public IntentBuilder loggingSource(String str) {
            this.intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, str);
            return this;
        }

        public Intent build() {
            return this.intent;
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        this.parent = (NVObject) JacksonUtils.readUsing(getStringParam(COMMENT_KEY_FEED), new Feed.FeedDeserializer());
        if (this.parent == null) {
            this.parent = new NVObject() { // from class: com.narvii.comment.list.CommentListFragment.2
                String id;
                int type;

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

                @Override // com.narvii.model.NVObject
                public String id() {
                    return this.id;
                }

                @Override // com.narvii.model.NVObject
                public int objectType() {
                    return this.type;
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

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return getStringParam("background") != null;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_comment_list, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(COMMENT_KEY_IS_QUESTION, this.isQuestion);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setOnScrollListener(this.onScrollListener);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
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
            realtimeBlurView.setVisibility(getBooleanParam(COMMENT_KEY_BLUR_BACKGROUND) ? 0 : 8);
        }
        this.fakeActionBar = view.findViewById(R.id.fake_action_bar);
        this.actionBarOverlay = view.findViewById(R.id.action_bar_overlay);
        updateFakeActionBarThemeUI();
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }

    public boolean isMine() {
        if (this.parent != null) {
            return Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), this.parent.uid());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autoShowKeyboard() {
        if (this.autoKeyboardShowed || this.adapter == null || !this.requestBack) {
            return;
        }
        this.autoKeyboardShowed = true;
        commentNew(null);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        if (supportPermissionSetting()) {
            menu.add(0, R.string.prefs_settings, 0, R.string.prefs_settings).setIcon(ContextCompat.getDrawable(getContext(), R.drawable.home_setting)).setShowAsAction(2);
        }
        menu.add(0, R.string.comment_sort, 0, R.string.comment_sort).setIcon(ContextCompat.getDrawable(getContext(), R.drawable.comment_slides_shadow)).setShowAsAction(2);
    }

    private boolean supportPermissionSetting() {
        if (parentType() != 1) {
            return false;
        }
        NVObject nVObject = this.parent;
        if (!(nVObject instanceof Blog)) {
            return false;
        }
        int i = ((Blog) nVObject).type;
        return (!isMine() || i == 9 || i == 10) ? false : true;
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.comment_sort) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            final boolean booleanParam = getBooleanParam(COMMENT_KEY_IS_ANNOUNCEMENT);
            if (!booleanParam) {
                actionSheetDialog.addItem(R.string.comment_sort_top, this.adapter.sort() == 2 ? 4 : 8);
            }
            actionSheetDialog.addItem(R.string.comment_sort_newest, this.adapter.sort() == 0 ? 4 : 8);
            actionSheetDialog.addItem(R.string.comment_sort_oldest, this.adapter.sort() != 1 ? 8 : 4);
            actionSheetDialog.addItem(R.string.refresh, 0);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.comment.list.CommentListFragment.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (booleanParam) {
                        if (i == 0) {
                            CommentListFragment.this.adapter.setSort(0);
                            return;
                        } else if (i == 1) {
                            CommentListFragment.this.adapter.setSort(1);
                            return;
                        } else {
                            if (i != 2) {
                                return;
                            }
                            CommentListFragment.this.adapter.resetList();
                            return;
                        }
                    }
                    if (i == 0) {
                        CommentListFragment.this.adapter.setSort(2);
                        return;
                    }
                    if (i == 1) {
                        CommentListFragment.this.adapter.setSort(0);
                    } else if (i == 2) {
                        CommentListFragment.this.adapter.setSort(1);
                    } else {
                        if (i != 3) {
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
            startActivity(intent);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x009e  */
    @Override // com.narvii.list.NVListFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected android.widget.ListAdapter createAdapter(android.os.Bundle r7) {
        /*
            r6 = this;
            com.narvii.comment.list.CommentListFragment$Adapter r7 = new com.narvii.comment.list.CommentListFragment$Adapter
            r7.<init>()
            r6.adapter = r7
            com.narvii.comment.list.CommentListFragment$Adapter r7 = r6.adapter
            boolean r0 = r6.isDarkTheme()
            r7.setDarkTheme(r0)
            com.narvii.list.MergeAdapter r7 = new com.narvii.list.MergeAdapter
            r7.<init>(r6)
            com.narvii.comment.list.CommentListFragment$AddNewCommentAdapter r0 = new com.narvii.comment.list.CommentListFragment$AddNewCommentAdapter
            r0.<init>()
            boolean r1 = r6.isDarkTheme()
            r0.setDarkTheme(r1)
            com.narvii.list.StaticViewAdapter r1 = new com.narvii.list.StaticViewAdapter
            r1.<init>()
            r2 = 1
            android.view.View[] r3 = new android.view.View[r2]
            com.narvii.list.overlay.OverlayListPlaceholder r4 = new com.narvii.list.overlay.OverlayListPlaceholder
            android.content.Context r5 = r6.getContext()
            r4.<init>(r5)
            r5 = 0
            r3[r5] = r4
            r1.addViews(r3)
            boolean r3 = r6.isDarkTheme()
            if (r3 == 0) goto L41
            r7.addAdapter(r1)
        L41:
            r7.addAdapter(r0, r5)
            com.narvii.comment.list.CommentListFragment$Adapter r0 = r6.adapter
            r7.addAdapter(r0, r2)
            com.narvii.comment.list.CommentListFragment$Adapter r0 = r6.adapter
            boolean r0 = r0.isQuestionAndAnswer()
            if (r0 == 0) goto L55
            r0 = 2131689749(0x7f0f0115, float:1.9008522E38)
            goto L58
        L55:
            r0 = 2131690156(0x7f0f02ac, float:1.9009348E38)
        L58:
            r6.setTitle(r0)
            com.narvii.list.StaticViewAdapter r0 = new com.narvii.list.StaticViewAdapter
            r0.<init>()
            java.lang.String r1 = "show_footer"
            boolean r1 = r6.getBooleanParam(r1, r2)
            if (r1 == 0) goto L9e
            com.narvii.model.NVObject r1 = r6.parent
            boolean r3 = r1 instanceof com.narvii.model.Feed
            if (r3 == 0) goto L9e
            com.narvii.model.Feed r1 = (com.narvii.model.Feed) r1
            boolean r3 = r6.isGlobalInteractionScope()
            r3 = r3 ^ r2
            int r1 = r1.getCommentsCount(r3)
            if (r1 <= 0) goto L9e
            com.narvii.model.NVObject r0 = r6.parent
            com.narvii.model.Feed r0 = (com.narvii.model.Feed) r0
            int r1 = r0.ndcId
            if (r1 >= 0) goto L89
            int r1 = r6.communityId()
            r0.ndcId = r1
        L89:
            boolean r1 = r6.isGlobalInteractionScope()
            r1 = r1 ^ r2
            int r1 = r0.getCommentsCount(r1)
            if (r1 <= 0) goto Lab
            com.narvii.comment.CommentListFooterAdapter r1 = new com.narvii.comment.CommentListFooterAdapter
            r3 = 0
            r1.<init>(r6, r0, r2, r3)
            r7.addAdapter(r1)
            goto Lab
        L9e:
            int[] r1 = new int[r2]
            r2 = 2131428533(0x7f0b04b5, float:1.8478713E38)
            r1[r5] = r2
            r0.addLayouts(r1)
            r7.addAdapter(r0)
        Lab:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.comment.list.CommentListFragment.createAdapter(android.os.Bundle):android.widget.ListAdapter");
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        LiveLayerService liveLayerService;
        super.onActiveChanged(z);
        if (((ConfigService) getService("config")).getCommunityId() == 0 || (liveLayerService = (LiveLayerService) getService("liveLayer")) == null) {
            return;
        }
        liveLayerService.reportBrowsing("comment-list?parent-type=" + parentType() + "&parent-id=" + parentId(), z);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        autoShowKeyboard();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 111 && i2 == -1) {
            commentNew(intent.getStringExtra("collectionId"));
        }
        super.onActivityResult(i, i2, intent);
    }

    String parentId() {
        NVObject nVObject = this.parent;
        return nVObject == null ? getStringParam(COMMENT_KEY_PARENT_ID) : nVObject.id();
    }

    int communityId() {
        return getIntParam("__communityId");
    }

    int parentType() {
        NVObject nVObject = this.parent;
        return nVObject == null ? getIntParam(COMMENT_KEY_PARENT_TYPE) : nVObject.objectType();
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
            intent.putExtra(COMMENT_KEY_FEED, JacksonUtils.writeAsString(nVObject2));
        }
        intent.putExtra("__communityId", communityId());
        intent.putExtra("stat_parent_type", StatisticHelper.getStatisticSource(this, this.parent, parentType()));
        intent.putExtra("Source", "Comment List");
        intent.putExtra(COMMENT_KEY_LOGGING_SOURCE, LoggingSource.CommentDetailView.name());
        intent.putExtra(COMMENT_KEY_LOGGING_ORIGIN, getStringParam(COMMENT_KEY_LOGGING_ORIGIN));
        intent.putExtra("autoJoin", getBooleanParam("autoJoin"));
        intent.putExtra(COMMENT_KEY_IS_ANNOUNCEMENT, getBooleanParam(COMMENT_KEY_IS_ANNOUNCEMENT));
        intent.putExtra(COMMENT_KEY_SHOW_EMOJI_ONLY, getBooleanParam(COMMENT_KEY_SHOW_EMOJI_ONLY));
        intent.putExtra("stickerCollectionId", str);
        intent.putExtra(NVActivity.INTERACTION_SCOPE, isGlobalInteractionScope());
        startActivity(intent);
        this.pushNotificationHelper.checkRemindDialogWhenPostFinished();
    }

    private class AddNewCommentAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public AddNewCommentAdapter() {
            super(CommentListFragment.this);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
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
            textView.setTextColor(this.darkTheme ? -1 : -7829368);
            textView.setOnClickListener(this.subviewClickListener);
            viewCreateView.findViewById(R.id.add_comment).setBackgroundResource(this.darkTheme ? R.drawable.edit_round_light : R.drawable.edit_round_normal);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
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
            startActivity(UserProfileFragment.intent(this, CommentListFragment.this.isGlobalInteractionScope() ? accountService.getUserProfile(0) : accountService.getUserProfile()));
            return true;
        }
    }

    private class Adapter extends CommentListAdapter {
        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return false;
        }

        public Adapter() {
            super(CommentListFragment.this);
            this.source = CommentListFragment.this.getStringParam(CommentListFragment.COMMENT_KEY_SOURCE);
            this.loggingSource = LoggingSource.CommentDetailView;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected NVObject getParent() {
            return CommentListFragment.this.parent;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            String str;
            super.onNotification(notification);
            if (StoryNotificationStub.ACTION_VOTE.equals(sortName()) && (str = notification.parentId) != null && (notification.obj instanceof Comment) && Utils.isEquals(str, CommentListFragment.this.parentId())) {
                notifyDataSetChanged();
                final int iIndexOf = list().indexOf(notification.obj);
                if (iIndexOf >= 0) {
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.comment.list.CommentListFragment.Adapter.1
                        @Override // java.lang.Runnable
                        public void run() {
                            int firstVisiblePosition = CommentListFragment.this.getListView().getFirstVisiblePosition();
                            int childCount = CommentListFragment.this.getListView().getChildCount() + firstVisiblePosition;
                            int i = iIndexOf;
                            if (i <= firstVisiblePosition || i >= childCount) {
                                CommentListFragment.this.getListView().smoothScrollToPosition(iIndexOf);
                            }
                        }
                    }, 400L);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, CommentListResponse commentListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) commentListResponse, i);
            CommentListFragment.this.requestBack = true;
            CommentListFragment.this.autoShowKeyboard();
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected boolean isQuestionAndAnswer() {
            return super.isQuestionAndAnswer() || CommentListFragment.this.isQuestion;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected boolean isAnnouncement() {
            return CommentListFragment.this.getBooleanParam(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT);
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected void onViewStickerClicked(Intent intent) {
            CommentListFragment.this.startActivityForResult(intent, 111);
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            NVObject nVObject = CommentListFragment.this.parent;
            if (nVObject instanceof Feed) {
                return ((Feed) nVObject).getTotalCommentsCount() == 0;
            }
            return super.isEmpty();
        }
    }

    @Override // com.narvii.theme.IFakeActionBar
    public void updateFakeActionBarThemeUI() {
        if (this.fakeActionBar != null) {
            this.fakeActionBar.setBackgroundDrawable(((ConfigService) getService("config")).getTheme().fakeActionbarBackground());
            this.fakeActionBar.setVisibility((isDarkTheme() || isEmbedFragment()) ? 8 : 0);
        }
    }
}
