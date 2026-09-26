package com.narvii.livelayer;

import android.content.Intent;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.members.HorizontalMemberAdapter;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.onlinestatus.UserDialog;
import com.narvii.user.favorite.NVRecycleViewWrapAdapter;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.recycleview.NVRecycleAdapter;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class LiveLayerMemberAdapter extends NVRecycleViewWrapAdapter {
    private OnlineMemberAdapter adapter;
    private CommunityConfigHelper communityConfigHelper;
    boolean isRequestFinished;
    LiveLayerService liveLayerService;
    private View moreView;
    private NVContext nvContext;
    public String source;
    private TextView titleView;
    protected int userCount;
    UserListResponse userListResponse;

    class OnlineMemberAdapter extends HorizontalMemberAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.members.HorizontalMemberAdapter
        protected int getNormalItemLayoutId() {
            return R.layout.live_layer_main_online_member_list;
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        protected int pageSize() {
            return 20;
        }

        public OnlineMemberAdapter() {
            super(LiveLayerMemberAdapter.this.nvContext);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUserListResponse(UserListResponse userListResponse) {
            LiveLayerMemberAdapter liveLayerMemberAdapter = LiveLayerMemberAdapter.this;
            liveLayerMemberAdapter.userCount = userListResponse.userProfileCount;
            liveLayerMemberAdapter.updateTitle();
            this._isEnd = true;
            notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, boolean z6) {
            super.onPageResponse(apiRequest, userListResponse, z6);
            LiveLayerMemberAdapter liveLayerMemberAdapter = LiveLayerMemberAdapter.this;
            liveLayerMemberAdapter.userListResponse = userListResponse;
            liveLayerMemberAdapter.isRequestFinished = true;
            setUserListResponse(userListResponse);
        }

        @Override // com.narvii.members.HorizontalMemberAdapter
        protected boolean shouldShakeMoods() {
            return LiveLayerMemberAdapter.this.isRequestFinished;
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        protected ApiRequest createRequest(int i10, int i11, String str) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path(LiveLayerMemberAdapter.this.apiPath());
            LiveLayerMemberAdapter.this.processApiBuilder(builderPath);
            builderPath.param("start", Integer.valueOf(i10));
            builderPath.param("size", Integer.valueOf(i11));
            if (!TextUtils.isEmpty(str)) {
                builderPath.param("stoptime", str);
            }
            if (i10 == 0) {
                builderPath.tag("start0");
            }
            return builderPath.build();
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        protected void onFailResponse(ApiRequest apiRequest, String str, boolean z6) {
            super.onFailResponse(apiRequest, str, z6);
            LiveLayerMemberAdapter.this.isRequestFinished = true;
            notifyDataSetChanged();
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter, com.narvii.widget.recycleview.ItemClickSupport.OnItemClickListener
        public void onItemClicked(RecyclerView recyclerView, int i10, View view) {
            super.onItemClicked(recyclerView, i10, view);
            if (LiveLayerMemberAdapter.this.blockUserClick()) {
                return;
            }
            if (getItemType(i10, null) == 1) {
                if (LiveLayerMemberAdapter.this.getAreaName() != null) {
                    LiveLayerMemberAdapter.this.logClickEvent(ActSemantic.listViewEnter);
                }
                LiveLayerMemberAdapter.this.onMoreItemClick();
                return;
            }
            Object itemAt = getItemAt(i10);
            if (itemAt instanceof User) {
                final User user = (User) itemAt;
                LiveLayerMemberAdapter.this.onUserClicked(user);
                AccountService accountService = (AccountService) LiveLayerMemberAdapter.this.getService("account");
                if (user.uid() != null && user.uid().equals(accountService.getUserId())) {
                    Intent intent = UserProfileFragment.intent(this.context, user);
                    if (intent != null) {
                        intent.putExtra(ExternalPostPreviewFragment.SOURCE, LiveLayerMemberAdapter.this.source);
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(LiveLayerMemberAdapter.this, intent);
                        return;
                    }
                    return;
                }
                if (!LiveLayerMemberAdapter.this.communityConfigHelper.isChatEnabled()) {
                    Intent intent2 = UserProfileFragment.intent(this.context, user);
                    if (intent2 == null) {
                        return;
                    }
                    safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent2);
                    return;
                }
                UserDialog userDialog = new UserDialog(this.context.getContext(), user);
                userDialog.setOnClickListener(new UserDialog.UserDialogClickListener() { // from class: com.narvii.livelayer.LiveLayerMemberAdapter.OnlineMemberAdapter.1
                    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
                    public void onClicked(int i11, NVObject nVObject) {
                        if (i11 == 2) {
                            Intent intent3 = UserProfileFragment.intent(((NVRecycleAdapter) OnlineMemberAdapter.this).context, user);
                            if (intent3 == null) {
                                return;
                            }
                            intent3.putExtra(ExternalPostPreviewFragment.SOURCE, LiveLayerMemberAdapter.this.source);
                            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(((NVRecycleAdapter) OnlineMemberAdapter.this).context, intent3);
                            return;
                        }
                        if (i11 == 1) {
                            LiveLayerMemberAdapter.this.startChat(user.uid);
                        } else if (i11 == 3) {
                            new FlagReportOptionDialog.Builder(LiveLayerMemberAdapter.this.nvContext).miniProfile(true).nvObject(user).build().show();
                        }
                    }
                });
                userDialog.show();
            }
        }
    }

    public LiveLayerMemberAdapter(NVContext nVContext) {
        super(nVContext, null);
        this.nvContext = nVContext;
        this.liveLayerService = (LiveLayerService) nVContext.getService("liveLayer");
        this.communityConfigHelper = new CommunityConfigHelper(nVContext);
        OnlineMemberAdapter onlineMemberAdapter = new OnlineMemberAdapter();
        this.adapter = onlineMemberAdapter;
        setRecycleAdapter(onlineMemberAdapter);
    }

    protected String apiPath() {
        return "/live-layer";
    }

    protected boolean blockUserClick() {
        return false;
    }

    protected String getLiveLayerTopic() {
        return null;
    }

    public abstract int getTitleIcon();

    public abstract int getTitleIconBackground();

    public abstract String getTitleView();

    public UserListResponse getUserListResponse() {
        return this.userListResponse;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return false;
    }

    public boolean isRequestFinished() {
        return this.isRequestFinished;
    }

    public boolean onMoreItemClick() {
        return false;
    }

    @Override // com.narvii.user.favorite.NVRecycleViewWrapAdapter
    protected int recycleViewContainerLayoutId() {
        return R.layout.live_layer_main_online_member_list_wrapper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTitle() {
        TextView textView = this.titleView;
        if (textView != null) {
            textView.setText(getTitleView());
        }
        View view = this.moreView;
        if (view != null) {
            view.setVisibility(this.userCount > 5 ? 0 : 8);
        }
    }

    @Override // com.narvii.user.favorite.NVRecycleViewWrapAdapter, android.widget.Adapter
    public int getCount() {
        if (this.userCount == 0) {
            return 0;
        }
        return super.getCount();
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (view2 == null || view2.getId() != R.id.more_user) {
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
        if (getAreaName() != null) {
            logClickEvent(ActSemantic.listViewEnter);
        }
        return onMoreItemClick();
    }

    public void setCachedUserListResponse(UserListResponse userListResponse) {
        if (userListResponse == null) {
            return;
        }
        this.userListResponse = userListResponse;
        OnlineMemberAdapter onlineMemberAdapter = this.adapter;
        if (onlineMemberAdapter != null) {
            onlineMemberAdapter.setListData(userListResponse.list());
            this.adapter.setUserListResponse(userListResponse);
        }
    }

    public void startChat(String str) {
        if (!((AccountService) this.context.getService("account")).hasAccount()) {
            Intent intent = new Intent("chat");
            intent.putExtra("uid", str);
            ensureLogin(intent);
        } else {
            NVContext nVContext = this.nvContext;
            ChatInviteFragment chatInviteFragment = nVContext instanceof NVFragment ? (ChatInviteFragment) ((NVFragment) nVContext).getFragmentManager().m0("chatInvite") : null;
            if (chatInviteFragment != null) {
                chatInviteFragment.source = this.source;
                chatInviteFragment.startChat(str);
            }
        }
    }

    @Override // com.narvii.user.favorite.NVRecycleViewWrapAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i10, view, viewGroup);
        ImageView imageView = (ImageView) view2.findViewById(R.id.icon);
        imageView.setImageResource(getTitleIcon());
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(getTitleIconBackground());
        imageView.setBackgroundDrawable(shapeDrawable);
        View viewFindViewById = view2.findViewById(R.id.more_user);
        this.moreView = viewFindViewById;
        viewFindViewById.setOnClickListener(this.subviewClickListener);
        this.titleView = (TextView) view2.findViewById(R.id.list_title);
        updateTitle();
        return view2;
    }

    @Override // com.narvii.user.favorite.NVRecycleViewWrapAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.userCount = bundle.getInt("userCount");
        this.isRequestFinished = bundle.getBoolean("isRequestFinished");
    }

    @Override // com.narvii.user.favorite.NVRecycleViewWrapAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putInt("userCount", this.userCount);
        bundleOnSaveInstanceState.putBoolean("isRequestFinished", this.isRequestFinished);
        return bundleOnSaveInstanceState;
    }

    protected void onUserClicked(User user) {
        if (getAreaName() != null) {
            logClickEvent(user, ActSemantic.checkDetail);
        }
    }

    protected void processApiBuilder(ApiRequest.Builder builder) {
        String liveLayerTopic = getLiveLayerTopic();
        if (TextUtils.isEmpty(liveLayerTopic)) {
            liveLayerTopic = "online-members";
        }
        builder.param("topic", this.liveLayerService.getNdtopic(liveLayerTopic));
    }
}
