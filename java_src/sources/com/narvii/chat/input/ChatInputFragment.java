package com.narvii.chat.input;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.work.WorkRequest;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.chat.ChatActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.ChatListFragment;
import com.narvii.chat.ChatReplyLayout;
import com.narvii.chat.RecordEventFinishListener;
import com.narvii.chat.RecordFinishListener;
import com.narvii.chat.RecordInfoListener;
import com.narvii.chat.ThreadInfoHost;
import com.narvii.chat.audio.AudioBoardLayout;
import com.narvii.chat.audio.AudioRecordLayout;
import com.narvii.chat.call.CallScreenService;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.core.ThreadUpdateObject;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.screenroom.SRPermissionActionChangeListener;
import com.narvii.chat.screenroom.ScreenRoomService;
import com.narvii.chat.setting.LivePermissionFragment;
import com.narvii.chat.setting.helper.ChatWaitingListService;
import com.narvii.chat.setting.helper.ChatWaitingListServiceKt;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.video.events.ChannelUserWrapperUpdateListener;
import com.narvii.chat.video.events.LiveChannelChangeListener;
import com.narvii.chat.video.events.MyChannelUserStatusChangeListener;
import com.narvii.chat.video.overlay.VVchatPermissionInviteListener;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.chat.video.view.CheckableImageView;
import com.narvii.chat.waitinglist.WaitingListListener;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Blog;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.Comment;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.SharedFile;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.monetization.bubble.BubbleSettingFragment;
import com.narvii.monetization.sticker.model.MoodStickerCollection;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.picker.StickerPickerTabFragment;
import com.narvii.monetization.sticker.picker.StickerSelectListener;
import com.narvii.notification.Notification;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.services.PushInviteHelper;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.StatisticHelper;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.TmpValue;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.video.ui.UserStatusData;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.TintButton;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class ChatInputFragment extends NVFragment implements View.OnClickListener, MediaPickerFragment.OnResultListener, StickerSelectListener, ChatInputPanelSwitcherButton.SwitcherAdapter, MyChannelUserStatusChangeListener, LiveChannelChangeListener, VVchatPermissionInviteListener, SRPermissionActionChangeListener, ChannelUserWrapperUpdateListener, WaitingListListener, MentionedEditText.OnMentionInputListener, ChatMentionUserListFragment.MentionRelatedUsersCallback, ThreadInfoHost, ChatThreadCheckFragment.LiveChatJoinEventListener, ChatThreadCheckFragment.LiveChatCheckData {
    private static final String ATTACH_MESSAGE = "attachMessage";
    private static final String ATTACH_OBJ = "attachObj";
    private static final String ATTACH_OBJ_ID = "attachObjId";
    private static final String ATTACH_OBJ_TYPE = "attachObjType";
    public static final String KEY_AUTO_CHECK = "autoCheckStrike";
    private static final int REQUEST_CODE_PICKERAVATAR = 201;
    private AccountService accountService;
    private TintButton addButton;
    String attachContent;
    String attachLink;
    List<Media> attachMediaList;
    String attachMessage;
    String attachObjStr;
    NVObject attachObject;
    String attachObjectId;
    int attachObjectType;
    String attachTitle;
    private long blockUntil;
    private CallScreenService callScreenService;
    private View chatAddButtonView;
    ChatHelper chatHelper;
    private View chatInputBlur;
    private TextView chatInputButton;
    private View chatInputMain;
    private View chatInputMask;
    private ChatInputOptionMenu chatInputOptionMenu;
    private ChatReplyLayout chatReplyLayout;
    private View chatReplyMainView;
    private ChatInputRightViewContainer chatRightButtonContainer;
    protected ChatService chatService;
    private View chatStickerButtonView;
    private ChatThreadCheckFragment chatThreadCheckFragment;
    private ChatWaitingListService chatWaitingListService;
    private int cid;
    protected MentionedEditText edit;
    private GlobalChatHelper globalChatHelper;
    private boolean isKeyboardVisible;
    protected MediaPickerFragment mediaPicker;
    private boolean mentionEnabled;
    private ChatMentionUserListFragment mentionUserListFragment;
    private ChatInputMessageSenderHelper messageSenderHelper;
    String oldDraft;
    private PushInviteHelper pushInviteHelper;
    private PushNotificationHelper pushNotificationHelper;
    private BroadcastReceiver requireAccountReceiver;
    private boolean returnToSend;
    private RtcService rtcService;
    private TintButton sendButton;
    private View sendButtonContainer;
    boolean showedAttachment;
    private SignallingChannel signallingChannel;
    private View srLandscapeButtons;
    private ScreenRoomService srs;
    private ChatInputPanelSwitcherButton stickerButton;
    private StickerPickerTabFragment stickerPickerTabFragment;
    private TextView tvTypingUser;
    private ChatInputTypingUserHelper tvTypingUserHelper;
    private boolean updating;
    private TextView viewOnlyInputButton;
    private VVChatHelper vvchatHelper;
    private final TmpValue<SwitchKeyboard> switchingKeyboard = new TmpValue<>();
    public String source = "Chat Thread";
    private HashMap<View, PanelHideListener> panelHideMap = new HashMap<>();
    EventDispatcher<PanelHideListener> panelHideEventDispatcher = new EventDispatcher<>();
    private SideMenuEventDealer menuEventDealer = new SideMenuEventDealer();
    private boolean mentioning = false;
    private StringBuilder mentionTextBuilder = new StringBuilder();
    private int mentionTextStartIndex = -1;
    private List<User> waitingListUsers = new ArrayList();
    private boolean shieldInputEvent = false;
    private boolean replying = false;
    private ChatMessage replyMessage = null;
    private final Runnable updateSendBtn = new Runnable() { // from class: com.narvii.chat.input.ChatInputFragment.17
        @Override // java.lang.Runnable
        public void run() {
            if (ChatInputFragment.this.edit == null) {
                return;
            }
            Utils.handler.removeCallbacks(this);
            if (ChatInputFragment.this.edit.getText().length() == 0) {
                ChatInputFragment.this.sendButton.setEnabled(false);
                return;
            }
            ChatService chatService = ChatInputFragment.this.chatService;
            long latestSendElapse = chatService == null ? 0L : chatService.getLatestSendElapse();
            if (Math.max(1000 - latestSendElapse, ChatInputFragment.this.blockUntil - SystemClock.elapsedRealtime()) <= 0) {
                ChatInputFragment.this.sendButton.setEnabled(true);
            } else {
                Utils.postDelayed(this, latestSendElapse);
                ChatInputFragment.this.sendButton.setEnabled(false);
            }
        }
    };

    /* JADX INFO: renamed from: com.narvii.chat.input.ChatInputFragment$19, reason: invalid class name */
    class AnonymousClass19 implements View.OnClickListener {
        final /* synthetic */ AlertDialog val$alertDialog;
        final /* synthetic */ View val$view;

        AnonymousClass19(AlertDialog alertDialog, View view) {
            this.val$alertDialog = alertDialog;
            this.val$view = view;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChatInputFragment.this.chatThreadCheckFragment.sendRequestToJoinThreadRequest(new Callback<Boolean>() { // from class: com.narvii.chat.input.ChatInputFragment.19.1
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    View view2;
                    AnonymousClass19.this.val$alertDialog.dismiss();
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.input.ChatInputFragment.19.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ChatInputFragment.this.showSoftKeyboard();
                        }
                    }, 100L);
                    if (!bool.booleanValue() || (view2 = AnonymousClass19.this.val$view) == null) {
                        return;
                    }
                    view2.performClick();
                }
            });
        }
    }

    public static class PanelHideAdapter implements PanelHideListener {
        @Override // com.narvii.chat.input.ChatInputFragment.PanelHideListener
        public void onPanelHide() {
        }

        @Override // com.narvii.chat.input.ChatInputFragment.PanelHideListener
        public void onPanelShow() {
        }
    }

    public interface PanelHideListener {
        void onPanelHide();

        void onPanelShow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    class SideMenuEventDealer implements ChatInputRightViewContainer.OnClickRightView, ChatInputOptionMenu.OnOptionMenuClickListener {
        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        private SideMenuEventDealer() {
        }

        private void openWaitingListInn() {
            if (!(ChatInputFragment.this.getActivity() instanceof NVActivity) || ChatInputFragment.this.getThread() == null) {
                return;
            }
            ChatInputFragment.this.chatWaitingListService.show(ChatInputFragment.this.getThread());
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView
        public boolean checkChannelUserLimit() {
            return ChatInputFragment.this.chatThreadCheckFragment.checkChannelUserLimit();
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView
        public void doEndChat() {
            ChatThread thread = ChatInputFragment.this.getThread();
            if (thread == null) {
                return;
            }
            ChatInputFragment.this.vvchatHelper.quitAsPresenter(ChatInputFragment.this.signallingChannel.channelType, thread, ChatInputFragment.this.rtcService.getMainChannelLocalUserWrapper(), new Callback<Boolean>() { // from class: com.narvii.chat.input.ChatInputFragment.SideMenuEventDealer.1
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    if (bool == null || !bool.booleanValue()) {
                        return;
                    }
                    LogEvent.clickWildcardBuilder(ChatInputFragment.this, "HangUpButton").send();
                }
            });
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView
        public void doJoin() {
            ChatInputFragment.this.chatThreadCheckFragment.requestToJoinChannel(ChatInputFragment.this.signallingChannel);
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView
        public void doRequestToSpeak() {
            ChatInputFragment chatInputFragment = ChatInputFragment.this;
            if (ChatWaitingListServiceKt.isCurrentUserInWaitingList(chatInputFragment, chatInputFragment.waitingListUsers) || ChatWaitingListServiceKt.isCurrentUserSpeaker(ChatInputFragment.this)) {
                return;
            }
            ChatInputFragment.this.chatThreadCheckFragment.requestToSpeak(ChatInputFragment.this.signallingChannel);
        }

        @Override // com.narvii.chat.input.ChatInputOptionMenu.OnOptionMenuClickListener
        public void doSettings() {
            ChatThread thread;
            if (ChatInputFragment.this.signallingChannel == null || ChatInputFragment.this.signallingChannel.channelType == 0 || (thread = ChatInputFragment.this.getThread()) == null) {
                return;
            }
            Intent intent = FragmentWrapperActivity.intent(LivePermissionFragment.class);
            intent.putExtra("id", thread.id());
            intent.putExtra("vvChatJoinType", thread.getVvChatJoinType());
            intent.putExtra(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, thread.ndcId);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ChatInputFragment.this, intent);
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView
        public boolean isMenuIconShown() {
            List<ChatInputOptionMenu.MenuItem> menuTypeList = ChatInputFragment.this.chatInputOptionMenu.getMenuTypeList();
            return (menuTypeList == null || menuTypeList.isEmpty()) ? false : true;
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView
        public void openWaitingList() {
            if (ChatInputFragment.this.signallingChannel == null || !ChatInputFragment.this.chatThreadCheckFragment.checkCommunityAvailability(ChatInputFragment.this.signallingChannel.channelType, new Callback() { // from class: com.narvii.chat.input.d
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f1960a.lambda$openWaitingList$0((Boolean) obj);
                }
            })) {
                return;
            }
            openWaitingListInn();
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView
        public void toggleMenu() {
            ChatInputFragment.this.hideAllPanels();
            ChatInputFragment.this.hideSoftKeyboard();
            if (ChatInputFragment.this.chatInputOptionMenu.getVisibility() == 0) {
                ChatInputFragment.this.chatInputOptionMenu.hide();
                ChatInputFragment.this.checkDismissMaskShown(false);
            } else {
                ChatInputFragment.this.chatInputOptionMenu.bindToggleView(ChatInputFragment.this.chatRightButtonContainer.findViewById(R.id.menu_view));
                ChatInputFragment.this.chatInputOptionMenu.show();
                ChatInputFragment.this.checkDismissMaskShown(true);
            }
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView, com.narvii.chat.input.ChatInputOptionMenu.OnOptionMenuClickListener
        public void toggleMute(boolean z6) {
            if (!ChatInputFragment.this.chatRightButtonContainer.isMuted()) {
                ((StatisticsService) ChatInputFragment.this.getService("statistics")).event("Mute Myself VV Chat").param(EventConstants.CommentPost.TYPE, ChatActivity.statChannelType(ChatInputFragment.this.rtcService.getMainChannelType())).param("Chat Type", StatisticHelper.getChatThreadType((ChatThread) JacksonUtils.readAs(ChatInputFragment.this.getStringParam("thread"), ChatThread.class), "Public Chat")).param("Target", z6 ? "Video" : "Voice").userPropInc("Mute Myself VV Chat Total");
            }
            if (z6) {
                ChatInputFragment.this.rtcService.toggleLocalVideo();
            } else if (ChatInputFragment.this.signallingChannel != null && ChatInputFragment.this.signallingChannel.channelType == 5 && ChatInputFragment.this.rtcService.getMainChannelLocalUserWrapper() != null && ChatInputFragment.this.rtcService.getMainChannelLocalUserWrapper().channelUser != null && ChatInputFragment.this.rtcService.getMainChannelLocalUserWrapper().channelUser.isHost) {
                ScreenRoomService screenRoomService = (ScreenRoomService) ChatInputFragment.this.getService("screenRoom");
                AudioManager audioManager = (AudioManager) ChatInputFragment.this.getContext().getSystemService("audio");
                if (!screenRoomService.isEchoHintShowed && audioManager != null && !audioManager.isWiredHeadsetOn() && screenRoomService.getLocalMicMuted()) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(ChatInputFragment.this.getContext());
                    aCMAlertDialog.setMessage(R.string.echo_hint);
                    aCMAlertDialog.addButton(R.string.got_it, null);
                    aCMAlertDialog.show();
                    screenRoomService.isEchoHintShowed = true;
                    return;
                }
                screenRoomService.toggleHostMic();
                ChatInputFragment.this.rtcService.changeLocalVoiceMuteStatus(screenRoomService.getLocalMicMuted());
            } else if (ChatInputFragment.this.callScreenService == null || ChatInputFragment.this.callScreenService.getCurStatus() != 1) {
                ChatInputFragment.this.rtcService.toggleLocalVoice();
            } else {
                ChatInputFragment.this.callScreenService.switchMusicPlayStatus();
                ChatInputFragment.this.rtcService.toggleSpeaker();
            }
            ChatInputFragment chatInputFragment = ChatInputFragment.this;
            chatInputFragment.updateRightView(chatInputFragment.isKeyboardVisible);
        }

        @Override // com.narvii.chat.input.ChatInputOptionMenu.OnOptionMenuClickListener
        public void toggleSpeaker() {
            if (ChatInputFragment.this.callScreenService == null || ChatInputFragment.this.callScreenService.getCurStatus() != 1) {
                ChatInputFragment.this.rtcService.toggleSpeaker();
            } else {
                ChatInputFragment.this.callScreenService.switchSpeaker();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$openWaitingList$0(Boolean bool) {
            openWaitingListInn();
        }
    }

    private boolean isInputButton(int i10) {
        return i10 == R.id.sticker_button || i10 == R.id.chat_edit || i10 == R.id.voice_button || i10 == R.id.chat_add || i10 == R.id.chat_send || i10 == R.id.chat_button || i10 == R.id.view_only_button;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopMentioning() {
        this.mentioning = false;
        StringBuilder sb = this.mentionTextBuilder;
        if (sb != null) {
            sb.delete(0, sb.length());
        }
        getFragmentManager().q().r(this.mentionUserListFragment).k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopReplaing() {
        this.replying = false;
        this.replyMessage = null;
        this.chatReplyMainView.setVisibility(8);
    }

    @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatCheckData
    public SignallingChannel getSignallingChannel() {
        return this.signallingChannel;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        boolean z6 = false;
        boolean z10 = bundle != null ? bundle.getBoolean("isUHQ") : false;
        if (bundle != null && list.size() > 0) {
            for (Media media : list) {
                if (!media.isVideo() || media.type == 103) {
                    this.messageSenderHelper.sendImageMessage(media, z10);
                    logSendChatMessage("image");
                } else {
                    this.messageSenderHelper.sendVideoMessage(media);
                    logSendChatMessage("video");
                    z6 = true;
                }
            }
        }
        String string = bundle == null ? null : bundle.getString(MediaPickerFragment.PICK_SOURCE);
        if (string != null) {
            FirebaseLogManager.logEvent(this, ((StatisticsService) getService("statistics")).event("Chat Message Sent").userPropInc("Message Sent Total").param("Message Type", z6 ? "Video" : "Other(" + string + ")").param(EventConstants.CommentPost.TYPE, StatisticHelper.getChatThreadType(getThread(), null)).source(this.source));
        }
    }

    public void onReplybyLongClick(@NotNull ChatMessage chatMessage) {
        this.replying = true;
        this.replyMessage = chatMessage;
        if (chatMessage != null) {
            this.chatReplyLayout.setMessage(chatMessage, 0, true);
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.input.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f1954a.lambda$onReplybyLongClick$2();
            }
        }, 200L);
    }

    public static class SwitchKeyboard {
        boolean openKeyboard;
        View view;

        public SwitchKeyboard(boolean z6, View view) {
            this.openKeyboard = z6;
            this.view = view;
        }
    }

    private boolean checkCommunityAvailability(final View view) {
        return true ^ this.globalChatHelper.tryJoinCommunity(((ConfigService) getService("config")).getCommunityId(), true, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.input.ChatInputFragment.22
            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public int getActionRTCType() {
                return 0;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public boolean onPreJoinCommunity(int i10) {
                return false;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            @Nullable
            public ChatThread followingChatToJoin() {
                return ChatInputFragment.this.getThread();
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onCheckLoginFailed() {
                ChatInputFragment.this.ensureLogin(new Intent("joinChannel"));
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onPostJoinCommunity(int i10, boolean z6) {
                if (z6) {
                    ChatInputFragment.this.messageSenderHelper.recordChatActivity();
                    view.performClick();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ObjectNode getMessageAttachmentNode() {
        String str = this.attachObjectId;
        if (str == null || this.showedAttachment) {
            return null;
        }
        this.showedAttachment = true;
        int i10 = this.attachObjectType;
        String str2 = this.attachLink;
        String str3 = this.attachTitle;
        String str4 = this.attachContent;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, str);
        objectNodeCreateObjectNode.put(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, i10);
        objectNodeCreateObjectNode.put("link", str2);
        objectNodeCreateObjectNode.put("title", str3);
        objectNodeCreateObjectNode.put("content", str4);
        NVObject nVObject = this.attachObject;
        if (nVObject instanceof Comment) {
            objectNodeCreateObjectNode.put("parentId", ((Comment) nVObject).parentId);
            objectNodeCreateObjectNode.put("parentType", ((Comment) this.attachObject).parentType);
        } else if (nVObject instanceof ChatMessage) {
            objectNodeCreateObjectNode.put("parentId", nVObject.parentId());
            objectNodeCreateObjectNode.put("parentType", 12);
        }
        objectNodeCreateObjectNode.put("mediaList", this.attachMediaList != null ? JacksonUtils.createArrayNode(JacksonUtils.writeAsString(this.attachMediaList)) : null);
        return objectNodeCreateObjectNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideSoftKeyboard() {
        SoftKeyboard.hideSoftKeyboard(this.edit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMentionCharacterInput$1(String str, int i10) {
        if (this.mentionTextBuilder.length() > 0) {
            StringBuilder sb = this.mentionTextBuilder;
            sb.delete(0, sb.length());
        }
        this.mentionTextBuilder.append(str);
        this.mentioning = true;
        this.mentionTextStartIndex = i10;
        getFragmentManager().q().E(this.mentionUserListFragment).k();
        this.mentionUserListFragment.fetchMentionRelatedUserList(null, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logSendChatMessage(String str) {
        LogEvent.clickBuilder(this, ActSemantic.sendChatMessage).extraParam("messageType", str).send();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0037  */
    private void parseObject(String str, int i10) {
        Class<SharedFile> cls;
        if (str == null) {
            return;
        }
        if (i10 == 0) {
            cls = User.class;
        } else if (i10 == 1) {
            cls = Blog.class;
        } else if (i10 == 2) {
            cls = Item.class;
        } else if (i10 == 3) {
            cls = Comment.class;
        } else if (i10 == 7) {
            cls = ChatMessage.class;
        } else if (i10 == 12) {
            cls = ChatThread.class;
        } else if (i10 == 109) {
            cls = SharedFile.class;
        } else if (i10 != 131) {
            cls = null;
        } else {
            cls = Blog.class;
        }
        if (cls == null) {
            return;
        }
        NVObject nVObject = (NVObject) JacksonUtils.readAs(str, cls);
        this.attachObject = nVObject;
        if (nVObject == null) {
            return;
        }
        this.attachObjectId = nVObject.id();
        this.attachObjectType = i10;
        NVObject nVObject2 = this.attachObject;
        if (nVObject2 instanceof Blog) {
            NVObject nVObject3 = (NVObject) JacksonUtils.readAs(this.attachObjStr, Blog.class);
            this.attachObject = nVObject3;
            this.attachTitle = ((Blog) nVObject3).getShowTitle();
            this.attachContent = ((Blog) this.attachObject).getShowContent();
            this.attachMediaList = ((Blog) this.attachObject).getFeedPreviewMediaList();
            this.attachLink = "ndc://" + NVObject.objectTypeName(i10) + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + this.attachObject.id();
            return;
        }
        if (nVObject2 instanceof Item) {
            NVObject nVObject4 = (NVObject) JacksonUtils.readAs(this.attachObjStr, Item.class);
            this.attachObject = nVObject4;
            this.attachTitle = ((Item) nVObject4).title();
            this.attachContent = ((Item) this.attachObject).content();
            this.attachMediaList = ((Item) this.attachObject).mediaList;
            this.attachLink = "ndc://" + NVObject.objectTypeName(i10) + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + this.attachObject.id();
            return;
        }
        if (nVObject2 instanceof ChatMessage) {
            NVObject nVObject5 = (NVObject) JacksonUtils.readAs(this.attachObjStr, ChatMessage.class);
            this.attachObject = nVObject5;
            this.attachTitle = null;
            this.attachContent = ((ChatMessage) nVObject5).content;
            if (((ChatMessage) nVObject5).mediaType == 100 || ((ChatMessage) nVObject5).mediaType == 123 || ((ChatMessage) nVObject5).mediaType == 103) {
                Media media = ((ChatMessage) nVObject5).media();
                ArrayList arrayList = new ArrayList();
                arrayList.add(media);
                this.attachMediaList = arrayList;
            } else {
                this.attachMediaList = null;
            }
            this.attachLink = "ndc://chat-thread/" + this.attachObject.parentId();
            return;
        }
        if (nVObject2 instanceof Comment) {
            NVObject nVObject6 = (NVObject) JacksonUtils.readAs(this.attachObjStr, Comment.class);
            this.attachObject = nVObject6;
            this.attachTitle = null;
            this.attachContent = ((Comment) nVObject6).content;
            this.attachMediaList = ((Comment) nVObject6).mediaList;
            this.attachLink = "ndc://" + NVObject.objectTypeName(((Comment) this.attachObject).parentType) + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + ((Comment) this.attachObject).parentId + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + NVObject.objectTypeName(i10) + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + this.attachObject.id();
            return;
        }
        if (nVObject2 instanceof ChatThread) {
            NVObject nVObject7 = (NVObject) JacksonUtils.readAs(this.attachObjStr, ChatThread.class);
            this.attachObject = nVObject7;
            this.attachTitle = null;
            this.attachContent = ((ChatThread) nVObject7).content;
            this.attachMediaList = null;
            this.attachLink = "ndc://" + NVObject.objectTypeName(i10) + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + this.attachObject.id();
            return;
        }
        if (nVObject2 instanceof User) {
            NVObject nVObject8 = (NVObject) JacksonUtils.readAs(this.attachObjStr, User.class);
            this.attachObject = nVObject8;
            this.attachTitle = null;
            this.attachContent = ((User) nVObject8).content;
            this.attachMediaList = ((User) nVObject8).mediaList;
            this.attachLink = "ndc://" + NVObject.objectTypeName(i10) + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + this.attachObject.id();
        }
    }

    private void showChatInputLayout() {
        this.edit.requestFocus();
        showSoftKeyboard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSoftKeyboard() {
        SoftKeyboard.showSoftKeyboard(this.edit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateReplyMainView(final Boolean bool) {
        if (!this.replying || this.chatReplyMainView == null) {
            return;
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.input.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f1955a.lambda$updateReplyMainView$0(bool);
            }
        }, 200L);
    }

    private void updateSendBtn() {
        this.updateSendBtn.run();
    }

    public void addPanelHideListener(PanelHideListener panelHideListener) {
        this.panelHideEventDispatcher.addListener(panelHideListener);
    }

    public void checkDismissMaskShown(boolean z6) {
        ChatInputOptionMenu chatInputOptionMenu;
        View view = this.chatInputMask;
        if (view != null) {
            if (z6) {
                view.setVisibility(0);
            } else {
                if (!isAllPanelHidden() || (chatInputOptionMenu = this.chatInputOptionMenu) == null || chatInputOptionMenu.isVisible()) {
                    return;
                }
                this.chatInputMask.setVisibility(8);
            }
        }
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public ChatThread getThread() {
        return ChatHelper.Companion.getThreadFromThreadInfoHost(this);
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public String getThreadId() {
        return getStringParam("id");
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton.SwitcherAdapter
    public void hidePanelWithKeyBoardSwitch(View view) {
        this.switchingKeyboard.set(new SwitchKeyboard(true, view));
        showSoftKeyboard();
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelForceQuit(@NotNull SignallingChannel signallingChannel, int i10) {
        this.signallingChannel = signallingChannel;
        if (signallingChannel.joinRole == 1) {
            hideKeyboardAndPanel();
        }
        updateRightView(this.isKeyboardVisible);
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelStatusChanged(@NotNull SignallingChannel signallingChannel) {
        this.signallingChannel = signallingChannel;
        updateRightView(this.isKeyboardVisible);
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelUserListChanged(@NotNull SignallingChannel signallingChannel, @NotNull Collection<? extends ChannelUser> collection, @NotNull Collection<? extends ChannelUser> collection2, @Nullable SparseArray<ChannelUserWrapper> sparseArray) {
        this.signallingChannel = signallingChannel;
        updateRightView(this.isKeyboardVisible);
    }

    @Override // com.narvii.chat.video.overlay.VVchatPermissionInviteListener
    public void onCoHostResult(boolean z6) {
        ChatInputRightViewContainer chatInputRightViewContainer = this.chatRightButtonContainer;
        if (chatInputRightViewContainer != null) {
            chatInputRightViewContainer.showView();
        }
        ChatThread thread = getThread();
        if (thread != null) {
            String userId = ((AccountService) getService("account")).getUserId();
            if (z6) {
                thread.getCoHostUidList().add(userId);
            } else {
                thread.getCoHostUidList().remove(userId);
            }
            if (getParentFragment() instanceof ChatFragment) {
                ((ChatFragment) getParentFragment()).setThread(thread);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        if (this.tvTypingUser != null) {
            this.tvTypingUserHelper.dislinkLivelayer();
        }
        this.pushInviteHelper.removeOriganerInviteListener(this);
        this.rtcService.removeMyChannelUserStatusChangeListener(getThreadId(), this);
        this.rtcService.removeLiveChannelChangeListener(getThreadId(), this);
        this.rtcService.removeChannelUserWrapperUpdateListener(getThreadId(), this);
        this.rtcService.removeWaitingListListener(getThreadId(), this);
        this.srs.removeSRPermissionListener(this);
        BroadcastReceiver broadcastReceiver = this.requireAccountReceiver;
        if (broadcastReceiver != null) {
            unregisterLocalReceiver(broadcastReceiver);
        }
        MediaPickerFragment mediaPickerFragment = this.mediaPicker;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
        super.onDestroy();
    }

    @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatJoinEventListener
    public void onJoinEnd() {
        this.chatRightButtonContainer.setIsJoining(false);
        updateRightView(this.isKeyboardVisible);
    }

    @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatJoinEventListener
    public void onJoinStart() {
        this.chatRightButtonContainer.setIsJoining(true);
        updateRightView(this.isKeyboardVisible);
    }

    @Override // com.narvii.chat.input.ChatMentionUserListFragment.MentionRelatedUsersCallback
    public void onMentionedUserListUpdated(List<? extends User> list) {
        if (this.mentioning) {
            if (list == null || list.isEmpty()) {
                getFragmentManager().q().r(this.mentionUserListFragment).k();
            } else {
                getFragmentManager().q().E(this.mentionUserListFragment).k();
            }
        }
    }

    @Override // com.narvii.chat.video.events.MyChannelUserStatusChangeListener
    public void onMyChannelUserStatusChanged(int i10, @NotNull SignallingChannel signallingChannel, @Nullable ChannelUser channelUser) {
        this.signallingChannel = signallingChannel;
        if (i10 == 2 && signallingChannel.joinRole == 1) {
            hideKeyboardAndPanel();
        }
        updateRightView(this.isKeyboardVisible);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002d  */
    @Override // com.narvii.monetization.sticker.picker.StickerSelectListener
    public void onStickerSelected(Sticker sticker, StickerCollection stickerCollection) {
        String str;
        this.messageSenderHelper.sendSticker(sticker, stickerCollection);
        logSendChatMessage("sticker");
        if (stickerCollection == null) {
            str = "Sticker";
        } else {
            int i10 = stickerCollection.collectionType;
            if (i10 == 1) {
                str = "Sticker Sets";
            } else if (i10 == 2) {
                str = "Custom Sticker";
            } else if (i10 == 3) {
                str = "Shared Sticker Pack Sticker";
            } else if (MoodStickerCollection.MOOD_COLLECTION_ID.equals(stickerCollection.collectionId)) {
                str = "Emoji Sticker";
            } else {
                str = "Sticker";
            }
        }
        FirebaseLogManager.logEvent(this, ((StatisticsService) getService("statistics")).event("Chat Message Sent").userPropInc("Message Sent Total").param("Message Type", str).param(EventConstants.CommentPost.TYPE, StatisticHelper.getChatThreadType(getThread(), null)).source(this.source));
    }

    @Override // com.narvii.chat.screenroom.SRPermissionActionChangeListener
    public void onThreadActionChanged(int i10) {
        updateRightView(this.isKeyboardVisible);
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(ChatThread chatThread) {
        ChatInputMessageSenderHelper chatInputMessageSenderHelper = this.messageSenderHelper;
        if (chatInputMessageSenderHelper != null) {
            chatInputMessageSenderHelper.setThread(getThread());
        }
        ChatInputTypingUserHelper chatInputTypingUserHelper = this.tvTypingUserHelper;
        if (chatInputTypingUserHelper != null) {
            chatInputTypingUserHelper.setThread(getThread());
        }
        ChatInputRightViewContainer chatInputRightViewContainer = this.chatRightButtonContainer;
        if (chatInputRightViewContainer != null) {
            chatInputRightViewContainer.setThread(getThread());
        }
        ChatInputOptionMenu chatInputOptionMenu = this.chatInputOptionMenu;
        if (chatInputOptionMenu != null) {
            chatInputOptionMenu.setThread(getThread());
        }
        if (isAdded() && getActivity() != null) {
            updateViews();
        }
        if (this.chatHelper.isChatThreadDisabledOrDelete(getThread())) {
            hideKeyboardAndPanel();
        }
    }

    @Override // com.narvii.chat.video.events.ChannelUserWrapperUpdateListener
    public void onUserWrapperStatusChanged(@NotNull SignallingChannel signallingChannel, @NotNull ChannelUserWrapper channelUserWrapper) {
        if (signallingChannel.channelUid == channelUserWrapper.channelUid) {
            updateRightView(this.isKeyboardVisible);
        }
    }

    @Override // com.narvii.chat.waitinglist.WaitingListListener
    public void onWaitingListApprove(SignallingChannel signallingChannel) {
        this.chatThreadCheckFragment.requestToJoinChannel(this.signallingChannel);
    }

    @Override // com.narvii.chat.waitinglist.WaitingListListener
    public void onWaitingListChanged(SignallingChannel signallingChannel, Collection<User> collection, Collection<User> collection2) {
        this.chatRightButtonContainer.showView();
        this.waitingListUsers.clear();
        this.waitingListUsers.addAll(collection2);
    }

    public void removePanelHideListener(PanelHideListener panelHideListener) {
        this.panelHideEventDispatcher.removeListener(panelHideListener);
    }

    protected void showJoinChatDialog(boolean z6, View view) {
        if (!this.accountService.hasAccount()) {
            ensureLogin(new Intent());
            return;
        }
        final AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setContentView(z6 ? R.layout.dialog_request_join_public : R.layout.dialog_private_channel_not_allow);
        alertDialog.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.input.ChatInputFragment.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                alertDialog.dismiss();
            }
        });
        alertDialog.findViewById(R.id.accept).setOnClickListener(new AnonymousClass19(alertDialog, view));
        alertDialog.show();
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton.SwitcherAdapter
    public void showPanel(View view) {
        if (view == null) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) getView().findViewById(R.id.panel_layout);
        for (int i10 = 0; i10 < frameLayout.getChildCount(); i10++) {
            View childAt = frameLayout.getChildAt(i10);
            childAt.setVisibility(view == childAt ? 0 : 8);
            if (childAt != view) {
                PanelHideListener panelHideListener = this.panelHideMap.get(childAt);
                if (panelHideListener != null) {
                    panelHideListener.onPanelHide();
                }
            } else {
                PanelHideListener panelHideListener2 = this.panelHideMap.get(childAt);
                if (panelHideListener2 != null) {
                    panelHideListener2.onPanelShow();
                }
            }
        }
        this.chatInputOptionMenu.hide();
        this.panelHideEventDispatcher.dispatch(new Callback<PanelHideListener>() { // from class: com.narvii.chat.input.ChatInputFragment.23
            @Override // com.narvii.util.Callback
            public void call(PanelHideListener panelHideListener3) {
                panelHideListener3.onPanelShow();
            }
        });
        checkDismissMaskShown(true);
        updateBackground();
        updateReplyMainView(Boolean.TRUE);
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton.SwitcherAdapter
    public void showPanelWithKeyBoardSwitch(View view) {
        this.switchingKeyboard.set(new SwitchKeyboard(false, view));
        hideSoftKeyboard();
    }

    protected void updateRightView(boolean z6) {
        SignallingChannel signallingChannel;
        if (z6 || !isAllPanelHidden()) {
            if (this.edit.getText().length() == 0 && ((signallingChannel = this.signallingChannel) == null || signallingChannel.channelType == 0)) {
                this.sendButtonContainer.setVisibility(8);
                ChatInputRightViewContainer chatInputRightViewContainer = this.chatRightButtonContainer;
                if (chatInputRightViewContainer != null) {
                    chatInputRightViewContainer.setVisibility(0);
                    this.chatRightButtonContainer.showView();
                }
            } else {
                this.sendButtonContainer.setVisibility(0);
                ChatInputRightViewContainer chatInputRightViewContainer2 = this.chatRightButtonContainer;
                if (chatInputRightViewContainer2 != null) {
                    chatInputRightViewContainer2.setVisibility(8);
                }
            }
            ChatInputRightViewContainer chatInputRightViewContainer3 = this.chatRightButtonContainer;
            if (chatInputRightViewContainer3 != null) {
                chatInputRightViewContainer3.setDisallowTip(true);
            }
            this.chatStickerButtonView.setVisibility(0);
            this.chatAddButtonView.setVisibility(0);
        } else {
            this.sendButtonContainer.setVisibility(8);
            ChatInputRightViewContainer chatInputRightViewContainer4 = this.chatRightButtonContainer;
            if (chatInputRightViewContainer4 != null) {
                chatInputRightViewContainer4.setVisibility(0);
                this.chatRightButtonContainer.showView();
            }
            ChatInputRightViewContainer chatInputRightViewContainer5 = this.chatRightButtonContainer;
            if (chatInputRightViewContainer5 != null) {
                chatInputRightViewContainer5.setDisallowTip(false);
            }
            SignallingChannel signallingChannel2 = this.signallingChannel;
            if (signallingChannel2 == null || signallingChannel2.channelType == 0 || isEmbedFragment()) {
                this.chatStickerButtonView.setVisibility(0);
                this.chatAddButtonView.setVisibility(0);
            } else {
                if (getResources().getDisplayMetrics().widthPixels <= Utils.dpToPxInt(getContext(), 320.0f)) {
                    this.chatAddButtonView.setVisibility(8);
                } else {
                    this.chatAddButtonView.setVisibility(0);
                }
                this.chatStickerButtonView.setVisibility(8);
            }
        }
        updateSRViews();
    }

    protected void updateViews() {
        if (this.edit == null || this.updating) {
            return;
        }
        this.updating = true;
        boolean z6 = ((SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY)).getBoolean("returnToSendChat", false);
        boolean z10 = this.returnToSend;
        if (z6 != z10 && z6) {
            this.returnToSend = z6;
            this.edit.setSingleLine();
            this.edit.setImeOptions(4);
            this.edit.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.narvii.chat.input.ChatInputFragment.16
                @Override // android.widget.TextView.OnEditorActionListener
                public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                    if (i10 != 4 && (keyEvent == null || keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 66)) {
                        return false;
                    }
                    ChatInputFragment.this.sendButton.performClick();
                    return true;
                }
            });
        } else if (z6 != z10 && !z6) {
            this.edit.setSingleLine(false);
            this.edit.setImeOptions(0);
            this.edit.setOnEditorActionListener(null);
        }
        int iCheckThreadStatus = checkThreadStatus();
        ChatInputRightViewContainer chatInputRightViewContainer = this.chatRightButtonContainer;
        if (chatInputRightViewContainer != null) {
            int childCount = chatInputRightViewContainer.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                this.chatRightButtonContainer.getChildAt(i10).setEnabled(iCheckThreadStatus == 0);
            }
        }
        if (iCheckThreadStatus == 0) {
            updateSendBtn();
        } else {
            this.sendButton.setEnabled(false);
        }
        AudioRecordLayout audioRecordLayout = getView() == null ? null : (AudioRecordLayout) getView().findViewById(R.id.audio_record_layout);
        this.edit.setVisibility((iCheckThreadStatus != 0 || (audioRecordLayout != null && audioRecordLayout.getVisibility() == 0)) ? 8 : 0);
        this.chatInputButton.setVisibility(iCheckThreadStatus != 0 ? 0 : 8);
        if (iCheckThreadStatus != 0) {
            this.chatInputButton.setTextColor(iCheckThreadStatus == 1 ? -1593835521 : -12566464);
            this.chatInputButton.setBackgroundResource(iCheckThreadStatus == 1 ? R.drawable.chat_input_edit_round_normal : R.drawable.edit_round_red);
        }
        this.edit.setTextSize(1, 15.0f);
        updateRightView(this.isKeyboardVisible);
        updateBackground();
        this.updating = false;
        ChatThread thread = getThread();
        boolean z11 = thread != null && thread.isViewOnly() && !this.chatHelper.isHostOrCoHost(thread) && this.chatInputButton.getVisibility() == 8;
        this.viewOnlyInputButton.setVisibility(z11 ? 0 : 8);
        if (!z11 || TextUtils.isEmpty(this.edit.getText().toString())) {
            return;
        }
        this.shieldInputEvent = true;
        this.edit.setText((CharSequence) null);
        this.edit.clearFocus();
        ChatService chatService = this.chatService;
        if (chatService != null) {
            chatService.setDraft(getThreadId(), this.edit.getText().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int checkThreadStatus() {
        User user;
        int i10;
        ChatThread thread = getThread();
        if (thread == null || !this.globalChatHelper.isCommunityJoined(this.cid)) {
            return 1;
        }
        if (thread.status == 9 || ((user = thread.author) != null && ((i10 = user.status) == 9 || i10 == 10))) {
            return 2;
        }
        if (thread.condition == 2) {
            if (thread.type == 2) {
                return 1;
            }
        } else if (thread.membershipStatus != 1) {
            return 1;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onReplybyLongClick$2() {
        onChatInputClicked();
        scrollChatListToBottom();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateReplyMainView$0(Boolean bool) {
        if (bool.booleanValue()) {
            if (this.chatReplyMainView.getVisibility() != 0) {
                this.chatReplyMainView.setVisibility(0);
            }
        } else if (this.chatReplyMainView.getVisibility() != 8) {
            this.chatReplyMainView.setVisibility(8);
        }
    }

    private void onChatInputClicked() {
        if (getThread() != null && getThread().type == 2 && getThread().membershipStatus != 1) {
            showJoinChatDialog(true, null);
        } else {
            showChatInputLayout();
        }
    }

    private void updateSRViews() {
        boolean z6;
        boolean z10;
        ChannelUserWrapper mainChannelLocalUserWrapper;
        boolean localMicMuted;
        UserStatusData userStatusData;
        if (getView() == null) {
            return;
        }
        boolean zIsLandscape = Utils.isLandscape(getContext());
        boolean z11 = false;
        if (zIsLandscape && isAllPanelHidden() && !this.isKeyboardVisible) {
            z6 = true;
        } else {
            z6 = false;
        }
        ViewUtils.show(this.srLandscapeButtons, z6);
        ViewUtils.show(this.chatInputMain, !z6);
        ViewUtils.show(getView(), R.id.typing_user_container, !zIsLandscape);
        if (z6) {
            getView().getLayoutParams().width = -2;
        } else {
            getView().getLayoutParams().width = -1;
        }
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (mainSigChannel == null || mainSigChannel.channelType != 5 || !zIsLandscape) {
            return;
        }
        ScreenRoomService screenRoomService = (ScreenRoomService) getService("screenRoom");
        this.srLandscapeButtons.findViewById(R.id.sr_input_container).setOnClickListener(this);
        this.srLandscapeButtons.findViewById(R.id.sr_mute_view).setOnClickListener(this);
        if (mainSigChannel.joinRole == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        ViewUtils.show(this.srLandscapeButtons, R.id.sr_mute_view, z10);
        RtcService rtcService = this.rtcService;
        if (rtcService == null) {
            mainChannelLocalUserWrapper = null;
        } else {
            mainChannelLocalUserWrapper = rtcService.getMainChannelLocalUserWrapper();
        }
        if (mainChannelLocalUserWrapper != null && mainChannelLocalUserWrapper.channelUser.isHost && screenRoomService != null) {
            localMicMuted = screenRoomService.getLocalMicMuted();
        } else {
            if (mainChannelLocalUserWrapper != null && (userStatusData = mainChannelLocalUserWrapper.userStatus) != null && userStatusData.isVoiceMuted()) {
                z11 = true;
            }
            localMicMuted = z11;
        }
        CheckableImageView checkableImageView = (CheckableImageView) this.srLandscapeButtons.findViewById(R.id.mute_button);
        if (checkableImageView != null) {
            checkableImageView.setChecked(localMicMuted);
        }
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton.SwitcherAdapter
    public boolean checkThreadAvailable(View view) {
        ChatThread thread;
        User user;
        int i10;
        if (checkCommunityAvailability(view) && (thread = getThread()) != null) {
            if (thread.status != 9 && ((user = thread.author) == null || ((i10 = user.status) != 9 && i10 != 10))) {
                if (thread.condition == 2 && thread.type == 2) {
                    NVToast.makeText(getContext(), R.string.chat_author_absent, 0).show();
                } else {
                    int i11 = thread.membershipStatus;
                    if (i11 == 3) {
                        NVToast.makeText(getContext(), R.string.chat_pending_approval, 0).show();
                    } else {
                        boolean z6 = true;
                        if (i11 != 1) {
                            if (thread.type != 2) {
                                z6 = false;
                            }
                            showJoinChatDialog(z6, view);
                        } else {
                            if (!isInputButton(view.getId()) || !thread.isViewOnly() || this.chatHelper.isHostOrCoHost(thread)) {
                                return true;
                            }
                            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                            aCMAlertDialog.setMessage(R.string.chat_is_view_only);
                            aCMAlertDialog.addButton(R.string.got_it, null);
                            aCMAlertDialog.show();
                        }
                    }
                }
            } else {
                NVToast.makeText(getContext(), R.string.chat_disabled_by_moderator, 0).show();
            }
        }
        return false;
    }

    protected ChatListFragment geChatListFragment() {
        return (ChatListFragment) getFragmentManager().m0("chatList");
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton.SwitcherAdapter
    public int getValidPanelHeight() {
        int keyboardHeight = AndroidBug5497Workaround.getKeyboardHeight(getActivity());
        if (keyboardHeight > 0) {
            return Math.max(keyboardHeight, getResources().getDimensionPixelSize(R.dimen.voice_record_panel_height_min));
        }
        return 0;
    }

    public void hideAllPanels() {
        if (getView() == null) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) getView().findViewById(R.id.panel_layout);
        for (int i10 = 0; i10 < frameLayout.getChildCount(); i10++) {
            View childAt = frameLayout.getChildAt(i10);
            childAt.setVisibility(8);
            PanelHideListener panelHideListener = this.panelHideMap.get(childAt);
            if (panelHideListener != null) {
                panelHideListener.onPanelHide();
            }
        }
        this.panelHideEventDispatcher.dispatch(new Callback<PanelHideListener>() { // from class: com.narvii.chat.input.ChatInputFragment.24
            @Override // com.narvii.util.Callback
            public void call(PanelHideListener panelHideListener2) {
                panelHideListener2.onPanelHide();
            }
        });
        checkDismissMaskShown(false);
        updateBackground();
    }

    public void hideKeyboardAndPanel() {
        hideSoftKeyboard();
        hideAllPanels();
        this.chatInputOptionMenu.hide();
        checkDismissMaskShown(false);
        updateReplyMainView(Boolean.FALSE);
    }

    public boolean isAllPanelHidden() {
        if (getView() == null) {
            return true;
        }
        FrameLayout frameLayout = (FrameLayout) getView().findViewById(R.id.panel_layout);
        for (int i10 = 0; i10 < frameLayout.getChildCount(); i10++) {
            if (frameLayout.getChildAt(i10).getVisibility() == 0) {
                return false;
            }
        }
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        if (z6) {
            updateViews();
        }
    }

    public boolean onBackPressed() {
        if (!isAllPanelHidden()) {
            hideAllPanels();
            return true;
        }
        ChatWaitingListService chatWaitingListService = this.chatWaitingListService;
        if (chatWaitingListService != null && chatWaitingListService.isShowing()) {
            this.chatWaitingListService.dismiss();
            return true;
        }
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ChatMessage chatMessage;
        if (view.getId() == R.id.chat_input_dismiss_mask) {
            hideKeyboardAndPanel();
        }
        if (!checkThreadAvailable(view)) {
            return;
        }
        switch (view.getId()) {
            case R.id.chat_add /* 2131362433 */:
                Bundle bundle = new Bundle();
                bundle.putBoolean(Notification.ACTION_ADD, true);
                this.mediaPicker.setOnCustomOptionSelectedListener(new MediaPickerFragment.OnCustomOptionSelectedListener() { // from class: com.narvii.chat.input.ChatInputFragment.20
                    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    @Override // com.narvii.media.MediaPickerFragment.OnCustomOptionSelectedListener
                    public void onCustomOptionSelected(MediaPickerFragment.Option option, Bundle bundle2) {
                        Intent intent = FragmentWrapperActivity.intent(BubbleSettingFragment.class);
                        intent.putExtra(BubbleSettingFragment.KEY_CHAT_THREAD, JacksonUtils.writeAsString(ChatInputFragment.this.getThread()));
                        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ChatInputFragment.this, intent);
                    }
                });
                ArrayList arrayList = new ArrayList();
                arrayList.add(new MediaPickerFragment.Option(20, getString(R.string.chat_bubble_style), 0, 0));
                this.mediaPicker.pickMedia(this.chatService.getPhotoDir(), bundle, 0, 3, arrayList);
                break;
            case R.id.chat_button /* 2131362450 */:
            case R.id.view_only_button /* 2131365824 */:
                Utils.post(new Runnable() { // from class: com.narvii.chat.input.ChatInputFragment.21
                    @Override // java.lang.Runnable
                    public void run() {
                        ChatInputFragment.this.edit.requestFocus();
                        ChatInputFragment.this.showSoftKeyboard();
                    }
                });
                break;
            case R.id.chat_edit /* 2131362456 */:
                scrollChatListToBottom();
                break;
            case R.id.chat_send /* 2131362492 */:
                if (getThread() != null && getThread().type == 2 && this.chatService.isSendTooFast()) {
                    NVToast.makeText(getContext(), R.string.chat_slow_down, 0).show();
                    this.blockUntil = SystemClock.elapsedRealtime() + WorkRequest.MIN_BACKOFF_MILLIS;
                    updateSendBtn();
                } else {
                    if (this.mentioning) {
                        stopMentioning();
                    }
                    if (this.replying) {
                        chatMessage = this.replyMessage;
                        stopReplaing();
                    } else {
                        chatMessage = null;
                    }
                    this.messageSenderHelper.sendMessage(this.edit.getText().toString(), getMessageAttachmentNode(), (ArrayList) this.edit.getMentionedRangeList(), chatMessage);
                    logSendChatMessage("text");
                    this.tvTypingUserHelper.reportTypingEnd();
                    this.mentioning = false;
                    StringBuilder sb = this.mentionTextBuilder;
                    if (sb != null) {
                        sb.delete(0, sb.length());
                    }
                    this.edit.clear();
                    this.edit.setText((CharSequence) null);
                    FirebaseLogManager.logEvent(this, ((StatisticsService) getService("statistics")).event("Chat Message Sent").userPropInc("Message Sent Total").param("Message Type", "Text").param(EventConstants.CommentPost.TYPE, StatisticHelper.getChatThreadType(getThread(), null)).source(this.source));
                }
                break;
            case R.id.sr_input_container /* 2131365238 */:
                onChatInputClicked();
                break;
            case R.id.sr_mute_view /* 2131365242 */:
                this.menuEventDealer.toggleMute(false);
                break;
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateSRViews();
        this.mentionEnabled = !Utils.isLandscape(getContext());
        if (this.mentioning) {
            stopMentioning();
        }
        MentionedEditText mentionedEditText = this.edit;
        if (mentionedEditText != null) {
            mentionedEditText.setMentionEnabled(this.mentionEnabled);
            hideKeyboardAndPanel();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cid = ((ConfigService) getService("config")).getCommunityId();
        this.chatService = (ChatService) getService("chat");
        this.chatHelper = new ChatHelper(getContext());
        this.accountService = (AccountService) getService("account");
        this.callScreenService = (CallScreenService) getService("callScreen");
        this.rtcService = (RtcService) getService("rtc");
        ScreenRoomService screenRoomService = (ScreenRoomService) getService("screenRoom");
        this.srs = screenRoomService;
        screenRoomService.addSRPermissionListener(this);
        this.rtcService.addMyChannelUserStatusChangeListener(getThreadId(), this);
        this.rtcService.addLiveChannelChangeListener(getThreadId(), this);
        this.rtcService.addChannelUserWrapperUpdateListener(getThreadId(), this);
        this.rtcService.addWaitingListListener(getThreadId(), this);
        this.signallingChannel = this.rtcService.getMappedSignallingChannel(getThreadId());
        PushInviteHelper pushInviteHelper = (PushInviteHelper) getService("pushInvite");
        this.pushInviteHelper = pushInviteHelper;
        pushInviteHelper.addOriganerInviteListener(this);
        ChatInputMessageSenderHelper chatInputMessageSenderHelper = new ChatInputMessageSenderHelper(this, getThreadId());
        this.messageSenderHelper = chatInputMessageSenderHelper;
        chatInputMessageSenderHelper.setThread(getThread());
        ChatInputTypingUserHelper chatInputTypingUserHelper = new ChatInputTypingUserHelper(this, getThreadId());
        this.tvTypingUserHelper = chatInputTypingUserHelper;
        chatInputTypingUserHelper.setThread(getThread());
        this.globalChatHelper = new GlobalChatHelper(this);
        this.pushNotificationHelper = new PushNotificationHelper(this);
        this.vvchatHelper = new VVChatHelper(this);
        this.chatThreadCheckFragment = ChatThreadCheckFragment.getInstance(this, this, this);
        if (!isEmbedFragment()) {
            getActivity().getWindow().setSoftInputMode(2);
        }
        FragmentTransaction fragmentTransactionQ = getFragmentManager().q();
        if (bundle == null) {
            this.attachMessage = getStringParam(ATTACH_MESSAGE);
            this.attachObjStr = getStringParam(ATTACH_OBJ);
            int intParam = getIntParam(ATTACH_OBJ_TYPE);
            this.attachObjectType = intParam;
            parseObject(this.attachObjStr, intParam);
            this.showedAttachment = false;
            this.mediaPicker = new MediaPickerFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("folder", "chat");
            bundle2.putBoolean("showHQBar", true);
            bundle2.putBoolean("membershipForVideo", true);
            this.mediaPicker.setArguments(bundle2);
            fragmentTransactionQ.e(this.mediaPicker, "mediaPicker");
            this.mentionUserListFragment = new ChatMentionUserListFragment();
            Bundle bundle3 = new Bundle();
            bundle3.putString("threadId", getThreadId());
            this.mentionUserListFragment.setArguments(bundle3);
            fragmentTransactionQ.c(R.id.mentioned_user_list, this.mentionUserListFragment, "mentionUserList");
        } else {
            this.attachMessage = bundle.getString(ATTACH_MESSAGE);
            this.attachObjStr = bundle.getString(ATTACH_OBJ);
            int i10 = bundle.getInt(ATTACH_OBJ_TYPE);
            this.attachObjectType = i10;
            parseObject(this.attachObjStr, i10);
            this.showedAttachment = bundle.getBoolean("showedAttachment");
            this.mediaPicker = (MediaPickerFragment) getFragmentManager().m0("mediaPicker");
            this.mentionUserListFragment = (ChatMentionUserListFragment) getFragmentManager().m0("mentionUserList");
        }
        this.mediaPicker.addOnResultListener(this);
        this.mentionUserListFragment.setMentionRelatedUsersCallback(this);
        fragmentTransactionQ.r(this.mentionUserListFragment).j();
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.narvii.chat.input.ChatInputFragment.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                ChatInputFragment.this.updateViews();
            }
        };
        this.requireAccountReceiver = broadcastReceiver;
        registerLocalReceiver(broadcastReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.chatWaitingListService = (ChatWaitingListService) getService("chatWaitingList");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @androidx.annotation.Nullable ViewGroup viewGroup, @androidx.annotation.Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.chat_input_layout_new, viewGroup, false);
    }

    @Override // com.narvii.chat.video.overlay.VVchatPermissionInviteListener
    public void onInvited() {
        if (isAdded()) {
            if (getParentFragment() instanceof ChatFragment) {
                ((ChatFragment) getParentFragment()).sendGetThreadReqeust();
            }
            updateRightView(this.isKeyboardVisible);
            final AlertDialog alertDialog = new AlertDialog(getContext());
            alertDialog.setContentView(R.layout.dialog_organizer_invite);
            alertDialog.findViewById(R.id.ignore).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.input.ChatInputFragment.14
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    alertDialog.dismiss();
                }
            });
            alertDialog.findViewById(R.id.join).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.input.ChatInputFragment.15
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    alertDialog.dismiss();
                    ChatInputFragment.this.chatThreadCheckFragment.sendRequestToJoinThreadRequest(null);
                }
            });
            alertDialog.show();
        }
    }

    @Override // com.narvii.chat.input.MentionedEditText.OnMentionInputListener
    public void onMentionCharacterInput(final String str, final int i10) {
        ChatThread thread = getThread();
        if (thread != null && thread.type == 0) {
            return;
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.input.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f1957a.lambda$onMentionCharacterInput$1(str, i10);
            }
        }, 10L);
    }

    @Override // com.narvii.chat.input.ChatMentionUserListFragment.MentionRelatedUsersCallback
    public void onMentionedUserSelected(@NotNull User user) {
        String strSubstring;
        LogEvent.clickWildcardBuilder(this).area("MentionUserList").send();
        getFragmentManager().q().r(this.mentionUserListFragment).k();
        this.mentioning = false;
        MentionedEditText mentionedEditText = this.edit;
        String strUid = user.uid();
        String strNickname = user.nickname();
        int i10 = this.mentionTextStartIndex;
        if (this.mentionTextBuilder.length() > 1) {
            strSubstring = this.mentionTextBuilder.substring(1);
        } else {
            strSubstring = null;
        }
        mentionedEditText.mentionUser(strUid, strNickname, i10, strSubstring);
        StringBuilder sb = this.mentionTextBuilder;
        sb.delete(0, sb.length());
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        ChatService chatService;
        super.onPause();
        this.tvTypingUserHelper.reportTypingEnd();
        if (this.edit != null && (chatService = this.chatService) != null) {
            chatService.setDraft(getThreadId(), this.edit.getText().toString());
        }
        MentionedEditText mentionedEditText = this.edit;
        if (mentionedEditText != null && StringUtils.isStringNotEquals(mentionedEditText.getText().toString(), this.oldDraft)) {
            ThreadUpdateObject threadUpdateObject = new ThreadUpdateObject();
            threadUpdateObject.chatThread = getThread();
            threadUpdateObject.action = 2;
            sendNotification(new Notification("update", threadUpdateObject));
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(ATTACH_MESSAGE, this.attachMessage);
        bundle.putString(ATTACH_OBJ, this.attachObjStr);
        bundle.putInt(ATTACH_OBJ_TYPE, this.attachObjectType);
        bundle.putBoolean("showedAttachment", this.showedAttachment);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        MentionedEditText mentionedEditText = this.edit;
        if (mentionedEditText != null && StringUtils.isStringNotEquals(mentionedEditText.getText().toString(), this.oldDraft)) {
            this.chatService.storeDraft();
        }
    }

    public void onUserMentionedByLongClick(@NotNull User user) {
        getFragmentManager().q().r(this.mentionUserListFragment).k();
        this.mentioning = false;
        if (this.mentionTextBuilder.length() > 0) {
            StringBuilder sb = this.mentionTextBuilder;
            sb.delete(0, sb.length());
        }
        this.edit.markLongClickMention();
        this.edit.getText().insert(this.edit.getSelectionStart(), MentionedEditText.DEFAULT_METION_TAG);
        this.edit.mentionUser(user.uid(), user.nickname());
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @androidx.annotation.Nullable Bundle bundle) {
        ChatService chatService;
        super.onViewCreated(view, bundle);
        this.mentionEnabled = !Utils.isLandscape(getContext());
        view.setOnClickListener(null);
        this.chatInputMain = view.findViewById(R.id.chat_input_main);
        this.chatInputBlur = view.findViewById(R.id.chat_input_blur);
        this.srLandscapeButtons = view.findViewById(R.id.sr_landscape_buttons);
        ChatInputOptionMenu chatInputOptionMenu = (ChatInputOptionMenu) getActivity().findViewById(R.id.chat_input_option_menu_view);
        this.chatInputOptionMenu = chatInputOptionMenu;
        chatInputOptionMenu.setOnOptionMenuClickListener(this.menuEventDealer);
        this.chatInputOptionMenu.setThreadId(getThreadId());
        this.chatInputOptionMenu.setThread(getThread());
        View viewFindViewById = getActivity().findViewById(R.id.chat_input_dismiss_mask);
        this.chatInputMask = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        TintButton tintButton = (TintButton) view.findViewById(R.id.chat_add);
        this.addButton = tintButton;
        tintButton.setOnClickListener(this);
        this.chatReplyMainView = view.findViewById(R.id.reply_main);
        ChatReplyLayout chatReplyLayout = (ChatReplyLayout) view.findViewById(R.id.reply_layout);
        this.chatReplyLayout = chatReplyLayout;
        chatReplyLayout.setOnChatReplyClickListener(new ChatReplyLayout.OnClickListener() { // from class: com.narvii.chat.input.ChatInputFragment.2
            @Override // com.narvii.chat.ChatReplyLayout.OnClickListener
            public void onItemClick(@NotNull View view2, @Nullable ChatMessage chatMessage) {
            }

            @Override // com.narvii.chat.ChatReplyLayout.OnClickListener
            public void onCancelClick(@NotNull View view2, @Nullable ChatMessage chatMessage) {
                ChatInputFragment.this.stopReplaing();
            }
        });
        MentionedEditText mentionedEditText = (MentionedEditText) view.findViewById(R.id.chat_edit);
        this.edit = mentionedEditText;
        mentionedEditText.setOnMentionInputListener(this);
        this.edit.setMentionEnabled(this.mentionEnabled);
        this.edit.addTextChangedListener(new TextWatcher() { // from class: com.narvii.chat.input.ChatInputFragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (ChatInputFragment.this.shieldInputEvent) {
                    ChatInputFragment.this.shieldInputEvent = false;
                    return;
                }
                ChatInputFragment chatInputFragment = ChatInputFragment.this;
                if (chatInputFragment.edit != null && !chatInputFragment.isKeyboardVisible) {
                    ChatInputFragment.this.showSoftKeyboard();
                }
                ChatInputFragment.this.updateViews();
                ChatInputFragment.this.tvTypingUserHelper.checkInputTypingStatus(editable);
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                if (ChatInputFragment.this.mentioning) {
                    if (i10 < ChatInputFragment.this.mentionTextStartIndex || i10 > ChatInputFragment.this.mentionTextStartIndex + ChatInputFragment.this.mentionTextBuilder.length()) {
                        ChatInputFragment.this.stopMentioning();
                        return;
                    }
                    int i13 = i10 - ChatInputFragment.this.mentionTextStartIndex;
                    if (i10 == ChatInputFragment.this.mentionTextStartIndex) {
                        ChatInputFragment.this.mentionTextBuilder.replace(i13, i11 + i13, charSequence.toString().substring(i10, i12 + i10));
                    } else if (i11 == 0) {
                        ChatInputFragment.this.mentionTextBuilder.insert(i13, charSequence.toString().substring(i10, i12 + i10));
                    } else if (i12 == 0) {
                        ChatInputFragment.this.mentionTextBuilder.delete(i13, i11 + i13);
                    } else {
                        ChatInputFragment.this.mentionTextBuilder.replace(i13, i11 + i13, charSequence.toString().substring(i10, i12 + i10));
                    }
                    if (ChatInputFragment.this.mentionTextBuilder.length() != 0) {
                        ChatInputFragment.this.mentionUserListFragment.fetchMentionRelatedUserList(ChatInputFragment.this.mentionTextBuilder.length() > 1 ? ChatInputFragment.this.mentionTextBuilder.substring(1) : null, false);
                    } else {
                        ChatInputFragment.this.mentioning = false;
                        ChatInputFragment.this.getFragmentManager().q().r(ChatInputFragment.this.mentionUserListFragment).k();
                    }
                }
            }
        });
        this.edit.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.narvii.chat.input.ChatInputFragment.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view2, boolean z6) {
                if (z6) {
                    ChatInputFragment.this.scrollChatListToBottom();
                }
            }
        });
        this.edit.setFilters(new InputFilter[]{new InputFilter() { // from class: com.narvii.chat.input.ChatInputFragment.5
            private static final int MAX_CHARACTER = 2000;

            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
                int length = 2000 - (spanned.length() - (i13 - i12));
                int i14 = i11 - i10;
                if (length < i14) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(ChatInputFragment.this.getContext());
                    aCMAlertDialog.setMessage(ChatInputFragment.this.getString(R.string.chat_max_char_hint, 2000));
                    aCMAlertDialog.addButton(R.string.got_it, null);
                    aCMAlertDialog.show();
                }
                if (length <= 0) {
                    return "";
                }
                if (length >= i14) {
                    return null;
                }
                int i15 = length + i10;
                if (Character.isHighSurrogate(charSequence.charAt(i15 - 1)) && (i15 = i15 - 1) == i10) {
                    return "";
                }
                return charSequence.subSequence(i10, i15);
            }
        }});
        this.edit.setOnClickListener(this);
        SoftKeyboard.observeKeyboard(this.edit, new Callback<Boolean>() { // from class: com.narvii.chat.input.ChatInputFragment.6
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                ChatInputFragment.this.isKeyboardVisible = bool.booleanValue();
                if (!ChatInputFragment.this.isKeyboardVisible && ChatInputFragment.this.mentioning) {
                    ChatInputFragment.this.stopMentioning();
                }
                ChatInputFragment chatInputFragment = ChatInputFragment.this;
                chatInputFragment.updateRightView(chatInputFragment.isKeyboardVisible);
                ChatInputFragment.this.updateBackground();
                Boolean bool2 = Boolean.TRUE;
                if (bool == bool2) {
                    ChatInputFragment.this.chatInputOptionMenu.hide();
                    ChatInputFragment.this.checkDismissMaskShown(false);
                }
                SwitchKeyboard switchKeyboard = (SwitchKeyboard) ChatInputFragment.this.switchingKeyboard.getAndRemove();
                if (switchKeyboard == null || switchKeyboard.view == null) {
                    ChatInputFragment chatInputFragment2 = ChatInputFragment.this;
                    chatInputFragment2.updateReplyMainView(Boolean.valueOf(chatInputFragment2.isKeyboardVisible));
                    ChatInputFragment.this.hideAllPanels();
                } else if (bool == Boolean.FALSE && switchKeyboard.openKeyboard == bool.booleanValue()) {
                    ChatInputFragment.this.showPanel(switchKeyboard.view);
                } else if (bool == bool2) {
                    switchKeyboard.view.setVisibility(8);
                } else {
                    ChatInputFragment chatInputFragment3 = ChatInputFragment.this;
                    chatInputFragment3.updateReplyMainView(Boolean.valueOf(chatInputFragment3.isKeyboardVisible));
                }
            }
        });
        TextView textView = (TextView) view.findViewById(R.id.chat_button);
        this.chatInputButton = textView;
        textView.setOnClickListener(this);
        TextView textView2 = (TextView) view.findViewById(R.id.view_only_button);
        this.viewOnlyInputButton = textView2;
        textView2.setOnClickListener(this);
        View viewFindViewById2 = view.findViewById(R.id.sticker_panel);
        if (viewFindViewById2 != null) {
            ChatInputPanelSwitcherButton chatInputPanelSwitcherButton = (ChatInputPanelSwitcherButton) view.findViewById(R.id.sticker_button);
            this.stickerButton = chatInputPanelSwitcherButton;
            if (chatInputPanelSwitcherButton != null && bundle == null && getStringParam("stickerCollectionId") != null) {
                Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.input.ChatInputFragment.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ChatInputFragment.this.stickerButton.isEnabled()) {
                            ChatInputFragment.this.stickerButton.performClick();
                        } else {
                            if (ChatInputFragment.this.chatInputButton == null || ChatInputFragment.this.chatInputButton.getVisibility() != 0) {
                                return;
                            }
                            ChatInputFragment.this.chatInputButton.performClick();
                        }
                    }
                }, 250L);
            }
            StickerPickerTabFragment stickerPickerTabFragment = (StickerPickerTabFragment) getFragmentManager().m0("stickPicker");
            this.stickerPickerTabFragment = stickerPickerTabFragment;
            if (stickerPickerTabFragment == null) {
                this.stickerPickerTabFragment = new StickerPickerTabFragment();
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("tabBottom", true);
                bundle2.putString("source", "Sticker Keyboard");
                bundle2.putString("collectionId", getStringParam("stickerCollectionId"));
                this.stickerPickerTabFragment.setArguments(bundle2);
                getFragmentManager().q().c(R.id.sticker_panel, this.stickerPickerTabFragment, "stickPicker").k();
            }
            this.stickerPickerTabFragment.setStickerSelectListener(this);
            PanelHideAdapter panelHideAdapter = new PanelHideAdapter() { // from class: com.narvii.chat.input.ChatInputFragment.8
                @Override // com.narvii.chat.input.ChatInputFragment.PanelHideAdapter, com.narvii.chat.input.ChatInputFragment.PanelHideListener
                public void onPanelHide() {
                    ChatInputFragment.this.stickerButton.showIcon();
                    if (ChatInputFragment.this.stickerPickerTabFragment instanceof NVFragment) {
                        ChatInputFragment.this.stickerPickerTabFragment.onLogLevelActiveChanged(false);
                    }
                }

                @Override // com.narvii.chat.input.ChatInputFragment.PanelHideAdapter, com.narvii.chat.input.ChatInputFragment.PanelHideListener
                public void onPanelShow() {
                    if (ChatInputFragment.this.stickerPickerTabFragment instanceof NVFragment) {
                        ChatInputFragment.this.stickerPickerTabFragment.onLogLevelActiveChanged(true);
                    }
                    Utils.post(new Runnable() { // from class: com.narvii.chat.input.ChatInputFragment.8.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ChatInputFragment.this.stickerPickerTabFragment != null) {
                                ChatInputFragment.this.stickerPickerTabFragment.correctScrollTab();
                            }
                        }
                    });
                }
            };
            this.stickerButton.bindPanelLayout(viewFindViewById2, this.edit, this);
            this.stickerButton.setPanelHideListener(panelHideAdapter);
            this.panelHideMap.put(viewFindViewById2, panelHideAdapter);
        }
        TintButton tintButton2 = (TintButton) view.findViewById(R.id.chat_send);
        this.sendButton = tintButton2;
        tintButton2.setOnClickListener(this);
        this.sendButtonContainer = view.findViewById(R.id.chat_send_container);
        this.chatStickerButtonView = view.findViewById(R.id.chat_sticker_button);
        this.chatAddButtonView = view.findViewById(R.id.chat_add_button);
        ChatInputRightViewContainer chatInputRightViewContainer = (ChatInputRightViewContainer) view.findViewById(R.id.chat_right_button_container);
        this.chatRightButtonContainer = chatInputRightViewContainer;
        chatInputRightViewContainer.setThreadId(getThreadId());
        this.chatRightButtonContainer.setThread(getThread());
        this.chatRightButtonContainer.setIsInvite(getBooleanParam("invite"));
        this.chatRightButtonContainer.setOnClickRightViewListener(this.menuEventDealer);
        this.chatRightButtonContainer.setEmbedFragment(isEmbedFragment());
        AudioRecordLayout audioRecordLayout = (AudioRecordLayout) view.findViewById(R.id.audio_record_layout);
        if (audioRecordLayout != null) {
            final AudioBoardLayout audioBoardLayout = (AudioBoardLayout) view.findViewById(R.id.voice_board_layout);
            final ChatInputPanelVoiceButton chatInputPanelVoiceButton = (ChatInputPanelVoiceButton) view.findViewById(R.id.voice_button);
            PanelHideAdapter panelHideAdapter2 = new PanelHideAdapter() { // from class: com.narvii.chat.input.ChatInputFragment.9
                @Override // com.narvii.chat.input.ChatInputFragment.PanelHideAdapter, com.narvii.chat.input.ChatInputFragment.PanelHideListener
                public void onPanelHide() {
                    if (ChatInputFragment.this.checkThreadStatus() == 0) {
                        ChatInputFragment.this.edit.setVisibility(0);
                    }
                    audioBoardLayout.setVisibility(8);
                    chatInputPanelVoiceButton.showIcon();
                    ChatInputFragment chatInputFragment = ChatInputFragment.this;
                    chatInputFragment.updateRightView(chatInputFragment.isKeyboardVisible);
                }

                @Override // com.narvii.chat.input.ChatInputFragment.PanelHideAdapter, com.narvii.chat.input.ChatInputFragment.PanelHideListener
                public void onPanelShow() {
                    super.onPanelShow();
                    ChatInputFragment.this.edit.setVisibility(8);
                    audioBoardLayout.setVisibility(0);
                    ChatInputFragment chatInputFragment = ChatInputFragment.this;
                    chatInputFragment.updateRightView(chatInputFragment.isKeyboardVisible);
                }
            };
            chatInputPanelVoiceButton.bindPanelLayout(audioRecordLayout, this.edit, this);
            chatInputPanelVoiceButton.setPanelHideListener(panelHideAdapter2);
            audioRecordLayout.setFragment(this);
            audioRecordLayout.addOnStatusChangeListener(audioBoardLayout);
            audioRecordLayout.addOnRecordTimeChangeListener(audioBoardLayout);
            audioRecordLayout.setRecordFinishListener(new RecordFinishListener() { // from class: com.narvii.chat.input.ChatInputFragment.10
                @Override // com.narvii.chat.RecordFinishListener
                public void onRecordFinish(Uri uri, long j6, int i10) {
                    Media media = new Media();
                    media.type = i10;
                    media.url = uri.toString();
                    ChatInputFragment.this.messageSenderHelper.sendVoiceMessage(media, j6, ChatInputFragment.this.getMessageAttachmentNode());
                    ChatInputFragment.this.logSendChatMessage("voice");
                    FirebaseLogManager.logEvent(ChatInputFragment.this, ((StatisticsService) ChatInputFragment.this.getService("statistics")).event("Chat Message Sent").userPropInc("Message Sent Total").param("Message Type", "Voice Note").param(EventConstants.CommentPost.TYPE, StatisticHelper.getChatThreadType(ChatInputFragment.this.getThread(), null)).source(ChatInputFragment.this.source));
                }
            });
            audioRecordLayout.addRecordInfoListener(audioBoardLayout);
            audioRecordLayout.addRecordInfoListener(new RecordInfoListener() { // from class: com.narvii.chat.input.ChatInputFragment.11
                @Override // com.narvii.chat.RecordInfoListener
                public void onBeyondMaxOver() {
                }

                @Override // com.narvii.chat.RecordInfoListener
                public void onMessageTooShort() {
                }

                @Override // com.narvii.chat.RecordInfoListener
                public void onRecordCancel() {
                }

                @Override // com.narvii.chat.RecordInfoListener
                public void onRecordEnd() {
                }

                @Override // com.narvii.chat.RecordInfoListener
                public void onBeyondMaxDuration() {
                    ChatInputFragment.this.tvTypingUserHelper.reportRecordingEnd();
                }

                @Override // com.narvii.chat.RecordInfoListener
                public void onRecordStart(long j6) {
                    ChatInputFragment.this.tvTypingUserHelper.reportRecordingStart();
                }
            });
            audioRecordLayout.addRecordEventFinishListener(new RecordEventFinishListener() { // from class: com.narvii.chat.input.ChatInputFragment.12
                @Override // com.narvii.chat.RecordEventFinishListener
                public void onRecordEnd() {
                    ChatInputFragment.this.tvTypingUserHelper.reportRecordingEnd();
                }
            });
            this.panelHideMap.put(audioRecordLayout, panelHideAdapter2);
        }
        TextView textView3 = (TextView) view.findViewById(R.id.typing_user);
        this.tvTypingUser = textView3;
        this.tvTypingUserHelper.linkLivelayer(textView3, this.edit);
        if (getBooleanParam("showKeyboard")) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.input.ChatInputFragment.13
                @Override // java.lang.Runnable
                public void run() {
                    if (ChatInputFragment.this.chatInputButton != null && ChatInputFragment.this.chatInputButton.getVisibility() == 0) {
                        ChatInputFragment.this.chatInputButton.performClick();
                    } else if (ChatInputFragment.this.viewOnlyInputButton == null || ChatInputFragment.this.viewOnlyInputButton.getVisibility() != 0) {
                        ChatInputFragment.this.showSoftKeyboard();
                    } else {
                        ChatInputFragment.this.viewOnlyInputButton.performClick();
                    }
                }
            }, 500L);
        }
        if (bundle == null && (chatService = this.chatService) != null) {
            String draft = chatService.getDraft(getThreadId());
            this.oldDraft = draft;
            if (!TextUtils.isEmpty(draft)) {
                this.edit.setText(this.oldDraft);
                MentionedEditText mentionedEditText2 = this.edit;
                mentionedEditText2.setSelection(mentionedEditText2.length());
            }
        }
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton.SwitcherAdapter
    public void scrollChatListToBottom() {
        ChatListFragment chatListFragmentGeChatListFragment;
        if (getFragmentManager() == null || (chatListFragmentGeChatListFragment = geChatListFragment()) == null) {
            return;
        }
        chatListFragmentGeChatListFragment.scrollToBottom();
    }

    public void updateBackground() {
        if (getView() == null) {
            return;
        }
        if (isAllPanelHidden() && !this.isKeyboardVisible) {
            this.edit.setBackgroundResource(R.drawable.chat_input_edit_round_normal);
            this.edit.setTextColor(-1);
            this.edit.setHintTextColor(-1291845633);
            this.chatInputBlur.setVisibility(8);
            return;
        }
        this.edit.setBackgroundResource(R.drawable.chat_input_edit_round_high_light);
        this.edit.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.edit.setHintTextColor(-5197903);
        this.chatInputBlur.setVisibility(0);
    }
}
