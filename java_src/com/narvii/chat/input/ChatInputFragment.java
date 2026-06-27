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
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewCompat;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
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
import com.narvii.chat.input.ChatInputOptionMenu;
import com.narvii.chat.input.ChatInputPanelSwitcherButton;
import com.narvii.chat.input.ChatInputRightViewContainer;
import com.narvii.chat.input.ChatMentionUserListFragment;
import com.narvii.chat.input.ChatThreadCheckFragment;
import com.narvii.chat.input.MentionedEditText;
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
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.Comment;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
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
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.statistics.TmpValue;
import com.narvii.video.ui.UserStatusData;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.TintButton;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public class ChatInputFragment extends NVFragment implements View.OnClickListener, MediaPickerFragment.OnResultListener, StickerSelectListener, ChatInputPanelSwitcherButton.SwitcherAdapter, MyChannelUserStatusChangeListener, LiveChannelChangeListener, VVchatPermissionInviteListener, SRPermissionActionChangeListener, ChannelUserWrapperUpdateListener, WaitingListListener, MentionedEditText.OnMentionInputListener, ChatMentionUserListFragment.MentionRelatedUsersCallback, ThreadInfoHost, ChatThreadCheckFragment.LiveChatJoinEventListener, ChatThreadCheckFragment.LiveChatCheckData {
    private static final String ATTACH_MESSAGE = "attachMessage";
    private static final String ATTACH_OBJ = "attachObj";
    private static final String ATTACH_OBJ_ID = "attachObjId";
    private static final String ATTACH_OBJ_TYPE = "attachObjType";
    public static final String KEY_AUTO_CHECK = "autoCheckStrike";
    private static final int REQUEST_CODE_PICKERAVATAR = 201;
    private AccountService accountService;
    private View adBanner;
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

    private boolean isInputButton(int i) {
        return i == R.id.sticker_button || i == R.id.chat_edit || i == R.id.voice_button || i == R.id.chat_add || i == R.id.chat_send || i == R.id.chat_button || i == R.id.view_only_button;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cid = ((ConfigService) getService("config")).getCommunityId();
        this.chatService = (ChatService) getService("chat");
        this.chatHelper = new ChatHelper(getContext());
        this.accountService = (AccountService) getService("account");
        this.callScreenService = (CallScreenService) getService("callScreen");
        this.rtcService = (RtcService) getService("rtc");
        this.srs = (ScreenRoomService) getService("screenRoom");
        this.srs.addSRPermissionListener(this);
        this.rtcService.addMyChannelUserStatusChangeListener(getThreadId(), this);
        this.rtcService.addLiveChannelChangeListener(getThreadId(), this);
        this.rtcService.addChannelUserWrapperUpdateListener(getThreadId(), this);
        this.rtcService.addWaitingListListener(getThreadId(), this);
        this.signallingChannel = this.rtcService.getMappedSignallingChannel(getThreadId());
        this.pushInviteHelper = (PushInviteHelper) getService("pushInvite");
        this.pushInviteHelper.addOriganerInviteListener(this);
        this.messageSenderHelper = new ChatInputMessageSenderHelper(this, getThreadId());
        this.messageSenderHelper.setThread(getThread());
        this.tvTypingUserHelper = new ChatInputTypingUserHelper(this, getThreadId());
        this.tvTypingUserHelper.setThread(getThread());
        this.globalChatHelper = new GlobalChatHelper(this);
        this.pushNotificationHelper = new PushNotificationHelper(this);
        this.vvchatHelper = new VVChatHelper(this);
        this.chatThreadCheckFragment = ChatThreadCheckFragment.getInstance(this, this, this);
        if (!isEmbedFragment()) {
            getActivity().getWindow().setSoftInputMode(2);
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        if (bundle == null) {
            this.attachMessage = getStringParam(ATTACH_MESSAGE);
            this.attachObjStr = getStringParam(ATTACH_OBJ);
            this.attachObjectType = getIntParam(ATTACH_OBJ_TYPE);
            parseObject(this.attachObjStr, this.attachObjectType);
            this.showedAttachment = false;
            this.mediaPicker = new MediaPickerFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("folder", "chat");
            bundle2.putBoolean("showHQBar", true);
            bundle2.putBoolean("membershipForVideo", true);
            this.mediaPicker.setArguments(bundle2);
            fragmentTransactionBeginTransaction.add(this.mediaPicker, "mediaPicker");
            this.mentionUserListFragment = new ChatMentionUserListFragment();
            Bundle bundle3 = new Bundle();
            bundle3.putString("threadId", getThreadId());
            this.mentionUserListFragment.setArguments(bundle3);
            fragmentTransactionBeginTransaction.add(R.id.mentioned_user_list, this.mentionUserListFragment, "mentionUserList");
        } else {
            this.attachMessage = bundle.getString(ATTACH_MESSAGE);
            this.attachObjStr = bundle.getString(ATTACH_OBJ);
            this.attachObjectType = bundle.getInt(ATTACH_OBJ_TYPE);
            parseObject(this.attachObjStr, this.attachObjectType);
            this.showedAttachment = bundle.getBoolean("showedAttachment");
            this.mediaPicker = (MediaPickerFragment) getFragmentManager().findFragmentByTag("mediaPicker");
            this.mentionUserListFragment = (ChatMentionUserListFragment) getFragmentManager().findFragmentByTag("mentionUserList");
        }
        this.mediaPicker.addOnResultListener(this);
        this.mentionUserListFragment.setMentionRelatedUsersCallback(this);
        fragmentTransactionBeginTransaction.hide(this.mentionUserListFragment).commit();
        this.requireAccountReceiver = new BroadcastReceiver() { // from class: com.narvii.chat.input.ChatInputFragment.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                ChatInputFragment.this.updateViews();
            }
        };
        registerLocalReceiver(this.requireAccountReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.chatWaitingListService = (ChatWaitingListService) getService("chatWaitingList");
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(ATTACH_MESSAGE, this.attachMessage);
        bundle.putString(ATTACH_OBJ, this.attachObjStr);
        bundle.putInt(ATTACH_OBJ_TYPE, this.attachObjectType);
        bundle.putBoolean("showedAttachment", this.showedAttachment);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.chat_input_layout_new, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        ChatService chatService;
        super.onViewCreated(view, bundle);
        ConfigService configService = (ConfigService) getService("config");
        if (NVApplication.CLIENT_TYPE == 101 || configService.getCommunityId() != 0) {
        }
        this.mentionEnabled = !Utils.isLandscape(getContext());
        view.setOnClickListener(null);
        this.chatInputMain = view.findViewById(R.id.chat_input_main);
        this.chatInputBlur = view.findViewById(R.id.chat_input_blur);
        this.srLandscapeButtons = view.findViewById(R.id.sr_landscape_buttons);
        this.chatInputOptionMenu = (ChatInputOptionMenu) getActivity().findViewById(R.id.chat_input_option_menu_view);
        this.chatInputOptionMenu.setOnOptionMenuClickListener(this.menuEventDealer);
        this.chatInputOptionMenu.setThreadId(getThreadId());
        this.chatInputOptionMenu.setThread(getThread());
        this.chatInputMask = getActivity().findViewById(R.id.chat_input_dismiss_mask);
        this.chatInputMask.setOnClickListener(this);
        this.addButton = (TintButton) view.findViewById(R.id.chat_add);
        this.addButton.setOnClickListener(this);
        this.adBanner = view.findViewById(R.id.ad_container);
        this.chatReplyMainView = view.findViewById(R.id.reply_main);
        this.chatReplyLayout = (ChatReplyLayout) view.findViewById(R.id.reply_layout);
        this.chatReplyLayout.setOnChatReplyClickListener(new ChatReplyLayout.OnClickListener() { // from class: com.narvii.chat.input.ChatInputFragment.2
            @Override // com.narvii.chat.ChatReplyLayout.OnClickListener
            public void onItemClick(View view2, ChatMessage chatMessage) {
            }

            @Override // com.narvii.chat.ChatReplyLayout.OnClickListener
            public void onCancelClick(View view2, ChatMessage chatMessage) {
                ChatInputFragment.this.stopReplaing();
            }
        });
        this.edit = (MentionedEditText) view.findViewById(R.id.chat_edit);
        this.edit.setOnMentionInputListener(this);
        this.edit.setMentionEnabled(this.mentionEnabled);
        this.edit.addTextChangedListener(new TextWatcher() { // from class: com.narvii.chat.input.ChatInputFragment.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (ChatInputFragment.this.mentioning) {
                    if (i < ChatInputFragment.this.mentionTextStartIndex || i > ChatInputFragment.this.mentionTextStartIndex + ChatInputFragment.this.mentionTextBuilder.length()) {
                        ChatInputFragment.this.stopMentioning();
                        return;
                    }
                    int i4 = i - ChatInputFragment.this.mentionTextStartIndex;
                    if (i == ChatInputFragment.this.mentionTextStartIndex) {
                        ChatInputFragment.this.mentionTextBuilder.replace(i4, i2 + i4, charSequence.toString().substring(i, i3 + i));
                    } else if (i2 == 0) {
                        ChatInputFragment.this.mentionTextBuilder.insert(i4, charSequence.toString().substring(i, i3 + i));
                    } else if (i3 == 0) {
                        ChatInputFragment.this.mentionTextBuilder.delete(i4, i2 + i4);
                    } else {
                        ChatInputFragment.this.mentionTextBuilder.replace(i4, i2 + i4, charSequence.toString().substring(i, i3 + i));
                    }
                    if (ChatInputFragment.this.mentionTextBuilder.length() == 0) {
                        ChatInputFragment.this.mentioning = false;
                        ChatInputFragment.this.getFragmentManager().beginTransaction().hide(ChatInputFragment.this.mentionUserListFragment).commitAllowingStateLoss();
                    } else {
                        ChatInputFragment.this.mentionUserListFragment.fetchMentionRelatedUserList(ChatInputFragment.this.mentionTextBuilder.length() > 1 ? ChatInputFragment.this.mentionTextBuilder.substring(1) : null, false);
                    }
                }
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
        });
        this.edit.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.narvii.chat.input.ChatInputFragment.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view2, boolean z) {
                if (z) {
                    ChatInputFragment.this.scrollChatListToBottom();
                }
            }
        });
        this.edit.setFilters(new InputFilter[]{new InputFilter() { // from class: com.narvii.chat.input.ChatInputFragment.5
            private static final int MAX_CHARACTER = 2000;

            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                int length = 2000 - (spanned.length() - (i4 - i3));
                int i5 = i2 - i;
                if (length < i5) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(ChatInputFragment.this.getContext());
                    aCMAlertDialog.setMessage(ChatInputFragment.this.getString(R.string.chat_max_char_hint, 2000));
                    aCMAlertDialog.addButton(R.string.got_it, null);
                    aCMAlertDialog.show();
                }
                if (length <= 0) {
                    return "";
                }
                if (length >= i5) {
                    return null;
                }
                int i6 = length + i;
                return (Character.isHighSurrogate(charSequence.charAt(i6 + (-1))) && (i6 = i6 + (-1)) == i) ? "" : charSequence.subSequence(i, i6);
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
                if (bool == Boolean.TRUE) {
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
                } else if (bool == Boolean.TRUE) {
                    switchKeyboard.view.setVisibility(8);
                } else {
                    ChatInputFragment chatInputFragment3 = ChatInputFragment.this;
                    chatInputFragment3.updateReplyMainView(Boolean.valueOf(chatInputFragment3.isKeyboardVisible));
                }
            }
        });
        this.chatInputButton = (TextView) view.findViewById(R.id.chat_button);
        this.chatInputButton.setOnClickListener(this);
        this.viewOnlyInputButton = (TextView) view.findViewById(R.id.view_only_button);
        this.viewOnlyInputButton.setOnClickListener(this);
        View viewFindViewById = view.findViewById(R.id.sticker_panel);
        if (viewFindViewById != null) {
            this.stickerButton = (ChatInputPanelSwitcherButton) view.findViewById(R.id.sticker_button);
            if (this.stickerButton != null && bundle == null && getStringParam("stickerCollectionId") != null) {
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
            this.stickerPickerTabFragment = (StickerPickerTabFragment) getFragmentManager().findFragmentByTag("stickPicker");
            if (this.stickerPickerTabFragment == null) {
                this.stickerPickerTabFragment = new StickerPickerTabFragment();
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("tabBottom", true);
                bundle2.putString(CommentListFragment.COMMENT_KEY_SOURCE, "Sticker Keyboard");
                bundle2.putString("collectionId", getStringParam("stickerCollectionId"));
                this.stickerPickerTabFragment.setArguments(bundle2);
                getFragmentManager().beginTransaction().add(R.id.sticker_panel, this.stickerPickerTabFragment, "stickPicker").commitAllowingStateLoss();
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
            this.stickerButton.bindPanelLayout(viewFindViewById, this.edit, this);
            this.stickerButton.setPanelHideListener(panelHideAdapter);
            this.panelHideMap.put(viewFindViewById, panelHideAdapter);
        }
        this.sendButton = (TintButton) view.findViewById(R.id.chat_send);
        this.sendButton.setOnClickListener(this);
        this.sendButtonContainer = view.findViewById(R.id.chat_send_container);
        this.chatStickerButtonView = view.findViewById(R.id.chat_sticker_button);
        this.chatAddButtonView = view.findViewById(R.id.chat_add_button);
        this.chatRightButtonContainer = (ChatInputRightViewContainer) view.findViewById(R.id.chat_right_button_container);
        this.chatRightButtonContainer.setThreadId(getThreadId());
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
                public void onRecordFinish(Uri uri, long j, int i) {
                    Media media = new Media();
                    media.type = i;
                    media.url = uri.toString();
                    ChatInputFragment.this.messageSenderHelper.sendVoiceMessage(media, j, ChatInputFragment.this.getMessageAttachmentNode());
                    ChatInputFragment.this.logSendChatMessage("voice");
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
                public void onRecordStart(long j) {
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
        this.tvTypingUser = (TextView) view.findViewById(R.id.typing_user);
        this.tvTypingUserHelper.linkLivelayer(this.tvTypingUser, this.edit);
        if (getBooleanParam("showKeyboard")) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.input.ChatInputFragment.13
                @Override // java.lang.Runnable
                public void run() {
                    if (ChatInputFragment.this.chatInputButton == null || ChatInputFragment.this.chatInputButton.getVisibility() != 0) {
                        if (ChatInputFragment.this.viewOnlyInputButton == null || ChatInputFragment.this.viewOnlyInputButton.getVisibility() != 0) {
                            ChatInputFragment.this.showSoftKeyboard();
                            return;
                        } else {
                            ChatInputFragment.this.viewOnlyInputButton.performClick();
                            return;
                        }
                    }
                    ChatInputFragment.this.chatInputButton.performClick();
                }
            }, 500L);
        }
        if (bundle != null || (chatService = this.chatService) == null) {
            return;
        }
        this.oldDraft = chatService.getDraft(getThreadId());
        if (TextUtils.isEmpty(this.oldDraft)) {
            return;
        }
        this.edit.setText(this.oldDraft);
        MentionedEditText mentionedEditText = this.edit;
        mentionedEditText.setSelection(mentionedEditText.length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateReplyMainView(final Boolean bool) {
        if (!this.replying || this.chatReplyMainView == null) {
            return;
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.input.-$$Lambda$ChatInputFragment$Ez0pDWfoZakIIwY8d1CRHOmuxTw
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateReplyMainView$0$ChatInputFragment(bool);
            }
        }, 200L);
    }

    public /* synthetic */ void lambda$updateReplyMainView$0$ChatInputFragment(Boolean bool) {
        if (bool.booleanValue()) {
            if (this.chatReplyMainView.getVisibility() != 0) {
                this.chatReplyMainView.setVisibility(0);
            }
        } else if (this.chatReplyMainView.getVisibility() != 8) {
            this.chatReplyMainView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopMentioning() {
        this.mentioning = false;
        StringBuilder sb = this.mentionTextBuilder;
        if (sb != null) {
            sb.delete(0, sb.length());
        }
        getFragmentManager().beginTransaction().hide(this.mentionUserListFragment).commitAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopReplaing() {
        this.replying = false;
        this.replyMessage = null;
        this.chatReplyMainView.setVisibility(8);
    }

    public void setAdsVisible(boolean z) {
        getView().findViewById(R.id.ad_container).setVisibility(z ? 0 : 4);
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        if (z) {
            updateViews();
        }
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
        }
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelStatusChanged(SignallingChannel signallingChannel) {
        this.signallingChannel = signallingChannel;
        updateRightView(this.isKeyboardVisible);
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelUserListChanged(SignallingChannel signallingChannel, Collection<? extends ChannelUser> collection, Collection<? extends ChannelUser> collection2, SparseArray<ChannelUserWrapper> sparseArray) {
        this.signallingChannel = signallingChannel;
        updateRightView(this.isKeyboardVisible);
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelForceQuit(SignallingChannel signallingChannel, int i) {
        this.signallingChannel = signallingChannel;
        updateRightView(this.isKeyboardVisible);
    }

    @Override // com.narvii.chat.video.events.MyChannelUserStatusChangeListener
    public void onMyChannelUserStatusChanged(int i, SignallingChannel signallingChannel, ChannelUser channelUser) {
        this.signallingChannel = signallingChannel;
        if (i == 2) {
        }
        updateRightView(this.isKeyboardVisible);
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

    @Override // com.narvii.chat.video.overlay.VVchatPermissionInviteListener
    public void onCoHostResult(boolean z) {
        ChatInputRightViewContainer chatInputRightViewContainer = this.chatRightButtonContainer;
        if (chatInputRightViewContainer != null) {
            chatInputRightViewContainer.showView();
        }
        ChatThread thread = getThread();
        if (thread != null) {
            String userId = ((AccountService) getService("account")).getUserId();
            if (z) {
                thread.getCoHostUidList().add(userId);
            } else {
                thread.getCoHostUidList().remove(userId);
            }
            if (getParentFragment() instanceof ChatFragment) {
                ((ChatFragment) getParentFragment()).setThread(thread);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        ChatService chatService;
        super.onPause();
        this.tvTypingUserHelper.reportTypingEnd();
        if (this.edit != null && (chatService = this.chatService) != null) {
            chatService.setDraft(getThreadId(), this.edit.getText().toString());
        }
        MentionedEditText mentionedEditText = this.edit;
        if (mentionedEditText == null || !StringUtils.isStringNotEquals(mentionedEditText.getText().toString(), this.oldDraft)) {
            return;
        }
        ThreadUpdateObject threadUpdateObject = new ThreadUpdateObject();
        threadUpdateObject.chatThread = getThread();
        threadUpdateObject.action = 2;
        sendNotification(new Notification("update", threadUpdateObject));
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        MentionedEditText mentionedEditText = this.edit;
        if (mentionedEditText == null || !StringUtils.isStringNotEquals(mentionedEditText.getText().toString(), this.oldDraft)) {
            return;
        }
        this.chatService.storeDraft();
    }

    private void updateSRViews() {
        boolean localMicMuted;
        UserStatusData userStatusData;
        if (getView() == null) {
            return;
        }
        boolean zIsLandscape = Utils.isLandscape(getContext());
        boolean z = zIsLandscape && isAllPanelHidden() && !this.isKeyboardVisible;
        ViewUtils.show(this.srLandscapeButtons, z);
        ViewUtils.show(this.chatInputMain, !z);
        ViewUtils.show(getView(), R.id.typing_user_container, !zIsLandscape);
        if (z) {
            getView().getLayoutParams().width = -2;
        } else {
            getView().getLayoutParams().width = -1;
        }
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (mainSigChannel != null && mainSigChannel.channelType == 5 && zIsLandscape) {
            ScreenRoomService screenRoomService = (ScreenRoomService) getService("screenRoom");
            this.srLandscapeButtons.findViewById(R.id.sr_input_container).setOnClickListener(this);
            this.srLandscapeButtons.findViewById(R.id.sr_mute_view).setOnClickListener(this);
            ViewUtils.show(this.srLandscapeButtons, R.id.sr_mute_view, mainSigChannel.joinRole == 1);
            RtcService rtcService = this.rtcService;
            ChannelUserWrapper mainChannelLocalUserWrapper = rtcService == null ? null : rtcService.getMainChannelLocalUserWrapper();
            if (mainChannelLocalUserWrapper == null || !mainChannelLocalUserWrapper.channelUser.isHost || screenRoomService == null) {
                localMicMuted = (mainChannelLocalUserWrapper == null || (userStatusData = mainChannelLocalUserWrapper.userStatus) == null || !userStatusData.isVoiceMuted()) ? false : true;
            } else {
                localMicMuted = screenRoomService.getLocalMicMuted();
            }
            CheckableImageView checkableImageView = (CheckableImageView) this.srLandscapeButtons.findViewById(R.id.mute_button);
            if (checkableImageView != null) {
                checkableImageView.setChecked(localMicMuted);
            }
        }
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
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
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
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

    @Override // com.narvii.chat.ThreadInfoHost
    public String getThreadId() {
        return getStringParam("id");
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public ChatThread getThread() {
        return ChatHelper.Companion.getThreadFromThreadInfoHost(this);
    }

    @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatCheckData
    public SignallingChannel getSignallingChannel() {
        return this.signallingChannel;
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton.SwitcherAdapter
    public void scrollChatListToBottom() {
        ChatListFragment chatListFragmentGeChatListFragment;
        if (getFragmentManager() == null || (chatListFragmentGeChatListFragment = geChatListFragment()) == null) {
            return;
        }
        chatListFragmentGeChatListFragment.scrollToBottom();
    }

    protected ChatListFragment geChatListFragment() {
        return (ChatListFragment) getFragmentManager().findFragmentByTag("chatList");
    }

    protected void updateViews() {
        if (this.edit == null || this.updating) {
            return;
        }
        this.updating = true;
        boolean z = ((SharedPreferences) getService("prefs")).getBoolean("returnToSendChat", false);
        if (z != this.returnToSend && z) {
            this.returnToSend = z;
            this.edit.setSingleLine();
            this.edit.setImeOptions(4);
            this.edit.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.narvii.chat.input.ChatInputFragment.16
                @Override // android.widget.TextView.OnEditorActionListener
                public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                    if (i != 4 && (keyEvent == null || keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 66)) {
                        return false;
                    }
                    ChatInputFragment.this.sendButton.performClick();
                    return true;
                }
            });
        } else if (z != this.returnToSend && !z) {
            this.edit.setSingleLine(false);
            this.edit.setImeOptions(0);
            this.edit.setOnEditorActionListener(null);
        }
        int iCheckThreadStatus = checkThreadStatus();
        ChatInputRightViewContainer chatInputRightViewContainer = this.chatRightButtonContainer;
        if (chatInputRightViewContainer != null) {
            int childCount = chatInputRightViewContainer.getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.chatRightButtonContainer.getChildAt(i).setEnabled(iCheckThreadStatus == 0);
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
        boolean z2 = thread != null && thread.isViewOnly() && !this.chatHelper.isHostOrCoHost(thread) && this.chatInputButton.getVisibility() == 8;
        this.viewOnlyInputButton.setVisibility(z2 ? 0 : 8);
        if (!z2 || TextUtils.isEmpty(this.edit.getText().toString())) {
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
        int i;
        ChatThread thread = getThread();
        if (thread == null || !this.globalChatHelper.isCommunityJoined(this.cid)) {
            return 1;
        }
        if (thread.status == 9 || ((user = thread.author) != null && ((i = user.status) == 9 || i == 10))) {
            return 2;
        }
        if (thread.condition == 2) {
            return thread.type == 2 ? 1 : 0;
        }
        return thread.membershipStatus != 1 ? 1 : 0;
    }

    protected void updateRightView(boolean z) {
        SignallingChannel signallingChannel;
        if (z || !isAllPanelHidden()) {
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
            if (signallingChannel2 != null && signallingChannel2.channelType != 0 && !isEmbedFragment()) {
                if (getResources().getDisplayMetrics().widthPixels <= Utils.dpToPxInt(getContext(), 320.0f)) {
                    this.chatAddButtonView.setVisibility(8);
                } else {
                    this.chatAddButtonView.setVisibility(0);
                }
                this.chatStickerButtonView.setVisibility(8);
            } else {
                this.chatStickerButtonView.setVisibility(0);
                this.chatAddButtonView.setVisibility(0);
            }
        }
        updateSRViews();
    }

    public void updateBackground() {
        if (getView() == null) {
            return;
        }
        if (!isAllPanelHidden() || this.isKeyboardVisible) {
            this.edit.setBackgroundResource(R.drawable.chat_input_edit_round_high_light);
            this.edit.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            this.edit.setHintTextColor(-5197903);
            this.chatInputBlur.setVisibility(0);
            View view = this.adBanner;
            if (view != null) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        this.edit.setBackgroundResource(R.drawable.chat_input_edit_round_normal);
        this.edit.setTextColor(-1);
        this.edit.setHintTextColor(-1291845633);
        this.chatInputBlur.setVisibility(8);
        View view2 = this.adBanner;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }

    private void updateSendBtn() {
        this.updateSendBtn.run();
    }

    protected void showJoinChatDialog(boolean z, View view) {
        if (!this.accountService.hasAccount()) {
            ensureLogin(new Intent());
            return;
        }
        final AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setContentView(z ? R.layout.dialog_request_join_public : R.layout.dialog_private_channel_not_allow);
        alertDialog.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.input.ChatInputFragment.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                alertDialog.dismiss();
            }
        });
        alertDialog.findViewById(R.id.accept).setOnClickListener(new AnonymousClass19(alertDialog, view));
        alertDialog.show();
    }

    /* renamed from: com.narvii.chat.input.ChatInputFragment$19, reason: invalid class name */
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

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        boolean z = bundle != null ? bundle.getBoolean("isUHQ") : false;
        if (bundle != null && list.size() > 0) {
            for (Media media : list) {
                if (media.isVideo() && media.type != 103) {
                    this.messageSenderHelper.sendVideoMessage(media);
                    logSendChatMessage("video");
                } else {
                    this.messageSenderHelper.sendImageMessage(media, z);
                    logSendChatMessage("image");
                }
            }
        }
        if (bundle == null) {
            return;
        }
        bundle.getString(MediaPickerFragment.PICK_SOURCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logSendChatMessage(String str) {
        LogEvent.clickBuilder(this, ActSemantic.sendChatMessage).extraParam("messageType", str).send();
    }

    @Override // com.narvii.monetization.sticker.picker.StickerSelectListener
    public void onStickerSelected(Sticker sticker, StickerCollection stickerCollection) {
        int i;
        this.messageSenderHelper.sendSticker(sticker, stickerCollection);
        logSendChatMessage("sticker");
        if (stickerCollection == null || ((i = stickerCollection.collectionType) != 1 && i != 2 && i != 3 && !MoodStickerCollection.MOOD_COLLECTION_ID.equals(stickerCollection.collectionId))) {
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ChatMessage chatMessage;
        if (view.getId() == R.id.chat_input_dismiss_mask) {
            hideKeyboardAndPanel();
        }
        if (checkThreadAvailable(view)) {
            switch (view.getId()) {
                case R.id.chat_add /* 2131296714 */:
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("add", true);
                    this.mediaPicker.setOnCustomOptionSelectedListener(new MediaPickerFragment.OnCustomOptionSelectedListener() { // from class: com.narvii.chat.input.ChatInputFragment.20
                        @Override // com.narvii.media.MediaPickerFragment.OnCustomOptionSelectedListener
                        public void onCustomOptionSelected(MediaPickerFragment.Option option, Bundle bundle2) {
                            Intent intent = FragmentWrapperActivity.intent(BubbleSettingFragment.class);
                            intent.putExtra(BubbleSettingFragment.KEY_CHAT_THREAD, JacksonUtils.writeAsString(ChatInputFragment.this.getThread()));
                            ChatInputFragment.this.startActivity(intent);
                        }
                    });
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new MediaPickerFragment.Option(20, getString(R.string.chat_bubble_style), 0, 0));
                    this.mediaPicker.pickMedia(this.chatService.getPhotoDir(), bundle, 0, 3, arrayList);
                    break;
                case R.id.chat_button /* 2131296731 */:
                case R.id.view_only_button /* 2131299484 */:
                    Utils.post(new Runnable() { // from class: com.narvii.chat.input.ChatInputFragment.21
                        @Override // java.lang.Runnable
                        public void run() {
                            ChatInputFragment.this.edit.requestFocus();
                            ChatInputFragment.this.showSoftKeyboard();
                        }
                    });
                    break;
                case R.id.chat_edit /* 2131296737 */:
                    scrollChatListToBottom();
                    break;
                case R.id.chat_send /* 2131296772 */:
                    if (getThread() != null && getThread().type == 2 && this.chatService.isSendTooFast()) {
                        NVToast.makeText(getContext(), R.string.chat_slow_down, 0).show();
                        this.blockUntil = SystemClock.elapsedRealtime() + 10000;
                        updateSendBtn();
                        break;
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
                        logSendChatMessage(MimeTypes.BASE_TYPE_TEXT);
                        this.tvTypingUserHelper.reportTypingEnd();
                        this.mentioning = false;
                        StringBuilder sb = this.mentionTextBuilder;
                        if (sb != null) {
                            sb.delete(0, sb.length());
                        }
                        this.edit.clear();
                        this.edit.setText((CharSequence) null);
                        break;
                    }
                    break;
                case R.id.sr_input_container /* 2131298946 */:
                    onChatInputClicked();
                    break;
                case R.id.sr_mute_view /* 2131298950 */:
                    this.menuEventDealer.toggleMute(false);
                    break;
            }
        }
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton.SwitcherAdapter
    public boolean checkThreadAvailable(View view) {
        ChatThread thread;
        User user;
        int i;
        if (checkCommunityAvailability(view) && (thread = getThread()) != null) {
            if (thread.status == 9 || ((user = thread.author) != null && ((i = user.status) == 9 || i == 10))) {
                NVToast.makeText(getContext(), R.string.chat_disabled_by_moderator, 0).show();
            } else if (thread.condition == 2 && thread.type == 2) {
                NVToast.makeText(getContext(), R.string.chat_author_absent, 0).show();
            } else {
                int i2 = thread.membershipStatus;
                if (i2 == 3) {
                    NVToast.makeText(getContext(), R.string.chat_pending_approval, 0).show();
                } else {
                    if (i2 != 1) {
                        showJoinChatDialog(thread.type == 2, view);
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
        }
        return false;
    }

    private boolean checkCommunityAvailability(final View view) {
        return true ^ this.globalChatHelper.tryJoinCommunity(((ConfigService) getService("config")).getCommunityId(), true, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.input.ChatInputFragment.22
            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public int getActionRTCType() {
                return 0;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public boolean onPreJoinCommunity(int i) {
                return false;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onCheckLoginFailed() {
                ChatInputFragment.this.ensureLogin(new Intent("joinChannel"));
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public ChatThread followingChatToJoin() {
                return ChatInputFragment.this.getThread();
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onPostJoinCommunity(int i, boolean z) {
                if (z) {
                    ChatInputFragment.this.messageSenderHelper.recordChatActivity();
                    view.performClick();
                }
            }
        });
    }

    private void onChatInputClicked() {
        if (getThread() != null && getThread().type == 2 && getThread().membershipStatus != 1) {
            showJoinChatDialog(true, null);
        } else {
            showChatInputLayout();
        }
    }

    private void showChatInputLayout() {
        this.edit.requestFocus();
        showSoftKeyboard();
    }

    public void checkDismissMaskShown(boolean z) {
        ChatInputOptionMenu chatInputOptionMenu;
        View view = this.chatInputMask;
        if (view != null) {
            if (z) {
                view.setVisibility(0);
            } else {
                if (!isAllPanelHidden() || (chatInputOptionMenu = this.chatInputOptionMenu) == null || chatInputOptionMenu.isVisible()) {
                    return;
                }
                this.chatInputMask.setVisibility(8);
            }
        }
    }

    public boolean onBackPressed() {
        if (!isAllPanelHidden()) {
            hideAllPanels();
            return true;
        }
        ChatWaitingListService chatWaitingListService = this.chatWaitingListService;
        if (chatWaitingListService == null || !chatWaitingListService.isShowing()) {
            return false;
        }
        this.chatWaitingListService.dismiss();
        return true;
    }

    public void addPanelHideListener(PanelHideListener panelHideListener) {
        this.panelHideEventDispatcher.addListener(panelHideListener);
    }

    public void removePanelHideListener(PanelHideListener panelHideListener) {
        this.panelHideEventDispatcher.removeListener(panelHideListener);
    }

    public void hideKeyboardAndPanel() {
        hideSoftKeyboard();
        hideAllPanels();
        this.chatInputOptionMenu.hide();
        checkDismissMaskShown(false);
        updateReplyMainView(false);
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton.SwitcherAdapter
    public void showPanelWithKeyBoardSwitch(View view) {
        this.switchingKeyboard.set(new SwitchKeyboard(false, view));
        hideSoftKeyboard();
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton.SwitcherAdapter
    public void hidePanelWithKeyBoardSwitch(View view) {
        this.switchingKeyboard.set(new SwitchKeyboard(true, view));
        showSoftKeyboard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSoftKeyboard() {
        SoftKeyboard.showSoftKeyboard(this.edit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideSoftKeyboard() {
        SoftKeyboard.hideSoftKeyboard(this.edit);
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton.SwitcherAdapter
    public void showPanel(View view) {
        if (view == null) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) getView().findViewById(R.id.panel_layout);
        for (int i = 0; i < frameLayout.getChildCount(); i++) {
            View childAt = frameLayout.getChildAt(i);
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
        updateReplyMainView(true);
    }

    public void hideAllPanels() {
        if (getView() == null) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) getView().findViewById(R.id.panel_layout);
        for (int i = 0; i < frameLayout.getChildCount(); i++) {
            View childAt = frameLayout.getChildAt(i);
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

    public boolean isAllPanelHidden() {
        if (getView() == null) {
            return true;
        }
        FrameLayout frameLayout = (FrameLayout) getView().findViewById(R.id.panel_layout);
        for (int i = 0; i < frameLayout.getChildCount(); i++) {
            if (frameLayout.getChildAt(i).getVisibility() == 0) {
                return false;
            }
        }
        return true;
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton.SwitcherAdapter
    public int getValidPanelHeight() {
        int keyboardHeight = AndroidBug5497Workaround.getKeyboardHeight(getActivity());
        if (keyboardHeight > 0) {
            return Math.max(keyboardHeight, getResources().getDimensionPixelSize(R.dimen.voice_record_panel_height_min));
        }
        return 0;
    }

    @Override // com.narvii.chat.screenroom.SRPermissionActionChangeListener
    public void onThreadActionChanged(int i) {
        updateRightView(this.isKeyboardVisible);
    }

    @Override // com.narvii.chat.video.events.ChannelUserWrapperUpdateListener
    public void onUserWrapperStatusChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        if (signallingChannel.channelUid == channelUserWrapper.channelUid) {
            updateRightView(this.isKeyboardVisible);
        }
    }

    @Override // com.narvii.chat.input.MentionedEditText.OnMentionInputListener
    public void onMentionCharacterInput(final String str, final int i) {
        ChatThread thread = getThread();
        if (thread == null || thread.type != 0) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.input.-$$Lambda$ChatInputFragment$kVdNA5kRZYMDzJPomNtpxXFlj8E
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onMentionCharacterInput$1$ChatInputFragment(str, i);
                }
            }, 10L);
        }
    }

    public /* synthetic */ void lambda$onMentionCharacterInput$1$ChatInputFragment(String str, int i) {
        if (this.mentionTextBuilder.length() > 0) {
            StringBuilder sb = this.mentionTextBuilder;
            sb.delete(0, sb.length());
        }
        this.mentionTextBuilder.append(str);
        this.mentioning = true;
        this.mentionTextStartIndex = i;
        getFragmentManager().beginTransaction().show(this.mentionUserListFragment).commitAllowingStateLoss();
        this.mentionUserListFragment.fetchMentionRelatedUserList(null, true);
    }

    @Override // com.narvii.chat.input.ChatMentionUserListFragment.MentionRelatedUsersCallback
    public void onMentionedUserSelected(User user) {
        LogEvent.clickWildcardBuilder(this).area("MentionUserList").send();
        getFragmentManager().beginTransaction().hide(this.mentionUserListFragment).commitAllowingStateLoss();
        this.mentioning = false;
        this.edit.mentionUser(user.uid(), user.nickname(), this.mentionTextStartIndex, this.mentionTextBuilder.length() > 1 ? this.mentionTextBuilder.substring(1) : null);
        StringBuilder sb = this.mentionTextBuilder;
        sb.delete(0, sb.length());
    }

    @Override // com.narvii.chat.input.ChatMentionUserListFragment.MentionRelatedUsersCallback
    public void onMentionedUserListUpdated(List<? extends User> list) {
        if (this.mentioning) {
            if (list == null || list.isEmpty()) {
                getFragmentManager().beginTransaction().hide(this.mentionUserListFragment).commitAllowingStateLoss();
            } else {
                getFragmentManager().beginTransaction().show(this.mentionUserListFragment).commitAllowingStateLoss();
            }
        }
    }

    public void onUserMentionedByLongClick(User user) {
        getFragmentManager().beginTransaction().hide(this.mentionUserListFragment).commitAllowingStateLoss();
        this.mentioning = false;
        if (this.mentionTextBuilder.length() > 0) {
            StringBuilder sb = this.mentionTextBuilder;
            sb.delete(0, sb.length());
        }
        this.edit.markLongClickMention();
        this.edit.getText().insert(this.edit.getSelectionStart(), MentionedEditText.DEFAULT_METION_TAG);
        this.edit.mentionUser(user.uid(), user.nickname());
    }

    public void onReplybyLongClick(ChatMessage chatMessage) {
        this.replying = true;
        this.replyMessage = chatMessage;
        ChatMessage chatMessage2 = this.replyMessage;
        if (chatMessage2 != null) {
            this.chatReplyLayout.setMessage(chatMessage2, 0, true);
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.input.-$$Lambda$ChatInputFragment$ghKAJHg_IRDxtRBqqJhC2b0L5TI
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onReplybyLongClick$2$ChatInputFragment();
            }
        }, 200L);
    }

    public /* synthetic */ void lambda$onReplybyLongClick$2$ChatInputFragment() {
        onChatInputClicked();
        scrollChatListToBottom();
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

    @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatJoinEventListener
    public void onJoinStart() {
        this.chatRightButtonContainer.setIsJoining(true);
        updateRightView(this.isKeyboardVisible);
    }

    @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatJoinEventListener
    public void onJoinEnd() {
        this.chatRightButtonContainer.setIsJoining(false);
        updateRightView(this.isKeyboardVisible);
    }

    public static class SwitchKeyboard {
        boolean openKeyboard;
        View view;

        public SwitchKeyboard(boolean z, View view) {
            this.openKeyboard = z;
            this.view = view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class SideMenuEventDealer implements ChatInputRightViewContainer.OnClickRightView, ChatInputOptionMenu.OnOptionMenuClickListener {
        private SideMenuEventDealer() {
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView
        public void toggleMenu() {
            ChatInputFragment.this.hideAllPanels();
            ChatInputFragment.this.hideSoftKeyboard();
            int i = 0;
            if (ChatInputFragment.this.chatInputOptionMenu.getVisibility() == 0) {
                ChatInputFragment.this.chatInputOptionMenu.hide();
                ChatInputFragment.this.checkDismissMaskShown(false);
                return;
            }
            ChatInputFragment.this.chatInputOptionMenu.bindToggleView(ChatInputFragment.this.chatRightButtonContainer.findViewById(R.id.menu_view));
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) ChatInputFragment.this.chatInputOptionMenu.getLayoutParams();
            if (ChatInputFragment.this.adBanner != null && ChatInputFragment.this.adBanner.isShown()) {
                i = -ChatInputFragment.this.adBanner.getHeight();
            }
            marginLayoutParams.bottomMargin = i;
            ChatInputFragment.this.chatInputOptionMenu.show();
            ChatInputFragment.this.checkDismissMaskShown(true);
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView
        public void doJoin() {
            ChatInputFragment.this.chatThreadCheckFragment.requestToJoinChannel(ChatInputFragment.this.signallingChannel);
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView
        public void doRequestToSpeak() {
            Log.w("GOVNO", "HUITA VIZVANA");
            ChatInputFragment chatInputFragment = ChatInputFragment.this;
            if (ChatWaitingListServiceKt.isCurrentUserInWaitingList(chatInputFragment, chatInputFragment.waitingListUsers) || ChatWaitingListServiceKt.isCurrentUserSpeaker(ChatInputFragment.this)) {
                return;
            }
            ChatInputFragment.this.chatThreadCheckFragment.requestToSpeak(ChatInputFragment.this.signallingChannel);
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView, com.narvii.chat.input.ChatInputOptionMenu.OnOptionMenuClickListener
        public void toggleMute(boolean z) {
            if (z) {
                ChatInputFragment.this.rtcService.toggleLocalVideo();
            } else if (ChatInputFragment.this.signallingChannel == null || ChatInputFragment.this.signallingChannel.channelType != 5 || ChatInputFragment.this.rtcService.getMainChannelLocalUserWrapper() == null || ChatInputFragment.this.rtcService.getMainChannelLocalUserWrapper().channelUser == null || !ChatInputFragment.this.rtcService.getMainChannelLocalUserWrapper().channelUser.isHost) {
                if (ChatInputFragment.this.callScreenService == null || ChatInputFragment.this.callScreenService.getCurStatus() != 1) {
                    ChatInputFragment.this.rtcService.toggleLocalVoice();
                } else {
                    ChatInputFragment.this.callScreenService.switchMusicPlayStatus();
                    ChatInputFragment.this.rtcService.toggleSpeaker();
                }
            } else {
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
            }
            ChatInputFragment chatInputFragment = ChatInputFragment.this;
            chatInputFragment.updateRightView(chatInputFragment.isKeyboardVisible);
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView
        public boolean checkChannelUserLimit() {
            return ChatInputFragment.this.chatThreadCheckFragment.checkChannelUserLimit();
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView
        public boolean isMenuIconShown() {
            List<ChatInputOptionMenu.MenuItem> menuTypeList = ChatInputFragment.this.chatInputOptionMenu.getMenuTypeList();
            return (menuTypeList == null || menuTypeList.isEmpty()) ? false : true;
        }

        public /* synthetic */ void lambda$openWaitingList$0$ChatInputFragment$SideMenuEventDealer(Boolean bool) {
            openWaitingListInn();
        }

        @Override // com.narvii.chat.input.ChatInputRightViewContainer.OnClickRightView
        public void openWaitingList() {
            if (ChatInputFragment.this.signallingChannel == null || !ChatInputFragment.this.chatThreadCheckFragment.checkCommunityAvailability(ChatInputFragment.this.signallingChannel.channelType, new Callback() { // from class: com.narvii.chat.input.-$$Lambda$ChatInputFragment$SideMenuEventDealer$9BAYLemthjivmi8CJHO8TDTiL4U
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f$0.lambda$openWaitingList$0$ChatInputFragment$SideMenuEventDealer((Boolean) obj);
                }
            })) {
                return;
            }
            openWaitingListInn();
        }

        private void openWaitingListInn() {
            if (!(ChatInputFragment.this.getActivity() instanceof NVActivity) || ChatInputFragment.this.getThread() == null) {
                return;
            }
            ChatInputFragment.this.chatWaitingListService.show(ChatInputFragment.this.getThread());
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
            ChatInputFragment.this.startActivity(intent);
        }

        @Override // com.narvii.chat.input.ChatInputOptionMenu.OnOptionMenuClickListener
        public void toggleSpeaker() {
            if (ChatInputFragment.this.callScreenService == null || ChatInputFragment.this.callScreenService.getCurStatus() != 1) {
                ChatInputFragment.this.rtcService.toggleSpeaker();
            } else {
                ChatInputFragment.this.callScreenService.switchSpeaker();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parseObject(java.lang.String r5, int r6) {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.input.ChatInputFragment.parseObject(java.lang.String, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ObjectNode getMessageAttachmentNode() {
        String str = this.attachObjectId;
        if (str == null || this.showedAttachment) {
            return null;
        }
        this.showedAttachment = true;
        int i = this.attachObjectType;
        String str2 = this.attachLink;
        String str3 = this.attachTitle;
        String str4 = this.attachContent;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, str);
        objectNodeCreateObjectNode.put(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, i);
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
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode(JacksonUtils.writeAsString(this.attachMediaList));
        if (this.attachMediaList == null) {
            arrayNodeCreateArrayNode = null;
        }
        objectNodeCreateObjectNode.put("mediaList", arrayNodeCreateArrayNode);
        return objectNodeCreateObjectNode;
    }
}
