package com.narvii.chat;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.ChatMessageItem;
import com.narvii.chat.audio.AudioHelper;
import com.narvii.chat.detail.MemberListResponse;
import com.narvii.flag.resolve.FlagModeHelper;
import com.narvii.media.MediaGalleryOptionActivity;
import com.narvii.media.MediaPlayerManager;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.bubble.BubbleViewContainer;
import com.narvii.monetization.sticker.StickerDetailFragment;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ChatMessageItemDetailFragment extends NVFragment implements View.OnClickListener, ChatMessageItem.OnSeeAllClickedListener {
    public static final String KEY_CHAT_MESSAGE = "chatMessage";
    public static final String KEY_FALLBACK_TITLE = "fallBackTitle";
    public static final String KEY_MESSAGE_ID = "messageId";
    public static final String KEY_THREAD_ID = "threadId";
    private AccountService accountService;
    AudioHelper audioHelper;
    private View btnErrorRetry;
    protected View btnSeeAll;
    private BubbleViewContainer bubbleViewContainer;
    protected ChatMessage chatMessage;
    protected ChatMessageItem chatMessageItem;
    private View contentView;
    private String error;
    private View errorView;
    protected NVImageView imgAvatar;
    private View loadingView;
    protected String messageId;
    protected String threadId;
    private TextView tvErrorMessage;
    protected NicknameView tvNickname;

    protected int baseLayoutId() {
        return R.layout.chat_message_detail_layout;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.chat_message);
        this.threadId = getStringParam("threadId");
        this.messageId = getStringParam(KEY_MESSAGE_ID);
        this.audioHelper = new AudioHelper(this);
        this.accountService = (AccountService) getService("account");
        if (bundle != null) {
            this.chatMessage = (ChatMessage) JacksonUtils.readAs(bundle.getString(KEY_CHAT_MESSAGE), ChatMessage.class);
        } else {
            this.chatMessage = (ChatMessage) JacksonUtils.readAs(getStringParam(KEY_CHAT_MESSAGE), ChatMessage.class);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(baseLayoutId(), viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.contentView = view.findViewById(R.id.content);
        this.loadingView = view.findViewById(android.R.id.progress);
        this.errorView = view.findViewById(R.id.error_container);
        this.tvErrorMessage = (TextView) view.findViewById(R.id.error_message);
        this.btnErrorRetry = view.findViewById(R.id.error_retry);
        this.btnErrorRetry.setOnClickListener(this);
        this.chatMessageItem = (ChatMessageItem) view.findViewById(R.id.chat_message_item);
        this.bubbleViewContainer = (BubbleViewContainer) view.findViewById(R.id.chat_bubble_container);
        this.bubbleViewContainer.setOnClickListener(this);
        view.findViewById(R.id.chat_sticker).setOnClickListener(this);
        view.findViewById(R.id.mood_sticker).setOnClickListener(this);
        this.btnSeeAll = view.findViewById(R.id.chat_see_all);
        this.btnSeeAll.setOnClickListener(this);
        this.btnSeeAll.setVisibility(getBooleanParam("seeAll", true) ? 0 : 8);
        View viewFindViewById = view.findViewById(R.id.chat_see_all_divider);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(getBooleanParam("seeAll", true) ? 0 : 8);
        }
        this.imgAvatar = (NVImageView) view.findViewById(R.id.avatar);
        this.imgAvatar.setOnClickListener(this);
        this.tvNickname = (NicknameView) view.findViewById(R.id.nickname);
        this.tvNickname.setOnClickListener(this);
        updateViews();
        if (this.chatMessage == null) {
            sendRequest();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(KEY_CHAT_MESSAGE, JacksonUtils.writeAsString(this.chatMessage));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViews() {
        this.loadingView.setVisibility((this.chatMessage == null && TextUtils.isEmpty(this.error)) ? 0 : 8);
        this.contentView.setVisibility(this.chatMessage != null ? 0 : 8);
        this.errorView.setVisibility(TextUtils.isEmpty(this.error) ? 8 : 0);
        updateChatMessageView();
        this.tvErrorMessage.setText(this.error);
    }

    protected void updateChatMessageView() {
        ChatMessage chatMessage = this.chatMessage;
        if (chatMessage == null) {
            return;
        }
        User user = chatMessage.author;
        boolean z = (user == null || user.uid() == null) ? false : true;
        NVImageView nVImageView = this.imgAvatar;
        if (nVImageView != null) {
            nVImageView.setVisibility(z ? 0 : 8);
        }
        NicknameView nicknameView = this.tvNickname;
        if (nicknameView != null) {
            nicknameView.setVisibility(z ? 0 : 8);
        }
        ChatMessageItem chatMessageItem = this.chatMessageItem;
        if (chatMessageItem != null) {
            chatMessageItem.setMessage(this.chatMessage, false, false, getBooleanParam("showDisabled", false), null);
            this.chatMessageItem.setOnSeeAllClickedListener(this);
            ChatMessage chatMessage2 = this.chatMessage;
            this.chatMessageItem.setbubbleColor(chatMessage2 != null && chatMessage2.author != null && Utils.isEqualsNotNull(this.accountService.getUserId(), this.chatMessage.author.uid) ? getResources().getColor(R.color.chat_bubble_mine) : -723724);
        }
        ChatMessage chatMessage3 = this.chatMessage;
        changeSeeAllButton((chatMessage3 == null || chatMessage3.threadId == null || chatMessage3.uid() == null) ? false : true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeSeeAllButton(boolean z) {
        this.btnSeeAll.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), z ? R.drawable.button_round_blue_l : R.drawable.button_round_gray));
        this.btnSeeAll.setClickable(z);
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) throws IllegalStateException {
        super.onActiveChanged(z);
        if (z) {
            return;
        }
        ((MediaPlayerManager) getService("mediaPlayer")).releaseMediaPlayer();
    }

    protected void buildDeletedMessage() {
        this.chatMessage = new ChatMessage();
        ChatMessage chatMessage = this.chatMessage;
        chatMessage._status = 10;
        chatMessage.author = new User();
        ChatMessage chatMessage2 = this.chatMessage;
        chatMessage2.threadId = this.threadId;
        chatMessage2.messageId = this.messageId;
        chatMessage2.type = 0;
        chatMessage2.content = getStringParam(KEY_FALLBACK_TITLE) == null ? getString(R.string.chat_not_existed) : getStringParam(KEY_FALLBACK_TITLE);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws IllegalStateException {
        User user;
        switch (view.getId()) {
            case R.id.avatar /* 2131296484 */:
            case R.id.nickname /* 2131298148 */:
                ChatMessage chatMessage = this.chatMessage;
                if (chatMessage != null && (user = chatMessage.author) != null) {
                    startActivity(UserProfileFragment.intent(this, user));
                    break;
                }
                break;
            case R.id.chat_bubble_container /* 2131296730 */:
                onMessageTapped();
                break;
            case R.id.chat_see_all /* 2131296770 */:
                sellAllConversation();
                break;
            case R.id.chat_sticker /* 2131296775 */:
            case R.id.mood_sticker /* 2131298082 */:
                Intent intent = FragmentWrapperActivity.intent(StickerDetailFragment.class);
                intent.putExtra("threadId", this.threadId);
                intent.putExtra(AccountNotice.LEVEL_MESSAGE, JacksonUtils.writeAsString(this.chatMessage));
                startActivity(intent);
                break;
            case R.id.error_retry /* 2131297280 */:
                onRetry();
                break;
        }
    }

    private void onMessageTapped() throws IllegalStateException {
        ChatMessageItem chatMessageItem;
        ChatMessage chatMessage = this.chatMessage;
        if (chatMessage != null && chatMessage.isAccessibleByUser(this.accountService.getUserProfile())) {
            if (!this.chatMessage.isAccessibleByUser(null) || ((chatMessageItem = this.chatMessageItem) != null && chatMessageItem.isExpandable())) {
                Intent intent = FragmentWrapperActivity.intent(MessageContentDetailFragment.class);
                intent.putExtra("threadId", this.threadId);
                intent.putExtra(AccountNotice.LEVEL_MESSAGE, JacksonUtils.writeAsString(this.chatMessage));
                startActivity(intent);
                return;
            }
            ChatMessage chatMessage2 = this.chatMessage;
            if (chatMessage2.mediaType == 100 && chatMessage2.mediaValue != null) {
                Media media = new Media();
                ChatMessage chatMessage3 = this.chatMessage;
                media.type = chatMessage3.mediaType;
                media.url = chatMessage3.mediaValue;
                ArrayList arrayList = new ArrayList();
                arrayList.add(media);
                Intent intent2 = new Intent(getContext(), (Class<?>) MediaGalleryOptionActivity.class);
                intent2.putExtra("parent", JacksonUtils.writeAsString(this.chatMessage));
                intent2.putExtra("parentClass", ChatMessage.class);
                intent2.putExtra("list", JacksonUtils.writeAsString(arrayList));
                intent2.putExtra("showCheckHD", true);
                if (!this.chatMessage.isAccessibleByUser(null)) {
                    intent2.putExtra("hideShareBar", true);
                }
                startActivity(intent2);
                return;
            }
            ChatMessage chatMessage4 = this.chatMessage;
            if (chatMessage4.mediaType == 110 && chatMessage4.mediaValue != null) {
                this.audioHelper.handleChatBubbleClick(chatMessage4, this.chatMessageItem, false);
            } else {
                if (!this.chatMessage.isMediaVideo() || this.chatMessage.media() == null) {
                    return;
                }
                startActivity(NVFullScreenVideoActivity.intent(this.chatMessage.media()));
            }
        }
    }

    private void onRetry() {
        this.error = null;
        sendRequest();
        updateViews();
    }

    private void sellAllConversation() {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        final ApiService apiService = (ApiService) getService("api");
        apiService.exec(new ApiRequest.Builder().path("/chat/thread/" + this.threadId).build(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.ChatMessageItemDetailFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ThreadResponse threadResponse) throws Exception {
                List<User> list;
                super.onFinish(apiRequest, (ApiRequest) threadResponse);
                progressDialog.dismiss();
                ChatThread chatThread = threadResponse.thread;
                boolean z = (chatThread == null || (list = chatThread.membersSummary) == null || !Utils.containsId(list, ChatMessageItemDetailFragment.this.accountService.getUserId())) ? false : true;
                if (threadResponse.thread.type == 2 || z) {
                    Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
                    intent.putExtra("id", ChatMessageItemDetailFragment.this.threadId);
                    ChatMessageItemDetailFragment.this.startActivity(intent);
                } else {
                    apiService.exec(new ApiRequest.Builder().path("/chat/thread/" + ChatMessageItemDetailFragment.this.threadId + "/member?start=0&size=100&type=default").chatServer().build(), new ApiResponseListener<MemberListResponse>(MemberListResponse.class) { // from class: com.narvii.chat.ChatMessageItemDetailFragment.1.1
                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFinish(ApiRequest apiRequest2, MemberListResponse memberListResponse) throws Exception {
                            super.onFinish(apiRequest2, (ApiRequest) memberListResponse);
                            List<User> list2 = memberListResponse.memberList;
                            if (list2 != null && Utils.containsId(list2, ChatMessageItemDetailFragment.this.accountService.getUserId())) {
                                Intent intent2 = FragmentWrapperActivity.intent(ChatFragment.class);
                                intent2.putExtra("id", ChatMessageItemDetailFragment.this.threadId);
                                ChatMessageItemDetailFragment.this.startActivity(intent2);
                            } else {
                                FlagModeHelper.showNotAvailableDialog(ChatMessageItemDetailFragment.this.getContext(), R.string.conversation_not_public);
                                ChatMessageItemDetailFragment.this.changeSeeAllButton(false);
                            }
                            progressDialog.dismiss();
                        }

                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFail(ApiRequest apiRequest2, int i, List<NameValuePair> list2, String str, ApiResponse apiResponse, Throwable th) {
                            super.onFail(apiRequest2, i, list2, str, apiResponse, th);
                            FlagModeHelper.showNotAvailableDialog(ChatMessageItemDetailFragment.this.getContext(), R.string.conversation_not_public);
                            ChatMessageItemDetailFragment.this.changeSeeAllButton(false);
                            progressDialog.dismiss();
                        }
                    });
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                progressDialog.dismiss();
                NVToast.makeText(ChatMessageItemDetailFragment.this.getContext(), str, 1).show();
            }
        });
    }

    private void sendRequest() {
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/chat/thread/" + this.threadId + "/message/" + this.messageId).build(), new ApiResponseListener<MessageResponse>(MessageResponse.class) { // from class: com.narvii.chat.ChatMessageItemDetailFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, MessageResponse messageResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) messageResponse);
                ChatMessageItemDetailFragment chatMessageItemDetailFragment = ChatMessageItemDetailFragment.this;
                chatMessageItemDetailFragment.chatMessage = messageResponse.message;
                chatMessageItemDetailFragment.updateViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                if (i != 1601) {
                    ChatMessageItemDetailFragment.this.error = str;
                    ChatMessageItemDetailFragment.this.updateViews();
                    ChatMessageItemDetailFragment.this.changeSeeAllButton(false);
                } else {
                    ChatMessageItemDetailFragment.this.buildDeletedMessage();
                    ChatMessageItemDetailFragment.this.updateViews();
                }
            }
        });
    }

    @Override // com.narvii.chat.ChatMessageItem.OnSeeAllClickedListener
    public void onSeeAllClicked(ChatMessage chatMessage) {
        Intent intent = FragmentWrapperActivity.intent(MessageContentDetailFragment.class);
        intent.putExtra("threadId", this.threadId);
        intent.putExtra(AccountNotice.LEVEL_MESSAGE, JacksonUtils.writeAsString(chatMessage));
        startActivity(intent);
    }
}
