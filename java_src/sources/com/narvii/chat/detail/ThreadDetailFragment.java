package com.narvii.chat.detail;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.GridLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.CommunityNavBarFragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.ThreadResponse;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.invite.JoinThreadFragment;
import com.narvii.chat.organizer.ChatOrganizerPickerFragment;
import com.narvii.chat.post.ThreadPost;
import com.narvii.chat.post.ThreadPostNewActivity;
import com.narvii.chat.profile.ChatUserInfoEntryHelper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.setting.AddCoHostFragment;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.chat.util.ThreadNotification;
import com.narvii.chat.video.ChatLogEventHelper;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailFragment;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.influencer.FanClub;
import com.narvii.influencer.FansOnlyHintDialog;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatBubbleNotificationWrapper;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.TippingInfo;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.monetization.bubble.BubbleSettingFragment;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.onlinestatus.UserDialog;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.share.ShareDialog;
import com.narvii.share.ShareViewHelper;
import com.narvii.story.widgets.StoryTopicView;
import com.narvii.theme.IFakeActionBar;
import com.narvii.theme.ThemePackService;
import com.narvii.user.picker.MultiUserPickerFragment;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class ThreadDetailFragment extends DetailFragment implements MediaPickerFragment.OnResultListener, MediaPickerFragment.OnCustomOptionSelectedListener, FragmentOnBackListener, AffiliationsService.AffiliationChangeListener, IFakeActionBar {
    static final int ADD_MEMBBER = 2;
    static final int INVITE = 1;
    public static final String KEY_OPEN_INVITE_LIST = "key_open_invite_list";
    private static final int MEMBER_COUNT_THRESHOLD = 10;
    private AccountService accountService;
    Adapter adapter;
    AffiliationsService affiliationsService;
    private boolean autoClicking;
    private boolean autoOpenInviteList;
    BackgroundPickerFragment backgroundPickerFragment;
    private ChatHelper chatHelper;
    private Community community;
    private ConfigService configService;
    private View fakeActionBar;
    public User fullAuthorInfo;
    private GlobalChatHelper globalChatHelper;
    HeaderLayout headerLayout;
    private int headerLayoutHeight;
    OverlayLayout headerOverlay;
    private View inviteView;
    MediaPickerFragment mediaPicker;
    boolean notJoined;
    public Callback<ChatThread> onFinishListener;
    File photoDir;
    static final DetailAdapter.CellType HEADER = new DetailAdapter.CellType("thread.header");
    static final DetailAdapter.CellType CONTENT = new DetailAdapter.CellType("thread.content");
    static final DetailAdapter.CellType COPY = new DetailAdapter.CellType("thread.copy");
    static final DetailAdapter.CellType TOPICS = new DetailAdapter.CellType("thread.topics");
    static final DetailAdapter.CellType MEMBERS = new DetailAdapter.CellType("thread.members");
    static final DetailAdapter.CellType MUTE = new DetailAdapter.CellType("thread.mute");
    static final DetailAdapter.CellType PIN = new DetailAdapter.CellType("thread.pin");
    static final DetailAdapter.CellType ANNOUNCEMENT = new DetailAdapter.CellType("thread.announcement");
    static final DetailAdapter.CellType AV_PERMISSION = new DetailAdapter.CellType("thread.avpermission");
    static final DetailAdapter.CellType SCREENROOM_PERMISSION = new DetailAdapter.CellType("thread.srpermission");
    static final DetailAdapter.CellType CHANGE_BACKGROUND = new DetailAdapter.CellType("thread.changebg");
    static final DetailAdapter.CellType MEMBERS_CAN_INVITE = new DetailAdapter.CellType("thread.memberscaninvite");
    static final DetailAdapter.CellType ORGANIZER_TRANS = new DetailAdapter.CellType("thread.organizertrans");
    static final DetailAdapter.CellType ACTIONS = new DetailAdapter.CellType("thread.actions");
    static final DetailAdapter.CellType BUBBLE_STYLE = new DetailAdapter.CellType("bubble.style");
    static final DetailAdapter.CellType VIEW_ONLY = new DetailAdapter.CellType("thread.viewonly");
    static final DetailAdapter.CellType COHOST = new DetailAdapter.CellType("thread.cohost");
    static final DetailAdapter.CellType ENABLE_PROPS = new DetailAdapter.CellType("thread.enableprops");
    static final DetailAdapter.CellType PUBLISH_TO_GLOBAL = new DetailAdapter.CellType("thread.ptg");
    static final DetailAdapter.CellType FANS_ONLY = new DetailAdapter.CellType("thread.fans_only");
    static final DetailAdapter.CellType MARGIN = new DetailAdapter.CellType("thread.margin");
    static final DetailAdapter.CellType DIVIDE = new DetailAdapter.CellType("thread.divide");

    private class Adapter extends DetailAdapter<ChatThread, ThreadResponse> {
        public User fullAuthorInfo;
        List<User> memberList;
        private final ApiResponseListener<MemberListResponse> memberListListener;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends ChatThread> objectType() {
            return ChatThread.class;
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            DetailAdapter.CellType cellType = ThreadDetailFragment.ACTIONS;
            boolean z6 = obj == cellType && view2 != null && view2.getId() == R.id.chat_join;
            DetailAdapter.CellType cellType2 = ThreadDetailFragment.MEMBERS;
            boolean z10 = obj == cellType2 && view2 != null && view2.getId() == R.id.chat_member_invite;
            if ((view2 == null || view2.getTag(R.id.thread_more_item) != Boolean.TRUE) && obj != ThreadDetailFragment.ANNOUNCEMENT && !ThreadDetailFragment.this.checkCommunityAvailability(z6, !z10) && !z10) {
                notifyDataSetChanged();
                return true;
            }
            if (obj == ThreadDetailFragment.HEADER && view2 != null && view2.getId() == R.id.avatar) {
                Intent intent = UserProfileFragment.intent(this, getObject().owner());
                if (intent == null) {
                    return true;
                }
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Chat Thread More Info");
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                return true;
            }
            if (obj == cellType2 && view2 != null) {
                if (view2.getId() == R.id.chat_member && (view2.getTag() instanceof User)) {
                    ThreadDetailFragment.this.userOptions((User) view2.getTag());
                    return true;
                }
                if (view2.getId() == R.id.chat_member_invite) {
                    if (!ThreadDetailFragment.this.autoClicking) {
                        LogEvent.clickBuilder(this, ActSemantic.invite).area("InviteButton").send();
                    }
                    final ChatThread object = getObject();
                    boolean z11 = object.membershipStatus == 1;
                    if (!ThreadDetailFragment.this.notJoined() && z11 && (object.singleChat() || ((object.publicChat() || object.groupChat()) && (ThreadDetailFragment.this.isHost() || ThreadDetailFragment.this.isCoHost() || object.canMemberInvite())))) {
                        ThreadDetailFragment.this.inviteMembers();
                    } else if ((object.groupChat() || object.singleChat()) && object.membershipStatus == 2) {
                        new VVChatHelper(this).showAcceptChatInvitationDialog(object, new Callback<Boolean>() { // from class: com.narvii.chat.detail.ThreadDetailFragment.Adapter.3
                            @Override // com.narvii.util.Callback
                            public void call(Boolean bool) {
                                new ChatRequestHelper(ThreadDetailFragment.this).sendJoinChatThreadRequest(object.threadId, ((AccountService) Adapter.this.getService("account")).getUserId(), object, new Callback<Boolean>() { // from class: com.narvii.chat.detail.ThreadDetailFragment.Adapter.3.1
                                    @Override // com.narvii.util.Callback
                                    public void call(Boolean bool2) {
                                        ThreadDetailFragment.this.inviteMembers();
                                    }
                                });
                            }
                        });
                    } else if (object.groupChat()) {
                        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                        aCMAlertDialog.setMessage(R.string.can_not_invite_chat_hint);
                        aCMAlertDialog.addButton(R.string.yes, null);
                        aCMAlertDialog.show();
                    } else {
                        ShareDialog.getShareDialogForThread(this, object).show();
                    }
                    return true;
                }
                if (view2.getId() == R.id.more) {
                    ChatThread object2 = getObject();
                    Intent intent2 = FragmentWrapperActivity.intent(ThreadMemberListFragment.class);
                    intent2.putExtra("threadId", object2.id());
                    intent2.putExtra("thread", JacksonUtils.writeAsString(object2));
                    intent2.putExtra(RtcService.KEY_COMMUNITY, JacksonUtils.writeAsString(ThreadDetailFragment.this.community));
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent2);
                    return true;
                }
            }
            if (obj == ThreadDetailFragment.MUTE) {
                ThreadDetailFragment.this.switchClicked(true);
                return true;
            }
            if (obj == ThreadDetailFragment.PIN) {
                ThreadDetailFragment.this.switchClicked(false);
                return true;
            }
            if (obj == ThreadDetailFragment.ANNOUNCEMENT) {
                LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Announcement").send();
                ChatThread object3 = getObject();
                String announcement = object3.getAnnouncement();
                if ((ThreadDetailFragment.this.isHost() || ThreadDetailFragment.this.isCoHost()) && TextUtils.isEmpty(announcement)) {
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, EditThreadAnnouncementFragment.Companion.intent(object3));
                } else {
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, ThreadAnnouncementFragment.Companion.intent(object3));
                }
                return true;
            }
            if (obj == ThreadDetailFragment.VIEW_ONLY) {
                ThreadDetailFragment.this.switchProperties(1);
                return true;
            }
            if (obj == ThreadDetailFragment.ENABLE_PROPS) {
                ThreadDetailFragment.this.switchProperties(2);
                return true;
            }
            if (obj == ThreadDetailFragment.PUBLISH_TO_GLOBAL) {
                ThreadDetailFragment.this.switchProperties(3);
            }
            if (obj == ThreadDetailFragment.FANS_ONLY) {
                ThreadDetailFragment.this.switchProperties(4);
            }
            if (obj == ThreadDetailFragment.COHOST) {
                LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("AddCoHost").send();
                Intent intent3 = FragmentWrapperActivity.intent(AddCoHostFragment.class);
                intent3.putExtra("thread", JacksonUtils.writeAsString(getObject()));
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent3);
                return true;
            }
            if (obj == ThreadDetailFragment.COPY) {
                if (view2 != null) {
                    if (view2.getId() == R.id.copy_link_container) {
                        ShareViewHelper shareViewHelper = new ShareViewHelper(this);
                        shareViewHelper.source = "Chat Thread More Info";
                        shareViewHelper.copyLink(ThreadDetailFragment.this.adapter.getObject());
                    } else if (view2.getId() == R.id.flag) {
                        ThreadDetailFragment.this.showThreadFlagDialog();
                    }
                }
                return true;
            }
            if (obj == ThreadDetailFragment.CHANGE_BACKGROUND) {
                ThreadDetailFragment.this.changeBackground();
                return true;
            }
            if (obj == ThreadDetailFragment.MEMBERS_CAN_INVITE) {
                ThreadDetailFragment.this.switchUserCanInviteClicked();
                return true;
            }
            if (obj == ThreadDetailFragment.ORGANIZER_TRANS) {
                if (getObject().isFansOnly()) {
                    showNotAllowTransformFansOnlyThread();
                } else {
                    ThreadDetailFragment.this.transOrganizer();
                }
            }
            if (obj != cellType) {
                if (obj == ThreadDetailFragment.BUBBLE_STYLE) {
                    Intent intent4 = FragmentWrapperActivity.intent(BubbleSettingFragment.class);
                    ChatThread object4 = getObject();
                    intent4.putExtra(BubbleSettingFragment.KEY_CHAT_THREAD, JacksonUtils.writeAsString(object4));
                    intent4.putExtra("key_thread_id", object4.id());
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent4);
                }
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Fragment fragmentM0 = ThreadDetailFragment.this.getChildFragmentManager().m0("joinThread");
            if (fragmentM0 != null) {
                ThreadDetailFragment.this.getChildFragmentManager().q().t(fragmentM0).j();
            }
            JoinThreadFragment joinThreadFragment = new JoinThreadFragment();
            Bundle bundle = new Bundle();
            bundle.putString("id", ThreadDetailFragment.this.getStringParam("id"));
            ChatThread object5 = getObject();
            bundle.putString("thread", JacksonUtils.writeAsString(object5));
            joinThreadFragment.setArguments(bundle);
            ThreadDetailFragment.this.getChildFragmentManager().q().e(joinThreadFragment, "joinThread").j();
            ThreadDetailFragment.this.getChildFragmentManager().i0();
            if (view2 != null) {
                if (view2.getId() == R.id.chat_join) {
                    if (new ChatHelper(getContext()).isMeAccessibleToThisChat(getObject())) {
                        joinThreadFragment.joinConversation();
                    } else if (getObject() != null) {
                        FansOnlyHintDialog.showFansOnlyHintDialog(this, getObject(), "Chat Thread");
                    }
                } else if (view2.getId() == R.id.chat_leave) {
                    LogEvent.clickWildcardBuilder(this).area("LeaveConversationButton").send();
                    ThreadDetailFragment.this.chatHelper.leaveChat(ThreadDetailFragment.this.getStringParam("id"), object5, ThreadDetailFragment.this.getChildFragmentManager());
                } else if (view2.getId() == R.id.see_chat_list) {
                    Intent intent5 = FragmentWrapperActivity.intent(ChatFragment.class);
                    intent5.putExtra("id", object5.id());
                    intent5.putExtra("thread", JacksonUtils.writeAsString(object5));
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent5);
                }
            }
            return true;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class<? extends ThreadResponse> responseType() {
            return ThreadResponse.class;
        }

        public Adapter() {
            super(ThreadDetailFragment.this);
            this.memberListListener = new ApiResponseListener<MemberListResponse>(MemberListResponse.class) { // from class: com.narvii.chat.detail.ThreadDetailFragment.Adapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, MemberListResponse memberListResponse) throws Exception {
                    ChatThread object;
                    User userOwner;
                    User userProfile = ((AccountService) Adapter.this.getService("account")).getUserProfile();
                    if ((userProfile == null || !userProfile.isCurator()) && ((object = Adapter.this.getObject()) == null || object.type == 0 || (userOwner = object.owner()) == null || userProfile == null || !Utils.isEqualsNotNull(userOwner.id(), userProfile.id()))) {
                        Adapter adapter = Adapter.this;
                        adapter.memberList = new FilterHelper(ThreadDetailFragment.this).filter(memberListResponse.memberList);
                    } else {
                        Adapter adapter2 = Adapter.this;
                        adapter2.memberList = new FilterHelper(ThreadDetailFragment.this).filterDeleted().keepBlockedUser().filter(memberListResponse.memberList);
                    }
                    Adapter.this.notifyDataSetChanged();
                }
            };
        }

        private boolean isCommunityOpen() {
            Community community = ThreadDetailFragment.this.community;
            if (community == null) {
                community = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(ThreadDetailFragment.this.configService.getCommunityId());
            }
            return community != null && community.id > 0 && community.joinType == 0;
        }

        private void sendMemberListReqeust() {
            ((ApiService) getService("api")).exec(ApiRequest.builder().chatServer().path("/chat/thread/" + ThreadDetailFragment.this.id() + "/member?start=0&size=100&type=default&cv=1.2").build(), this.memberListListener);
        }

        private void showNotAllowTransformFansOnlyThread() {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(R.string.not_allow_transfrom_fans_only_chat);
            aCMAlertDialog.addButton(R.string.got_it, null);
            aCMAlertDialog.show();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v12 */
        /* JADX WARN: Type inference failed for: r11v3, types: [int] */
        /* JADX WARN: Type inference failed for: r11v8 */
        @Override // com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            View viewInflate;
            int i10;
            StoryTopicView storyTopicView;
            ChatThread object = getObject();
            User userOwner = null;
            boolean z6 = false;
            if (obj == ThreadDetailFragment.HEADER) {
                View viewCreateView = createView(R.layout.chat_detail_header, viewGroup, view);
                User user = this.fullAuthorInfo;
                if (user != null) {
                    userOwner = user;
                } else {
                    List<User> list = this.memberList;
                    if (list != null) {
                        for (User user2 : list) {
                            if (Utils.isEqualsNotNull(user2.uid, object.uid())) {
                                this.fullAuthorInfo = user2;
                                userOwner = user2;
                            }
                        }
                    }
                }
                if (userOwner == null) {
                    userOwner = object.owner();
                }
                if (userOwner == null) {
                    userOwner = object.author;
                }
                ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setUser(userOwner);
                viewCreateView.findViewById(R.id.stub2).setVisibility((object.owner() == null || !object.owner().isModerator()) ? 0 : 8);
                return viewCreateView;
            }
            if (obj == ThreadDetailFragment.CONTENT) {
                return createTextView(object.content, R.layout.chat_detail_content, view, viewGroup, true, DefaultTagClickListener.instance);
            }
            if (obj == ThreadDetailFragment.COPY) {
                View viewCreateView2 = createView(R.layout.chat_detail_copy, viewGroup, view);
                viewCreateView2.findViewById(R.id.copy_link_container).setVisibility(object.type == 2 ? 0 : 8);
                viewCreateView2.findViewById(R.id.copy_link_container).setOnClickListener(this.subviewClickListener);
                viewCreateView2.findViewById(R.id.copy_link_container).setVisibility(ThreadDetailFragment.this.shouldShowCopyLink() ? 0 : 8);
                viewCreateView2.findViewById(R.id.flag).setOnClickListener(this.subviewClickListener);
                viewCreateView2.findViewById(R.id.flag).setVisibility(ThreadDetailFragment.this.shouldShowFlag() ? 0 : 8);
                return viewCreateView2;
            }
            if (obj == ThreadDetailFragment.TOPICS) {
                View viewCreateView3 = createView(R.layout.thread_detail_topic_view, viewGroup, view);
                NVFlowLayout nVFlowLayout = (NVFlowLayout) viewCreateView3.findViewById(R.id.topic_flow);
                if (object.userAddedTopicList == null || nVFlowLayout == null) {
                    return null;
                }
                int childCount = nVFlowLayout.getChildCount();
                for (int i11 = 0; i11 < object.userAddedTopicList.size(); i11++) {
                    if (i11 < childCount) {
                        storyTopicView = (StoryTopicView) nVFlowLayout.getChildAt(i11);
                    } else {
                        storyTopicView = (StoryTopicView) this.inflater.inflate(R.layout.thread_detail_topic_item_view, (ViewGroup) nVFlowLayout, false);
                        storyTopicView.setOnPreClickListener(new StoryTopicView.OnPreClickListener() { // from class: com.narvii.chat.detail.ThreadDetailFragment.Adapter.2
                            @Override // com.narvii.story.widgets.StoryTopicView.OnPreClickListener
                            public void onPreClick(StoryTopicView storyTopicView2, StoryTopic storyTopic) {
                                LogEvent.clickBuilder(ThreadDetailFragment.this, ActSemantic.checkDetail).area("TopicList").object(storyTopic).send();
                            }
                        });
                        nVFlowLayout.addView(storyTopicView);
                    }
                    storyTopicView.setTopic(object.userAddedTopicList.get(i11));
                    storyTopicView.setClickable(true);
                }
                while (object.userAddedTopicList.size() < nVFlowLayout.getChildCount()) {
                    nVFlowLayout.removeViewAt(nVFlowLayout.getChildCount() - 1);
                }
                return viewCreateView3;
            }
            if (obj == ThreadDetailFragment.MEMBERS) {
                float fDpToPx = (Utils.getScreenSize(ThreadDetailFragment.this.getActivity()).x - Utils.dpToPx(getContext(), 12.0f)) / 5.0f;
                List<User> list2 = this.memberList;
                List<User> optimizedMembersSummary = list2 == null ? object.getOptimizedMembersSummary() : object.getOptimizedMembersSummary(list2);
                int i12 = 10;
                if (optimizedMembersSummary != null && optimizedMembersSummary.size() >= 10) {
                    optimizedMembersSummary = optimizedMembersSummary.subList(0, 9);
                }
                View viewCreateView4 = createView(R.layout.chat_detail_members, viewGroup, view);
                ViewGroup viewGroup2 = (GridLayout) viewCreateView4.findViewById(R.id.grid);
                if (viewGroup2.getChildCount() <= 0 || viewGroup2.getChildAt(0).getId() != R.id.chat_member_invite) {
                    viewInflate = null;
                } else {
                    viewInflate = viewGroup2.getChildAt(0);
                    viewGroup2.removeViewAt(0);
                }
                while (viewGroup2.getChildCount() > optimizedMembersSummary.size()) {
                    viewGroup2.removeViewAt(viewGroup2.getChildCount() - 1);
                }
                int size = optimizedMembersSummary.size();
                int i13 = 0;
                while (i13 < size) {
                    View childAt = i13 < viewGroup2.getChildCount() ? viewGroup2.getChildAt(i13) : null;
                    if (childAt == null) {
                        childAt = this.inflater.inflate(R.layout.chat_detail_member, viewGroup2, z6);
                        viewGroup2.addView(childAt);
                    }
                    List<User> list3 = this.memberList;
                    ?? size2 = list3 == null ? z6 : list3.size();
                    int i14 = object.membersCount;
                    List<User> list4 = object.membersSummary;
                    boolean z10 = Math.max(Math.max(i14, list4 == null ? 0 : list4.size()), (int) size2) >= i12;
                    boolean z11 = z10 && i13 == size + (-1);
                    childAt.getLayoutParams().width = (int) fDpToPx;
                    User user3 = optimizedMembersSummary.get(i13);
                    User userProfile = ThreadDetailFragment.this.accountService.getUserProfile();
                    if (userProfile != null && TextUtils.equals(user3.id(), userProfile.id())) {
                        user3.isPremiumItemMembership = userProfile.isPremiumItemMembership;
                    }
                    ((UserAvatarLayout) childAt.findViewById(R.id.user_avatar_layout)).setNoBadge(z11);
                    ((UserAvatarLayout) childAt.findViewById(R.id.user_avatar_layout)).setUser(user3);
                    ((NicknameView) childAt.findViewById(R.id.nickname)).setUser(user3);
                    ((NicknameView) childAt.findViewById(R.id.nickname)).setVisibility(!z11 ? 0 : 4);
                    childAt.findViewById(R.id.chat_member_invited).setVisibility((user3.membershipStatus != 2 || z11) ? 4 : 0);
                    childAt.setOnClickListener(this.subviewClickListener);
                    childAt.setTag(user3);
                    View viewFindViewById = childAt.findViewById(R.id.more);
                    if (viewFindViewById != null) {
                        viewFindViewById.setTag(R.id.thread_more_item, Boolean.TRUE);
                        viewFindViewById.setOnClickListener(this.subviewClickListener);
                        viewFindViewById.setVisibility((z10 && i13 == size + (-1)) ? 0 : 8);
                    }
                    i13++;
                    z6 = false;
                    i12 = 10;
                }
                if (viewInflate == null) {
                    i10 = 0;
                    viewInflate = this.inflater.inflate(R.layout.chat_detail_member_invite, viewGroup2, false);
                } else {
                    i10 = 0;
                }
                viewInflate.getLayoutParams().width = (int) fDpToPx;
                viewGroup2.addView(viewInflate, i10);
                ThreadDetailFragment.this.inviteView = viewInflate;
                viewInflate.setOnClickListener(this.subviewClickListener);
                return viewCreateView4;
            }
            if (obj == ThreadDetailFragment.MUTE) {
                View viewCreateView5 = createView(R.layout.chat_detail_mute, viewGroup, view);
                viewCreateView5.findViewById(R.id.chat_mute_icon).setVisibility(object.alertOption == 2 ? 0 : 4);
                CompoundButton compoundButton = (CompoundButton) viewCreateView5.findViewById(R.id.chat_mute);
                compoundButton.setChecked(object.alertOption == 2);
                compoundButton.setOnClickListener(this.subviewClickListener);
                return viewCreateView5;
            }
            if (obj == ThreadDetailFragment.PIN) {
                View viewCreateView6 = createView(R.layout.chat_detail_pin, viewGroup, view);
                CompoundButton compoundButton2 = (CompoundButton) viewCreateView6.findViewById(R.id.chat_pin);
                compoundButton2.setChecked(object.isPinned);
                compoundButton2.setOnClickListener(this.subviewClickListener);
                return viewCreateView6;
            }
            if (obj == ThreadDetailFragment.ANNOUNCEMENT) {
                View viewCreateView7 = createView(R.layout.chat_announcement_pin, viewGroup, view);
                View viewFindViewById2 = viewCreateView7.findViewById(R.id.announcement_container);
                TextView textView = (TextView) viewCreateView7.findViewById(R.id.announcement_content);
                View viewFindViewById3 = viewCreateView7.findViewById(R.id.announcement_right_icon);
                String announcement = object.getAnnouncement();
                if (TextUtils.isEmpty(announcement)) {
                    viewFindViewById2.setVisibility(8);
                    viewFindViewById3.setVisibility(0);
                } else {
                    viewFindViewById2.setVisibility(0);
                    viewFindViewById3.setVisibility(8);
                    textView.setText(announcement);
                }
                viewCreateView7.setOnClickListener(this.subviewClickListener);
                return viewCreateView7;
            }
            if (obj == ThreadDetailFragment.AV_PERMISSION) {
                View viewCreateView8 = createView(R.layout.chat_detail_av_permission, viewGroup, view);
                viewCreateView8.findViewById(R.id.action).setOnClickListener(this.subviewClickListener);
                return viewCreateView8;
            }
            if (obj == ThreadDetailFragment.SCREENROOM_PERMISSION) {
                View viewCreateView9 = createView(R.layout.chat_detail_screenroom_permission, viewGroup, view);
                viewCreateView9.findViewById(R.id.action).setOnClickListener(this.subviewClickListener);
                return viewCreateView9;
            }
            if (obj == ThreadDetailFragment.CHANGE_BACKGROUND) {
                View viewCreateView10 = createView(R.layout.chat_detail_change_background, viewGroup, view);
                View viewFindViewById4 = viewCreateView10.findViewById(R.id.background_thumbnail_blur);
                NVImageView nVImageView = (NVImageView) viewCreateView10.findViewById(R.id.background_thumbnail);
                Media background = object.getBackground();
                if (background != null) {
                    viewFindViewById4.setVisibility(8);
                    nVImageView.setImageMedia(background);
                } else {
                    ConfigService configService = (ConfigService) getService("config");
                    ThemePackService themePackService = (ThemePackService) getService("themePack");
                    DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
                    Drawable drawable = themePackService.getDrawable(configService.getCommunityId(), ThemePackService.ThemeObject.BACKGROUND, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels), Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels));
                    if (drawable == null) {
                        int themeColor = themePackService.getThemeColor(configService.getCommunityId());
                        float[] fArr = new float[3];
                        Color.colorToHSV(themeColor, fArr);
                        fArr[2] = fArr[2] * 0.85f;
                        int iHSVToColor = Color.HSVToColor(fArr);
                        viewFindViewById4.setVisibility(8);
                        nVImageView.setImageDrawable(new ColorDrawable(iHSVToColor));
                    } else {
                        viewFindViewById4.setVisibility(0);
                        nVImageView.setImageDrawable(drawable);
                    }
                }
                viewCreateView10.findViewById(R.id.action).setOnClickListener(this.subviewClickListener);
                return viewCreateView10;
            }
            if (obj == ThreadDetailFragment.MEMBERS_CAN_INVITE) {
                View viewCreateView11 = createView(R.layout.chat_detail_members_can_invite, viewGroup, view);
                CompoundButton compoundButton3 = (CompoundButton) viewCreateView11.findViewById(R.id.chat_members_can_invite);
                compoundButton3.setChecked(object.canMemberInvite());
                compoundButton3.setOnClickListener(this.subviewClickListener);
                return viewCreateView11;
            }
            if (obj == ThreadDetailFragment.ORGANIZER_TRANS) {
                View viewCreateView12 = createView(R.layout.chat_detail_organizer_trans, viewGroup, view);
                viewCreateView12.findViewById(R.id.action).setOnClickListener(this.subviewClickListener);
                return viewCreateView12;
            }
            if (obj == ThreadDetailFragment.ACTIONS) {
                View viewCreateView13 = createView(R.layout.chat_detail_actions, viewGroup, view);
                View viewFindViewById5 = viewCreateView13.findViewById(R.id.chat_join);
                viewFindViewById5.setVisibility(object.membershipStatus != 1 ? 0 : 8);
                viewFindViewById5.setOnClickListener(this.subviewClickListener);
                View viewFindViewById6 = viewCreateView13.findViewById(R.id.chat_leave);
                viewFindViewById6.setVisibility(object.membershipStatus == 1 ? 0 : 8);
                viewFindViewById6.setOnClickListener(this.subviewClickListener);
                View viewFindViewById7 = viewCreateView13.findViewById(R.id.see_chat_list);
                viewFindViewById7.setVisibility(ThreadDetailFragment.this.getBooleanParam("showListEntry") ? 0 : 8);
                viewFindViewById7.setOnClickListener(this.subviewClickListener);
                return viewCreateView13;
            }
            if (obj == ThreadDetailFragment.BUBBLE_STYLE) {
                View viewCreateView14 = createView(R.layout.item_chat_bubble_style, viewGroup, view);
                ChatBubble curBubble = getObject().getCurBubble(((AccountService) getService("account")).getUserId());
                NVImageView nVImageView2 = (NVImageView) viewCreateView14.findViewById(R.id.cur_bubble);
                nVImageView2.setShowPressedMask(false);
                if (curBubble == null || curBubble.getPreviewUrl() == null) {
                    nVImageView2.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_default_bubble));
                } else {
                    nVImageView2.setImageUrl(curBubble.getPreviewUrl());
                }
                viewCreateView14.setOnClickListener(this.subviewClickListener);
                return viewCreateView14;
            }
            if (obj == ThreadDetailFragment.VIEW_ONLY) {
                View viewCreateView15 = createView(R.layout.chat_detail_view_only, viewGroup, view);
                CompoundButton compoundButton4 = (CompoundButton) viewCreateView15.findViewById(R.id.view_only);
                compoundButton4.setChecked(object.isViewOnly());
                compoundButton4.setOnClickListener(this.subviewClickListener);
                return viewCreateView15;
            }
            if (obj == ThreadDetailFragment.ENABLE_PROPS) {
                View viewCreateView16 = createView(R.layout.chat_detail_enable_props, viewGroup, view);
                CompoundButton compoundButton5 = (CompoundButton) viewCreateView16.findViewById(R.id.enable_props);
                compoundButton5.setChecked(object.isEnableProps());
                compoundButton5.setOnClickListener(this.subviewClickListener);
                return viewCreateView16;
            }
            if (obj == ThreadDetailFragment.PUBLISH_TO_GLOBAL) {
                View viewCreateView17 = createView(R.layout.chat_detail_publish_to_global, viewGroup, view);
                CompoundButton compoundButton6 = (CompoundButton) viewCreateView17.findViewById(R.id.publish_to_global);
                compoundButton6.setChecked(object.isPublishToGlobal());
                compoundButton6.setOnClickListener(this.subviewClickListener);
                return viewCreateView17;
            }
            if (obj == ThreadDetailFragment.FANS_ONLY) {
                View viewCreateView18 = createView(R.layout.chat_detail_fans_only, viewGroup, view);
                CompoundButton compoundButton7 = (CompoundButton) viewCreateView18.findViewById(R.id.fans_only);
                compoundButton7.setChecked(object.isFansOnly());
                compoundButton7.setOnClickListener(this.subviewClickListener);
                return viewCreateView18;
            }
            if (obj == ThreadDetailFragment.COHOST) {
                View viewCreateView19 = createView(R.layout.chat_detail_add_co_host, viewGroup, view);
                viewCreateView19.findViewById(R.id.action).setOnClickListener(this.subviewClickListener);
                return viewCreateView19;
            }
            if (obj == ThreadDetailFragment.MARGIN) {
                return createView(R.layout.chat_detail_margin, viewGroup, view);
            }
            return obj == ThreadDetailFragment.DIVIDE ? createView(R.layout.chat_detail_divide, viewGroup, view) : super.getCell(obj, view, viewGroup);
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            FanClub fanClub;
            List<User> list;
            int iIndexOfId;
            if (Utils.isEqualsNotNull(notification.id, ThreadDetailFragment.this.id())) {
                String str = notification.action;
                if (str == "delete") {
                    ThreadDetailFragment.this.finish();
                    return;
                }
                if ((notification.obj instanceof ChatThread) && (str == "update" || str == "edit")) {
                    Bundle bundle = notification.bundle;
                    if (bundle != null && (bundle.getBoolean("_fromChatFragment") || notification.bundle.getBoolean("_fromThreadDetailFragment"))) {
                        return;
                    }
                    ChatThread object = getObject();
                    ThreadResponse threadResponse = new ThreadResponse();
                    ChatThread chatThread = (ChatThread) notification.obj;
                    threadResponse.thread = chatThread;
                    if (object != null && chatThread.tipInfo == null) {
                        chatThread.tipInfo = object.tipInfo;
                    }
                    updateResponse(threadResponse);
                    Adapter adapter = ThreadDetailFragment.this.adapter;
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                    }
                }
            }
            Object obj = notification.obj;
            if ((obj instanceof ChatBubbleNotificationWrapper) && Utils.isEqualsNotNull(((ChatBubbleNotificationWrapper) obj).threadId, ThreadDetailFragment.this.id())) {
                ChatBubbleNotificationWrapper chatBubbleNotificationWrapper = (ChatBubbleNotificationWrapper) notification.obj;
                ChatThread object2 = getObject();
                if (object2.chatBubbles == null) {
                    object2.chatBubbles = new HashMap();
                }
                AccountService accountService = (AccountService) getService("account");
                if (accountService.getUserId() != null) {
                    object2.chatBubbles.put(accountService.getUserId(), chatBubbleNotificationWrapper.chatBubble);
                }
                ThreadResponse threadResponse2 = new ThreadResponse();
                threadResponse2.thread = object2;
                updateResponse(threadResponse2);
                Adapter adapter2 = ThreadDetailFragment.this.adapter;
                if (adapter2 != null) {
                    adapter2.notifyDataSetChanged();
                }
            }
            Object obj2 = notification.obj;
            if ((obj2 instanceof User) && notification.action == "update" && (list = this.memberList) != null && (iIndexOfId = Utils.indexOfId(list, ((User) obj2).id())) >= 0) {
                User user = this.memberList.get(iIndexOfId);
                User user2 = (User) ((User) notification.obj).m1622clone();
                user2.membershipStatus = user.membershipStatus;
                this.memberList.set(iIndexOfId, user2);
                notifyDataSetChanged();
            }
            Object obj3 = notification.obj;
            if (obj3 instanceof FanClub) {
                if (Utils.isEqualsNotNull(((FanClub) obj3).targetUid, getObject() == null ? null : getObject().uid()) && !new ChatHelper(getContext()).isMeAccessibleToThisChat(getObject()) && (fanClub = ((AccountService) getService("account")).getFanClub(((FanClub) notification.obj).targetUid)) != null && fanClub.isActive() && getObject() != null) {
                    getObject().needHidden = false;
                    notifyDataSetChanged();
                }
            }
            Object obj4 = notification.obj;
            if ((obj4 instanceof ThreadNotification) && notification.action == "update") {
                ThreadNotification threadNotification = (ThreadNotification) obj4;
                int i10 = threadNotification.action;
                if (i10 == 2) {
                    Object obj5 = threadNotification.targetObj;
                    if (obj5 != null) {
                        ThreadDetailFragment.this.addMembers((List) obj5);
                    }
                } else if (i10 == 1) {
                    Object obj6 = threadNotification.targetObj;
                    if (obj6 instanceof User) {
                        ThreadDetailFragment.this.removeUser((User) obj6);
                    }
                }
            }
            ThreadDetailFragment.this.updateHeader();
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(ChatThread chatThread) {
            ThreadResponse threadResponse = new ThreadResponse();
            threadResponse.thread = chatThread;
            updateResponse(threadResponse);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setResponse(ThreadResponse threadResponse) {
            updateResponse(threadResponse);
            Notification notification = new Notification("update", (ChatThread) ThreadDetailFragment.this.adapter.getObject().m1622clone());
            Bundle bundle = new Bundle();
            bundle.putBoolean("_fromThreadDetailFragment", true);
            notification.bundle = bundle;
            NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) getService("notification"), notification);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List<Object> list) {
            List<StoryTopic> list2;
            ChatThread object = getObject();
            if (!object.singleChat()) {
                list.add(ThreadDetailFragment.HEADER);
            }
            if (!object.singleChat()) {
                list.add(ThreadDetailFragment.CONTENT);
            } else {
                list.add(ThreadDetailFragment.MARGIN);
            }
            if (!object.singleChat() && (list2 = object.userAddedTopicList) != null && !list2.isEmpty()) {
                list.add(ThreadDetailFragment.TOPICS);
            }
            DetailAdapter.CellType cellType = ThreadDetailFragment.MARGIN;
            list.add(cellType);
            list.add(ThreadDetailFragment.MEMBERS);
            list.add(cellType);
            if ((object.membershipStatus & 1) != 0) {
                list.add(ThreadDetailFragment.MUTE);
            }
            if (object.joined()) {
                list.add(ThreadDetailFragment.DIVIDE);
                list.add(ThreadDetailFragment.PIN);
            }
            if (new CommunityConfigHelper(this).isPremiumFeatureEnabled() && object.joined()) {
                list.add(ThreadDetailFragment.DIVIDE);
                list.add(ThreadDetailFragment.BUBBLE_STYLE);
            }
            if (!object.singleChat()) {
                list.add(cellType);
                list.add(ThreadDetailFragment.ANNOUNCEMENT);
            }
            if ((object.singleChat() || ThreadDetailFragment.this.isHost() || ThreadDetailFragment.this.isCoHost()) && !object.isJumpstart()) {
                list.add(ThreadDetailFragment.DIVIDE);
                list.add(ThreadDetailFragment.CHANGE_BACKGROUND);
            }
            if (!object.singleChat() && (ThreadDetailFragment.this.isHost() || ThreadDetailFragment.this.isCoHost())) {
                list.add(ThreadDetailFragment.DIVIDE);
                list.add(ThreadDetailFragment.VIEW_ONLY);
            }
            if (!object.singleChat() && (ThreadDetailFragment.this.isHost() || ThreadDetailFragment.this.isCoHost())) {
                list.add(ThreadDetailFragment.DIVIDE);
                list.add(ThreadDetailFragment.MEMBERS_CAN_INVITE);
            }
            if (!object.singleChat() && ThreadDetailFragment.this.isHost()) {
                list.add(cellType);
                list.add(ThreadDetailFragment.ORGANIZER_TRANS);
                DetailAdapter.CellType cellType2 = ThreadDetailFragment.DIVIDE;
                list.add(cellType2);
                list.add(ThreadDetailFragment.COHOST);
                list.add(cellType2);
                list.add(ThreadDetailFragment.ENABLE_PROPS);
                if (object.publicChat()) {
                    if (!object.isGlobal() && isCommunityOpen()) {
                        list.add(cellType2);
                        list.add(ThreadDetailFragment.PUBLISH_TO_GLOBAL);
                    }
                    if (ThreadDetailFragment.this.isMeInfluencer()) {
                        list.add(cellType2);
                        list.add(ThreadDetailFragment.FANS_ONLY);
                    }
                }
            }
            list.add(ThreadDetailFragment.ACTIONS);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            return ApiRequest.builder().chatServer().path("/chat/thread/" + ThreadDetailFragment.this.id()).build();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(ThreadDetailFragment.HEADER);
            list.add(ThreadDetailFragment.CONTENT);
            list.add(ThreadDetailFragment.TOPICS);
            list.add(ThreadDetailFragment.MEMBERS);
            list.add(ThreadDetailFragment.MUTE);
            list.add(ThreadDetailFragment.PIN);
            list.add(ThreadDetailFragment.ANNOUNCEMENT);
            list.add(ThreadDetailFragment.MEMBERS_CAN_INVITE);
            list.add(ThreadDetailFragment.CHANGE_BACKGROUND);
            list.add(ThreadDetailFragment.ORGANIZER_TRANS);
            list.add(ThreadDetailFragment.ACTIONS);
            list.add(ThreadDetailFragment.BUBBLE_STYLE);
            list.add(ThreadDetailFragment.VIEW_ONLY);
            list.add(ThreadDetailFragment.ENABLE_PROPS);
            list.add(ThreadDetailFragment.COHOST);
            list.add(ThreadDetailFragment.PUBLISH_TO_GLOBAL);
            list.add(ThreadDetailFragment.FANS_ONLY);
            list.add(ThreadDetailFragment.MARGIN);
            list.add(ThreadDetailFragment.DIVIDE);
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            if (!isLoading()) {
                sendRequest();
            }
            if (this.memberList == null) {
                sendMemberListReqeust();
            }
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            refreshMonitorStart(i10, callback);
            this.memberList = null;
            sendMemberListReqeust();
            refreshMonitorAbort();
            super.refresh(i10, callback);
        }

        public void updateResponse(ThreadResponse threadResponse) {
            Callback<ChatThread> callback;
            super.setResponse(threadResponse);
            invalidateOptionsMenu();
            if (threadResponse.timestamp != null && (callback = ThreadDetailFragment.this.onFinishListener) != null) {
                callback.call(threadResponse.object());
            }
            ThreadDetailFragment.this.setDisabledStatus(threadResponse.thread);
            if (ThreadDetailFragment.this.inviteView != null && ThreadDetailFragment.this.autoOpenInviteList) {
                ThreadDetailFragment.this.autoClicking = true;
                ThreadDetailFragment.this.inviteView.performClick();
                ThreadDetailFragment.this.autoClicking = false;
                ThreadDetailFragment.this.autoOpenInviteList = false;
            }
            ThreadDetailFragment.this.updateHeader();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPtgAndFansOnlyConflictDialog$1(boolean z6, ACMAlertDialog aCMAlertDialog, View view) {
        if (z6) {
            switchProperties(3, false);
        } else {
            switchProperties(4, false);
        }
        aCMAlertDialog.dismiss();
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showThreadFlagDialog() {
        if (checkCommunityAvailability(false, true)) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.flag_chat_info, 0);
            actionSheetDialog.addItem(R.string.flag_chat_message, 0);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.chat.detail.ThreadDetailFragment.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    if (i10 == 0) {
                        ThreadDetailFragment.this.showFlagReportDialog();
                        dialogInterface.dismiss();
                    } else {
                        if (i10 != 1) {
                            return;
                        }
                        AlertDialog alertDialog = new AlertDialog(ThreadDetailFragment.this.getContext());
                        alertDialog.setTitle(R.string.flag_notify_title);
                        alertDialog.setMessage(R.string.flag_chat_message_note_hint);
                        alertDialog.addButton(android.R.string.ok, 4, (View.OnClickListener) null);
                        alertDialog.show();
                        dialogInterface.dismiss();
                    }
                }
            });
            actionSheetDialog.show();
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "chat_room_detail_page";
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected boolean observeThemeDownloadFinish() {
        return true;
    }

    public void switchProperties(int i10) {
        switchProperties(i10, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkCommunityAvailability(final boolean z6, boolean z10) {
        Community community = this.community;
        if (community == null) {
            return true;
        }
        return !this.globalChatHelper.tryJoinCommunity(community.id, z6, !z6, z10, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.detail.ThreadDetailFragment.3
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public int getActionRTCType() {
                return 0;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onPostJoinCommunity(int i10, boolean z11) {
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            @Nullable
            public ChatThread followingChatToJoin() {
                Adapter adapter = ThreadDetailFragment.this.adapter;
                if (adapter == null) {
                    return null;
                }
                return adapter.getObject();
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onCheckLoginFailed() {
                ThreadDetailFragment.this.ensureLogin(new Intent("joinChannel"));
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public boolean onPreJoinCommunity(int i10) {
                if (z6) {
                    return false;
                }
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", i10);
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ThreadDetailFragment.this, intent);
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isMeInfluencer() {
        User userProfile = this.accountService.getUserProfile();
        return userProfile != null && userProfile.isInfluencer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPtgAndFansOnlyConflictDialog$0(ACMAlertDialog aCMAlertDialog, View view) {
        this.adapter.notifyDataSetChanged();
        aCMAlertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeUser(User user) {
        List<User> list;
        Adapter adapter = this.adapter;
        if (adapter == null || (list = adapter.memberList) == null) {
            return;
        }
        Iterator<User> it = list.iterator();
        while (it.hasNext()) {
            if (Utils.isEquals(it.next().uid, user.uid)) {
                it.remove();
            }
        }
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldShowCopyLink() {
        Adapter adapter = this.adapter;
        ChatThread object = adapter == null ? null : adapter.getObject();
        return (object == null || object.status == 9 || object.type != 2) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldShowFlag() {
        int i10;
        Adapter adapter = this.adapter;
        ChatThread object = adapter == null ? null : adapter.getObject();
        return (object == null || object.status == 9 || isHost() || (i10 = object.type) == 1 || i10 == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFlagReportDialog() {
        new FlagReportOptionDialog.Builder(this).nvObject(this.adapter.getObject()).build().show();
    }

    private void showPtgAndFansOnlyConflictDialog(final boolean z6) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(getString(z6 ? R.string.thread_publish_to_global_comfirm : R.string.thread_fans_only_confirm));
        aCMAlertDialog.addButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.chat.detail.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1886a.lambda$showPtgAndFansOnlyConflictDialog$0(aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.detail.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1888a.lambda$showPtgAndFansOnlyConflictDialog$1(z6, aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.setCancelable(false);
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeader() {
        ChatThread object = this.adapter.getObject();
        HeaderLayout headerLayout = this.headerLayout;
        if (headerLayout != null) {
            headerLayout.setThread(object);
            this.headerLayout.setHeight1(this.headerLayoutHeight);
        }
        if (object != null) {
            boolean z6 = getListView() instanceof NVListView;
            int i10 = R.color.white;
            if (z6) {
                ((NVListView) getListView()).setOverscrollStretchHeader(getResources().getColor(object.singleChat() ? 17170445 : R.color.white));
            }
            OverlayLayout overlayLayout = this.headerOverlay;
            if (overlayLayout != null) {
                if (object.singleChat()) {
                    i10 = 17170445;
                }
                overlayLayout.setBackgroundResource(i10);
            }
        }
    }

    public void addMembers(List<User> list) {
        final ChatThread object = this.adapter.getObject();
        if (object == null) {
            return;
        }
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        for (User user : list) {
            if (!TextUtils.isEmpty(user.uid)) {
                arrayList2.add(user.uid);
                arrayNodeCreateArrayNode.add(user.uid);
                User user2 = (User) user.m1622clone();
                user2.membershipStatus = 2;
                arrayList.add(user2);
            }
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.chat.detail.ThreadDetailFragment.9
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                List<User> list2;
                Adapter adapter = ThreadDetailFragment.this.adapter;
                int i10 = 0;
                if (adapter != null && (list2 = adapter.memberList) != null) {
                    Iterator<User> it = list2.iterator();
                    while (it.hasNext()) {
                        if (arrayList2.contains(it.next().uid)) {
                            it.remove();
                        }
                    }
                    ThreadDetailFragment.this.adapter.memberList.addAll(0, arrayList);
                    ThreadDetailFragment.this.adapter.notifyDataSetChanged();
                }
                ChatThread chatThread = (ChatThread) object.m1622clone();
                List<User> list3 = chatThread.membersSummary;
                if (list3 != null) {
                    Iterator<User> it2 = list3.iterator();
                    while (it2.hasNext()) {
                        if (arrayList2.contains(it2.next().uid)) {
                            it2.remove();
                        }
                    }
                    chatThread.membersSummary.addAll(arrayList);
                }
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    if (((User) it3.next()).membershipStatus == 1) {
                        i10++;
                    }
                }
                chatThread.membersCount += i10;
                ThreadDetailFragment.this.sendNotification(new Notification("update", chatThread));
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().chatServer().post().path("/chat/thread/" + object.threadId + "/member/invite").param("uids", arrayNodeCreateArrayNode).build(), progressDialog.dismissListener);
    }

    public void changeBackground() {
        int i10 = this.adapter.getObject().getBackground() != null ? 70 : 6;
        this.photoDir.mkdirs();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MediaPickerFragment.Option(100, getString(R.string.thread_choose_default_background), 0, 0));
        this.mediaPicker.pickMedia(this.photoDir, (Bundle) null, i10, arrayList);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter() { // from class: com.narvii.chat.detail.ThreadDetailFragment.2
            @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
            public int getCount() {
                Adapter adapter = ThreadDetailFragment.this.adapter;
                if (adapter == null || adapter.getObject() == null || ThreadDetailFragment.this.adapter.getObject().type != 0) {
                    return super.getCount();
                }
                return 0;
            }
        };
        staticViewAdapter.addLayouts(R.layout.thread_detail_overlay_placeholder);
        mergeAdapter.addAdapter(staticViewAdapter);
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        mergeAdapter.addAdapter(adapter, true);
        return mergeAdapter;
    }

    public void deleteMember(final User user) {
        ChatThread object = this.adapter.getObject();
        if (object == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        new ChatRequestHelper(this).sendDeleteThreadRequest(user.uid, object.threadId, object, new Callback<Object>() { // from class: com.narvii.chat.detail.ThreadDetailFragment.6
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                progressDialog.dismiss();
                if (obj == Boolean.TRUE) {
                    ThreadDetailFragment.this.removeUser(user);
                }
            }
        });
    }

    public boolean fromGlobalChat() {
        return getBooleanParam(RtcService.KEY_FROM_GLOBAL_CHAT);
    }

    public void inviteMembers() {
        ChatThread object = this.adapter.getObject();
        if (object == null) {
            return;
        }
        int i10 = object.type;
        if (i10 == 0 && object.membershipStatus == 1) {
            Intent intent = FragmentWrapperActivity.intent(MultiUserPickerFragment.class);
            ArrayList arrayList = new ArrayList();
            List<User> list = this.adapter.memberList;
            if (list != null) {
                for (User user : list) {
                    int i11 = user.membershipStatus;
                    if (i11 == 2 || i11 == 1) {
                        arrayList.add(user);
                    }
                }
            }
            intent.putExtra("exists", JacksonUtils.writeAsString(arrayList));
            intent.putExtra("showSearchBar", true);
            intent.putExtra("maxMember", 100);
            intent.putExtra("threadId", object.id());
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 1);
            return;
        }
        if (i10 == 1 || i10 == 2) {
            ArrayList arrayList2 = new ArrayList();
            List<User> list2 = this.adapter.memberList;
            if (list2 != null) {
                for (User user2 : list2) {
                    int i12 = user2.membershipStatus;
                    if (i12 == 2 || i12 == 1) {
                        arrayList2.add(user2.id());
                    }
                }
            }
            int iMax = object.membersCount;
            List<User> list3 = this.adapter.memberList;
            if (list3 != null) {
                iMax = Math.max(iMax, list3.size());
            } else {
                List<User> list4 = object.membersSummary;
                if (list4 != null) {
                    iMax = Math.max(iMax, list4.size());
                }
            }
            if (iMax >= object.membersQuota) {
                AlertDialog alertDialog = new AlertDialog(getContext());
                alertDialog.setTitle(getString(R.string.chat_reach_limit, Integer.valueOf(object.membersQuota)));
                alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
                alertDialog.show();
                return;
            }
            Intent intent2 = FragmentWrapperActivity.intent(MultiUserPickerFragment.class);
            intent2.putExtra("showSearchBar", true);
            List<User> list5 = this.adapter.memberList;
            if (list5 == null) {
                list5 = object.membersSummary;
            }
            intent2.putExtra("exists", JacksonUtils.writeAsString(list5));
            intent2.putExtra("maxMember", object.membersQuota);
            intent2.putExtra("threadId", object.id());
            intent2.putExtra("userids", JacksonUtils.writeAsString(arrayList2));
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent2, 2);
        }
    }

    public boolean isCoHost() {
        return this.chatHelper.isCoHost(this.adapter.getObject());
    }

    public boolean isHost() {
        return this.chatHelper.isHost(this.adapter.getObject());
    }

    public boolean notJoined() {
        int communityId = ((ConfigService) getService("config")).getCommunityId();
        return (communityId == 0 || this.affiliationsService.contains(communityId)) ? false : true;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        ArrayList listAs;
        if (i10 == 2 && i11 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("users"), User.class)) != null && !listAs.isEmpty()) {
            addMembers(listAs);
        }
        if (i10 == 1 && i11 == -1 && intent != null) {
            String userId = ((AccountService) getService("account")).getUserId();
            ArrayList<User> listAs2 = JacksonUtils.readListAs(intent.getStringExtra("users"), User.class);
            ChatThread object = this.adapter.getObject();
            if (object != null && object.membersSummary != null && listAs2 != null && listAs2.size() > 0) {
                ArrayList arrayList = new ArrayList();
                String str = null;
                for (User user : object.membersSummary) {
                    if (!Utils.isEquals(user.uid, userId)) {
                        arrayList.add(user.uid);
                        str = user.uid;
                        if (user.membershipStatus == 0) {
                            user.membershipStatus = 2;
                        }
                    }
                }
                for (User user2 : listAs2) {
                    if (!Utils.isEquals(user2.uid, userId) && !arrayList.contains(user2.uid)) {
                        arrayList.add(user2.uid);
                    }
                }
                if (arrayList.size() == 1 && Utils.isEqualsNotNull(arrayList.get(0), str)) {
                    new ChatRequestHelper(this).sendInviteMemberToExistedChatRequest(str, new Callback<Object>() { // from class: com.narvii.chat.detail.ThreadDetailFragment.7
                        @Override // com.narvii.util.Callback
                        public void call(Object obj) {
                            if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
                                ThreadDetailFragment.this.finish();
                            }
                        }
                    });
                    return;
                }
                ChatInviteFragment chatInviteFragment = (ChatInviteFragment) getFragmentManager().m0("chatInvite");
                if (chatInviteFragment != null && arrayList.size() > 1) {
                    chatInviteFragment.askInvite((String[]) arrayList.toArray(new String[0]));
                }
                chatInviteFragment.onStartListener = new Callback<ChatThread>() { // from class: com.narvii.chat.detail.ThreadDetailFragment.8
                    @Override // com.narvii.util.Callback
                    public void call(ChatThread chatThread) {
                        ThreadDetailFragment.this.finish();
                    }
                };
            }
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        BackgroundPickerFragment backgroundPickerFragment = this.backgroundPickerFragment;
        if (backgroundPickerFragment == null || !backgroundPickerFragment.isShown()) {
            return false;
        }
        this.backgroundPickerFragment.dismiss();
        return true;
    }

    @Override // com.narvii.media.MediaPickerFragment.OnCustomOptionSelectedListener
    public void onCustomOptionSelected(MediaPickerFragment.Option option, Bundle bundle) {
        BackgroundPickerFragment backgroundPickerFragment = this.backgroundPickerFragment;
        if (backgroundPickerFragment != null) {
            backgroundPickerFragment.setChatThread(this.adapter.getObject());
            this.backgroundPickerFragment.show();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        this.affiliationsService.removeAffiliationChangeListener(this);
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPicker;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) throws Throwable {
        BackgroundPickerFragment backgroundPickerFragment = this.backgroundPickerFragment;
        if (backgroundPickerFragment != null) {
            backgroundPickerFragment.setChatThread(this.adapter.getObject());
            if (list == null || list.isEmpty()) {
                this.backgroundPickerFragment.deleteBackground();
            } else {
                this.backgroundPickerFragment.setBackground(list.get(0));
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        int i10;
        Adapter adapter = this.adapter;
        ChatThread object = adapter == null ? null : adapter.getObject();
        menu.findItem(R.string.share).setVisible(shouldShowCopyLink());
        boolean z6 = true;
        if (fromGlobalNotJoined()) {
            menu.findItem(R.string.edit).setVisible(false);
            menu.findItem(R.string.flag_for_review).setVisible(false);
            menu.findItem(R.string.advanced).setVisible(false);
        } else {
            menu.findItem(R.string.edit).setVisible(object != null && ((i10 = object.type) == 1 || i10 == 2) && this.chatHelper.isHostOrCoHost(object) && object.condition != 2);
            menu.findItem(R.string.flag_for_review).setVisible(!fromGlobalChat() && shouldShowFlag());
            User userProfile = ((AccountService) getService("account")).getUserProfile();
            menu.findItem(R.string.advanced).setVisible((object == null || userProfile == null || !userProfile.isCurator()) ? false : true);
        }
        MenuItem menuItemFindItem = menu.findItem(R.string.share_copy_link);
        if (!shouldShowCopyLink() || (!menu.findItem(R.string.edit).isVisible() && !menu.findItem(R.string.advanced).isVisible())) {
            z6 = false;
        }
        menuItemFindItem.setVisible(z6);
        super.onPrepareOptionsMenu(menu);
    }

    @Override // com.narvii.detail.DetailFragment
    protected boolean shouldShowNotAvailable(NVObject nVObject) {
        return (nVObject instanceof ChatThread) && ((ChatThread) nVObject).notJoined() && super.shouldShowNotAvailable(nVObject);
    }

    public void switchClicked(final boolean z6) {
        ApiRequest apiRequestBuild;
        ChatThread object = this.adapter.getObject();
        if (object == null) {
            return;
        }
        AccountService accountService = (AccountService) getService("account");
        if (accountService.hasAccount()) {
            final int i10 = object.alertOption == 2 ? 1 : 2;
            final boolean z10 = object.isPinned;
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.show();
            if (z6) {
                LogEvent.clickBuilder(this, i10 == 2 ? ActSemantic.turnOn : ActSemantic.turnOff).area("DoNotDisturb").send();
                apiRequestBuild = ApiRequest.builder().chatServer().post().path("/chat/thread/" + object.threadId + "/member/" + accountService.getUserId() + "/alert").param("alertOption", Integer.valueOf(i10)).build();
            } else {
                ApiRequest.Builder builderPost = ApiRequest.builder().chatServer().post();
                StringBuilder sb = new StringBuilder();
                sb.append("/chat/thread/");
                sb.append(object.threadId);
                sb.append(z10 ? "/unpin" : "/pin");
                apiRequestBuild = builderPost.path(sb.toString()).build();
            }
            ((ApiService) getService("api")).exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.detail.ThreadDetailFragment.11
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    NVToast.makeText(ThreadDetailFragment.this.getContext(), str, 0).show();
                    progressDialog.dismiss();
                    ThreadDetailFragment.this.adapter.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    progressDialog.dismiss();
                    ChatThread chatThread = (ChatThread) ThreadDetailFragment.this.adapter.getObject().m1622clone();
                    if (z6) {
                        chatThread.alertOption = i10;
                    } else {
                        chatThread.isPinned = !z10;
                    }
                    NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) ThreadDetailFragment.this.getService("notification"), new Notification("update", chatThread));
                }
            });
            if (z10) {
                return;
            }
            ((StatisticsService) getService("statistics")).event("User Pins a Chat").param("Chat Type", StatisticHelper.getChatThreadType(object, "Others")).source("More Info").userPropInc("User Pins a Chat Total");
        }
    }

    /* JADX WARN: Code duplicated, block: B:71:0x019e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:72:0x019f  */
    public void switchProperties(final int i10, boolean z6) {
        ApiRequest apiRequestBuild;
        final boolean z10;
        boolean zIsFansOnly;
        boolean z11;
        boolean zIsEnableProps;
        ChatThread object = this.adapter.getObject();
        if (object == null) {
            return;
        }
        boolean z12 = false;
        if (i10 != 1) {
            if (i10 == 2) {
                zIsEnableProps = object.isEnableProps();
                LogEvent.clickBuilder(this, zIsEnableProps ? ActSemantic.turnOff : ActSemantic.turnOn).area("EnableProps").send();
                ApiRequest.Builder builderPost = ApiRequest.builder().chatServer().post();
                StringBuilder sb = new StringBuilder();
                sb.append("/chat/thread/");
                sb.append(object.threadId);
                sb.append(zIsEnableProps ? "/tipping-perm-status/disable" : "/tipping-perm-status/enable");
                apiRequestBuild = builderPost.path(sb.toString()).build();
            } else {
                if (i10 == 3) {
                    zIsFansOnly = object.isPublishToGlobal();
                    z11 = isMeInfluencer() && object.isFansOnly() && !zIsFansOnly;
                    if (z6 && z11) {
                        showPtgAndFansOnlyConflictDialog(true);
                        return;
                    }
                    LogEvent.clickBuilder(this, zIsFansOnly ? ActSemantic.turnOff : ActSemantic.turnOn).area("PublishToGlobal").send();
                    String str = "/chat/thread/" + object.id();
                    ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode.put("publishToGlobal", !zIsFansOnly ? 1 : 0);
                    if (z11) {
                        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
                        objectNodeCreateObjectNode2.put("fansOnly", false);
                        objectNodeCreateObjectNode.put("extensions", objectNodeCreateObjectNode2);
                    }
                    apiRequestBuild = ApiRequest.builder().chatServer().post().path(str).body(objectNodeCreateObjectNode).build();
                } else if (i10 == 4) {
                    zIsFansOnly = object.isFansOnly();
                    z11 = object.isPublishToGlobal() && !zIsFansOnly;
                    if (z6 && object.isPublishToGlobal() && !zIsFansOnly) {
                        showPtgAndFansOnlyConflictDialog(false);
                        return;
                    }
                    LogEvent.clickBuilder(this, zIsFansOnly ? ActSemantic.turnOff : ActSemantic.turnOn).area("FansOnly").send();
                    String str2 = "/chat/thread/" + object.id();
                    ObjectNode objectNodeCreateObjectNode3 = JacksonUtils.createObjectNode();
                    ObjectNode objectNodeCreateObjectNode4 = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode4.put("fansOnly", !zIsFansOnly);
                    objectNodeCreateObjectNode3.put("extensions", objectNodeCreateObjectNode4);
                    if (z11) {
                        objectNodeCreateObjectNode3.put("publishToGlobal", 0);
                    }
                    apiRequestBuild = ApiRequest.builder().chatServer().post().path(str2).body(objectNodeCreateObjectNode3).build();
                } else {
                    apiRequestBuild = null;
                    z10 = false;
                }
                z12 = zIsFansOnly;
                z10 = z11;
            }
            if (apiRequestBuild == null) {
                return;
            }
            final boolean z13 = !z12;
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            ApiService apiService = (ApiService) getService("api");
            progressDialog.show();
            apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.detail.ThreadDetailFragment.10
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                    if (i10 == 2 && (i11 == 1661 || i11 == 1662)) {
                        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(ThreadDetailFragment.this.getContext());
                        aCMAlertDialog.setMessage(str3);
                        aCMAlertDialog.addButton(R.string.got_it, null);
                        aCMAlertDialog.show();
                    } else {
                        NVToast.makeText(ThreadDetailFragment.this.getContext(), str3, 0).show();
                    }
                    progressDialog.dismiss();
                    ThreadDetailFragment.this.adapter.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    progressDialog.dismiss();
                    ChatThread chatThread = (ChatThread) ThreadDetailFragment.this.adapter.getObject().m1622clone();
                    int i11 = i10;
                    if (i11 == 1) {
                        boolean zIsViewOnly = chatThread.isViewOnly();
                        boolean z14 = z13;
                        if (zIsViewOnly == z14) {
                            return;
                        } else {
                            chatThread.setViewOnly(z14);
                        }
                    } else {
                        if (i11 == 2) {
                            TippingInfo tippingInfo = chatThread.tipInfo;
                            if (tippingInfo != null) {
                                boolean z15 = tippingInfo.tippable;
                                boolean z16 = z13;
                                if (z15 == z16) {
                                    return;
                                } else {
                                    tippingInfo.tippable = z16;
                                }
                            }
                            TippingInfo tippingInfo2 = ThreadDetailFragment.this.adapter.getObject().tipInfo;
                            if (tippingInfo2 != null) {
                                tippingInfo2.tippable = z13;
                            }
                            ThreadDetailFragment.this.adapter.notifyDataSetChanged();
                            return;
                        }
                        if (i11 == 3) {
                            if (chatThread.publishToGlobal != z13) {
                                if (z10 && chatThread.isFansOnly()) {
                                    chatThread.setFansOnly(false);
                                }
                                chatThread.publishToGlobal = z13 ? 1 : 0;
                            } else if (!z10 || !chatThread.isFansOnly()) {
                                return;
                            } else {
                                chatThread.setFansOnly(false);
                            }
                        } else if (i11 == 4) {
                            if (chatThread.isFansOnly() != z13) {
                                if (z10 && chatThread.isPublishToGlobal()) {
                                    chatThread.publishToGlobal = 0;
                                }
                                chatThread.setFansOnly(z13);
                            } else if (!z10 || !chatThread.isPublishToGlobal()) {
                                return;
                            } else {
                                chatThread.publishToGlobal = 0;
                            }
                        }
                    }
                    NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) ThreadDetailFragment.this.getService("notification"), new Notification("update", chatThread));
                }
            });
        }
        zIsEnableProps = object.isViewOnly();
        LogEvent.clickBuilder(this, zIsEnableProps ? ActSemantic.turnOff : ActSemantic.turnOn).area("ViewOnly").send();
        ApiRequest.Builder builderPost2 = ApiRequest.builder().chatServer().post();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("/chat/thread/");
        sb2.append(object.threadId);
        sb2.append(zIsEnableProps ? "/view-only/disable" : "/view-only/enable");
        apiRequestBuild = builderPost2.path(sb2.toString()).build();
        z10 = false;
        z12 = zIsEnableProps;
        if (apiRequestBuild == null) {
            return;
        }
        final boolean z14 = !z12;
        final ProgressDialog progressDialog2 = new ProgressDialog(getContext());
        ApiService apiService2 = (ApiService) getService("api");
        progressDialog2.show();
        apiService2.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.detail.ThreadDetailFragment.10
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                if (i10 == 2 && (i11 == 1661 || i11 == 1662)) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(ThreadDetailFragment.this.getContext());
                    aCMAlertDialog.setMessage(str3);
                    aCMAlertDialog.addButton(R.string.got_it, null);
                    aCMAlertDialog.show();
                } else {
                    NVToast.makeText(ThreadDetailFragment.this.getContext(), str3, 0).show();
                }
                progressDialog2.dismiss();
                ThreadDetailFragment.this.adapter.notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                progressDialog2.dismiss();
                ChatThread chatThread = (ChatThread) ThreadDetailFragment.this.adapter.getObject().m1622clone();
                int i11 = i10;
                if (i11 == 1) {
                    boolean zIsViewOnly = chatThread.isViewOnly();
                    boolean z15 = z14;
                    if (zIsViewOnly == z15) {
                        return;
                    } else {
                        chatThread.setViewOnly(z15);
                    }
                } else {
                    if (i11 == 2) {
                        TippingInfo tippingInfo = chatThread.tipInfo;
                        if (tippingInfo != null) {
                            boolean z16 = tippingInfo.tippable;
                            boolean z17 = z14;
                            if (z16 == z17) {
                                return;
                            } else {
                                tippingInfo.tippable = z17;
                            }
                        }
                        TippingInfo tippingInfo2 = ThreadDetailFragment.this.adapter.getObject().tipInfo;
                        if (tippingInfo2 != null) {
                            tippingInfo2.tippable = z14;
                        }
                        ThreadDetailFragment.this.adapter.notifyDataSetChanged();
                        return;
                    }
                    if (i11 == 3) {
                        if (chatThread.publishToGlobal != z14) {
                            if (z10 && chatThread.isFansOnly()) {
                                chatThread.setFansOnly(false);
                            }
                            chatThread.publishToGlobal = z14 ? 1 : 0;
                        } else if (!z10 || !chatThread.isFansOnly()) {
                            return;
                        } else {
                            chatThread.setFansOnly(false);
                        }
                    } else if (i11 == 4) {
                        if (chatThread.isFansOnly() != z14) {
                            if (z10 && chatThread.isPublishToGlobal()) {
                                chatThread.publishToGlobal = 0;
                            }
                            chatThread.setFansOnly(z14);
                        } else if (!z10 || !chatThread.isPublishToGlobal()) {
                            return;
                        } else {
                            chatThread.publishToGlobal = 0;
                        }
                    }
                }
                NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) ThreadDetailFragment.this.getService("notification"), new Notification("update", chatThread));
            }
        });
    }

    public void switchUserCanInviteClicked() {
        ChatThread object = this.adapter.getObject();
        if (object != null && ((AccountService) getService("account")).hasAccount()) {
            final boolean zCanMemberInvite = object.canMemberInvite();
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.show();
            ApiRequest.Builder builderPost = ApiRequest.builder().chatServer().post();
            StringBuilder sb = new StringBuilder();
            sb.append("/chat/thread/");
            sb.append(object.threadId);
            sb.append("/members-can-invite/");
            sb.append(zCanMemberInvite ? "disable" : "enable");
            ((ApiService) getService("api")).exec(builderPost.path(sb.toString()).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.detail.ThreadDetailFragment.12
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    NVToast.makeText(ThreadDetailFragment.this.getContext(), str, 0).show();
                    progressDialog.dismiss();
                    ThreadDetailFragment.this.adapter.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    progressDialog.dismiss();
                    ChatThread chatThread = (ChatThread) ThreadDetailFragment.this.adapter.getObject().m1622clone();
                    chatThread.setCanMemberInvite(!zCanMemberInvite);
                    ThreadDetailFragment.this.sendNotification(new Notification("update", chatThread));
                }
            });
        }
    }

    public void transOrganizer() {
        ChatThread mainChannelChatThread;
        RtcService rtcService = (RtcService) getService("rtc");
        final ChatThread object = this.adapter.getObject();
        if (rtcService.getMainChannelType() != 5 || (mainChannelChatThread = rtcService.getMainChannelChatThread()) == null || !TextUtils.equals(mainChannelChatThread.threadId, object.threadId)) {
            Intent intent = FragmentWrapperActivity.intent(ChatOrganizerPickerFragment.class);
            intent.putExtra("thread", JacksonUtils.writeAsString(object));
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        } else {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setTitle(R.string.heads_up_ex);
            aCMAlertDialog.setMessage(R.string.trans_organizer_hint_dialog_screenroom_title);
            aCMAlertDialog.addButton(R.string.cancel, null);
            aCMAlertDialog.addButton(R.string.continue_, new View.OnClickListener() { // from class: com.narvii.chat.detail.ThreadDetailFragment.13
                public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent2 = FragmentWrapperActivity.intent(ChatOrganizerPickerFragment.class);
                    intent2.putExtra("thread", JacksonUtils.writeAsString(object));
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ThreadDetailFragment.this, intent2);
                }
            });
            aCMAlertDialog.show();
        }
    }

    @Override // com.narvii.theme.IFakeActionBar
    public void updateFakeActionBarThemeUI() {
        View view = this.fakeActionBar;
        if (view != null) {
            view.setBackgroundDrawable(this.configService.getTheme() == null ? null : this.configService.getTheme().fakeActionbarBackground());
        }
    }

    public void userOptions(final User user) {
        if (user == null) {
            return;
        }
        Adapter adapter = this.adapter;
        ChatThread object = adapter == null ? null : adapter.getObject();
        if (object == null) {
            return;
        }
        new ChatUserInfoEntryHelper(this).showUserInfoInChatThread(object, user, "Chat Thread More Info", new UserDialog.UserDialogClickListener() { // from class: com.narvii.chat.detail.ThreadDetailFragment.5
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
            public void onClicked(int i10, NVObject nVObject) {
                Adapter adapter2;
                List<User> list;
                if (i10 == 1) {
                    ChatInviteFragment chatInviteFragment = (ChatInviteFragment) ThreadDetailFragment.this.getFragmentManager().m0("chatInvite");
                    if (chatInviteFragment != null) {
                        chatInviteFragment.startChat(user.uid());
                        return;
                    }
                    return;
                }
                if (i10 == 2) {
                    Intent intent = UserProfileFragment.intent(ThreadDetailFragment.this, user);
                    if (intent == null) {
                        return;
                    }
                    intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Chat Thread More Info");
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ThreadDetailFragment.this, intent);
                    return;
                }
                if (i10 == 3) {
                    new FlagReportOptionDialog.Builder(ThreadDetailFragment.this).nvObject(user).miniProfile(true).build().show();
                    return;
                }
                if (i10 == 4) {
                    ThreadDetailFragment.this.deleteMember(user);
                } else if (i10 == 7 && (adapter2 = ThreadDetailFragment.this.adapter) != null && (list = adapter2.memberList) != null && Utils.removeId(list, user.id()) > 0) {
                    ThreadDetailFragment.this.adapter.notifyDataSetChanged();
                }
            }
        });
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public void completeLogEvent(LogEvent.Builder builder) {
        ChatThread object;
        super.completeLogEvent(builder);
        builder.areaIfNotSet("configArea");
        Adapter adapter = this.adapter;
        if (adapter == null) {
            object = null;
        } else {
            object = adapter.getObject();
        }
        if (object != null) {
            builder.extraParam("chatProperty", ChatLogEventHelper.getChatProperty(object.type));
        }
        if (builder.getLogEvent().objectId == null) {
            builder.object(object);
        }
        if (!builder.containExtraKey("chatType")) {
            SignallingChannel mainSigChannel = ((RtcService) getService("rtc")).getMainSigChannel();
            if (mainSigChannel != null) {
                builder.extraParam("chatType", ChatLogEventHelper.getChatType(mainSigChannel.channelType));
            } else {
                builder.extraParam("chatType", "textChat");
            }
        }
    }

    public boolean fromGlobalNotJoined() {
        if (fromGlobalChat() && this.notJoined) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        this.notJoined = notJoined();
        invalidateOptionsMenu();
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle((CharSequence) null);
        this.configService = (ConfigService) getService("config");
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        this.accountService = (AccountService) getService("account");
        this.globalChatHelper = new GlobalChatHelper(this);
        this.chatHelper = new ChatHelper(getContext());
        this.autoOpenInviteList = getBooleanParam(KEY_OPEN_INVITE_LIST);
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString(ExternalPostPreviewFragment.SOURCE, "1-1 > Group Chat");
            chatInviteFragment.setArguments(bundle2);
            getFragmentManager().q().e(chatInviteFragment, "chatInvite").j();
        }
        this.photoDir = new File(new File(getContext().getFilesDir(), "photo"), "chatBackground");
        if (bundle == null) {
            this.mediaPicker = new MediaPickerFragment();
            Bundle bundle3 = new Bundle();
            bundle3.putString("folder", "chatBackground");
            this.mediaPicker.setArguments(bundle3);
            getFragmentManager().q().e(this.mediaPicker, "mediaPicker").j();
            this.backgroundPickerFragment = new BackgroundPickerFragment();
            getFragmentManager().q().c(R.id.background_picker_container, this.backgroundPickerFragment, "background_picker").r(this.backgroundPickerFragment).k();
        } else {
            this.mediaPicker = (MediaPickerFragment) getFragmentManager().m0("mediaPicker");
            this.backgroundPickerFragment = (BackgroundPickerFragment) getFragmentManager().m0("background_picker");
        }
        this.community = (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class);
        boolean booleanParam = getBooleanParam(RtcService.KEY_FROM_GLOBAL_CHAT);
        if (!getBooleanParam("fromRecentChat") && booleanParam && isRootFragment() && getFragmentManager().m0("communityNavBar") == null && this.community != null) {
            CommunityNavBarFragment communityNavBarFragment = new CommunityNavBarFragment();
            Bundle bundle4 = new Bundle();
            bundle4.putBoolean("showBackButton", true);
            communityNavBarFragment.setArguments(bundle4);
            getFragmentManager().q().c(android.R.id.content, communityNavBarFragment, "communityNavBar").j();
        }
        this.notJoined = notJoined();
        if (booleanParam) {
            this.affiliationsService.addAffiliationChangeListener(this);
        }
        this.mediaPicker.addOnResultListener(this);
        this.mediaPicker.setOnCustomOptionSelectedListener(this);
        this.headerLayoutHeight = getResources().getDimensionPixelOffset(R.dimen.thread_detail_header_height);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        MenuItem icon = menu.add(0, R.string.flag_for_review, 0, R.string.flag_for_review).setIcon(R.drawable.ic_flag_white);
        if (fromGlobalChat()) {
            icon.setShowAsAction(0);
        } else {
            icon.setShowAsAction(2);
        }
        menu.add(0, R.string.share, 0, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsAction(2);
        menu.add(0, R.string.share_copy_link, 0, R.string.share_copy_link);
        menu.add(0, R.string.edit, 0, R.string.edit);
        menu.add(0, R.string.advanced, 0, R.string.advanced).setShowAsAction(0);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.thread_detail_frame, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setBackgroundColor(getResources().getColor(R.color.prefs_background));
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.share_copy_link) {
            ShareViewHelper shareViewHelper = new ShareViewHelper(this);
            shareViewHelper.source = "Chat Thread More Info";
            shareViewHelper.copyLink(this.adapter.getObject());
        } else {
            if (menuItem.getItemId() == R.string.edit) {
                ChatThread object = this.adapter.getObject();
                ThreadPost threadPost = new ThreadPost(object);
                Intent intent = new Intent(getContext(), (Class<?>) ThreadPostNewActivity.class);
                intent.putExtra("threadId", object.threadId);
                if (object.type == 1) {
                    intent.putExtra("isGroupChat", true);
                    intent.putExtra("userId", ((AccountService) getService("account")).getUserId());
                    intent.putExtra("thread", JacksonUtils.writeAsString(object));
                }
                intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(threadPost));
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
                return true;
            }
            if (menuItem.getItemId() == R.string.flag_for_review) {
                showThreadFlagDialog();
                return true;
            }
            if (menuItem.getItemId() == R.string.advanced) {
                new AdvancedOptionDialog.Builder(this).nvObject(this.adapter.getObject()).build().show();
                return true;
            }
            if (menuItem.getItemId() == R.string.share) {
                ShareDialog.getShareDialogForThread(this, this.adapter.getObject()).show();
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Drawable drawableFakeActionbarBackground;
        boolean z6;
        int i10;
        int i11;
        super.onViewCreated(view, bundle);
        this.headerOverlay = (OverlayLayout) view.findViewById(R.id.list_header);
        View viewFindViewById = view.findViewById(R.id.fake_actionbar);
        this.fakeActionBar = viewFindViewById;
        ChatThread object = null;
        if (this.configService.getTheme() == null) {
            drawableFakeActionbarBackground = null;
        } else {
            drawableFakeActionbarBackground = this.configService.getTheme().fakeActionbarBackground();
        }
        viewFindViewById.setBackgroundDrawable(drawableFakeActionbarBackground);
        Adapter adapter = this.adapter;
        if (adapter != null) {
            object = adapter.getObject();
        }
        int i12 = 0;
        if (object != null && object.type == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        OverlayLayout overlayLayout = this.headerOverlay;
        if (z6) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        overlayLayout.setVisibility(i10);
        View view2 = this.fakeActionBar;
        if (!z6) {
            i12 = 8;
        }
        view2.setVisibility(i12);
        this.headerOverlay.setLayout(R.layout.thread_detail_header, (int) getResources().getDimension(R.dimen.thread_detail_header_height));
        this.headerOverlay.setHeight1((int) (getActionBarOverlaySize() + getStatusBarOverlaySize() + getResources().getDimension(R.dimen.quizzes_header_tab_height)));
        this.headerOverlay.attach((NVListView) getListView());
        if (object != null) {
            OverlayLayout overlayLayout2 = this.headerOverlay;
            if (object.singleChat()) {
                i11 = android.R.color.transparent;
            } else {
                i11 = R.color.white;
            }
            overlayLayout2.setBackgroundResource(i11);
        }
        HeaderLayout headerLayout = (HeaderLayout) view.findViewById(R.id.thread_header);
        this.headerLayout = headerLayout;
        headerLayout.setUserClickListener(new HeaderLayout.UserClickListener() { // from class: com.narvii.chat.detail.ThreadDetailFragment.1
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.chat.detail.HeaderLayout.UserClickListener
            public void onUserClicked(User user) {
                if (user != null && ThreadDetailFragment.this.checkCommunityAvailability(false, true)) {
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ThreadDetailFragment.this, UserProfileFragment.intent(ThreadDetailFragment.this, user));
                }
            }
        });
        updateHeader();
    }
}
