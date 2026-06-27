package com.narvii.chat;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.audio.AudioHelper;
import com.narvii.chat.audio.AudioPlayerFixedWidth;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.link.viewer.LinkSnippetImageLayout;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.media.MediaPlayerManager;
import com.narvii.media.MediaStatus;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatMessage;
import com.narvii.model.LinkSummary;
import com.narvii.model.Media;
import com.narvii.model.RestrictionInfo;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.ChatBubbleOwnStatusController;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.bubble.BubbleSettingFragment;
import com.narvii.monetization.bubble.ChatBubbleResponse;
import com.narvii.monetization.bubble.detail.BubbleDetailFragment;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.NVText;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVImageView;
import java.util.List;

/* loaded from: classes2.dex */
public class MessageContentDetailFragment extends NVFragment implements NotificationListener {
    private static final String KEY_CHAT_MESSAGE = "CHAT_MESSAGE";
    private static final String KEY_DETAIL_REQUEST = "detailRequestSent";
    private static final int RC_JOIN_COMMUNITY = 103;
    private String allChatBubbleId;
    AudioHelper audioHelper;
    private StoreItemStatusView bubbleStatusView;
    private ChatBubble chatBubble;
    private ChatBubbleView chatBubbleView;
    private View containerBubble;
    private View customBubbleContainer;
    private boolean detailRequestSent;
    private GlobalChatHelper globalChatHelper;
    private NVImageView imgBubblePreView;
    private MembershipService membershipService;
    private ChatMessage message;
    private ChatBubbleOwnStatusController statusController;
    StoreItemNameView storeItemNameView;
    private String threadId;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle((CharSequence) null);
        this.message = (ChatMessage) JacksonUtils.readAs(getStringParam(AccountNotice.LEVEL_MESSAGE), ChatMessage.class);
        this.threadId = getStringParam("threadId");
        this.audioHelper = new AudioHelper(this);
        this.membershipService = (MembershipService) getService("membership");
        if (bundle != null) {
            this.detailRequestSent = bundle.getBoolean(KEY_DETAIL_REQUEST);
            this.message = (ChatMessage) JacksonUtils.readAs(bundle.getString(KEY_CHAT_MESSAGE), ChatMessage.class);
            this.chatBubble = (ChatBubble) JacksonUtils.readAs(bundle.getString("bubble"), ChatBubble.class);
        }
        setHasOptionsMenu(true);
        this.globalChatHelper = new GlobalChatHelper(this);
        if (this.detailRequestSent) {
            return;
        }
        fetchBubbleInfo(this.message.getBubbleId());
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_bubble_detail, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws NumberFormatException {
        super.onViewCreated(view, bundle);
        this.containerBubble = view.findViewById(R.id.bubble_layout);
        this.containerBubble.setVisibility(0);
        this.imgBubblePreView = (NVImageView) view.findViewById(R.id.bubble_preview);
        this.customBubbleContainer = view.findViewById(R.id.custom_container);
        this.bubbleStatusView = (StoreItemStatusView) view.findViewById(R.id.get_bubble);
        this.statusController = new ChatBubbleOwnStatusController(this, this.bubbleStatusView, this.threadId) { // from class: com.narvii.chat.MessageContentDetailFragment.1
            @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
            public void onClickGetItem() {
                if (MessageContentDetailFragment.this.checkAminoPlus()) {
                    super.onClickGetItem();
                }
            }

            @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
            public void onClickActivateItem() {
                if (MessageContentDetailFragment.this.checkAminoPlus()) {
                    super.onClickActivateItem();
                }
            }

            @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
            public void onClickUseItem() {
                if (MessageContentDetailFragment.this.checkAminoPlus()) {
                    super.onClickUseItem();
                }
            }
        };
        this.statusController.source = "Message Detail Page";
        this.storeItemNameView = (StoreItemNameView) view.findViewById(R.id.item_name);
        this.storeItemNameView.setStoreItem(this.chatBubble);
        this.statusController.onCreate();
        updateStatusView();
        this.chatBubbleView = (ChatBubbleView) view.findViewById(R.id.chat_bubble);
        updateChatMessageView();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ChatBubbleOwnStatusController chatBubbleOwnStatusController = this.statusController;
        if (chatBubbleOwnStatusController != null) {
            chatBubbleOwnStatusController.onDestroy();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 103 && i2 == -1) {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://x" + getIntParam("__communityId") + "/chat-thread/" + this.threadId));
            intent2.putExtra("__model", false);
            startActivity(intent2);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(KEY_DETAIL_REQUEST, this.detailRequestSent);
        bundle.putString(KEY_CHAT_MESSAGE, JacksonUtils.writeAsString(this.message));
        bundle.putString("bubble", JacksonUtils.writeAsString(this.chatBubble));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkCommunityJoined() {
        if (!((AccountService) getService("account")).hasAccount()) {
            ensureLogin(new Intent());
            return false;
        }
        final int intParam = getIntParam("__communityId");
        return this.globalChatHelper.checkCommunityJoined(intParam, new Callback<Boolean>() { // from class: com.narvii.chat.MessageContentDetailFragment.2
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                MessageContentDetailFragment.this.startActivityForResult(MessageContentDetailFragment.this.globalChatHelper.communityDetailIntent(Integer.valueOf(intParam), null), 103);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkAminoPlus() {
        RestrictionInfo restrictionInfo;
        boolean z = false;
        if (!((AccountService) getService("account")).hasAccount()) {
            ensureLogin(new Intent());
            return false;
        }
        final int intParam = getIntParam("__communityId");
        ChatBubble chatBubble = this.chatBubble;
        if (chatBubble != null && (restrictionInfo = chatBubble.restrictionInfo) != null && restrictionInfo.restrictType == 2) {
            z = true;
        }
        return this.globalChatHelper.checkGlobalChatAminoPlusOperation(z, intParam, new Callback<Boolean>() { // from class: com.narvii.chat.MessageContentDetailFragment.3
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                MessageContentDetailFragment.this.startActivityForResult(MessageContentDetailFragment.this.globalChatHelper.communityDetailIntent(Integer.valueOf(intParam), null), 103);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatusView() {
        if (this.bubbleStatusView == null) {
            return;
        }
        ChatMessage chatMessage = this.message;
        boolean z = chatMessage != null && chatMessage.chatBubbleId == null;
        if (z || this.detailRequestSent) {
            if (z) {
                this.chatBubble = new ChatBubble();
                ChatBubble chatBubble = this.chatBubble;
                chatBubble.type = -1;
                chatBubble.name = getString(R.string.default_bubble);
            }
            ChatBubble chatBubble2 = this.chatBubble;
            if (chatBubble2 == null) {
                return;
            }
            boolean z2 = chatBubble2.type == 2;
            if (z) {
                this.imgBubblePreView.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_default_bubble));
            } else {
                this.imgBubblePreView.setImageUrl(this.chatBubble.getPreviewUrl());
            }
            int iDpToPx = z2 ? 0 : (int) Utils.dpToPx(getContext(), 2.0f);
            this.imgBubblePreView.setPadding(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
            this.imgBubblePreView.setBackgroundDrawable(z2 ? null : ContextCompat.getDrawable(getContext(), R.drawable.bubble_icon_stroke_bg));
            this.imgBubblePreView.setCornerRadius(z2 ? (int) Utils.dpToPx(getContext(), 4.0f) : 0);
            this.storeItemNameView.setStoreItem(this.chatBubble);
            boolean z3 = containBubble() && this.chatBubble.type == 2;
            if (containBubble()) {
                this.chatBubble.isTotalOwned();
            }
            this.bubbleStatusView.setVisibility(z3 ? 0 : 4);
            this.statusController.setStoreItem(containBubble() ? this.chatBubble : null, this.allChatBubbleId);
            this.customBubbleContainer.setVisibility(8);
            int i = this.chatBubble.type;
            if (i == 2) {
                this.containerBubble.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.MessageContentDetailFragment.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (MessageContentDetailFragment.this.checkCommunityJoined()) {
                            Intent intent = FragmentWrapperActivity.intent(BubbleDetailFragment.class);
                            intent.putExtra("id", MessageContentDetailFragment.this.chatBubble.id());
                            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(MessageContentDetailFragment.this.chatBubble));
                            intent.putExtra("Source", "Message Detail Page");
                            MessageContentDetailFragment.this.startActivity(intent);
                        }
                    }
                });
            } else if (i == 1) {
                this.containerBubble.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.MessageContentDetailFragment.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (MessageContentDetailFragment.this.checkCommunityJoined()) {
                            Intent intent = FragmentWrapperActivity.intent(BubbleSettingFragment.class);
                            intent.putExtra(BubbleSettingFragment.KEY_CHAT_THREAD, MessageContentDetailFragment.this.getStringParam("thread"));
                            MessageContentDetailFragment.this.startActivity(intent);
                        }
                    }
                });
            }
        }
    }

    private void fetchBubbleInfo(String str) {
        if (str == null) {
            return;
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/chat/chat-bubble/" + str).retry(1).build(), new ApiResponseListener<ChatBubbleResponse>(ChatBubbleResponse.class) { // from class: com.narvii.chat.MessageContentDetailFragment.6
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ChatBubbleResponse chatBubbleResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) chatBubbleResponse);
                MessageContentDetailFragment.this.chatBubble = chatBubbleResponse.chatBubble;
                MessageContentDetailFragment.this.detailRequestSent = true;
                MessageContentDetailFragment.this.allChatBubbleId = chatBubbleResponse.allChatsBubbleId;
                MessageContentDetailFragment.this.updateStatusView();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
            }
        });
    }

    private void updateChatMessageView() throws NumberFormatException {
        ChatMessage chatMessage;
        final LinkSummary firstLinkSnippet;
        ChatBubbleView chatBubbleView = this.chatBubbleView;
        if (chatBubbleView == null || (chatMessage = this.message) == null) {
            return;
        }
        if (chatMessage.type == 2) {
            chatBubbleView.setLayout(R.layout.layout_audio_player_fixed_width);
            this.chatBubbleView.setClipToPadding(false);
            this.chatBubbleView.setClipChildren(false);
            MediaPlayerManager mediaPlayerManager = (MediaPlayerManager) getService("mediaPlayer");
            MediaStatus mediaStatus = mediaPlayerManager.getMediaStatus(this.message.mediaValue);
            AudioPlayerFixedWidth audioPlayerFixedWidth = (AudioPlayerFixedWidth) this.chatBubbleView.findViewById(R.id.audio_player);
            audioPlayerFixedWidth.setVisibility(this.message._status != 0 ? 4 : 0);
            audioPlayerFixedWidth.setMediaUrl(this.message.mediaValue);
            audioPlayerFixedWidth.setIsMine(false);
            audioPlayerFixedWidth.setDuration(this.message.getDuration());
            audioPlayerFixedWidth.onStatusChange(mediaStatus);
            mediaPlayerManager.tryListenMediaStatusChange(audioPlayerFixedWidth);
            this.chatBubbleView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.MessageContentDetailFragment.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) throws IllegalStateException {
                    MessageContentDetailFragment messageContentDetailFragment = MessageContentDetailFragment.this;
                    messageContentDetailFragment.audioHelper.handleChatBubbleClick(messageContentDetailFragment.message, MessageContentDetailFragment.this.chatBubbleView, false);
                }
            });
        } else {
            if (chatMessage.isMediaMessage()) {
                if (TextUtils.isEmpty(this.message.content)) {
                    ChatBubbleView chatBubbleView2 = this.chatBubbleView;
                    Media media = this.message.media();
                    ChatMessage chatMessage2 = this.message;
                    chatBubbleView2.setImage(media, chatMessage2.clientRefId, chatMessage2.extensions, chatMessage2.type == 1);
                } else {
                    this.chatBubbleView.setVideo(this.message);
                }
            } else {
                final ChatHelper chatHelper = new ChatHelper(getContext());
                if (!TextUtils.isEmpty(chatHelper.getMessage(this.message))) {
                    NVText nVText = new NVText(chatHelper.getMessage(this.message));
                    this.chatBubbleView.setLayout(R.layout.chat_detail_text_scrollable);
                    int iMarkSimpleEntries = nVText.markSimpleEntries(DefaultTagClickListener.instance);
                    TextView textView = (TextView) this.chatBubbleView.findViewById(R.id.text);
                    textView.setText(nVText);
                    textView.setClickable(iMarkSimpleEntries > 0);
                    textView.setMovementMethod(LinkTouchMovementMethod.getInstance());
                    ChatMessage chatMessage3 = this.message;
                    if (chatMessage3 != null && (firstLinkSnippet = chatMessage3.getFirstLinkSnippet()) != null && firstLinkSnippet.getFirstMedia() != null) {
                        LinkSnippetImageLayout linkSnippetImageLayout = (LinkSnippetImageLayout) this.chatBubbleView.findViewById(R.id.chat_image_layout);
                        linkSnippetImageLayout.setVisibility(0);
                        linkSnippetImageLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.MessageContentDetailFragment.8
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                chatHelper.handleLinkSnippetClick(firstLinkSnippet);
                            }
                        });
                        linkSnippetImageLayout.setImageMedia(firstLinkSnippet.getFirstMedia(), this.message);
                    }
                }
            }
        }
        this.chatBubbleView.setBackgroundDrawable(null);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.flag_for_review, 2, R.string.flag_for_review).setIcon(R.drawable.ic_flag_white).setShowAsAction(2);
        menu.add(0, R.string.copy, 0, R.string.copy).setShowAsAction(0);
        menu.add(0, R.string.delete, 1, R.string.delete).setShowAsAction(0);
        menu.add(0, R.string.advanced, 3, R.string.advanced).setShowAsAction(0);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        AccountService accountService = (AccountService) getService("account");
        User userProfile = accountService.getUserProfile();
        boolean z = false;
        boolean z2 = userProfile != null && userProfile.isCurator();
        ChatMessage chatMessage = this.message;
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(chatMessage != null ? chatMessage.uid() : null, accountService.getUserId());
        menu.findItem(R.string.advanced).setVisible(z2);
        menu.findItem(R.string.flag_for_review).setVisible(!zIsEqualsNotNull);
        MenuItem menuItemFindItem = menu.findItem(R.string.copy);
        ChatMessage chatMessage2 = this.message;
        if (chatMessage2 != null && chatMessage2.type == 0 && !chatMessage2.hasMedia()) {
            z = true;
        }
        menuItemFindItem.setVisible(z);
        menu.findItem(R.string.delete).setVisible(zIsEqualsNotNull);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.string.advanced /* 2131689620 */:
                new AdvancedOptionDialog.Builder(this).nvObject(this.message).build().show();
                return true;
            case R.string.copy /* 2131690228 */:
                try {
                    ((ClipboardManager) getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("", this.message == null ? null : this.message.content));
                    NVToast.makeText(getContext(), R.string.copied, 1).show();
                } catch (Exception unused) {
                }
                return true;
            case R.string.delete /* 2131690312 */:
                delete(this.message);
                return true;
            case R.string.flag_for_review /* 2131691221 */:
                if (checkCommunityJoined()) {
                    new FlagReportOptionDialog.Builder(this).nvObject(this.message).build().show();
                }
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    private boolean containBubble() {
        ChatMessage chatMessage = this.message;
        return (chatMessage == null || chatMessage.chatBubbleId == null) ? false : true;
    }

    public void delete(ChatMessage chatMessage) {
        new ChatRequestHelper(this).sendDeleteChatMessageRequest(this.threadId, chatMessage);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) throws NumberFormatException {
        if (notification.action.equals("delete")) {
            ChatMessage chatMessage = this.message;
            if (Utils.isEquals(chatMessage == null ? null : chatMessage.id(), notification.id)) {
                ChatMessage chatMessage2 = this.message;
                chatMessage2.type = 0;
                chatMessage2.content = getString(R.string.chat_not_existed);
                updateChatMessageView();
                return;
            }
        }
        if ("update".equals(notification.action) && (notification.obj instanceof ChatBubble)) {
            String str = notification.id;
            ChatBubble chatBubble = this.chatBubble;
            if (Utils.isEqualsNotNull(str, chatBubble != null ? chatBubble.id() : null)) {
                this.chatBubble = (ChatBubble) notification.obj;
                updateStatusView();
            }
        }
    }
}
