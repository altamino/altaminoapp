package com.narvii.tipping;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.rtc.RtcService;
import com.narvii.community.CommunityHelper;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.Blog;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.CommunityObjectInGlobal;
import com.narvii.model.Feed;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.Tippable;
import com.narvii.model.User;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.tipping.model.TipLog;
import com.narvii.tipping.model.TipLogListResponse;
import com.narvii.tipping.model.TipSummary;
import com.narvii.user.follow.IUserFollow;
import com.narvii.user.follow.UserFollowDelegate;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.FullscreenBackgroundView;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class TippingBaseFragment extends NVListFragment {
    protected AccountService accountService;
    protected String apiTypeName;
    protected int backgroundColor;
    protected Media backgroundMedia;
    private FullscreenBackgroundView backgroundView;
    protected Community community;
    protected CommunityService communityService;
    protected TippingListFooterAdatper footerAdapter;
    protected TippingListAdapter listAdapter;
    protected String objectId;
    protected Tippable tippable;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "PropsGiverList";
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    protected abstract boolean isAuthor();

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    protected abstract int titleId();

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(titleId());
        this.accountService = (AccountService) getService("account");
        this.communityService = (CommunityService) getService("community");
        Class cls = (Class) getActivity().getIntent().getSerializableExtra("objectClass");
        if (cls != null) {
            try {
                if (cls == Feed.class) {
                    this.tippable = (Tippable) JacksonUtils.readUsing(getStringParam("object"), new Feed.FeedDeserializer());
                } else {
                    Object as = JacksonUtils.readAs(getStringParam("object"), cls);
                    if (as instanceof Tippable) {
                        this.tippable = (Tippable) as;
                    }
                }
            } catch (Exception unused) {
            }
            if (this.tippable == null) {
                finish();
                return;
            }
            this.community = (Community) JacksonUtils.readAs(getStringParam("community"), Community.class);
            Object obj = this.tippable;
            if (obj instanceof NVObject) {
                this.apiTypeName = ((NVObject) obj).apiTypeName();
                this.objectId = ((NVObject) this.tippable).id();
            }
            Tippable tippable = this.tippable;
            if (tippable instanceof Feed) {
                Feed feed = (Feed) tippable;
                this.backgroundMedia = feed.getBackgroundMedia();
                if (this.backgroundMedia == null) {
                    this.backgroundMedia = feed.firstMedia();
                }
                this.backgroundColor = feed.getBackgroundColor();
            } else if (tippable instanceof ChatThread) {
                this.backgroundMedia = ((ChatThread) tippable).getBackground();
                if (this.backgroundMedia == null && ((ChatThread) this.tippable).icon != null) {
                    Media media = new Media();
                    media.url = ((ChatThread) this.tippable).icon;
                    this.backgroundMedia = media;
                }
            }
            if (this.community == null) {
                this.community = this.communityService.getLiteCommunity(getPublishNdcId());
                if (this.community == null) {
                    this.community = (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class);
                }
                if (this.community == null) {
                    this.communityService.fetchLiteCommunity(getPublishNdcId(), new Callback() { // from class: com.narvii.tipping.-$$Lambda$TippingBaseFragment$KSe4hU-R2IuOriFwhdk8EKf-3sI
                        @Override // com.narvii.util.Callback
                        public final void call(Object obj2) {
                            this.f$0.lambda$onCreate$0$TippingBaseFragment((Community) obj2);
                        }
                    });
                }
            }
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("Source", "Props Givers");
            chatInviteFragment.setArguments(bundle2);
            getFragmentManager().beginTransaction().add(chatInviteFragment, "chatInvite").commit();
            return;
        }
        finish();
    }

    public /* synthetic */ void lambda$onCreate$0$TippingBaseFragment(Community community) {
        this.community = community;
        TippingListAdapter tippingListAdapter = this.listAdapter;
        if (tippingListAdapter != null) {
            tippingListAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public void completeLogEvent(LogEvent.Builder builder) {
        super.completeLogEvent(builder);
        builder.extraParam("isAuthor", Boolean.valueOf(isAuthor()));
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.tipping_list_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.backgroundView = (FullscreenBackgroundView) view.findViewById(R.id.background);
        this.backgroundView.showBlurOverlay();
        Media media = this.backgroundMedia;
        if (media != null) {
            this.backgroundView.setBackgroundMedia(media);
            return;
        }
        int i = this.backgroundColor;
        if (i != 0) {
            this.backgroundView.setBackgroundColor(i);
        } else {
            this.backgroundView.setBackgroundColor(getCommunityThemeColor());
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.listAdapter = new TippingListAdapter();
        if (isSupportGlobal()) {
            this.footerAdapter = new TippingListFooterAdatper(this, getPublishNdcId(), this.community);
        }
        MergeAdapter mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.tipping.TippingBaseFragment.1
            @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                TippingListFooterAdatper tippingListFooterAdatper;
                return TippingBaseFragment.this.listAdapter.isEmpty() && ((tippingListFooterAdatper = TippingBaseFragment.this.footerAdapter) == null || tippingListFooterAdatper.isEmpty());
            }
        };
        mergeAdapter.addAdapter(this.listAdapter);
        TippingListFooterAdatper tippingListFooterAdatper = this.footerAdapter;
        if (tippingListFooterAdatper != null) {
            mergeAdapter.addAdapter(tippingListFooterAdatper);
        }
        return mergeAdapter;
    }

    private int getCommunityThemeColor() {
        ConfigService configService = (ConfigService) getService("config");
        if (configService == null || configService.getTheme() == null) {
            return ContextCompat.getColor(getContext(), R.color.color_default_primary);
        }
        return configService.getTheme().colorPrimary();
    }

    protected void onTippingSummaryUpdated(TipSummary tipSummary, TipSummary tipSummary2) {
        TippingListFooterAdatper tippingListFooterAdatper;
        if (tipSummary == null || tipSummary2 == null || (tippingListFooterAdatper = this.footerAdapter) == null) {
            return;
        }
        tippingListFooterAdatper.tipSummary = tipSummary;
        tippingListFooterAdatper.globalTipSummary = tipSummary2;
        tippingListFooterAdatper.notifyDataSetChanged();
    }

    protected int getPublishNdcId() {
        Tippable tippable = this.tippable;
        if (!(tippable instanceof CommunityObjectInGlobal)) {
            return 0;
        }
        int ndcId = ((CommunityObjectInGlobal) tippable).getNdcId();
        Tippable tippable2 = this.tippable;
        return tippable2 instanceof Blog ? ((Blog) tippable2).getPublishNdcId() : ndcId;
    }

    protected boolean isSupportGlobal() {
        Tippable tippable = this.tippable;
        return (tippable instanceof Blog) && ((Blog) tippable).type == 9;
    }

    protected class TippingListAdapter extends NVPagedAdapter<TipLog, TipLogListResponse> implements IUserFollow, NotificationListener {
        private CommunityHelper communityHelper;
        String source;
        private UserFollowDelegate userFollowDelegate;

        @Override // com.narvii.user.follow.IUserFollow
        public /* synthetic */ void followFail() {
            IUserFollow.CC.$default$followFail(this);
        }

        @Override // com.narvii.user.follow.IUserFollow
        public /* synthetic */ void followSuccess() {
            IUserFollow.CC.$default$followSuccess(this);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "PropsGiverList";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.user.follow.IUserFollow
        public /* synthetic */ boolean needUpdateUserAfterFollow() {
            return IUserFollow.CC.$default$needUpdateUserAfterFollow(this);
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public TippingListAdapter() {
            super(TippingBaseFragment.this);
            this.source = "Props Givers";
            this.userFollowDelegate = new UserFollowDelegate(this, TippingBaseFragment.this);
            this.communityHelper = new CommunityHelper(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<TipLog> dataType() {
            return TipLog.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends TipLogListResponse> responseType() {
            return TipLogListResponse.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, TipLogListResponse tipLogListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) tipLogListResponse, i);
            if (tipLogListResponse != null) {
                TippingBaseFragment.this.onTippingSummaryUpdated(tipLogListResponse.tipSummary, tipLogListResponse.globalTipSummary);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            String str = (TippingBaseFragment.this.isSupportGlobal() && isGlobalInteractionScope()) ? "/g-tipping/tipped-users" : "/tipping/tipped-users";
            return ApiRequest.builder().path(TippingBaseFragment.this.apiTypeName + "/" + TippingBaseFragment.this.objectId + str).build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof TipLog)) {
                return null;
            }
            TipLog tipLog = (TipLog) obj;
            tipLog.isTipperAccessible = tipLog.isAccessibleByUser(null);
            TippingListItemCell tippingListItemCell = (TippingListItemCell) createView(R.layout.item_tipping_list, viewGroup, view);
            tippingListItemCell.setTipLog(tipLog, getItemPosition(tipLog), TippingBaseFragment.this.isAuthor(), isSendingFollow(tipLog.getAuthor()), Utils.isEqualsNotNull(TippingBaseFragment.this.accountService.getUserId(), tipLog.getAuthor().id()), isGlobalInteractionScope());
            tippingListItemCell.setOnClickListener(this.subviewClickListener);
            ((TippingThanksView) tippingListItemCell.findViewById(R.id.tipping_thanks_view)).setOnClickListener(this.subviewClickListener);
            tippingListItemCell.findViewById(R.id.user_follow).setOnClickListener(this.subviewClickListener);
            return tippingListItemCell;
        }

        private int getItemPosition(TipLog tipLog) {
            ArrayList<T> arrayList = this._list;
            if (arrayList == 0 || arrayList.isEmpty()) {
                return -1;
            }
            for (int i = 0; i < this._list.size(); i++) {
                if (tipLog.equals(this._list.get(i))) {
                    return i;
                }
            }
            return -1;
        }

        private TipLog getTipLogByUser(User user) {
            ArrayList<T> arrayList = this._list;
            if (arrayList == 0 || arrayList.isEmpty()) {
                return null;
            }
            for (int i = 0; i < this._list.size(); i++) {
                TipLog tipLog = (TipLog) this._list.get(i);
                if (TextUtils.equals(user.id(), tipLog.getAuthor().id())) {
                    return tipLog;
                }
            }
            return null;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof TipLog) {
                TipLog tipLog = (TipLog) obj;
                User author = tipLog.getAuthor();
                if (!this.communityHelper.checkCommunityJoined(author.ndcId)) {
                    return true;
                }
                if ((view2 instanceof TippingThanksView) && view2.getId() == R.id.tipping_thanks_view) {
                    if (tipLog.isThanksSent()) {
                        logClickEvent(author, ActSemantic.chat);
                        startChat(tipLog.getAuthor());
                    } else {
                        logClickEvent(author, ActSemantic.thank);
                        ((TippingThanksView) view2).startLikeAnimation();
                        sendLikeRequest(tipLog);
                    }
                    return true;
                }
                if (view2 != null && view2.getId() == R.id.user_follow) {
                    Intent intent = new Intent("follow");
                    intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(tipLog.getAuthor()));
                    ensureLogin(intent);
                    return true;
                }
                if (view2 != null) {
                    logClickEvent(author, ActSemantic.checkDetail);
                    Intent intent2 = UserProfileFragment.intent(this, author);
                    if (intent2 != null) {
                        intent2.putExtra("Source", this.source);
                        startActivity(intent2);
                        return true;
                    }
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<TipLog> filterResponseList(List<TipLog> list, int i) {
            return TippingBaseFragment.this.isAuthor() ? list : super.filterResponseList(list, i);
        }

        @Override // com.narvii.list.NVAdapter
        protected void onLoginResult(boolean z, Intent intent) {
            if (z && "follow".equals(intent.getAction())) {
                User user = (User) JacksonUtils.readAs(intent.getStringExtra(GlobalProfileFragment.KEY_USER), User.class);
                if (user != null) {
                    follow(user);
                    return;
                }
                return;
            }
            super.onLoginResult(z, intent);
        }

        private void sendLikeRequest(TipLog tipLog) {
            String str = (TippingBaseFragment.this.isSupportGlobal() && isGlobalInteractionScope()) ? "/g-tipping/tipped-users/" : "/tipping/tipped-users/";
            new ApiService(this.context).exec(ApiRequest.builder().post().path(TippingBaseFragment.this.apiTypeName + "/" + TippingBaseFragment.this.objectId + str + tipLog.getAuthor().id() + "/thank").build(), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
            tipLog.lastThankedTime = new Date();
        }

        private void startChat(User user) {
            if (((AccountService) getService("account")).hasAccount()) {
                if (!canChat(user)) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                    aCMAlertDialog.setMessage(R.string.user_disable_chat_invite);
                    aCMAlertDialog.addButton(android.R.string.ok, null);
                    aCMAlertDialog.show();
                    return;
                }
                ChatInviteFragment chatInviteFragment = (ChatInviteFragment) TippingBaseFragment.this.getFragmentManager().findFragmentByTag("chatInvite");
                if (chatInviteFragment != null) {
                    chatInviteFragment.startChat(user.uid());
                    return;
                }
                return;
            }
            ensureLogin(new Intent("chat"));
        }

        private boolean canChat(User user) {
            User userProfile;
            AccountService accountService = (AccountService) getService("account");
            if (!accountService.hasAccount() || (((userProfile = accountService.getUserProfile()) != null && userProfile.isCurator()) || user == null)) {
                return true;
            }
            int privilege = user.getPrivilege(User.CHAT);
            if (privilege != 2) {
                return privilege != 3;
            }
            int i = user.membershipStatus;
            return i == 2 || i == 3;
        }

        @Override // com.narvii.user.follow.IUserFollow
        public void follow(User user) {
            this.userFollowDelegate.follow(user);
        }

        @Override // com.narvii.user.follow.IUserFollow
        public boolean isSendingFollow(User user) {
            return this.userFollowDelegate.isSendingFollow(user);
        }

        @Override // com.narvii.user.follow.IUserFollow
        public void onFollowStatusUpdated() {
            notifyDataSetChanged();
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            TipLog tipLogByUser;
            ApiRequest apiRequestCreateRequest;
            Notification notificationM51clone = notification.m51clone();
            Object obj = notificationM51clone.obj;
            if (!(obj instanceof User) || (tipLogByUser = getTipLogByUser((User) obj)) == null) {
                return;
            }
            tipLogByUser.tipper = (User) notificationM51clone.obj;
            notificationM51clone.obj = tipLogByUser;
            String str = notificationM51clone.action;
            if ((str == "new" || (str == "delete" && notificationM51clone.parentId != null)) && (apiRequestCreateRequest = createRequest(true)) != null && apiRequestCreateRequest.url().contains(notificationM51clone.parentId)) {
                editList(notificationM51clone, false);
            }
            String str2 = notificationM51clone.action;
            if (str2 == "update" || str2 == "edit") {
                editList(notificationM51clone, false);
            }
        }
    }

    class TippingListFooterAdatper extends NVAdapter {
        private Community community;
        private CommunityHelper communityHelper;
        private CommunityService communityService;
        public TipSummary globalTipSummary;
        public boolean isShowing;
        public int publishNdcId;
        public TipSummary tipSummary;

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public TippingListFooterAdatper(NVContext nVContext, int i, Community community) {
            super(nVContext);
            this.isShowing = false;
            this.community = community;
            this.publishNdcId = i;
            this.communityHelper = new CommunityHelper(this);
            if (community == null) {
                this.communityService = (CommunityService) getService("community");
                this.community = this.communityService.getLiteCommunity(i);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return getTipperCount() > 0 ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.fragment_story_vote_footer, viewGroup, view);
            if (isGlobalInteractionScope()) {
                TextView textView = (TextView) viewCreateView.findViewById(R.id.total_likes_from);
                int tipperCount = getTipperCount();
                if (tipperCount > 1) {
                    textView.setText(getContext().getString(R.string.story_all_tippings_from, Integer.valueOf(tipperCount)));
                } else {
                    textView.setText(R.string.story_tipping_from);
                }
                if (this.community != null) {
                    ((CommunityIconView) viewCreateView.findViewById(R.id.community_icon)).setImageUrl(this.community.icon);
                    TextView textView2 = (TextView) viewCreateView.findViewById(R.id.community_name);
                    textView2.setText(this.community.name);
                    textView2.setMaxWidth(Utils.dpToPxInt(this.context.getContext(), 90.0f));
                    viewCreateView.setOnClickListener(this.subviewClickListener);
                }
            } else {
                viewCreateView.findViewById(R.id.guest_like_container).setVisibility(4);
                TextView textView3 = (TextView) viewCreateView.findViewById(R.id.guest_like_text);
                textView3.setVisibility(0);
                int tipperCount2 = getTipperCount();
                if (tipperCount2 > 1) {
                    textView3.setText(getContext().getString(R.string.guest_tippings, Integer.valueOf(tipperCount2)));
                } else {
                    textView3.setText(getContext().getString(R.string.guest_tipping));
                }
            }
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.footer_layout) {
                LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area(isGlobalInteractionScope() ? "CommunityPropsBar" : "GuestPropsBar").send();
                if (!this.communityHelper.checkCommunityJoined(this.publishNdcId)) {
                    return true;
                }
                openTippinglList();
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        private void openTippinglList() {
            new TippingHelper(this.context).openTippingList(getCommunityFeed(), !isGlobalInteractionScope(), this.community);
        }

        private TipSummary getTipSummary() {
            return isGlobalInteractionScope() ? this.tipSummary : this.globalTipSummary;
        }

        private int getTipperCount() {
            TipSummary tipSummary = getTipSummary();
            if (tipSummary != null) {
                return tipSummary.tippersCount;
            }
            return 0;
        }

        private Tippable getCommunityFeed() {
            Tippable tippable = TippingBaseFragment.this.tippable;
            if ((tippable instanceof Blog) && ((Blog) tippable).type == 9 && ((Blog) tippable).refObject != null) {
                return ((Blog) tippable).refObject;
            }
            return TippingBaseFragment.this.tippable;
        }
    }
}
