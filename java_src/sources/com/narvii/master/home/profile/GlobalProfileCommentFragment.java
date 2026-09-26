package com.narvii.master.home.profile;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
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
import com.narvii.util.statistics.constants.EventConstants;
import com.safedk.android.utils.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class GlobalProfileCommentFragment extends NVListFragment implements NotificationListener {

    @Nullable
    private GlobalCommentAdapter commentAdapter;
    private boolean isMe;

    @Nullable
    private e8.a<l0> onCommentToTop;

    @Nullable
    private String uid;

    @Nullable
    private User user;
    private UserBlockService userBlockService;

    private final class GlobalCommentAdapter extends CommentListAdapter {
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected boolean isNestedScrollMode() {
            return true;
        }

        public GlobalCommentAdapter(NVContext nVContext) {
            super(nVContext);
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
        protected int getListEndItemTextColor(boolean z6) {
            return Color.parseColor("#80FFFFFF");
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        @Nullable
        protected NVObject getParent() {
            return GlobalProfileCommentFragment.this.user;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected void onViewStickerClicked(@NotNull Intent intent) {
            kotlin.jvm.internal.t.j(intent, "intent");
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(GlobalProfileCommentFragment.this, intent, 111);
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        public void resetList() {
            if (GlobalProfileCommentFragment.this.isBlocked()) {
                return;
            }
            super.resetList();
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected void onNestedCollapse() {
            super.onNestedCollapse();
            e8.a<l0> onCommentToTop = GlobalProfileCommentFragment.this.getOnCommentToTop();
            if (onCommentToTop != null) {
                onCommentToTop.invoke();
            }
        }
    }

    private final class GlobalCommentAddAdapter extends CommentAddAdapter {
        final /* synthetic */ GlobalProfileCommentFragment this$0;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.user.profile.adapter.CommentAddAdapter
        protected int getCommentBackgroundRes(boolean z6) {
            return z6 ? R.drawable.edit_round_add_comment_dark_global : R.drawable.edit_round_add_comment_light;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GlobalCommentAddAdapter(@NotNull GlobalProfileCommentFragment globalProfileCommentFragment, NVContext ctx) {
            super(ctx);
            kotlin.jvm.internal.t.j(ctx, "ctx");
            this.this$0 = globalProfileCommentFragment;
        }

        @Override // com.narvii.user.profile.adapter.CommentAddAdapter
        protected int getCommentTextColor(boolean z6) {
            return Color.parseColor("#80FFFFFF");
        }

        @Override // com.narvii.user.profile.adapter.CommentAddAdapter, android.widget.Adapter
        public int getCount() {
            if (this.this$0.isBlocked()) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.user.profile.adapter.CommentAddAdapter
        public void onCommentNew() {
            User user = this.this$0.user;
            if (user != null) {
                GlobalProfileCommentFragment globalProfileCommentFragment = this.this$0;
                Intent intent = new Intent(getContext(), (Class<?>) CommentPostActivity.class);
                intent.putExtra("parentType", user.objectType());
                intent.putExtra("parentId", user.id());
                intent.putExtra(EventConstants.CommentPost.STAT_PARENT_TYPE, StatisticHelper.getStatisticSource(this, user, 1));
                intent.putExtra("autoJoin", false);
                intent.putExtra(CommentListFragment.COMMENT_KEY_SHOW_EMOJI_ONLY, false);
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                CommentPostActivity.setStatusListener(globalProfileCommentFragment.commentAdapter);
            }
        }
    }

    private final class GlobalCommentHeadAdapter extends CommentHeaderAdapter {
        final /* synthetic */ GlobalProfileCommentFragment this$0;

        @Override // com.narvii.user.profile.adapter.CommentHeaderAdapter
        protected int getBackgroundColorRes(boolean z6) {
            return z6 ? R.color.header_bg_dark_global : R.color.header_color_light;
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
        public GlobalCommentHeadAdapter(@NotNull GlobalProfileCommentFragment globalProfileCommentFragment, NVContext ctx, boolean z6) {
            super(ctx, z6);
            kotlin.jvm.internal.t.j(ctx, "ctx");
            this.this$0 = globalProfileCommentFragment;
        }

        @Override // com.narvii.user.profile.adapter.CommentHeaderAdapter, android.widget.Adapter
        public int getCount() {
            if (this.this$0.isBlocked()) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.user.profile.adapter.CommentHeaderAdapter
        public void onCommentRefresh() {
            GlobalCommentAdapter globalCommentAdapter = this.this$0.commentAdapter;
            if (globalCommentAdapter != null) {
                globalCommentAdapter.resetList();
            }
        }

        @Override // com.narvii.user.profile.adapter.CommentHeaderAdapter
        public void onCommentSort(int i10) {
            GlobalCommentAdapter globalCommentAdapter = this.this$0.commentAdapter;
            if (globalCommentAdapter != null) {
                globalCommentAdapter.setSort(i10);
            }
        }
    }

    @Nullable
    public final e8.a<l0> getOnCommentToTop() {
        return this.onCommentToTop;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "comments_list";
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
        if (kotlin.jvm.internal.t.e("update", notification != null ? notification.action : null)) {
            Object obj = notification.obj;
            User user = obj instanceof User ? (User) obj : null;
            if (Utils.isEqualsNotNull(user != null ? user.uid : null, this.uid) && user != null && user.ndcId == 0) {
                updateUser(user);
            }
        }
    }

    public final void setOnCommentToTop(@Nullable e8.a<l0> aVar) {
        this.onCommentToTop = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isBlocked() {
        String str = this.uid;
        if (str == null) {
            return false;
        }
        UserBlockService userBlockService = this.userBlockService;
        if (userBlockService == null) {
            kotlin.jvm.internal.t.B("userBlockService");
            userBlockService = null;
        }
        return userBlockService.isBlocked(str);
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter() { // from class: com.narvii.master.home.profile.GlobalProfileCommentFragment$createAdapter$mergeAdapter$1
            {
                super(this.this$0);
            }

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
        mergeAdapter.addAdapter(globalCommentAdapter, true);
        String str = this.uid;
        if (str != null) {
            mergeAdapter.addAdapter(new UserBlockHintAdapter(this, str, false, 4, null));
        }
        return mergeAdapter;
    }

    public final void updateUser(@Nullable User user) {
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.uid = getStringParam("uid");
        this.user = (User) JacksonUtils.readAs(getStringParam(GlobalProfileFragment.KEY_USER), User.class);
        this.isMe = getBooleanParam("isMe", false);
        setDarkTheme(true);
        Object service = getService("block");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        this.userBlockService = (UserBlockService) service;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(@Nullable ListView listView, @Nullable Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
            listView.setDividerHeight(0);
        }
        setEmptyView((View) null);
    }
}
