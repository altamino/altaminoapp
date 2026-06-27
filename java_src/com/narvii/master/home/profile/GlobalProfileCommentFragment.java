package com.narvii.master.home.profile;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.user.profile.adapter.CommentAddAdapter;
import com.narvii.user.profile.adapter.CommentHeaderAdapter;
import com.narvii.userblock.UserBlockService;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Utils;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GlobalProfileCommentFragment.kt */
/* loaded from: classes3.dex */
public final class GlobalProfileCommentFragment extends NVListFragment implements NotificationListener {
    private HashMap _$_findViewCache;
    private GlobalCommentAdapter commentAdapter;
    private boolean isMe;
    private Function0<Unit> onCommentToTop;
    private String uid;
    private User user;
    private UserBlockService userBlockService;

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
    public String getPageName() {
        return "CommentList";
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final Function0<Unit> getOnCommentToTop() {
        return this.onCommentToTop;
    }

    public final void setOnCommentToTop(Function0<Unit> function0) {
        this.onCommentToTop = function0;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.uid = getStringParam("uid");
        this.user = (User) JacksonUtils.readAs(getStringParam(GlobalProfileFragment.KEY_USER), User.class);
        this.isMe = getBooleanParam("isMe", false);
        setDarkTheme(true);
        Object service = getService("block");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"block\")");
        this.userBlockService = (UserBlockService) service;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
            listView.setDividerHeight(0);
        }
        setEmptyView((View) null);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.master.home.profile.GlobalProfileCommentFragment$createAdapter$mergeAdapter$1
            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                if (this.this$0.isBlocked()) {
                    return true;
                }
                return super.isListShown();
            }
        };
        GlobalCommentHeadAdapter globalCommentHeadAdapter = new GlobalCommentHeadAdapter(this, this, this.isMe);
        globalCommentHeadAdapter.setDarkTheme(true);
        mergeAdapter.addAdapter(globalCommentHeadAdapter);
        GlobalCommentAddAdapter globalCommentAddAdapter = new GlobalCommentAddAdapter(this, this);
        globalCommentAddAdapter.setDarkTheme(true);
        mergeAdapter.addAdapter(globalCommentAddAdapter);
        GlobalCommentAdapter globalCommentAdapter = new GlobalCommentAdapter(this);
        globalCommentAdapter.setDarkTheme(true);
        this.commentAdapter = globalCommentAdapter;
        mergeAdapter.addAdapter(this.commentAdapter, true);
        String str = this.uid;
        if (str != null) {
            mergeAdapter.addAdapter(new UserBlockHintAdapter(this, str, false, 4, null));
        }
        return mergeAdapter;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (Intrinsics.areEqual("update", notification != null ? notification.action : null)) {
            Object obj = notification.obj;
            if (!(obj instanceof User)) {
                obj = null;
            }
            User user = (User) obj;
            if (Utils.isEqualsNotNull(user != null ? user.uid : null, this.uid) && user != null && user.ndcId == 0) {
                updateUser(user);
            }
        }
    }

    public final void updateUser(User user) {
        if (user == null || this.user != null) {
            return;
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            arguments.putString(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(user));
        }
        this.user = user;
        GlobalCommentAdapter globalCommentAdapter = this.commentAdapter;
        if (globalCommentAdapter != null) {
            globalCommentAdapter.resetList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isBlocked() {
        String str = this.uid;
        if (str == null) {
            return false;
        }
        UserBlockService userBlockService = this.userBlockService;
        if (userBlockService != null) {
            return userBlockService.isBlocked(str);
        }
        Intrinsics.throwUninitializedPropertyAccessException("userBlockService");
        throw null;
    }

    /* compiled from: GlobalProfileCommentFragment.kt */
    private final class GlobalCommentHeadAdapter extends CommentHeaderAdapter {
        final /* synthetic */ GlobalProfileCommentFragment this$0;

        @Override // com.narvii.user.profile.adapter.CommentHeaderAdapter
        protected int getBackgroundColorRes(boolean z) {
            return z ? R.color.header_bg_dark_global : R.color.header_color_light;
        }

        @Override // com.narvii.user.profile.adapter.CommentHeaderAdapter
        protected boolean showCommentTitle() {
            return false;
        }

        @Override // com.narvii.user.profile.adapter.CommentHeaderAdapter
        protected boolean userProfilePrivilegeFragmentIsDarkTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GlobalCommentHeadAdapter(GlobalProfileCommentFragment globalProfileCommentFragment, NVContext ctx, boolean z) {
            super(ctx, z);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalProfileCommentFragment;
        }

        @Override // com.narvii.user.profile.adapter.CommentHeaderAdapter
        public void onCommentSort(int i) {
            GlobalCommentAdapter globalCommentAdapter = this.this$0.commentAdapter;
            if (globalCommentAdapter != null) {
                globalCommentAdapter.setSort(i);
            }
        }

        @Override // com.narvii.user.profile.adapter.CommentHeaderAdapter
        public void onCommentRefresh() {
            GlobalCommentAdapter globalCommentAdapter = this.this$0.commentAdapter;
            if (globalCommentAdapter != null) {
                globalCommentAdapter.resetList();
            }
        }

        @Override // com.narvii.user.profile.adapter.CommentHeaderAdapter, android.widget.Adapter
        public int getCount() {
            if (this.this$0.isBlocked()) {
                return 0;
            }
            return super.getCount();
        }
    }

    /* compiled from: GlobalProfileCommentFragment.kt */
    private final class GlobalCommentAddAdapter extends CommentAddAdapter {
        final /* synthetic */ GlobalProfileCommentFragment this$0;

        @Override // com.narvii.user.profile.adapter.CommentAddAdapter
        protected int getCommentBackgroundRes(boolean z) {
            return z ? R.drawable.edit_round_add_comment_dark_global : R.drawable.edit_round_add_comment_light;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GlobalCommentAddAdapter(GlobalProfileCommentFragment globalProfileCommentFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalProfileCommentFragment;
        }

        @Override // com.narvii.user.profile.adapter.CommentAddAdapter
        public void onCommentNew() {
            User user = this.this$0.user;
            if (user != null) {
                Intent intent = new Intent(getContext(), (Class<?>) CommentPostActivity.class);
                intent.putExtra("parentType", user.objectType());
                intent.putExtra("parentId", user.id());
                intent.putExtra("stat_parent_type", StatisticHelper.getStatisticSource(this, user, 1));
                intent.putExtra("autoJoin", false);
                intent.putExtra(CommentListFragment.COMMENT_KEY_SHOW_EMOJI_ONLY, false);
                startActivity(intent);
                CommentPostActivity.setStatusListener(this.this$0.commentAdapter);
            }
        }

        @Override // com.narvii.user.profile.adapter.CommentAddAdapter
        protected int getCommentTextColor(boolean z) {
            return Color.parseColor("#80FFFFFF");
        }

        @Override // com.narvii.user.profile.adapter.CommentAddAdapter, android.widget.Adapter
        public int getCount() {
            if (this.this$0.isBlocked()) {
                return 0;
            }
            return super.getCount();
        }
    }

    /* compiled from: GlobalProfileCommentFragment.kt */
    private final class GlobalCommentAdapter extends CommentListAdapter {
        @Override // com.narvii.comment.list.CommentListAdapter
        protected boolean isNestedScrollMode() {
            return true;
        }

        public GlobalCommentAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected NVObject getParent() {
            return GlobalProfileCommentFragment.this.user;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (GlobalProfileCommentFragment.this.isBlocked()) {
                return 0;
            }
            User user = GlobalProfileCommentFragment.this.user;
            if (user == null || !user.isModerator()) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected void onViewStickerClicked(Intent intent) {
            Intrinsics.checkParameterIsNotNull(intent, "intent");
            GlobalProfileCommentFragment.this.startActivityForResult(intent, 111);
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected void onNestedCollapse() {
            super.onNestedCollapse();
            Function0<Unit> onCommentToTop = GlobalProfileCommentFragment.this.getOnCommentToTop();
            if (onCommentToTop != null) {
                onCommentToTop.invoke();
            }
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected int getListEndItemTextColor(boolean z) {
            return Color.parseColor("#80FFFFFF");
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        public void resetList() {
            if (GlobalProfileCommentFragment.this.isBlocked()) {
                return;
            }
            super.resetList();
        }
    }
}
