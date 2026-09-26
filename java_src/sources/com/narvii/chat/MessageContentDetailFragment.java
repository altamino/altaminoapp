package com.narvii.chat;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.audio.AudioHelper;
import com.narvii.chat.audio.AudioPlayerFixedWidth;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
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

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkAminoPlus() {
        RestrictionInfo restrictionInfo;
        boolean z6 = false;
        if (!((AccountService) getService("account")).hasAccount()) {
            ensureLogin(new Intent());
            return false;
        }
        final int intParam = getIntParam("__communityId");
        ChatBubble chatBubble = this.chatBubble;
        if (chatBubble != null && (restrictionInfo = chatBubble.restrictionInfo) != null && restrictionInfo.restrictType == 2) {
            z6 = true;
        }
        return this.globalChatHelper.checkGlobalChatAminoPlusOperation(z6, intParam, new Callback<Boolean>() { // from class: com.narvii.chat.MessageContentDetailFragment.3
            public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivityForResult(p1, p5);
            }

            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(MessageContentDetailFragment.this, MessageContentDetailFragment.this.globalChatHelper.communityDetailIntent(Integer.valueOf(intParam), null), 103);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkCommunityJoined() {
        if (((AccountService) getService("account")).hasAccount()) {
            final int intParam = getIntParam("__communityId");
            return this.globalChatHelper.checkCommunityJoined(intParam, new Callback<Boolean>() { // from class: com.narvii.chat.MessageContentDetailFragment.2
                public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivityForResult(p1, p5);
                }

                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(MessageContentDetailFragment.this, MessageContentDetailFragment.this.globalChatHelper.communityDetailIntent(Integer.valueOf(intParam), null), 103);
                }
            });
        }
        ensureLogin(new Intent());
        return false;
    }

    private boolean containBubble() {
        ChatMessage chatMessage = this.message;
        return (chatMessage == null || chatMessage.chatBubbleId == null) ? false : true;
    }

    private void fetchBubbleInfo(String str) {
        if (str == null) {
            return;
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/chat/chat-bubble/" + str).retry(1).build(), new ApiResponseListener<ChatBubbleResponse>(ChatBubbleResponse.class) { // from class: com.narvii.chat.MessageContentDetailFragment.6
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ChatBubbleResponse chatBubbleResponse) throws Exception {
                super.onFinish(apiRequest, chatBubbleResponse);
                MessageContentDetailFragment.this.chatBubble = chatBubbleResponse.chatBubble;
                MessageContentDetailFragment.this.detailRequestSent = true;
                MessageContentDetailFragment.this.allChatBubbleId = chatBubbleResponse.allChatsBubbleId;
                MessageContentDetailFragment.this.updateStatusView();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str2, apiResponse, th);
            }
        });
    }

    private void updateChatMessageView() {
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
                public void onClick(View view) throws Throwable {
                    MessageContentDetailFragment messageContentDetailFragment = MessageContentDetailFragment.this;
                    messageContentDetailFragment.audioHelper.handleChatBubbleClick(messageContentDetailFragment.message, MessageContentDetailFragment.this.chatBubbleView, false);
                }
            });
        } else {
            if (!chatMessage.isMediaMessage()) {
                final ChatHelper chatHelper = new ChatHelper(getContext());
                if (!TextUtils.isEmpty(chatHelper.getMessage(this.message))) {
                    NVText nVText = new NVText(chatHelper.getMessage(this.message));
                    this.chatBubbleView.setLayout(R.layout.chat_detail_text_scrollable);
                    int iMarkSimpleEntries = nVText.markSimpleEntries(DefaultTagClickListener.instance);
                    TextView textView = (TextView) this.chatBubbleView.findViewById(R.id.text);
                    textView.setText(nVText);
                    textView.setClickable(iMarkSimpleEntries > 0);
                    textView.setMovementMethod(LinkTouchMovementMethod.getInstance());
                    ChatMessage chatMessage2 = this.message;
                    if (chatMessage2 != null && (firstLinkSnippet = chatMessage2.getFirstLinkSnippet()) != null && firstLinkSnippet.getFirstMedia() != null) {
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
            } else if (TextUtils.isEmpty(this.message.content)) {
                ChatBubbleView chatBubbleView2 = this.chatBubbleView;
                Media media = this.message.media();
                int clientRefIdTmp = this.message.getClientRefIdTmp();
                ChatMessage chatMessage3 = this.message;
                chatBubbleView2.setImage(media, clientRefIdTmp, chatMessage3.extensions, chatMessage3.type == 1);
            } else {
                this.chatBubbleView.setVideo(this.message);
            }
        }
        this.chatBubbleView.setBackgroundDrawable(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatusView() {
        if (this.bubbleStatusView == null) {
            return;
        }
        ChatMessage chatMessage = this.message;
        boolean z6 = chatMessage != null && chatMessage.chatBubbleId == null;
        if (z6 || this.detailRequestSent) {
            if (z6) {
                ChatBubble chatBubble = new ChatBubble();
                this.chatBubble = chatBubble;
                chatBubble.type = -1;
                chatBubble.name = getString(R.string.default_bubble);
            }
            ChatBubble chatBubble2 = this.chatBubble;
            if (chatBubble2 == null) {
                return;
            }
            boolean z10 = chatBubble2.type == 2;
            if (z6) {
                this.imgBubblePreView.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_default_bubble));
            } else {
                this.imgBubblePreView.setImageUrl(chatBubble2.getPreviewUrl());
            }
            int iDpToPx = z10 ? 0 : (int) Utils.dpToPx(getContext(), 2.0f);
            this.imgBubblePreView.setPadding(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
            this.imgBubblePreView.setBackgroundDrawable(z10 ? null : ContextCompat.getDrawable(getContext(), R.drawable.bubble_icon_stroke_bg));
            this.imgBubblePreView.setCornerRadius(z10 ? (int) Utils.dpToPx(getContext(), 4.0f) : 0);
            this.storeItemNameView.setStoreItem(this.chatBubble);
            boolean z11 = containBubble() && this.chatBubble.type == 2;
            if (containBubble()) {
                this.chatBubble.isTotalOwned();
            }
            this.bubbleStatusView.setVisibility(z11 ? 0 : 4);
            this.statusController.setStoreItem(containBubble() ? this.chatBubble : null, this.allChatBubbleId);
            this.customBubbleContainer.setVisibility(8);
            int i10 = this.chatBubble.type;
            if (i10 == 2) {
                this.containerBubble.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.MessageContentDetailFragment.4
                    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (MessageContentDetailFragment.this.checkCommunityJoined()) {
                            Intent intent = FragmentWrapperActivity.intent(BubbleDetailFragment.class);
                            intent.putExtra("id", MessageContentDetailFragment.this.chatBubble.id());
                            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(MessageContentDetailFragment.this.chatBubble));
                            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Message Detail Page");
                            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(MessageContentDetailFragment.this, intent);
                        }
                    }
                });
            } else if (i10 == 1) {
                this.containerBubble.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.MessageContentDetailFragment.5
                    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (MessageContentDetailFragment.this.checkCommunityJoined()) {
                            Intent intent = FragmentWrapperActivity.intent(BubbleSettingFragment.class);
                            intent.putExtra(BubbleSettingFragment.KEY_CHAT_THREAD, MessageContentDetailFragment.this.getStringParam("thread"));
                            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(MessageContentDetailFragment.this, intent);
                        }
                    }
                });
            }
        }
    }

    public void delete(ChatMessage chatMessage) {
        new ChatRequestHelper(this).sendDeleteChatMessageRequest(this.threadId, chatMessage);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
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

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 103 && i11 == -1) {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://x" + getIntParam("__communityId") + "/chat-thread/" + this.threadId));
            intent2.putExtra("__model", false);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent2);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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
        if (!this.detailRequestSent) {
            fetchBubbleInfo(this.message.getBubbleId());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.flag_for_review, 2, R.string.flag_for_review).setIcon(R.drawable.ic_flag_white).setShowAsAction(2);
        menu.add(0, R.string.copy, 0, R.string.copy).setShowAsAction(0);
        menu.add(0, R.string.delete, 1, R.string.delete).setShowAsAction(0);
        menu.add(0, R.string.advanced, 3, R.string.advanced).setShowAsAction(0);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_bubble_detail, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ChatBubbleOwnStatusController chatBubbleOwnStatusController = this.statusController;
        if (chatBubbleOwnStatusController != null) {
            chatBubbleOwnStatusController.onDestroy();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        String str;
        switch (menuItem.getItemId()) {
            case R.string.advanced /* 2131886237 */:
                new AdvancedOptionDialog.Builder(this).nvObject(this.message).build().show();
                return true;
            case R.string.copy /* 2131886920 */:
                try {
                    ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
                    ChatMessage chatMessage = this.message;
                    if (chatMessage == null) {
                        str = null;
                    } else {
                        str = chatMessage.content;
                    }
                    clipboardManager.setPrimaryClip(ClipData.newPlainText("", str));
                    NVToast.makeText(getContext(), R.string.copied, 1).show();
                    break;
                } catch (Exception unused) {
                }
                return true;
            case R.string.delete /* 2131887008 */:
                delete(this.message);
                return true;
            case R.string.flag_for_review /* 2131888001 */:
                if (checkCommunityJoined()) {
                    new FlagReportOptionDialog.Builder(this).nvObject(this.message).build().show();
                }
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z6;
        String strUid;
        super.onPrepareOptionsMenu(menu);
        AccountService accountService = (AccountService) getService("account");
        User userProfile = accountService.getUserProfile();
        boolean z10 = false;
        if (userProfile != null && userProfile.isCurator()) {
            z6 = true;
        } else {
            z6 = false;
        }
        ChatMessage chatMessage = this.message;
        if (chatMessage != null) {
            strUid = chatMessage.uid();
        } else {
            strUid = null;
        }
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(strUid, accountService.getUserId());
        menu.findItem(R.string.advanced).setVisible(z6);
        menu.findItem(R.string.flag_for_review).setVisible(!zIsEqualsNotNull);
        MenuItem menuItemFindItem = menu.findItem(R.string.copy);
        ChatMessage chatMessage2 = this.message;
        if (chatMessage2 != null && chatMessage2.type == 0 && !chatMessage2.hasMedia()) {
            z10 = true;
        }
        menuItemFindItem.setVisible(z10);
        menu.findItem(R.string.delete).setVisible(zIsEqualsNotNull);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(KEY_DETAIL_REQUEST, this.detailRequestSent);
        bundle.putString(KEY_CHAT_MESSAGE, JacksonUtils.writeAsString(this.message));
        bundle.putString("bubble", JacksonUtils.writeAsString(this.chatBubble));
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.bubble_layout);
        this.containerBubble = viewFindViewById;
        viewFindViewById.setVisibility(0);
        this.imgBubblePreView = (NVImageView) view.findViewById(R.id.bubble_preview);
        this.customBubbleContainer = view.findViewById(R.id.custom_container);
        this.bubbleStatusView = (StoreItemStatusView) view.findViewById(R.id.get_bubble);
        ChatBubbleOwnStatusController chatBubbleOwnStatusController = new ChatBubbleOwnStatusController(this, this.bubbleStatusView, this.threadId) { // from class: com.narvii.chat.MessageContentDetailFragment.1
            @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
            public void onClickActivateItem() {
                if (MessageContentDetailFragment.this.checkAminoPlus()) {
                    super.onClickActivateItem();
                }
            }

            @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
            public void onClickGetItem() {
                if (MessageContentDetailFragment.this.checkAminoPlus()) {
                    super.onClickGetItem();
                }
            }

            @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
            public void onClickUseItem() {
                if (MessageContentDetailFragment.this.checkAminoPlus()) {
                    super.onClickUseItem();
                }
            }
        };
        this.statusController = chatBubbleOwnStatusController;
        chatBubbleOwnStatusController.source = "Message Detail Page";
        StoreItemNameView storeItemNameView = (StoreItemNameView) view.findViewById(R.id.item_name);
        this.storeItemNameView = storeItemNameView;
        storeItemNameView.setStoreItem(this.chatBubble);
        this.statusController.onCreate();
        updateStatusView();
        this.chatBubbleView = (ChatBubbleView) view.findViewById(R.id.chat_bubble);
        updateChatMessageView();
    }
}
