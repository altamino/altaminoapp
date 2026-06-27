package com.narvii.story;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.RtcService;
import com.narvii.comment.CommentHelper;
import com.narvii.comment.CommentListFooterAdapter;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.TippingInfo;
import com.narvii.model.User;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.paging.PageViewUtils;
import com.narvii.share.ShareButtonSaveStory;
import com.narvii.share.ShareDialog;
import com.narvii.share.SharePayload;
import com.narvii.story.detail.VoteHelper;
import com.narvii.story.widgets.DispatchEventFrameLayout;
import com.narvii.story.widgets.IDispatchEventListener;
import com.narvii.story.widgets.StoryReplayNextView;
import com.narvii.tipping.TippingHelper;
import com.narvii.user.follow.UserFollowView;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.particles.ParticlesHelper;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.UserAvatarLayout;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StoryInterstitialPageFragment.kt */
/* loaded from: classes3.dex */
public final class StoryInterstitialPageFragment extends NVListFragment implements NotificationListener, IDispatchEventListener {
    public static final Companion Companion = new Companion(null);
    public static final String LOG_AREA = "StoryEnd";
    private static final String TAG = "StoryInterstitialPage";
    private HashMap _$_findViewCache;
    private AccountService account;
    private boolean autoLoadNextPage;
    private Blog blog;
    private IStoryBottomSheetListener bottomSheetListener;
    private Community community;
    private View hoverView;
    private InterstitialTopAdapter interstitialTopAdapter;
    private PushNotificationHelper pushNotificationHelper;
    private StoryReplayNextView.IStoryReplayNextClickListener replayNextClickListener;
    private StoryReplayNextView replayNextView;
    private StoryDownloadHelper storyDownloadHelper;
    private TippingHelper tippingHelper;
    private boolean countDownEnable = true;
    private Rect offsetRect = new Rect();

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ AccountService access$getAccount$p(StoryInterstitialPageFragment storyInterstitialPageFragment) {
        AccountService accountService = storyInterstitialPageFragment.account;
        if (accountService != null) {
            return accountService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("account");
        throw null;
    }

    public static final /* synthetic */ Blog access$getBlog$p(StoryInterstitialPageFragment storyInterstitialPageFragment) {
        Blog blog = storyInterstitialPageFragment.blog;
        if (blog != null) {
            return blog;
        }
        Intrinsics.throwUninitializedPropertyAccessException("blog");
        throw null;
    }

    public static final /* synthetic */ View access$getHoverView$p(StoryInterstitialPageFragment storyInterstitialPageFragment) {
        View view = storyInterstitialPageFragment.hoverView;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("hoverView");
        throw null;
    }

    public static final /* synthetic */ PushNotificationHelper access$getPushNotificationHelper$p(StoryInterstitialPageFragment storyInterstitialPageFragment) {
        PushNotificationHelper pushNotificationHelper = storyInterstitialPageFragment.pushNotificationHelper;
        if (pushNotificationHelper != null) {
            return pushNotificationHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("pushNotificationHelper");
        throw null;
    }

    public static final /* synthetic */ StoryDownloadHelper access$getStoryDownloadHelper$p(StoryInterstitialPageFragment storyInterstitialPageFragment) {
        StoryDownloadHelper storyDownloadHelper = storyInterstitialPageFragment.storyDownloadHelper;
        if (storyDownloadHelper != null) {
            return storyDownloadHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("storyDownloadHelper");
        throw null;
    }

    public static final /* synthetic */ TippingHelper access$getTippingHelper$p(StoryInterstitialPageFragment storyInterstitialPageFragment) {
        TippingHelper tippingHelper = storyInterstitialPageFragment.tippingHelper;
        if (tippingHelper != null) {
            return tippingHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tippingHelper");
        throw null;
    }

    public final IStoryBottomSheetListener getBottomSheetListener() {
        return this.bottomSheetListener;
    }

    public final void setBottomSheetListener(IStoryBottomSheetListener iStoryBottomSheetListener) {
        this.bottomSheetListener = iStoryBottomSheetListener;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object as = JacksonUtils.readAs(getStringParam("blog"), Blog.class);
        Intrinsics.checkExpressionValueIsNotNull(as, "JacksonUtils.readAs(getS…blog\"), Blog::class.java)");
        this.blog = (Blog) as;
        this.community = (Community) JacksonUtils.readAs(getStringParam("community"), Community.class);
        if (this.community == null) {
            this.community = (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class);
        }
        this.autoLoadNextPage = getBooleanParam("autoLoadNextPage", false);
        this.countDownEnable = getBooleanParam("countDownEnable", true);
        this.pushNotificationHelper = new PushNotificationHelper(this);
        this.tippingHelper = new TippingHelper(this);
        this.storyDownloadHelper = new StoryDownloadHelper(this);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Object service = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"account\")");
        this.account = (AccountService) service;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(R.layout.fragment_story_interestial_page, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        DispatchEventFrameLayout dispatchEventFrameLayout = (DispatchEventFrameLayout) view.findViewById(com.narvii.amino.R.id.parent_layout);
        if (dispatchEventFrameLayout == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.story.widgets.DispatchEventFrameLayout");
        }
        dispatchEventFrameLayout.setDispatchEventListener(this);
        ((StoryReplayNextView) view.findViewById(com.narvii.amino.R.id.story_replay_next_view)).setReplayNextClickListener(this.replayNextClickListener);
        ((StoryReplayNextView) view.findViewById(com.narvii.amino.R.id.story_replay_next_view)).setNextEnable(this.autoLoadNextPage);
        ((ImageView) view.findViewById(com.narvii.amino.R.id.share)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.StoryInterstitialPageFragment.onCreateView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LogEvent.clickBuilder(StoryInterstitialPageFragment.this, ActSemantic.share).area(StoryInterstitialPageFragment.LOG_AREA).object(StoryInterstitialPageFragment.access$getBlog$p(StoryInterstitialPageFragment.this)).send();
                StoryInterstitialPageFragment storyInterstitialPageFragment = StoryInterstitialPageFragment.this;
                ShareDialog.getShareDialogFromStory(storyInterstitialPageFragment, StoryInterstitialPageFragment.access$getBlog$p(storyInterstitialPageFragment), new ShareButtonSaveStory(StoryInterstitialPageFragment.this) { // from class: com.narvii.story.StoryInterstitialPageFragment.onCreateView.1.1
                    @Override // com.narvii.share.ShareButtonSaveStory
                    public void onClickWithPermissionGranted(SharePayload payload) {
                        Intrinsics.checkParameterIsNotNull(payload, "payload");
                        StoryDownloadHelper storyDownloadHelperAccess$getStoryDownloadHelper$p = StoryInterstitialPageFragment.access$getStoryDownloadHelper$p(StoryInterstitialPageFragment.this);
                        NVObject nVObject = payload.object;
                        if (nVObject == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.Blog");
                        }
                        StoryDownloadHelper.downloadStory$default(storyDownloadHelperAccess$getStoryDownloadHelper$p, (Blog) nVObject, 0, 2, null);
                    }
                }).show();
            }
        });
        this.replayNextView = (StoryReplayNextView) view.findViewById(com.narvii.amino.R.id.story_replay_next_view);
        View viewFindViewById = view.findViewById(com.narvii.amino.R.id.hover_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.hover_layout");
        this.hoverView = viewFindViewById;
        return view;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        View view2 = this.hoverView;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("hoverView");
            throw null;
        }
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) view2.findViewById(R.id.avatar);
        if (userAvatarLayout != null) {
            AccountService accountService = this.account;
            if (accountService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("account");
                throw null;
            }
            userAvatarLayout.setUser(accountService.getUserProfile());
        }
        View view3 = this.hoverView;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("hoverView");
            throw null;
        }
        view3.findViewById(com.narvii.amino.R.id.avatar).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.StoryInterstitialPageFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                StoryInterstitialPageFragment storyInterstitialPageFragment = StoryInterstitialPageFragment.this;
                storyInterstitialPageFragment.startActivity(UserProfileFragment.intent(storyInterstitialPageFragment, StoryInterstitialPageFragment.access$getAccount$p(storyInterstitialPageFragment).getUserProfile()));
            }
        });
        View view4 = this.hoverView;
        if (view4 != null) {
            ((FrameLayout) view4.findViewById(com.narvii.amino.R.id.comment_hint_view)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.StoryInterstitialPageFragment.onViewCreated.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view5) {
                    LogEvent.clickBuilder(StoryInterstitialPageFragment.this, ActSemantic.checkComment).area(StoryInterstitialPageFragment.LOG_AREA).object(StoryInterstitialPageFragment.access$getBlog$p(StoryInterstitialPageFragment.this)).send();
                    if (StoryInterstitialPageFragment.access$getAccount$p(StoryInterstitialPageFragment.this).hasAccount()) {
                        StoryInterstitialPageFragment.this.openCommentPage();
                    } else {
                        StoryInterstitialPageFragment.this.ensureLogin(new Intent());
                    }
                }
            });
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("hoverView");
            throw null;
        }
    }

    public final void setVisibleParam(boolean z, boolean z2) {
        this.countDownEnable = z2;
        this.autoLoadNextPage = z;
        StoryReplayNextView storyReplayNextView = this.replayNextView;
        if (storyReplayNextView != null) {
            storyReplayNextView.setNextEnable(z);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        Log.d(TAG, "onActiveChanged >>> " + z);
        if (this.countDownEnable) {
            if (z) {
                StoryReplayNextView storyReplayNextView = this.replayNextView;
                if (storyReplayNextView != null) {
                    storyReplayNextView.startCountDown();
                    return;
                }
                return;
            }
            StoryReplayNextView storyReplayNextView2 = this.replayNextView;
            if (storyReplayNextView2 != null) {
                storyReplayNextView2.pauseCountDown();
            }
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.NVContext
    public NVContext getParentContext() {
        if (getView() != null) {
            return PageViewUtils.getPageViewParent(getView());
        }
        return super.getParentContext();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(final ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
        }
        if (listView != null) {
            listView.setOverScrollMode(2);
        }
        setEmptyView((View) null);
        if (listView instanceof NVListView) {
            ((NVListView) listView).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.story.StoryInterstitialPageFragment.onListViewCreated.1
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i) {
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                    ListView listView2;
                    if (absListView == null) {
                        return;
                    }
                    ListView listView3 = StoryInterstitialPageFragment.this.getListView();
                    if ((listView3 == null || listView3.getOverScrollMode() != 2) && (listView2 = StoryInterstitialPageFragment.this.getListView()) != null) {
                        listView2.setOverScrollMode(2);
                    }
                    if (absListView.getFirstVisiblePosition() > 0) {
                        StoryInterstitialPageFragment.this.offsetRect.set(0, Utils.dpToPxInt(StoryInterstitialPageFragment.this.getContext(), 80.0f), 0, 0);
                        ((NVListView) listView).setClipOffsetRect(StoryInterstitialPageFragment.this.offsetRect);
                        StoryInterstitialPageFragment.access$getHoverView$p(StoryInterstitialPageFragment.this).setVisibility(0);
                    } else {
                        ((NVListView) listView).setClipOffsetRect(null);
                        StoryInterstitialPageFragment.access$getHoverView$p(StoryInterstitialPageFragment.this).setVisibility(8);
                    }
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.interstitialTopAdapter = new InterstitialTopAdapter(this, this);
        mergeAdapter.addAdapter(this.interstitialTopAdapter);
        mergeAdapter.addAdapter(new CommentInputAdapter(this, this));
        Blog blog = this.blog;
        if (blog != null) {
            Adapter adapter = new Adapter(this, this, blog);
            Blog blog2 = this.blog;
            if (blog2 != null) {
                EmptyViewAdapter emptyViewAdapter = new EmptyViewAdapter(this, this, blog2);
                emptyViewAdapter.setHost(adapter);
                mergeAdapter.addAdapter(emptyViewAdapter);
                mergeAdapter.addAdapter(adapter);
                Blog blog3 = this.blog;
                if (blog3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("blog");
                    throw null;
                }
                if (blog3.getCommentsCount(!isGlobalInteractionScope()) > 0) {
                    Blog blog4 = this.blog;
                    if (blog4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("blog");
                        throw null;
                    }
                    mergeAdapter.addAdapter(new CommentListFooterAdapter(this, blog4, false, this.community));
                }
                return mergeAdapter;
            }
            Intrinsics.throwUninitializedPropertyAccessException("blog");
            throw null;
        }
        Intrinsics.throwUninitializedPropertyAccessException("blog");
        throw null;
    }

    public final void setReplayNextClickListener(StoryReplayNextView.IStoryReplayNextClickListener iStoryReplayNextClickListener) {
        this.replayNextClickListener = iStoryReplayNextClickListener;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification n) {
        String strId;
        Intrinsics.checkParameterIsNotNull(n, "n");
        if (Intrinsics.areEqual(n.action, StoryNotificationStub.ACTION_VOTE_START) || Intrinsics.areEqual(n.action, StoryNotificationStub.ACTION_VOTE_END)) {
            Object obj = n.obj;
            if (obj instanceof Blog) {
                if (obj != null) {
                    Blog blog = (Blog) obj;
                    String strId2 = blog.id();
                    Blog blog2 = this.blog;
                    if (blog2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("blog");
                        throw null;
                    }
                    if (Utils.isEqualsNotNull(strId2, blog2.id())) {
                        NVObject nVObjectM46clone = blog.m46clone();
                        if (nVObjectM46clone == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.Blog");
                        }
                        this.blog = (Blog) nVObjectM46clone;
                        InterstitialTopAdapter interstitialTopAdapter = this.interstitialTopAdapter;
                        if (interstitialTopAdapter != null) {
                            interstitialTopAdapter.setVoteEnd(Intrinsics.areEqual(n.action, StoryNotificationStub.ACTION_VOTE_END));
                        }
                        InterstitialTopAdapter interstitialTopAdapter2 = this.interstitialTopAdapter;
                        if (interstitialTopAdapter2 != null) {
                            interstitialTopAdapter2.notifyDataSetChanged();
                            return;
                        }
                        return;
                    }
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.Blog");
            }
        }
        if (Intrinsics.areEqual(n.action, "update")) {
            Object obj2 = n.obj;
            if (obj2 instanceof User) {
                if (obj2 != null) {
                    User user = (User) obj2;
                    String strId3 = user.id();
                    Blog blog3 = this.blog;
                    if (blog3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("blog");
                        throw null;
                    }
                    User user2 = blog3.author;
                    if (user2 == null || (strId = user2.id()) == null) {
                        strId = "";
                    }
                    if (TextUtils.equals(strId3, strId)) {
                        Blog blog4 = this.blog;
                        if (blog4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("blog");
                            throw null;
                        }
                        blog4.author = user;
                        InterstitialTopAdapter interstitialTopAdapter3 = this.interstitialTopAdapter;
                        if (interstitialTopAdapter3 != null) {
                            interstitialTopAdapter3.notifyDataSetChanged();
                            return;
                        }
                        return;
                    }
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.User");
            }
        }
    }

    public final void updateStory(Blog blog) {
        Intrinsics.checkParameterIsNotNull(blog, "blog");
        this.blog = blog;
        InterstitialTopAdapter interstitialTopAdapter = this.interstitialTopAdapter;
        if (interstitialTopAdapter != null) {
            interstitialTopAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.story.widgets.IDispatchEventListener
    public void onDispatchDownEvent() {
        StoryReplayNextView storyReplayNextView = this.replayNextView;
        if (storyReplayNextView != null) {
            storyReplayNextView.cancelCountDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openCommentPage() {
        Blog blog = this.blog;
        if (blog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("blog");
            throw null;
        }
        Intent commentPostActivityIntent = CommentHelper.getCommentPostActivityIntent(this, blog, isGlobalInteractionScope());
        INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(getContext());
        if (nVPlayer != null && nVPlayer.getPlayWhenReady()) {
            commentPostActivityIntent.putExtra("fromStoryCommentList", true);
        }
        startActivity(commentPostActivityIntent);
    }

    /* compiled from: StoryInterstitialPageFragment.kt */
    private final class EmptyViewAdapter extends AdriftAdapter {
        private NVAdapter host;
        private final Blog story;
        final /* synthetic */ StoryInterstitialPageFragment this$0;

        @Override // com.narvii.list.AdriftAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EmptyViewAdapter(StoryInterstitialPageFragment storyInterstitialPageFragment, NVContext ctx, Blog story) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            Intrinsics.checkParameterIsNotNull(story, "story");
            this.this$0 = storyInterstitialPageFragment;
            this.story = story;
        }

        public final Blog getStory() {
            return this.story;
        }

        public final NVAdapter getHost() {
            return this.host;
        }

        public final void setHost(NVAdapter nVAdapter) {
            this.host = nVAdapter;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.interstital_comment_empty_view, viewGroup, view);
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView<FrameLayout>(…iew, parent, convertView)");
            return viewCreateView;
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            NVAdapter nVAdapter = this.host;
            if (nVAdapter != null) {
                return (nVAdapter == null || nVAdapter.getCount() != 0) ? 0 : 1;
            }
            return 1;
        }
    }

    /* compiled from: StoryInterstitialPageFragment.kt */
    private final class Adapter extends CommentListAdapter {
        private final Blog story;
        final /* synthetic */ StoryInterstitialPageFragment this$0;

        @Override // com.narvii.list.NVAdapter
        public boolean isDarkNVTheme() {
            return true;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(StoryInterstitialPageFragment storyInterstitialPageFragment, NVContext ctx, Blog story) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            Intrinsics.checkParameterIsNotNull(story, "story");
            this.this$0 = storyInterstitialPageFragment;
            this.story = story;
            setDarkTheme(true);
        }

        public final Blog getStory() {
            return this.story;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected NVObject getParent() {
            return this.story;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected int getFeedNdcId() {
            return this.story.ndcId;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return this.story.getTotalCommentsCount() == 0;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
            View view2 = super.getItemView(obj, view, viewGroup);
            view2.setBackgroundColor(Color.parseColor("#40000000"));
            Intrinsics.checkExpressionValueIsNotNull(view2, "view");
            return view2;
        }
    }

    /* compiled from: StoryInterstitialPageFragment.kt */
    private final class InterstitialTopAdapter extends AdriftAdapter implements UserFollowView.ClickListener {
        private final NVContext ctx;
        private UserFollowView followView;
        final /* synthetic */ StoryInterstitialPageFragment this$0;
        private View view;
        private boolean voteEnd;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InterstitialTopAdapter(StoryInterstitialPageFragment storyInterstitialPageFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = storyInterstitialPageFragment;
            this.ctx = ctx;
            this.voteEnd = true;
        }

        public final NVContext getCtx() {
            return this.ctx;
        }

        public final boolean getVoteEnd() {
            return this.voteEnd;
        }

        public final void setVoteEnd(boolean z) {
            this.voteEnd = z;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            String str;
            LinearLayout view2 = (LinearLayout) createView(R.layout.view_interestial_page_top, viewGroup, view);
            Intrinsics.checkExpressionValueIsNotNull(view2, "view");
            this.view = view2;
            User user = StoryInterstitialPageFragment.access$getBlog$p(this.this$0).author;
            UserAvatarLayout userAvatarLayout = (UserAvatarLayout) view2.findViewById(R.id.amino_team_user_avatar);
            if (userAvatarLayout != null) {
                userAvatarLayout.setUser(user);
            }
            UserAvatarLayout userAvatarLayout2 = (UserAvatarLayout) view2.findViewById(R.id.amino_team_user_avatar);
            if (userAvatarLayout2 != null) {
                userAvatarLayout2.setOnClickListener(this.subviewClickListener);
            }
            UserFollowView userFollowView = (UserFollowView) view2.findViewById(com.narvii.amino.R.id.follow_view);
            Intrinsics.checkExpressionValueIsNotNull(userFollowView, "view.follow_view");
            this.followView = userFollowView;
            UserFollowView userFollowView2 = this.followView;
            if (userFollowView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("followView");
                throw null;
            }
            userFollowView2.init(this);
            UserFollowView userFollowView3 = this.followView;
            if (userFollowView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("followView");
                throw null;
            }
            userFollowView3.setClickListener(this);
            UserFollowView userFollowView4 = this.followView;
            if (userFollowView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("followView");
                throw null;
            }
            Intrinsics.checkExpressionValueIsNotNull(user, "user");
            userFollowView4.bindUser(user, false);
            UserFollowView userFollowView5 = this.followView;
            if (userFollowView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("followView");
                throw null;
            }
            ViewUtils.visible(userFollowView5, !isMe(user));
            TextView textView = (TextView) view2.findViewById(com.narvii.amino.R.id.nick_name);
            Intrinsics.checkExpressionValueIsNotNull(textView, "view.nick_name");
            textView.setText(user.nickname);
            TextView textView2 = (TextView) view2.findViewById(com.narvii.amino.R.id.amino_id);
            Intrinsics.checkExpressionValueIsNotNull(textView2, "view.amino_id");
            if (StoryInterstitialPageFragment.access$getBlog$p(this.this$0).ndcId == 0) {
                str = '@' + user.aminoId;
            } else {
                str = "";
            }
            textView2.setText(str);
            setVoteImageAndText();
            setTippingImageAndText();
            ((LinearLayout) view2.findViewById(com.narvii.amino.R.id.like_image_container)).setOnClickListener(this.subviewClickListener);
            ((LinearLayout) view2.findViewById(com.narvii.amino.R.id.tipping_container)).setOnClickListener(this.subviewClickListener);
            return view2;
        }

        private final boolean isMe(User user) {
            return Utils.isEqualsNotNull(((AccountService) this.ctx.getService("account")).getUserId(), user.id());
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean onSubviewClick(View view, boolean z) {
            Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
            if (numValueOf != null && numValueOf.intValue() == R.id.like_image_container) {
                VoteHelper voteHelper = new VoteHelper(this);
                if (StoryInterstitialPageFragment.access$getBlog$p(this.this$0).getVotedValue(isGlobalInteractionScope()) == 0) {
                    LogEvent.clickBuilder(this, ActSemantic.like).area(StoryInterstitialPageFragment.LOG_AREA).object(StoryInterstitialPageFragment.access$getBlog$p(this.this$0)).send();
                    voteHelper.vote(StoryInterstitialPageFragment.access$getBlog$p(this.this$0), 4, null);
                    ParticlesHelper particlesHelperL3 = new ParticlesHelper().l3();
                    View view2 = this.view;
                    if (view2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("view");
                        throw null;
                    }
                    particlesHelperL3.emit((NVImageView) view2.findViewById(com.narvii.amino.R.id.like_image));
                } else {
                    LogEvent.clickBuilder(this, ActSemantic.checkAllLikes).area(StoryInterstitialPageFragment.LOG_AREA).object(StoryInterstitialPageFragment.access$getBlog$p(this.this$0)).send();
                    IStoryBottomSheetListener bottomSheetListener = this.this$0.getBottomSheetListener();
                    if (bottomSheetListener != null) {
                        bottomSheetListener.onBottomSheetShow(0);
                    }
                }
                return true;
            }
            if (numValueOf != null && numValueOf.intValue() == R.id.tipping_container) {
                LogEvent.clickBuilder(this, ActSemantic.prop).area(StoryInterstitialPageFragment.LOG_AREA).object(StoryInterstitialPageFragment.access$getBlog$p(this.this$0)).send();
                if (!StoryInterstitialPageFragment.access$getAccount$p(this.this$0).hasAccount()) {
                    ensureLogin(new Intent());
                    return true;
                }
                if (StoryInterstitialPageFragment.access$getTippingHelper$p(this.this$0).isTipAuthor(StoryInterstitialPageFragment.access$getBlog$p(this.this$0))) {
                    StoryInterstitialPageFragment.access$getTippingHelper$p(this.this$0).openTippingList(StoryInterstitialPageFragment.access$getBlog$p(this.this$0), this.this$0.community);
                } else {
                    StoryInterstitialPageFragment.access$getTippingHelper$p(this.this$0).openTipDialog(StoryInterstitialPageFragment.access$getBlog$p(this.this$0), null);
                }
                return true;
            }
            if (numValueOf != null && numValueOf.intValue() == R.id.amino_team_user_avatar) {
                LogEvent.clickBuilder(this, ActSemantic.checkDetail).area(StoryInterstitialPageFragment.LOG_AREA).object(StoryInterstitialPageFragment.access$getBlog$p(this.this$0).author).send();
                Intent intent = UserProfileFragment.intent(this, StoryInterstitialPageFragment.access$getBlog$p(this.this$0).author);
                if (intent != null) {
                    intent.putExtra("__communityId", StoryInterstitialPageFragment.access$getBlog$p(this.this$0).ndcId);
                }
                startActivity(intent);
                return true;
            }
            return super.onSubviewClick(view, z);
        }

        private final void setVoteImageAndText() {
            if (StoryInterstitialPageFragment.access$getBlog$p(this.this$0).getVotedValue(isGlobalInteractionScope()) == 0) {
                View view = this.view;
                if (view == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("view");
                    throw null;
                }
                ((NVImageView) view.findViewById(com.narvii.amino.R.id.like_image)).setImageUrl("res://ic_vote_none_story");
            } else {
                View view2 = this.view;
                if (view2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("view");
                    throw null;
                }
                ((NVImageView) view2.findViewById(com.narvii.amino.R.id.like_image)).setImageUrl("res://ic_vote_heart_story");
            }
            View view3 = this.view;
            if (view3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("view");
                throw null;
            }
            TextView textView = (TextView) view3.findViewById(com.narvii.amino.R.id.like_text);
            Intrinsics.checkExpressionValueIsNotNull(textView, "view.like_text");
            textView.setText(StoryInterstitialPageFragment.access$getBlog$p(this.this$0).getTotalVotesCount() == 0 ? this.this$0.getResources().getString(R.string.like) : com.narvii.util.text.TextUtils.getLiteCountWithCeil2(StoryInterstitialPageFragment.access$getBlog$p(this.this$0).getTotalVotesCount()));
            if (this.voteEnd) {
                View view4 = this.view;
                if (view4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("view");
                    throw null;
                }
                NVImageView nVImageView = (NVImageView) view4.findViewById(com.narvii.amino.R.id.like_image);
                Intrinsics.checkExpressionValueIsNotNull(nVImageView, "view.like_image");
                nVImageView.setVisibility(0);
                View view5 = this.view;
                if (view5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("view");
                    throw null;
                }
                SpinningView spinningView = (SpinningView) view5.findViewById(com.narvii.amino.R.id.loading_view);
                Intrinsics.checkExpressionValueIsNotNull(spinningView, "view.loading_view");
                spinningView.setVisibility(4);
                return;
            }
            View view6 = this.view;
            if (view6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("view");
                throw null;
            }
            NVImageView nVImageView2 = (NVImageView) view6.findViewById(com.narvii.amino.R.id.like_image);
            Intrinsics.checkExpressionValueIsNotNull(nVImageView2, "view.like_image");
            nVImageView2.setVisibility(4);
            View view7 = this.view;
            if (view7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("view");
                throw null;
            }
            SpinningView spinningView2 = (SpinningView) view7.findViewById(com.narvii.amino.R.id.loading_view);
            Intrinsics.checkExpressionValueIsNotNull(spinningView2, "view.loading_view");
            spinningView2.setVisibility(0);
        }

        private final void setTippingImageAndText() {
            View view = this.view;
            if (view == null) {
                Intrinsics.throwUninitializedPropertyAccessException("view");
                throw null;
            }
            LinearLayout linearLayout = (LinearLayout) view.findViewById(com.narvii.amino.R.id.tipping_container);
            Intrinsics.checkExpressionValueIsNotNull(linearLayout, "view.tipping_container");
            TippingInfo tippingInfo = StoryInterstitialPageFragment.access$getBlog$p(this.this$0).getTippingInfo();
            linearLayout.setVisibility((tippingInfo == null || !tippingInfo.tippable) ? 8 : 0);
            View view2 = this.view;
            if (view2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("view");
                throw null;
            }
            TextView textView = (TextView) view2.findViewById(com.narvii.amino.R.id.tipping_text);
            Intrinsics.checkExpressionValueIsNotNull(textView, "view.tipping_text");
            TippingInfo tippingInfo2 = StoryInterstitialPageFragment.access$getBlog$p(this.this$0).tipInfo;
            int i = tippingInfo2 != null ? tippingInfo2.tippersCount : 0;
            StoryInterstitialPageFragment storyInterstitialPageFragment = this.this$0;
            textView.setText(i != 0 ? com.narvii.util.text.TextUtils.getLiteCountWithCeil2(StoryInterstitialPageFragment.access$getBlog$p(storyInterstitialPageFragment).getTippingInfo().tippedCoins) : storyInterstitialPageFragment.getResources().getString(R.string.tip));
        }

        @Override // com.narvii.user.follow.UserFollowView.ClickListener
        public void onClickFollow() {
            LogEvent.clickBuilder(this, ActSemantic.follow).area(StoryInterstitialPageFragment.LOG_AREA).object(StoryInterstitialPageFragment.access$getBlog$p(this.this$0).author).send();
            Intent intent = new Intent("follow");
            intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(StoryInterstitialPageFragment.access$getBlog$p(this.this$0).author));
            ensureLogin(intent);
        }

        @Override // com.narvii.user.follow.UserFollowView.ClickListener
        public void onClickNotification() {
            LogEvent.clickBuilder(this, ActSemantic.turnOnAlert).area(StoryInterstitialPageFragment.LOG_AREA).object(StoryInterstitialPageFragment.access$getBlog$p(this.this$0).author).send();
        }

        @Override // com.narvii.list.NVAdapter
        protected void onLoginResult(boolean z, Intent info) {
            Intrinsics.checkParameterIsNotNull(info, "info");
            if (z && Intrinsics.areEqual("follow", info.getAction())) {
                User user = (User) JacksonUtils.readAs(info.getStringExtra(GlobalProfileFragment.KEY_USER), User.class);
                if (user != null) {
                    UserFollowView userFollowView = this.followView;
                    if (userFollowView != null) {
                        userFollowView.follow(user);
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("followView");
                        throw null;
                    }
                }
                return;
            }
            super.onLoginResult(z, info);
        }
    }

    /* compiled from: StoryInterstitialPageFragment.kt */
    private final class CommentInputAdapter extends AdriftAdapter {
        final /* synthetic */ StoryInterstitialPageFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CommentInputAdapter(StoryInterstitialPageFragment storyInterstitialPageFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = storyInterstitialPageFragment;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            LinearLayout view2 = (LinearLayout) createView(R.layout.view_interestial_page_comment, viewGroup, view);
            UserAvatarLayout userAvatarLayout = (UserAvatarLayout) view2.findViewById(R.id.avatar);
            userAvatarLayout.setUser(StoryInterstitialPageFragment.access$getAccount$p(this.this$0).getUserProfile());
            userAvatarLayout.setOnClickListener(this.subviewClickListener);
            ((FrameLayout) view2.findViewById(R.id.comment_hint_view)).setOnClickListener(this.subviewClickListener);
            view2.setBackgroundColor(Color.parseColor("#40000000"));
            Intrinsics.checkExpressionValueIsNotNull(view2, "view");
            return view2;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean onSubviewClick(View view, boolean z) {
            Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
            if (numValueOf != null && numValueOf.intValue() == R.id.avatar) {
                startActivity(UserProfileFragment.intent(this.context, StoryInterstitialPageFragment.access$getAccount$p(this.this$0).getUserProfile()));
                return true;
            }
            if (numValueOf != null && numValueOf.intValue() == R.id.comment_hint_view) {
                LogEvent.clickBuilder(this, ActSemantic.checkComment).area(StoryInterstitialPageFragment.LOG_AREA).object(StoryInterstitialPageFragment.access$getBlog$p(this.this$0)).send();
                if (StoryInterstitialPageFragment.access$getAccount$p(this.this$0).hasAccount()) {
                    this.this$0.openCommentPage();
                    StoryInterstitialPageFragment.access$getPushNotificationHelper$p(this.this$0).checkRemindDialogWhenPostFinished();
                    return true;
                }
                ensureLogin(new Intent());
                return true;
            }
            return super.onSubviewClick(view, z);
        }
    }

    /* compiled from: StoryInterstitialPageFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final StoryInterstitialPageFragment newInstance(Blog story, Community community, boolean z, boolean z2) {
            Intrinsics.checkParameterIsNotNull(story, "story");
            StoryInterstitialPageFragment storyInterstitialPageFragment = new StoryInterstitialPageFragment();
            Bundle bundle = new Bundle();
            bundle.putString("blog", JacksonUtils.writeAsString(story));
            bundle.putString("community", JacksonUtils.writeAsString(community));
            bundle.putBoolean("autoLoadNextPage", z);
            bundle.putBoolean("countDownEnable", z2);
            storyInterstitialPageFragment.setArguments(bundle);
            return storyInterstitialPageFragment;
        }
    }
}
