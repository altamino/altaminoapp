package com.narvii.chat;

import ai.medialab.medialabads2.banners.MediaLabAdView;
import ai.medialab.medialabads2.data.AdSize;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.audio.AudioHelper;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.detail.ThreadDetailFragment;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.input.ChatInputFragment;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.organizer.ClaimOrganizerTransFragment;
import com.narvii.chat.profile.ChatUserInfoEntryHelper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.config.ConfigService;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.influencer.FanClub;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.ReverseAdapter;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.media.MediaGalleryOptionActivity;
import com.narvii.media.SaveImageFragment;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatBubbleNotificationWrapper;
import com.narvii.model.ChatCoHostNotificationWrapper;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.monetization.bubble.BubbleService;
import com.narvii.monetization.bubble.BubbleViewContainer;
import com.narvii.monetization.sticker.StickerDetailFragment;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.onlinestatus.UserDialog;
import com.narvii.optionmenu.OptionMenuFragment;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.tipping.model.TipLog;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.DateUtils;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.MLUtilsKt;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.wallet.MembershipService;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public class ChatListFragment extends NVListFragment implements ChatService.ChatMessageReceptor, ChatService.VideoMessageProgressChangeListener, ChatMessageItem.onMentionedUserClickedListener, ThreadInfoHost, ChatMessageItem.OnSeeAllClickedListener {
    private static final String AD_UNIT_FIREBASE = "AM_2985_android_ads_on_chat_thread_screen";
    private AccountService accountService;
    Adapter adapter;
    AudioHelper audioHelper;
    private boolean avatarLongClicked;
    private ChatHelper chatHelper;
    ChatPreferenceHelper chatPreferenceHelper;
    private ChatRequestHelper chatRequestHelper;
    ChatService chatService;
    private ChatThread chatThread;
    private ConfigService configService;
    private ChatBubble curBubble;
    private User currentUser;
    private GlobalChatHelper globalChatHelper;
    private Date inviteMessageDate;
    private long lastTimeWelcomeMessageShow;
    private LocalBroadcastManager lbm;
    MembershipService membershipService;
    protected String myUid;
    private int ndcId;
    private int newMessageCount;
    private View newMsgContainer;
    private PushService pushService;
    private boolean reachBottom;
    StickerHelper stickerHelper;
    boolean touchMoved;
    private TextView tvNewMessage;
    private Date welcomeMessageDate;
    boolean scrollToBottomFlag = true;
    private HashMap<String, String> bubbleIdMapper = new HashMap<>();
    private HashMap<String, Integer> bubbleVersionMapper = new HashMap<>();
    private final PushService.PushListener pushListener = new PushService.PushListener() { // from class: com.narvii.chat.ChatListFragment.1
        @Override // com.narvii.pushservice.PushService.PushListener
        public void onPushPayload(PushPayload pushPayload) {
        }

        @Override // com.narvii.pushservice.PushService.PushListener
        public boolean onInterceptNotification(PushPayload pushPayload) {
            return ChatListFragment.this.isActive() && Utils.isEqualsNotNull(pushPayload.threadId, ChatListFragment.this.getThreadId()) && !ChatListFragment.this.isCallMessageRelatedPush(pushPayload);
        }
    };
    AbsListView.OnScrollListener scrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.chat.ChatListFragment.3
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            int i13 = i12 - (i10 + i11);
            ChatListFragment.this.reachBottom = i13 < 1;
            if (i13 < ChatListFragment.this.newMessageCount) {
                ChatListFragment.this.newMessageCount = i13;
            }
            ChatListFragment.this.updateNewMessage();
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
        }
    };
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.chat.ChatListFragment.6
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (BubbleService.ACTION_BUBBLE_READY.equals(intent.getAction())) {
                Log.d("BubbleService", "receive bubble ready broadcast " + intent.getStringExtra("bid"));
                Adapter adapter = ChatListFragment.this.adapter;
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                    return;
                }
                return;
            }
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                ChatListFragment chatListFragment = ChatListFragment.this;
                chatListFragment.currentUser = chatListFragment.accountService.getUserProfile();
                ChatListFragment chatListFragment2 = ChatListFragment.this;
                chatListFragment2.myUid = chatListFragment2.accountService.getUserId();
                Adapter adapter2 = ChatListFragment.this.adapter;
                if (adapter2 != null) {
                    adapter2.notifyDataSetChanged();
                }
            }
        }
    };

    protected class Adapter extends NVPagedAdapter<ChatMessage, MessageListResponse> implements NotificationListener {
        MediaLabAdView adViewBkp;
        HashSet<String> existedMessageId;
        ArrayList<ChatMessage> l;

        private boolean isCurrentChatMessageAccessible(ChatMessage chatMessage) {
            if (chatMessage == null) {
                return false;
            }
            if (chatMessage.isStickerMessage()) {
                Sticker stickerInfo = chatMessage.getStickerInfo();
                StickerCollection stickerCollectionSummary = ChatListFragment.this.chatHelper.getStickerCollectionSummary(chatMessage);
                if ((stickerInfo != null && stickerInfo.isDisabled()) || (stickerCollectionSummary != null && stickerCollectionSummary.isDisabled())) {
                    return false;
                }
            }
            return chatMessage.isAccessibleByUser(ChatListFragment.this.currentUser);
        }

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        private void updateThreadBubble(ChatBubble chatBubble) {
            updateThreadBubble(chatBubble, false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<ChatMessage> dataType() {
            return ChatMessage.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean filterDuplicate() {
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 15;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<? extends ChatMessage> list() {
            return this.l;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) throws Throwable {
            Intent intent;
            if (obj instanceof ChatMessage) {
                final ChatMessage chatMessage = (ChatMessage) obj;
                if (view2 == null) {
                    return false;
                }
                if (view2.getId() == R.id.chat_bubble_container || view2.getId() == R.id.chat_bubble) {
                    if (chatMessage.mediaType == 100 && chatMessage.mediaValue != null) {
                        openImageDetail(chatMessage);
                        return true;
                    }
                    if (chatMessage.hasMedia() && chatMessage.media().isVideo()) {
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, NVFullScreenVideoActivity.intent(chatMessage.media(), chatMessage, (Class<? extends NVFragment>) OptionMenuFragment.class));
                        return true;
                    }
                    if (chatMessage.mediaType == 110 && chatMessage.mediaValue != null && chatMessage._status == 0) {
                        if (chatMessage.isAccessibleByUser(null)) {
                            ChatListFragment.this.audioHelper.handleChatBubbleClick(chatMessage, view, true);
                            return true;
                        }
                        Intent intent2 = FragmentWrapperActivity.intent(ChatMessageItemDetailFragment.class);
                        intent2.putExtra(ChatMessageItemDetailFragment.KEY_CHAT_MESSAGE, JacksonUtils.writeAsString(chatMessage));
                        intent2.putExtra("seeAll", false);
                        intent2.putExtra("showDisabled", true);
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent2);
                        return true;
                    }
                    if (!chatMessage.isAccessibleByUser(null)) {
                        ChatListFragment.this.showNormalMessageDetail(chatMessage);
                        return true;
                    }
                    if ((view instanceof ChatMessageItem) && ((ChatMessageItem) view).isExpandable()) {
                        ChatListFragment.this.showNormalMessageDetail(chatMessage);
                        return true;
                    }
                } else {
                    if (view2.getId() == R.id.avatar) {
                        LogEvent.clickBuilder(this, ActSemantic.checkDetail).area("MessageUserIcon").object(chatMessage != null ? chatMessage.author : null).send();
                        if (!ChatListFragment.this.checkCommunityAvailability()) {
                            return true;
                        }
                        new ChatUserInfoEntryHelper(this).showUserInfoInChatThread(ChatListFragment.this.getThread(), chatMessage.author, "Chat Thread", new UserDialog.UserDialogClickListener() { // from class: com.narvii.chat.ChatListFragment.Adapter.3
                            public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                                if (p1 == null) {
                                    return;
                                }
                                p0.startActivity(p1);
                            }

                            @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
                            public void onClicked(int i11, NVObject nVObject) {
                                if (i11 == 2) {
                                    Intent intent3 = UserProfileFragment.intent(((NVAdapter) Adapter.this).context, chatMessage.author);
                                    if (intent3 == null) {
                                        return;
                                    }
                                    intent3.putExtra(ExternalPostPreviewFragment.SOURCE, "Chat Thread");
                                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Adapter.this, intent3);
                                    return;
                                }
                                if (i11 == 1) {
                                    ChatListFragment.this.startChat(nVObject instanceof User ? (User) nVObject : chatMessage.author);
                                } else if (i11 == 3) {
                                    new FlagReportOptionDialog.Builder(((NVAdapter) Adapter.this).context).nvObject(chatMessage).build().show();
                                }
                            }
                        });
                        return true;
                    }
                    if (view2.getId() == R.id.chat_sticker || view2.getId() == R.id.mood_sticker) {
                        openStickerChatMessage(chatMessage);
                    } else {
                        if (view2.getId() == R.id.chat_resend) {
                            if (chatMessage._status != 2 || chatMessage._errorCode != 4200 || !ChatListFragment.this.membershipService.hasMemberShipExpired()) {
                                ChatListFragment.this.resend(chatMessage);
                                return true;
                            }
                            MembershipExpireDialog membershipExpireDialog = new MembershipExpireDialog(ChatListFragment.this);
                            membershipExpireDialog.source = chatMessage.isStickerMessage() ? "Sticker (Dialog)" : "Chat Bubble (Dialog)";
                            membershipExpireDialog.show();
                            return true;
                        }
                        if (view2.getId() == R.id.text) {
                            if (chatMessage.type == 101) {
                                if (!ChatListFragment.this.checkCommunityAvailability() || (intent = UserProfileFragment.intent(this, chatMessage.author)) == null) {
                                    return true;
                                }
                                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Chat Thread");
                                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                                return true;
                            }
                        } else if (chatMessage.type == 65283) {
                            LogEvent.clickWildcardBuilder(this).area("InviteButton").send();
                            Intent intent3 = FragmentWrapperActivity.intent(ThreadDetailFragment.class);
                            intent3.putExtra("id", ChatListFragment.this.getThreadId());
                            intent3.putExtra(ThreadDetailFragment.KEY_OPEN_INVITE_LIST, true);
                            intent3.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(ChatListFragment.this.getThread()));
                            intent3.putExtra("customFinishAnimIn", R.anim.activity_push_right_in);
                            intent3.putExtra("customFinishAnimOut", R.anim.activity_push_right_out);
                            intent3.putExtra(RtcService.KEY_FROM_GLOBAL_CHAT, ChatListFragment.this.getBooleanParam(RtcService.KEY_FROM_GLOBAL_CHAT));
                            intent3.putExtra(RtcService.KEY_COMMUNITY, ChatListFragment.this.getStringParam(RtcService.KEY_COMMUNITY));
                            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent3);
                            ChatListFragment.this.getActivity().overridePendingTransition(R.anim.activity_push_left_in, R.anim.activity_push_left_out);
                            return true;
                        }
                    }
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            StickerCollection stickerCollectionSummary;
            Sticker stickerInfo;
            StickerCollection stickerCollectionSummary2;
            User user;
            Fragment fragmentM0;
            if (!(obj instanceof ChatMessage)) {
                return super.onLongClick(listAdapter, i10, obj, view, view2);
            }
            final ChatMessage chatMessage = (ChatMessage) obj;
            String userId = ChatListFragment.this.accountService.getUserId();
            if (view2 != null && view2.getId() == R.id.avatar) {
                if (ChatListFragment.this.chatThread != null && ChatListFragment.this.chatThread.type != 0 && (user = chatMessage.author) != null && !TextUtils.equals(user.uid(), userId) && (fragmentM0 = ChatListFragment.this.getFragmentManager().m0("chatInput")) != null) {
                    ChatListFragment.this.avatarLongClicked = true;
                    ChatInputFragment chatInputFragment = (ChatInputFragment) fragmentM0;
                    chatInputFragment.onUserMentionedByLongClick(chatMessage.author);
                    chatInputFragment.scrollChatListToBottom();
                }
                return true;
            }
            int i11 = chatMessage.type;
            boolean z6 = !TextUtils.isEmpty(chatMessage.messageId) && (!TextUtils.isEmpty(chatMessage.content) || chatMessage.hasMedia()) && (i11 == 0 || i11 == 3 || i11 == 4 || i11 == 2);
            boolean z10 = (chatMessage.isStickerMessage() || chatMessage.mediaType != 100 || TextUtils.isEmpty(chatMessage.mediaValue)) ? false : true;
            boolean z11 = (TextUtils.isEmpty(chatMessage.content) || chatMessage.hasMedia()) ? false : true;
            User user2 = chatMessage.author;
            boolean zIsEquals = Utils.isEquals(user2 == null ? null : user2.uid, userId);
            ChatThread thread = ChatListFragment.this.getThread();
            boolean z12 = zIsEquals || (thread != null && thread.isHostOrCoHost(userId) && thread.type == 2);
            final ArrayList arrayList = new ArrayList();
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            if (z11) {
                arrayList.add("copy");
                actionSheetDialog.addItem(R.string.copy, false);
            }
            if (z6) {
                arrayList.add("reply");
                actionSheetDialog.addItem(R.string.reply, false);
            }
            if (chatMessage.isStickerMessage() && ((stickerInfo = chatMessage.getStickerInfo()) == null || (!stickerInfo.isLocalMood() && stickerInfo.isAccessibleByUser(null) && (stickerCollectionSummary2 = new ChatHelper(getContext()).getStickerCollectionSummary(chatMessage)) != null && ChatListFragment.this.stickerHelper.isStickerCollectionValid(stickerCollectionSummary2) && stickerCollectionSummary2.isAccessibleByUser(null)))) {
                arrayList.add("saveAsFavorite");
                actionSheetDialog.addItem(R.string.add_sticker, false);
            }
            arrayList.add("detail");
            actionSheetDialog.addItem(R.string.check_detail, false);
            if (z10) {
                arrayList.add("saveImage");
                actionSheetDialog.addItem(R.string.save_image, false);
            }
            if (z12) {
                arrayList.add("delete");
                actionSheetDialog.addItem(R.string.delete, true);
            }
            User user3 = chatMessage.author;
            if (!Utils.isEquals(user3 != null ? user3.uid : null, userId) && (!chatMessage.isStickerMessage() || (stickerCollectionSummary = ChatListFragment.this.chatHelper.getStickerCollectionSummary(chatMessage)) == null || stickerCollectionSummary.canBeFlagged())) {
                arrayList.add("flag");
                actionSheetDialog.addItem(R.string.flag_for_review, false);
            }
            if (ChatListFragment.this.accountService.getUserProfile() != null && ChatListFragment.this.accountService.getUserProfile().isCurator()) {
                arrayList.add("advanced");
                actionSheetDialog.addItem(R.string.advanced, false);
            }
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.chat.ChatListFragment.Adapter.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i12) {
                    Object obj2 = arrayList.get(i12);
                    if ("copy".equals(obj2)) {
                        try {
                            ((ClipboardManager) Adapter.this.getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("", chatMessage.content));
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                    if ("saveImage".equals(obj2)) {
                        SaveImageFragment saveImageFragment = (SaveImageFragment) ChatListFragment.this.getFragmentManager().m0("saveImage");
                        if (saveImageFragment == null) {
                            saveImageFragment = new SaveImageFragment();
                            ChatListFragment.this.getFragmentManager().q().e(saveImageFragment, "saveImage").j();
                            ChatListFragment.this.getFragmentManager().i0();
                        }
                        saveImageFragment.save(chatMessage.media());
                        return;
                    }
                    if ("delete".equals(obj2)) {
                        ChatListFragment.this.delete(chatMessage);
                        return;
                    }
                    if ("flag".equals(obj2)) {
                        if (ChatListFragment.this.checkCommunityAvailability()) {
                            new FlagReportOptionDialog.Builder(((NVAdapter) Adapter.this).context).nvObject(chatMessage).build().show();
                            return;
                        }
                        return;
                    }
                    if ("advanced".equals(obj2)) {
                        new AdvancedOptionDialog.Builder(ChatListFragment.this).nvObject(chatMessage).build().show();
                        return;
                    }
                    if ("detail".equals(obj2)) {
                        Adapter.this.showMessageDetailPage(chatMessage);
                        return;
                    }
                    if ("saveAsFavorite".equals(obj2)) {
                        if (ChatListFragment.this.checkCommunityJoined()) {
                            StickerHelper stickerHelper = new StickerHelper(ChatListFragment.this);
                            Sticker stickerInfo2 = chatMessage.getStickerInfo();
                            if (stickerInfo2 != null) {
                                stickerHelper.saveAsFavorite(stickerInfo2);
                            } else {
                                stickerHelper.saveAsFavorite(chatMessage.mediaValue);
                            }
                            ((StatisticsService) Adapter.this.getService("statistics")).event("Add a Sticker").source("Chat Thread").userPropInc("Add a Sticker Total");
                            return;
                        }
                        return;
                    }
                    if (!"reply".equals(obj2) || ChatListFragment.this.chatThread == null || chatMessage.author == null) {
                        return;
                    }
                    Fragment fragmentM1 = ChatListFragment.this.getFragmentManager().m0("chatInput");
                    if (fragmentM1 instanceof ChatInputFragment) {
                        LogEvent.clickWildcardBuilder(ChatListFragment.this, "Reply").send();
                        ((ChatInputFragment) fragmentM1).onReplybyLongClick(chatMessage);
                    }
                }
            });
            actionSheetDialog.show();
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends MessageListResponse> responseType() {
            return MessageListResponse.class;
        }

        public Adapter() {
            super(ChatListFragment.this);
            this.existedMessageId = new HashSet<>();
            this.adViewBkp = null;
            this.paginationType = 1;
            if (ChatListFragment.this.configService.getCommunityId() == 0) {
                setDarkTheme(true);
            }
        }

        private void openImageDetail(ChatMessage chatMessage) {
            Media media = new Media();
            media.type = chatMessage.mediaType;
            media.url = chatMessage.mediaValue;
            ArrayList arrayList = new ArrayList();
            arrayList.add(media);
            Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryOptionActivity.class);
            intent.putExtra("parent", JacksonUtils.writeAsString(chatMessage));
            intent.putExtra("parentClass", ChatMessage.class);
            intent.putExtra("list", JacksonUtils.writeAsString(arrayList));
            intent.putExtra("showCheckHD", true);
            if (!chatMessage.isAccessibleByUser(null)) {
                intent.putExtra("hideShareBar", true);
            }
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        }

        private void openStickerChatMessage(ChatMessage chatMessage) {
            Intent intent = FragmentWrapperActivity.intent(StickerDetailFragment.class);
            intent.putExtra("threadId", ChatListFragment.this.getThreadId());
            intent.putExtra(AccountNotice.LEVEL_MESSAGE, JacksonUtils.writeAsString(chatMessage));
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showMessageDetailPage(ChatMessage chatMessage) {
            if (chatMessage == null) {
                return;
            }
            if (chatMessage.isStickerMessage()) {
                openStickerChatMessage(chatMessage);
                return;
            }
            if (chatMessage.mediaType == 100 && chatMessage.mediaValue != null) {
                openImageDetail(chatMessage);
            } else if (chatMessage.hasMedia() && chatMessage.media().isVideo()) {
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, NVFullScreenVideoActivity.intent(chatMessage.media(), chatMessage, (Class<? extends NVFragment>) OptionMenuFragment.class));
            } else {
                ChatListFragment.this.showNormalMessageDetail(chatMessage);
            }
        }

        private ChatMessage tryFixMessageCreatedTime(ChatMessage chatMessage) {
            Date outBoundCreatedTime = ChatListFragment.this.chatService.getOutBoundCreatedTime(chatMessage);
            if (outBoundCreatedTime == null) {
                outBoundCreatedTime = chatMessage.createdTime;
            }
            chatMessage.createdTime = outBoundCreatedTime;
            return chatMessage;
        }

        private void updateThreadBubble(ChatBubble chatBubble, boolean z6) {
            if (ChatListFragment.this.getThread() == null) {
                return;
            }
            ChatThread thread = ChatListFragment.this.getThread();
            if (thread.chatBubbles == null) {
                thread.chatBubbles = new HashMap();
            }
            if (ChatListFragment.this.accountService.getUserId() != null) {
                if (!chatBubble.isActivated && z6) {
                    chatBubble = new ChatBubble();
                    chatBubble.id = "default";
                }
                thread.chatBubbles.put(ChatListFragment.this.accountService.getUserId(), chatBubble);
            }
            ChatListFragment.this.curBubble = chatBubble;
            Adapter adapter = ChatListFragment.this.adapter;
            if (adapter != null) {
                adapter.notifyDataSetChanged();
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<ChatMessage> filterResponseList(List<ChatMessage> list, int i10) {
            List<ChatMessage> listFilter = new FilterHelper(this).keepBlockedUser().keepForLeaderAndCurator().filter(list);
            if (listFilter == null) {
                return null;
            }
            Iterator<ChatMessage> it = listFilter.iterator();
            while (it.hasNext()) {
                ChatMessage next = it.next();
                if (next.isStickerMessage()) {
                    Sticker stickerInfo = next.getStickerInfo();
                    StickerCollection stickerCollectionSummary = ChatListFragment.this.chatHelper.getStickerCollectionSummary(next);
                    if ((stickerInfo != null && stickerInfo.isDisabled()) || (stickerCollectionSummary != null && stickerCollectionSummary.isDisabled())) {
                        it.remove();
                    }
                }
                if (i10 != 2 && this.existedMessageId.contains(next.id())) {
                    it.remove();
                }
                this.existedMessageId.add(next.id());
                if (next.isHidden) {
                    it.remove();
                }
            }
            return listFilter;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            ChatMessage chatMessage = (ChatMessage) obj;
            int i10 = chatMessage.type;
            if ((i10 == 101 || i10 == 103) && !TextUtils.isEmpty(chatMessage.content)) {
                i10 = 0;
            }
            if (i10 == 0) {
                if (!chatMessage.isAccessibleByUser(null)) {
                    return 7;
                }
                boolean zHasMedia = chatMessage.hasMedia();
                TextUtils.isEmpty(chatMessage.content);
                if (zHasMedia) {
                    return chatMessage.media().isVideo() ? 2 : 3;
                }
                if (chatMessage.hasLinkSnippet()) {
                    return 13;
                }
                return chatMessage.isReplyMessage() ? 14 : 1;
            }
            if (i10 == 1) {
                return 5;
            }
            if (i10 == 2) {
                return 8;
            }
            if (i10 == 3) {
                String str = chatMessage.mediaValue;
                return (str == null || !str.startsWith("ndcsticker://e/")) ? 11 : 10;
            }
            if (i10 == 4) {
                return 2;
            }
            switch (i10) {
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                case 106:
                case 107:
                case 108:
                case 109:
                case 110:
                case 111:
                case 112:
                case 113:
                case 114:
                case 115:
                case 116:
                    return 4;
                default:
                    switch (i10) {
                        case 122:
                        case 123:
                        case 124:
                        case 125:
                        case 126:
                            return 4;
                        default:
                            switch (i10) {
                                case ChatMessage.TYPE_TIMESTAMP /* 65281 */:
                                    return 6;
                                case ChatMessage.TYPE_WELCOME_MESSAGE /* 65282 */:
                                    return 9;
                                case ChatMessage.TYPE_INVITE_MESSAGE /* 65283 */:
                                    return 12;
                                case ChatMessage.TYPE_AD_UNIT_MESSAGE /* 65284 */:
                                    return 13;
                                default:
                                    return 0;
                            }
                    }
            }
        }

        /* JADX WARN: Code duplicated, block: B:13:0x001f  */
        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            boolean z6;
            final ChatMessage chatMessage = (ChatMessage) obj;
            ChatThread thread = ChatListFragment.this.getThread();
            if (thread == null) {
                z6 = false;
            } else {
                int i10 = thread.type;
                if (i10 == 2) {
                    z6 = true;
                } else if (i10 == 1) {
                    z6 = thread.membersCount > 3;
                } else {
                    z6 = false;
                }
            }
            ChatService chatService = ChatListFragment.this.chatService;
            String str = chatMessage.threadId;
            Date date = chatMessage.createdTime;
            chatService.setReadTime(str, date == null ? 0L : date.getTime());
            int i11 = chatMessage.type;
            int i12 = ((i11 == 101 || i11 == 103) && !TextUtils.isEmpty(chatMessage.content)) ? 0 : i11;
            String hostLabelName = ChatListFragment.this.chatHelper.getHostLabelName(ChatListFragment.this.chatThread, chatMessage.uid());
            if (i12 != 0) {
                if (i12 == 1) {
                    ChatMessageItem chatMessageItem = (ChatMessageItem) createView(R.layout.chat_strike_item, viewGroup, view, Integer.valueOf(getItemType(chatMessage)));
                    chatMessageItem.setMessage(chatMessage, Utils.isEqualsNotNull(ChatListFragment.this.myUid, chatMessage.author.uid), false, hostLabelName);
                    chatMessageItem.setShowNickname(z6);
                    chatMessageItem.bubbleContainer.setOnClickListener(this.subviewClickListener);
                    chatMessageItem.bubbleContainer.setDoubleClickListener(null);
                    chatMessageItem.avatar.setOnClickListener(this.subviewClickListener);
                    chatMessageItem.resend.setOnClickListener(this.subviewClickListener);
                    return chatMessageItem;
                }
                if (i12 != 2 && i12 != 3 && i12 != 4) {
                    if (i12 != 119) {
                        switch (i12) {
                            case 52:
                            case 53:
                            case 54:
                            case 55:
                            case 56:
                            case 57:
                            case 58:
                            case 59:
                            case 60:
                                ChatMessageItem chatMessageItem2 = (ChatMessageItem) createView(R.layout.chat_message_item, viewGroup, view, Integer.valueOf(getItemType(chatMessage)));
                                User user = chatMessage.author;
                                chatMessageItem2.setMessage(chatMessage, user != null && Utils.isEqualsNotNull(ChatListFragment.this.myUid, user.uid), false, hostLabelName);
                                chatMessageItem2.setShowNickname(z6);
                                chatMessageItem2.bubbleContainer.setDoubleClickListener(null);
                                chatMessageItem2.avatar.setOnClickListener(this.subviewClickListener);
                                chatMessageItem2.resend.setOnClickListener(this.subviewClickListener);
                                return chatMessageItem2;
                            default:
                                switch (i12) {
                                    case 100:
                                    case 102:
                                    case 103:
                                    case 104:
                                    case 105:
                                    case 106:
                                    case 107:
                                    case 108:
                                    case 109:
                                    case 110:
                                    case 111:
                                    case 112:
                                    case 113:
                                    case 114:
                                    case 115:
                                    case 116:
                                        break;
                                    case 101:
                                        ChatInfoItem chatInfoItem = (ChatInfoItem) createView(R.layout.chat_info_item, viewGroup, view, Integer.valueOf(getItemType(chatMessage)));
                                        chatInfoItem.setMessage(ChatListFragment.this.getThread(), chatMessage);
                                        chatInfoItem.text.setOnClickListener(this.subviewClickListener);
                                        chatInfoItem.text.setBackgroundDrawable(ChatListFragment.this.getResources().getDrawable(R.drawable.selector_chat_info_bg));
                                        return chatInfoItem;
                                    default:
                                        switch (i12) {
                                            case 122:
                                            case 123:
                                            case 124:
                                            case 125:
                                            case 126:
                                                break;
                                            default:
                                                switch (i12) {
                                                    case ChatMessage.TYPE_TIMESTAMP /* 65281 */:
                                                        ChatTimeItem chatTimeItem = (ChatTimeItem) createView(R.layout.chat_time_item, viewGroup, view, Integer.valueOf(getItemType(chatMessage)));
                                                        chatTimeItem.setTime(chatMessage.createdTime);
                                                        return chatTimeItem;
                                                    case ChatMessage.TYPE_WELCOME_MESSAGE /* 65282 */:
                                                        ChatWelcomeItem chatWelcomeItem = (ChatWelcomeItem) createView(R.layout.chat_welcome_item, viewGroup, view, Integer.valueOf(getItemType(chatMessage)));
                                                        chatWelcomeItem.setExpandedClickListener(new ChatWelcomeItem.ExpandedClickListener() { // from class: com.narvii.chat.ChatListFragment.Adapter.2
                                                            public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                                                                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                                                                if (p1 == null) {
                                                                    return;
                                                                }
                                                                p0.startActivity(p1);
                                                            }

                                                            @Override // com.narvii.chat.ChatWelcomeItem.ExpandedClickListener
                                                            public void onExpandedClicked() {
                                                                Intent intent = FragmentWrapperActivity.intent(ThreadDetailFragment.class);
                                                                intent.putExtra("id", ChatListFragment.this.getThreadId());
                                                                intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(ChatListFragment.this.getThread()));
                                                                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Adapter.this, intent);
                                                            }
                                                        });
                                                        chatWelcomeItem.setChatMessage(chatMessage);
                                                        chatWelcomeItem.setVisibility(TextUtils.isEmpty(chatMessage.content) ? 8 : 0);
                                                        return chatWelcomeItem;
                                                    case ChatMessage.TYPE_INVITE_MESSAGE /* 65283 */:
                                                        View viewCreateView = createView(R.layout.chat_invite_item, viewGroup, view, Integer.valueOf(getItemType(chatMessage)));
                                                        viewCreateView.findViewById(R.id.test).setOnClickListener(this.subviewClickListener);
                                                        return viewCreateView;
                                                    case ChatMessage.TYPE_AD_UNIT_MESSAGE /* 65284 */:
                                                        if (((NVListFragment) ChatListFragment.this).adView == null || !((NVListFragment) ChatListFragment.this).adView.showPreloadedAd()) {
                                                            return this.adViewBkp;
                                                        }
                                                        Log.v("FeedDetailFragment", "MediaLab MedRect - New ad view ready");
                                                        ((NVListFragment) ChatListFragment.this).adView.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, (getContext().getResources().getDimensionPixelSize(R.dimen.ad_divider_padding) * 2) + AdSize.MEDIUM_RECTANGLE.getHeightPx(getContext())));
                                                        MLUtilsKt.centerMRECView(((NVListFragment) ChatListFragment.this).adView);
                                                        this.adViewBkp = ((NVListFragment) ChatListFragment.this).adView;
                                                        return ((NVListFragment) ChatListFragment.this).adView;
                                                    default:
                                                        ChatMessageItem chatMessageItem3 = (ChatMessageItem) createView(R.layout.chat_message_item, viewGroup, view, Integer.valueOf(getItemType(chatMessage)));
                                                        String str2 = ChatListFragment.this.myUid;
                                                        User user2 = chatMessage.author;
                                                        chatMessageItem3.setMessage(chatMessage, Utils.isEqualsNotNull(str2, user2 != null ? user2.uid : null), true, hostLabelName);
                                                        chatMessageItem3.setShowNickname(z6);
                                                        return chatMessageItem3;
                                                }
                                        }
                                        break;
                                }
                                break;
                        }
                    }
                    ChatInfoItem chatInfoItem2 = (ChatInfoItem) createView(R.layout.chat_info_item, viewGroup, view, Integer.valueOf(getItemType(chatMessage)));
                    chatInfoItem2.setMessage(ChatListFragment.this.getThread(), chatMessage);
                    return chatInfoItem2;
                }
            }
            ChatMessageItem chatMessageItem4 = (ChatMessageItem) createView(R.layout.chat_message_item, viewGroup, view, Integer.valueOf(getItemType(chatMessage)));
            if (chatMessage.uid() != null) {
                chatMessage.chatBubbleId = (String) ChatListFragment.this.bubbleIdMapper.get(chatMessage.uid());
                if (ChatListFragment.this.bubbleVersionMapper.get(chatMessage.uid()) != null) {
                    chatMessage.chatBubbleVersion = ((Integer) ChatListFragment.this.bubbleVersionMapper.get(chatMessage.uid())).intValue();
                }
            }
            User user3 = chatMessage.author;
            chatMessageItem4.setMessage(chatMessage, user3 != null && Utils.isEqualsNotNull(ChatListFragment.this.myUid, user3.uid), false, false, ChatListFragment.this.curBubble, hostLabelName);
            chatMessageItem4.setShowNickname(z6);
            chatMessageItem4.bubbleContainer.chatBubbleView.setOnClickListener(this.subviewClickListener);
            chatMessageItem4.bubbleContainer.chatBubbleView.setOnLongClickListener(this.subviewLongClickListener);
            chatMessageItem4.bubbleContainer.setDoubleClickListener(new BubbleViewContainer.DoubleClickListener() { // from class: com.narvii.chat.ChatListFragment.Adapter.1
                @Override // com.narvii.monetization.bubble.BubbleViewContainer.DoubleClickListener
                public void onDoubleClicked() {
                    Adapter.this.showMessageDetailPage(chatMessage);
                }
            });
            chatMessageItem4.moodSticker.setOnClickListener(this.subviewClickListener);
            chatMessageItem4.moodSticker.setOnLongClickListener(this.subviewLongClickListener);
            chatMessageItem4.chatStickerView.setOnClickListener(this.subviewClickListener);
            chatMessageItem4.chatStickerView.setOnLongClickListener(this.subviewLongClickListener);
            chatMessageItem4.avatar.setOnClickListener(this.subviewClickListener);
            chatMessageItem4.avatar.setOnLongClickListener(this.subviewLongClickListener);
            chatMessageItem4.resend.setOnClickListener(this.subviewClickListener);
            if (i12 == 0) {
                chatMessageItem4.setMentionedUserClickedListener(ChatListFragment.this);
            } else {
                chatMessageItem4.setMentionedUserClickedListener(null);
            }
            chatMessageItem4.setOnSeeAllClickedListener(ChatListFragment.this);
            return chatMessageItem4;
        }

        void insertInviteMessage(ArrayList<ChatMessage> arrayList) {
            Date date;
            if (ChatListFragment.this.getThread() == null || ChatListFragment.this.getThread().type != 2 || ChatListFragment.this.getThread().membersCount >= 5 || ChatListFragment.this.getThread().author == null) {
                return;
            }
            ChatListFragment chatListFragment = ChatListFragment.this;
            if (Utils.isEqualsNotNull(chatListFragment.myUid, chatListFragment.getThread().author.uid) && ChatListFragment.this.getThread().condition == 1) {
                if (ChatListFragment.this.inviteMessageDate != null) {
                    date = ChatListFragment.this.inviteMessageDate;
                } else if (arrayList.size() == 0) {
                    date = new Date(SystemClock.elapsedRealtime());
                    ChatListFragment.this.inviteMessageDate = date;
                } else {
                    date = arrayList.get(0).createdTime;
                    ChatListFragment.this.inviteMessageDate = date;
                }
                ChatMessage chatMessage = new ChatMessage();
                chatMessage.content = "";
                chatMessage.type = ChatMessage.TYPE_INVITE_MESSAGE;
                chatMessage.author = ChatListFragment.this.getThread().owner();
                chatMessage.createdTime = date;
                if (arrayList.size() == 0) {
                    arrayList.add(chatMessage);
                    return;
                }
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    if (arrayList.get(i10).createdTime.getTime() <= date.getTime()) {
                        arrayList.add(i10, chatMessage);
                        return;
                    }
                }
            }
        }

        void insertWelcomeMessage(ArrayList<ChatMessage> arrayList) {
            Date date;
            if (ChatListFragment.this.welcomeMessageDate != null) {
                date = ChatListFragment.this.welcomeMessageDate;
            } else if (arrayList.size() == 0) {
                date = new Date(SystemClock.elapsedRealtime());
                ChatListFragment.this.welcomeMessageDate = date;
            } else {
                date = arrayList.get(0).createdTime;
                ChatListFragment.this.welcomeMessageDate = date;
            }
            ChatMessage chatMessage = new ChatMessage();
            chatMessage.content = "";
            if (ChatListFragment.this.getThread() != null && ChatListFragment.this.getThread().owner() != null && !TextUtils.isEmpty(ChatListFragment.this.getThread().owner().nickname())) {
                chatMessage.content += ChatListFragment.this.getThread().owner().nickname() + ": ";
            }
            chatMessage.content += com.narvii.util.text.TextUtils.compactContent(ChatListFragment.this.getThread().content);
            chatMessage.type = ChatMessage.TYPE_WELCOME_MESSAGE;
            chatMessage.author = ChatListFragment.this.getThread().owner();
            chatMessage.createdTime = date;
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                if (arrayList.get(i10).createdTime.getTime() <= date.getTime()) {
                    arrayList.add(i10, chatMessage);
                    return;
                }
            }
        }

        public boolean isMeAccessibleToThisChat() {
            if (ChatListFragment.this.getParentFragment() instanceof ChatFragment) {
                return ((ChatFragment) ChatListFragment.this.getParentFragment()).isMeAccessibleToThisChat();
            }
            if (ChatListFragment.this.getThread() != null && ChatListFragment.this.getThread().type != 2) {
                return true;
            }
            if (Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), ChatListFragment.this.getThread() == null ? null : ChatListFragment.this.getThread().uid())) {
                return true;
            }
            return (ChatListFragment.this.getThread() == null || ChatListFragment.this.getThread().needHidden) ? false : true;
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            FanClub fanClub;
            String str;
            Object obj = notification.obj;
            if ((obj instanceof ChatCoHostNotificationWrapper) && ((ChatCoHostNotificationWrapper) obj).chatThread != null) {
                ChatListFragment.this.chatThread = ((ChatCoHostNotificationWrapper) obj).chatThread;
                notifyDataSetChanged();
            }
            if ((notification.obj instanceof ChatMessage) && Utils.isEqualsNotNull(ChatListFragment.this.getThreadId(), notification.parentId)) {
                String str2 = notification.action;
                if (str2 == "update") {
                    ChatMessage chatMessage = (ChatMessage) notification.obj;
                    if (list() == null) {
                        return;
                    }
                    for (int i10 = 0; i10 < list().size(); i10++) {
                        ChatMessage chatMessage2 = list().get(i10);
                        if (Utils.isEqualsNotNull(Integer.valueOf(list().get(i10).getClientRefIdTmp()), Integer.valueOf(chatMessage.getClientRefIdTmp())) && (str = chatMessage.messageId) != null) {
                            chatMessage2.messageId = str;
                            break;
                        }
                    }
                    if (chatMessage._status == 0 && !TextUtils.isEmpty(chatMessage.messageId)) {
                        this.existedMessageId.add(chatMessage.messageId);
                    }
                    notifyDataSetChanged();
                } else if (str2 == "delete") {
                    ChatListFragment.this.chatService.onNotification(notification);
                    editList(notification, false);
                } else {
                    notifyDataSetChanged();
                }
            }
            Object obj2 = notification.obj;
            if (!(obj2 instanceof ChatBubbleNotificationWrapper)) {
                if (obj2 instanceof ChatBubble) {
                    if (Utils.isEqualsNotNull(notification.id, ChatListFragment.this.curBubble != null ? ChatListFragment.this.curBubble.id() : null)) {
                        updateThreadBubble((ChatBubble) notification.obj);
                        return;
                    }
                    return;
                } else {
                    if (obj2 instanceof FanClub) {
                        if (!Utils.isEqualsNotNull(((FanClub) obj2).targetUid, ChatListFragment.this.getThread() == null ? null : ChatListFragment.this.getThread().uid()) || isMeAccessibleToThisChat() || (fanClub = ((AccountService) getService("account")).getFanClub(((FanClub) notification.obj).targetUid)) == null || !fanClub.isActive()) {
                            return;
                        }
                        refresh(0, null);
                        return;
                    }
                    return;
                }
            }
            ChatBubbleNotificationWrapper chatBubbleNotificationWrapper = (ChatBubbleNotificationWrapper) obj2;
            String str3 = chatBubbleNotificationWrapper.threadId;
            String strId = chatBubbleNotificationWrapper.id();
            boolean z6 = chatBubbleNotificationWrapper.action == 1;
            if (Utils.isEqualsNotNull(str3, ChatListFragment.this.getThreadId()) || chatBubbleNotificationWrapper.applyForAll) {
                updateThreadBubble(chatBubbleNotificationWrapper.chatBubble, z6);
                return;
            }
            if (Utils.isEqualsNotNull(strId, ChatListFragment.this.curBubble == null ? null : ChatListFragment.this.curBubble.id())) {
                ChatListFragment.this.curBubble = chatBubbleNotificationWrapper.chatBubble;
                if (chatBubbleNotificationWrapper.action == 1 && !chatBubbleNotificationWrapper.chatBubble.isActivated) {
                    ChatListFragment.this.curBubble = null;
                }
                Adapter adapter = ChatListFragment.this.adapter;
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, MessageListResponse messageListResponse, int i10) {
            int i11;
            int top;
            List<ChatMessage> list;
            if ("start0" == apiRequest.tag() && (list = messageListResponse.messageList) != null && list.size() > 0 && ChatListFragment.this.accountService.hasAccount()) {
                ChatMessage chatMessage = messageListResponse.messageList.get(0);
                ChatListFragment chatListFragment = ChatListFragment.this;
                if (chatListFragment.chatService.isCurThreadUnread(chatListFragment.ndcId, ChatListFragment.this.getThreadId()) || ChatListFragment.this.chatHelper.isThreadUnread(ChatListFragment.this.getThread())) {
                    ChatListFragment.this.chatRequestHelper.sendMarkAsReadRequest(ChatListFragment.this.ndcId, ChatListFragment.this.getThreadId(), chatMessage);
                }
            }
            List<ChatMessage> list2 = messageListResponse.messageList;
            if (list2 != null) {
                for (ChatMessage chatMessage2 : list2) {
                    if (chatMessage2.uid() != null) {
                        if (chatMessage2.getBubbleId() == null) {
                            ChatListFragment.this.bubbleIdMapper.remove(chatMessage2.uid());
                            ChatListFragment.this.bubbleVersionMapper.remove(chatMessage2.uid());
                        } else if (!ChatListFragment.this.bubbleIdMapper.containsKey(chatMessage2.uid())) {
                            ChatListFragment.this.bubbleIdMapper.put(chatMessage2.uid(), chatMessage2.getBubbleId());
                            ChatListFragment.this.bubbleVersionMapper.put(chatMessage2.uid(), Integer.valueOf(chatMessage2.getBubbleVersion()));
                        }
                    }
                }
            }
            ListAdapter adapter = ChatListFragment.this.getListView().getAdapter();
            int count = adapter.getCount();
            ChatMessage chatMessage3 = null;
            try {
                int firstVisiblePosition = ChatListFragment.this.getListView().getFirstVisiblePosition();
                i11 = firstVisiblePosition;
                while (true) {
                    if (firstVisiblePosition < 0 || i11 >= count) {
                        top = 0;
                        i11 = -1;
                        break;
                    }
                    Object item = adapter.getItem(i11);
                    if (item instanceof ChatMessage) {
                        try {
                            ChatMessage chatMessage4 = (ChatMessage) item;
                            int i12 = i11 - firstVisiblePosition;
                            if (i12 < 0 || i12 >= count) {
                                top = 0;
                            } else {
                                try {
                                    top = ChatListFragment.this.getListView().getChildAt(i12).getTop();
                                } catch (Exception unused) {
                                    chatMessage3 = chatMessage4;
                                    top = 0;
                                }
                            }
                            chatMessage3 = chatMessage4;
                            break;
                        } catch (Exception unused2) {
                        }
                    } else {
                        i11++;
                    }
                }
            } catch (Exception unused3) {
                i11 = -1;
            }
            super.onPageResponse(apiRequest, messageListResponse, i10);
            if (chatMessage3 != null) {
                int count2 = adapter.getCount();
                int i13 = 0;
                while (true) {
                    if (i13 >= count2) {
                        i13 = -1;
                        break;
                    } else if (adapter.getItem(i13) == chatMessage3) {
                        break;
                    } else {
                        i13++;
                    }
                }
                if (i13 != -1 && i13 != i11) {
                    ChatListFragment.this.getListView().setSelectionFromTop(i13, top);
                }
            }
            ChatListFragment chatListFragment2 = ChatListFragment.this;
            if (chatListFragment2.scrollToBottomFlag) {
                chatListFragment2.scrollToBottomFlag = false;
                chatListFragment2.scrollToBottom();
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            return new Bundle();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public int removeIdEqualsObject(ChatMessage chatMessage) {
            return Utils.removeIdEqualsObject(this._list, chatMessage);
        }

        private ChatMessage getMappedMessage(String str) {
            if (rawList() == null) {
                return null;
            }
            for (ChatMessage chatMessage : rawList()) {
                if (Utils.isEquals(str, chatMessage.id())) {
                    return chatMessage;
                }
            }
            return null;
        }

        void appendNewChatMessage(ChatMessage chatMessage) {
            String strUid;
            int i10;
            if (!isCurrentChatMessageAccessible(chatMessage)) {
                return;
            }
            if (!TextUtils.isEmpty(chatMessage.id()) && this.existedMessageId.contains(chatMessage.id())) {
                if (chatMessage.type == 100) {
                    ChatMessage mappedMessage = getMappedMessage(chatMessage.messageId);
                    if (mappedMessage != null && mappedMessage.type == chatMessage.type) {
                        return;
                    }
                } else {
                    return;
                }
            }
            boolean zIsEqualsNotNull = Utils.isEqualsNotNull(chatMessage.uid(), ChatListFragment.this.accountService.getUserId());
            boolean z6 = true;
            if (!ChatListFragment.this.reachBottom && !zIsEqualsNotNull && chatMessage.isUserContentMessage()) {
                ChatListFragment.this.newMessageCount++;
                ChatListFragment.this.updateNewMessage();
            }
            if (!TextUtils.isEmpty(chatMessage.id())) {
                this.existedMessageId.add(chatMessage.id());
            }
            ChatListFragment.this.chatHelper.appendNewMessageWithSort(rawList(), chatMessage);
            if (chatMessage.getBubbleId() != null) {
                ChatListFragment.this.bubbleIdMapper.put(chatMessage.uid(), chatMessage.getBubbleId());
                ChatListFragment.this.bubbleVersionMapper.put(chatMessage.uid(), Integer.valueOf(chatMessage.getBubbleVersion()));
            } else {
                ChatListFragment.this.bubbleIdMapper.remove(chatMessage.uid());
                ChatListFragment.this.bubbleVersionMapper.remove(chatMessage.uid());
            }
            if (chatMessage.type != 116) {
                z6 = false;
            }
            if (ChatListFragment.this.getThread() == null) {
                strUid = null;
            } else {
                strUid = ChatListFragment.this.getThread().uid();
            }
            if ((Utils.isEqualsNotNull(strUid, chatMessage.uid()) && ((i10 = chatMessage.type) == 102 || i10 == 101)) || z6) {
                ClaimOrganizerTransFragment.sendGetThreadRequest(this, ChatListFragment.this.getThreadId());
            }
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().chatServer().path("/chat/thread/" + ChatListFragment.this.getThreadId() + "/message");
            builderPath.param("v", 2);
            if (z6) {
                builderPath.tag("start0");
            }
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public long getItemId(int i10) {
            int clientRefIdTmp;
            Object item = getItem(i10);
            if (item instanceof ChatMessage) {
                ChatMessage chatMessage = (ChatMessage) item;
                if (chatMessage.getClientRefIdTmp() == 0) {
                    clientRefIdTmp = chatMessage.hashCode();
                } else {
                    clientRefIdTmp = chatMessage.getClientRefIdTmp();
                }
                return clientRefIdTmp;
            }
            return super.getItemId(i10);
        }

        void insertAdUnitMessage(ArrayList<ChatMessage> arrayList) {
            if (com.google.firebase.remoteconfig.a.k().i(ChatListFragment.AD_UNIT_FIREBASE)) {
                Date date = new Date(SystemClock.elapsedRealtime());
                ChatMessage chatMessage = new ChatMessage();
                chatMessage.type = ChatMessage.TYPE_AD_UNIT_MESSAGE;
                chatMessage.createdTime = date;
                arrayList.add(chatMessage);
            }
        }

        int insertTimestamps(ArrayList<ChatMessage> arrayList, long j6, boolean z6) {
            long time;
            int i10 = 0;
            if (arrayList.size() == 0) {
                return 0;
            }
            Date date = arrayList.get(arrayList.size() - 1).createdTime;
            if (date == null) {
                time = 0;
            } else {
                time = date.getTime();
            }
            for (int size = arrayList.size() - 2; size >= 0; size--) {
                ChatMessage chatMessage = arrayList.get(size);
                Date date2 = chatMessage.createdTime;
                if (date2 != null) {
                    long time2 = date2.getTime();
                    if (time2 >= time + j6) {
                        ChatMessage chatMessage2 = new ChatMessage();
                        chatMessage2.type = ChatMessage.TYPE_TIMESTAMP;
                        chatMessage2.createdTime = chatMessage.createdTime;
                        arrayList.add(size + 1, chatMessage2);
                        i10++;
                    }
                    time = time2;
                }
            }
            if (z6 && date != null) {
                ChatMessage chatMessage3 = new ChatMessage();
                chatMessage3.type = ChatMessage.TYPE_TIMESTAMP;
                chatMessage3.createdTime = date;
                arrayList.add(chatMessage3);
                return i10 + 1;
            }
            return i10;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            Date date;
            long time;
            List<? extends ChatMessage> listRawList = rawList();
            if (listRawList == null) {
                this.l = null;
            } else if (listRawList.isEmpty()) {
                this.l = new ArrayList<>();
            } else {
                this.l = new ArrayList<>();
                ChatListFragment chatListFragment = ChatListFragment.this;
                List<ChatMessage> outboundMessages = chatListFragment.chatService.getOutboundMessages(chatListFragment.getThreadId());
                if (outboundMessages.size() > 0) {
                    SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
                    long j6 = 0;
                    for (ChatMessage chatMessage : listRawList) {
                        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(chatMessage.uid(), ChatListFragment.this.myUid);
                        if (chatMessage.getClientRefIdTmp() != 0 && zIsEqualsNotNull) {
                            sparseBooleanArray.put(chatMessage.getClientRefIdTmp(), true);
                        }
                        Date date2 = tryFixMessageCreatedTime(chatMessage).createdTime;
                        if (date2 == null) {
                            time = 0;
                        } else {
                            time = date2.getTime();
                        }
                        if (j6 == 0 || time < j6) {
                            j6 = time;
                        }
                    }
                    this.l.addAll(listRawList);
                    for (ChatMessage chatMessage2 : outboundMessages) {
                        if (!sparseBooleanArray.get(chatMessage2.getClientRefIdTmp()) && (date = chatMessage2.createdTime) != null && date.getTime() > j6) {
                            this.l.add(tryFixMessageCreatedTime(chatMessage2));
                        }
                    }
                    Collections.sort(this.l, ChatHelper.Companion.getMESSAGE_COMPARATOR());
                } else {
                    this.l.addAll(listRawList);
                }
                insertTimestamps(this.l, 900000L, isEnd());
                if (ChatListFragment.this.shouldShowWelcomeMessage()) {
                    insertWelcomeMessage(this.l);
                }
                insertInviteMessage(this.l);
                insertAdUnitMessage(this.l);
            }
            super.notifyDataSetChanged();
        }

        void resetChatList() {
            abortRequests();
            rawList().clear();
            resetList();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void resetList() {
            super.resetList();
            this.existedMessageId.clear();
        }
    }

    class TopMarginAdapter extends NVAdapter {
        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 901924L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        public TopMarginAdapter() {
            super(ChatListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (view != null) {
                return view;
            }
            View view2 = new View(getContext());
            view2.setLayoutParams(new AbsListView.LayoutParams(-1, ((int) Utils.dpToPx(getContext(), 64.0f)) + ChatListFragment.this.getActionBarOverlaySize() + ChatListFragment.this.getStatusBarOverlaySize()));
            return view2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCallMessageRelatedPush(PushPayload pushPayload) {
        if (pushPayload == null) {
            return false;
        }
        return pushPayload.isCallCancelMessage() || pushPayload.isTimeoutMessage() || pushPayload.isDeclineMessage() || pushPayload.isCallInviteType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMentionedUserClicked$2(User user, int i10, NVObject nVObject) {
        if (i10 == 2) {
            Intent intent = UserProfileFragment.intent(this, user);
            if (intent == null) {
                return;
            }
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Chat Thread");
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
            return;
        }
        if (i10 == 1) {
            if (nVObject instanceof User) {
                user = (User) nVObject;
            }
            startChat(user);
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    protected boolean addTopMargin() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i10) {
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean setListContentBgWhenHasPageBackground() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean shouldInitSwipeRefresh() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkCommunityAvailability() {
        return !this.globalChatHelper.tryJoinCommunity(((ConfigService) getService("config")).getCommunityId(), false, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.ChatListFragment.4
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public ChatThread followingChatToJoin() {
                return null;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public int getActionRTCType() {
                return 0;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onPostJoinCommunity(int i10, boolean z6) {
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onCheckLoginFailed() {
                ChatListFragment.this.ensureLogin(new Intent("joinChannel"));
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public boolean onPreJoinCommunity(int i10) {
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", i10);
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ChatListFragment.this, intent);
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkCommunityJoined() {
        if (((AccountService) getService("account")).hasAccount()) {
            final int communityId = ((ConfigService) getService("config")).getCommunityId();
            return this.globalChatHelper.checkCommunityJoined(communityId, new Callback<Boolean>() { // from class: com.narvii.chat.ChatListFragment.5
                public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    Intent intentCommunityDetailIntent = ChatListFragment.this.globalChatHelper.communityDetailIntent(Integer.valueOf(communityId), null);
                    if (ChatListFragment.this.getActivity() != null) {
                        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ChatListFragment.this, intentCommunityDetailIntent);
                    }
                }
            });
        }
        ensureLogin(new Intent());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNormalMessageDetail(ChatMessage chatMessage) {
        Intent intent = FragmentWrapperActivity.intent(MessageContentDetailFragment.class);
        intent.putExtra("threadId", getThreadId());
        intent.putExtra(AccountNotice.LEVEL_MESSAGE, JacksonUtils.writeAsString(chatMessage));
        intent.putExtra("thread", JacksonUtils.writeAsString(getThread()));
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startChat(User user) {
        ChatInviteFragment chatInviteFragment;
        if (!this.accountService.hasAccount()) {
            Intent intent = new Intent("chat");
            intent.putExtra("uid", user.uid());
            ensureLogin(intent);
            return;
        }
        ConfigService configService = (ConfigService) getService("config");
        ChatHelper chatHelper = new ChatHelper(getContext());
        if ((configService.getCommunityId() != 0 || chatHelper.canChatWithCurrentUserInGlobalLevel(user)) && (chatInviteFragment = (ChatInviteFragment) getFragmentManager().m0("chatInvite")) != null) {
            chatInviteFragment.startChat(user.uid());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNewMessage() {
        View view;
        String str;
        if (this.tvNewMessage == null || (view = this.newMsgContainer) == null) {
            return;
        }
        int i10 = this.newMessageCount;
        if (i10 <= 0) {
            this.newMessageCount = 0;
            view.setVisibility(8);
            return;
        }
        view.setVisibility(0);
        if (i10 == 1) {
            this.tvNewMessage.setText(R.string.new_message_1);
            return;
        }
        TextView textView = this.tvNewMessage;
        Object[] objArr = new Object[1];
        if (i10 > 500) {
            str = "500+ ";
        } else {
            str = i10 + " ";
        }
        objArr[0] = str;
        textView.setText(getString(R.string.new_message_n, objArr));
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        ReverseAdapter reverseAdapter = new ReverseAdapter(this);
        Adapter adapterMainAdapter = mainAdapter();
        this.adapter = adapterMainAdapter;
        reverseAdapter.setAdapter(adapterMainAdapter);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        if (addTopMargin()) {
            mergeAdapter.addAdapter(new TopMarginAdapter());
        }
        mergeAdapter.addAdapter(reverseAdapter, true);
        mergeAdapter.addAdapter(new MarginAdapter(this, 3));
        return mergeAdapter;
    }

    public void delete(ChatMessage chatMessage) {
        this.chatRequestHelper.sendDeleteChatMessageRequest(getThreadId(), chatMessage);
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public ChatThread getThread() {
        return ChatHelper.Companion.getThreadFromThreadInfoHost(this);
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public String getThreadId() {
        return getStringParam("id");
    }

    protected Adapter mainAdapter() {
        return new Adapter();
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00ea  */
    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i10, @NotNull ChatMessageDto chatMessageDto) {
        List<User> list;
        if (this.reachBottom && this.accountService.hasAccount() && isResumed()) {
            this.chatService.sendChatMessageAck(chatMessageDto, true);
        }
        if (chatMessageDto.chatMessage.isThreadDestroyMessage()) {
            return;
        }
        int i11 = chatMessageDto.chatMessage.type;
        if (i11 == 120) {
            if (getParentFragment() instanceof ChatFragment) {
                TipLog tipLog = new TipLog();
                ChatMessage chatMessage = chatMessageDto.chatMessage;
                tipLog.tipper = chatMessage.author;
                int iNodeInt = JacksonUtils.nodeInt(chatMessage.extensions, "tippingCoins");
                tipLog.totalTippedCoins = iNodeInt;
                if (iNodeInt > 0) {
                    ((ChatFragment) getParentFragment()).onNewTipLog(tipLog);
                    return;
                }
                return;
            }
            return;
        }
        if (i11 == 128 || i11 == 129) {
            if (getParentFragment() instanceof ChatFragment) {
                ((ChatFragment) getParentFragment()).onTipEnableChanged(chatMessageDto.chatMessage.type == 128);
                return;
            }
            return;
        }
        if (i11 != 119) {
            switch (i11) {
                case 100:
                    sendNotification(new Notification("delete", chatMessageDto.chatMessage));
                    break;
                case 101:
                    ChatThread chatThread = getThread() == null ? null : (ChatThread) getThread().m1622clone();
                    list = chatThread != null ? chatThread.membersSummary : null;
                    if (chatThread != null && list != null) {
                        Iterator<User> it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                User next = it.next();
                                if (Utils.isEquals(next.uid, chatMessageDto.chatMessage.uid())) {
                                    next.membershipStatus = 1;
                                }
                            } else {
                                User user = chatMessageDto.chatMessage.author;
                                if (user != null) {
                                    list.add(user);
                                }
                            }
                        }
                        chatThread.membersCount++;
                        sendNotification(new Notification("update", chatThread));
                    }
                    break;
                case 102:
                    ChatThread chatThread2 = getThread() == null ? null : (ChatThread) getThread().m1622clone();
                    list = chatThread2 != null ? chatThread2.membersSummary : null;
                    if (chatThread2 != null && list != null) {
                        chatThread2.membersCount--;
                        sendNotification(new Notification("update", chatThread2));
                    }
                    break;
            }
        } else {
            sendNotification(new Notification("delete", chatMessageDto.chatMessage));
        }
        ChatMessage chatMessage2 = chatMessageDto.chatMessage;
        if (chatMessage2.type == 119 || chatMessage2.isHidden) {
            return;
        }
        this.adapter.appendNewChatMessage(chatMessage2);
    }

    @Override // com.narvii.chat.core.ChatService.VideoMessageProgressChangeListener
    public void onProgressUpdate(int i10, int i11) {
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    public void openMiniProfile(final User user) {
        if (user != null && checkCommunityAvailability()) {
            new ChatUserInfoEntryHelper(this).showUserInfoInChatThread(getThread(), user, "Chat Thread", new UserDialog.UserDialogClickListener() { // from class: com.narvii.chat.ChatListFragment.7
                public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
                public void onClicked(int i10, NVObject nVObject) {
                    if (i10 == 2) {
                        Intent intent = UserProfileFragment.intent(ChatListFragment.this, user);
                        if (intent == null) {
                            return;
                        }
                        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Chat Thread");
                        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ChatListFragment.this, intent);
                        return;
                    }
                    if (i10 == 1) {
                        ChatListFragment.this.startChat(user);
                    } else if (i10 == 3) {
                        new FlagReportOptionDialog.Builder(ChatListFragment.this).nvObject(user).miniProfile(true).build().show();
                    }
                }
            });
        }
    }

    public void resend(ChatMessage chatMessage) {
        if (chatMessage._status != 2 || chatMessage.getClientRefIdTmp() == 0) {
            return;
        }
        this.chatService.retryPost(chatMessage.getClientRefIdTmp());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0() {
        getListView().setSelection(getListView().getCount() - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$1(View view) {
        getListView().post(new Runnable() { // from class: com.narvii.chat.q
            @Override // java.lang.Runnable
            public final void run() {
                this.f1997a.lambda$onViewCreated$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldShowWelcomeMessage() {
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12;
        ChatThread thread = getThread();
        if (thread != null && thread.type != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (System.currentTimeMillis() - this.lastTimeWelcomeMessageShow > DateUtils.ONE_DAY) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (thread != null && thread.membershipStatus != 1) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (thread != null && !TextUtils.isEmpty(com.narvii.util.text.TextUtils.compactContent(thread.content))) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (!z6) {
            return false;
        }
        if ((!z11 && !z10) || !z12) {
            return false;
        }
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AccountService accountService = (AccountService) getService("account");
        this.accountService = accountService;
        this.currentUser = accountService.getUserProfile();
        this.myUid = this.accountService.getUserId();
        this.chatHelper = new ChatHelper(getContext());
        this.chatRequestHelper = new ChatRequestHelper(this);
        ChatService chatService = (ChatService) getService("chat");
        this.chatService = chatService;
        chatService.addThreadLvelRecptor(getThreadId(), this);
        this.chatService.addVideoMessagePostListener(getThreadId(), this);
        PushService pushService = (PushService) getService("push");
        this.pushService = pushService;
        pushService.addPushListener(this.pushListener);
        ConfigService configService = (ConfigService) getService("config");
        this.configService = configService;
        this.ndcId = configService.getCommunityId();
        getActivity().setVolumeControlStream(3);
        this.audioHelper = new AudioHelper(this);
        this.globalChatHelper = new GlobalChatHelper(this);
        this.membershipService = (MembershipService) getService("membership");
        this.stickerHelper = new StickerHelper(this);
        this.chatPreferenceHelper = new ChatPreferenceHelper(this);
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString(ExternalPostPreviewFragment.SOURCE, "Chat Thread");
            chatInviteFragment.setArguments(bundle2);
            getFragmentManager().q().e(chatInviteFragment, "chatInvite").k();
        }
        LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(getContext());
        this.lbm = localBroadcastManagerB;
        localBroadcastManagerB.c(this.receiver, new IntentFilter(BubbleService.ACTION_BUBBLE_READY));
        this.lbm.c(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.lastTimeWelcomeMessageShow = this.chatPreferenceHelper.getLastWelcomeMessageShowTime(getThreadId());
        if (TextUtils.isEmpty(getThreadId())) {
            finish();
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.chat_list_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.chatService.removeThreadLevelReceptor(getThreadId(), this);
        this.pushService.removePushListener(this.pushListener);
        this.lbm.f(this.receiver);
        ChatService chatService = this.chatService;
        if (chatService != null) {
            chatService.removeVideoMessagePostListener(getThreadId(), this);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        listView.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.chat.ChatListFragment.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 2 && !ChatListFragment.this.avatarLongClicked) {
                    ChatListFragment chatListFragment = ChatListFragment.this;
                    chatListFragment.touchMoved = true;
                    Fragment fragmentM0 = chatListFragment.getFragmentManager().m0("chatInput");
                    if (fragmentM0 != null) {
                        ((ChatInputFragment) fragmentM0).hideKeyboardAndPanel();
                    }
                } else if (ChatListFragment.this.avatarLongClicked && (motionEvent.getAction() == 1 || motionEvent.getAction() == 3 || motionEvent.getAction() == 0)) {
                    ChatListFragment.this.avatarLongClicked = false;
                }
                return false;
            }
        });
        if (listView instanceof ChatListView) {
            ((ChatListView) listView).setRevertedSwipeRefreshEnabled(this.isSwipeRefreshEnabled);
        }
        listView.setOnScrollListener(this.scrollListener);
    }

    @Override // com.narvii.chat.ChatMessageItem.onMentionedUserClickedListener
    public void onMentionedUserClicked(String str) {
        if (!checkCommunityAvailability()) {
            return;
        }
        final User user = new User();
        user.uid = str;
        new ChatUserInfoEntryHelper(this).showUserInfoInChatThread(getThread(), user, "Chat Thread", new UserDialog.UserDialogClickListener() { // from class: com.narvii.chat.p
            @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
            public final void onClicked(int i10, NVObject nVObject) {
                this.f1983a.lambda$onMentionedUserClicked$2(user, i10, nVObject);
            }
        });
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
        if (!isAdded()) {
            return;
        }
        this.adapter.resetChatList();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.accountService == null) {
            this.accountService = (AccountService) getService("account");
        }
        this.myUid = this.accountService.getUserId();
    }

    @Override // com.narvii.chat.ChatMessageItem.OnSeeAllClickedListener
    public void onSeeAllClicked(ChatMessage chatMessage) {
        showNormalMessageDetail(chatMessage);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        if (shouldShowWelcomeMessage()) {
            this.chatPreferenceHelper.saveLastWelcomeMessageShowTime(getThreadId(), System.currentTimeMillis());
        }
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(ChatThread chatThread) {
        ChatThread thread = getThread();
        this.chatThread = thread;
        this.curBubble = thread.getCurBubble(this.accountService.getUserId());
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        TextView textView = (TextView) view.findViewById(R.id.new_message);
        this.tvNewMessage = textView;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f1998a.lambda$onViewCreated$1(view2);
                }
            });
        }
        this.newMsgContainer = view.findViewById(R.id.new_message_container);
        SwipeRefreshLayout swipeRefreshLayout = this.swipeLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setReversed(true);
        }
    }

    public void scrollToBottom() {
        ListAdapter listAdapter = getListAdapter();
        if (listAdapter == null || getListView() == null) {
            return;
        }
        try {
            int count = listAdapter.getCount();
            if (count > 1) {
                getListView().setSelection(count - 1);
            }
        } catch (Exception unused) {
        }
    }
}
