package com.narvii.chat;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
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
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
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

    private void onRetry() {
        this.error = null;
        sendRequest();
        updateViews();
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    protected int baseLayoutId() {
        return R.layout.chat_message_detail_layout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeSeeAllButton(boolean z6) {
        this.btnSeeAll.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), z6 ? R.drawable.button_round_blue_l : R.drawable.button_round_gray));
        this.btnSeeAll.setClickable(z6);
    }

    private void onMessageTapped() throws Throwable {
        ChatMessageItem chatMessageItem;
        ChatMessage chatMessage = this.chatMessage;
        if (chatMessage != null && chatMessage.isAccessibleByUser(this.accountService.getUserProfile())) {
            if (!this.chatMessage.isAccessibleByUser(null) || ((chatMessageItem = this.chatMessageItem) != null && chatMessageItem.isExpandable())) {
                Intent intent = FragmentWrapperActivity.intent(MessageContentDetailFragment.class);
                intent.putExtra("threadId", this.threadId);
                intent.putExtra(AccountNotice.LEVEL_MESSAGE, JacksonUtils.writeAsString(this.chatMessage));
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
                return;
            }
            ChatMessage chatMessage2 = this.chatMessage;
            int i10 = chatMessage2.mediaType;
            if (i10 != 100 || chatMessage2.mediaValue == null) {
                if (i10 == 110 && chatMessage2.mediaValue != null) {
                    this.audioHelper.handleChatBubbleClick(chatMessage2, this.chatMessageItem, false);
                    return;
                } else {
                    if (!chatMessage2.isMediaVideo() || this.chatMessage.media() == null) {
                        return;
                    }
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, NVFullScreenVideoActivity.intent(this.chatMessage.media()));
                    return;
                }
            }
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
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent2);
        }
    }

    private void sellAllConversation() {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        final ApiService apiService = (ApiService) getService("api");
        apiService.exec(new ApiRequest.Builder().path("/chat/thread/" + this.threadId).build(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.ChatMessageItemDetailFragment.1
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ThreadResponse threadResponse) throws Exception {
                List<User> list;
                super.onFinish(apiRequest, threadResponse);
                progressDialog.dismiss();
                ChatThread chatThread = threadResponse.thread;
                boolean z6 = (chatThread == null || (list = chatThread.membersSummary) == null || !Utils.containsId(list, ChatMessageItemDetailFragment.this.accountService.getUserId())) ? false : true;
                if (threadResponse.thread.type == 2 || z6) {
                    Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
                    intent.putExtra("id", ChatMessageItemDetailFragment.this.threadId);
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ChatMessageItemDetailFragment.this, intent);
                } else {
                    apiService.exec(new ApiRequest.Builder().path("/chat/thread/" + ChatMessageItemDetailFragment.this.threadId + "/member?start=0&size=100&type=default").chatServer().build(), new ApiResponseListener<MemberListResponse>(MemberListResponse.class) { // from class: com.narvii.chat.ChatMessageItemDetailFragment.1.1
                        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                            if (p1 == null) {
                                return;
                            }
                            p0.startActivity(p1);
                        }

                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFinish(ApiRequest apiRequest2, MemberListResponse memberListResponse) throws Exception {
                            super.onFinish(apiRequest2, memberListResponse);
                            List<User> list2 = memberListResponse.memberList;
                            if (list2 == null || !Utils.containsId(list2, ChatMessageItemDetailFragment.this.accountService.getUserId())) {
                                FlagModeHelper.showNotAvailableDialog(ChatMessageItemDetailFragment.this.getContext(), R.string.conversation_not_public);
                                ChatMessageItemDetailFragment.this.changeSeeAllButton(false);
                            } else {
                                Intent intent2 = FragmentWrapperActivity.intent(ChatFragment.class);
                                intent2.putExtra("id", ChatMessageItemDetailFragment.this.threadId);
                                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ChatMessageItemDetailFragment.this, intent2);
                            }
                            progressDialog.dismiss();
                        }

                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFail(ApiRequest apiRequest2, int i10, List<NameValuePair> list2, String str, ApiResponse apiResponse, Throwable th) {
                            super.onFail(apiRequest2, i10, list2, str, apiResponse, th);
                            FlagModeHelper.showNotAvailableDialog(ChatMessageItemDetailFragment.this.getContext(), R.string.conversation_not_public);
                            ChatMessageItemDetailFragment.this.changeSeeAllButton(false);
                            progressDialog.dismiss();
                        }
                    });
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                progressDialog.dismiss();
                NVToast.makeText(ChatMessageItemDetailFragment.this.getContext(), str, 1).show();
            }
        });
    }

    private void sendRequest() {
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/chat/thread/" + this.threadId + "/message/" + this.messageId).build(), new ApiResponseListener<MessageResponse>(MessageResponse.class) { // from class: com.narvii.chat.ChatMessageItemDetailFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, MessageResponse messageResponse) throws Exception {
                super.onFinish(apiRequest, messageResponse);
                ChatMessageItemDetailFragment chatMessageItemDetailFragment = ChatMessageItemDetailFragment.this;
                chatMessageItemDetailFragment.chatMessage = messageResponse.message;
                chatMessageItemDetailFragment.updateViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                if (i10 != 1601) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViews() {
        this.loadingView.setVisibility((this.chatMessage == null && TextUtils.isEmpty(this.error)) ? 0 : 8);
        this.contentView.setVisibility(this.chatMessage != null ? 0 : 8);
        this.errorView.setVisibility(TextUtils.isEmpty(this.error) ? 8 : 0);
        updateChatMessageView();
        this.tvErrorMessage.setText(this.error);
    }

    protected void buildDeletedMessage() {
        ChatMessage chatMessage = new ChatMessage();
        this.chatMessage = chatMessage;
        chatMessage._status = 10;
        chatMessage.author = new User();
        ChatMessage chatMessage2 = this.chatMessage;
        chatMessage2.threadId = this.threadId;
        chatMessage2.messageId = this.messageId;
        chatMessage2.type = 0;
        chatMessage2.content = getStringParam(KEY_FALLBACK_TITLE) == null ? getString(R.string.chat_not_existed) : getStringParam(KEY_FALLBACK_TITLE);
    }

    @Override // com.narvii.chat.ChatMessageItem.OnSeeAllClickedListener
    public void onSeeAllClicked(ChatMessage chatMessage) {
        Intent intent = FragmentWrapperActivity.intent(MessageContentDetailFragment.class);
        intent.putExtra("threadId", this.threadId);
        intent.putExtra(AccountNotice.LEVEL_MESSAGE, JacksonUtils.writeAsString(chatMessage));
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    protected void updateChatMessageView() {
        ChatMessage chatMessage = this.chatMessage;
        if (chatMessage == null) {
            return;
        }
        User user = chatMessage.author;
        boolean z6 = (user == null || user.uid() == null) ? false : true;
        NVImageView nVImageView = this.imgAvatar;
        if (nVImageView != null) {
            nVImageView.setVisibility(z6 ? 0 : 8);
        }
        NicknameView nicknameView = this.tvNickname;
        if (nicknameView != null) {
            nicknameView.setVisibility(z6 ? 0 : 8);
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

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        if (!z6) {
            ((MediaPlayerManager) getService("mediaPlayer")).releaseMediaPlayer();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Throwable {
        User user;
        switch (view.getId()) {
            case R.id.avatar /* 2131362161 */:
            case R.id.nickname /* 2131364345 */:
                ChatMessage chatMessage = this.chatMessage;
                if (chatMessage != null && (user = chatMessage.author) != null) {
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, UserProfileFragment.intent(this, user));
                    break;
                }
                break;
            case R.id.chat_bubble_container /* 2131362449 */:
                onMessageTapped();
                break;
            case R.id.chat_see_all /* 2131362490 */:
                sellAllConversation();
                break;
            case R.id.chat_sticker /* 2131362495 */:
            case R.id.mood_sticker /* 2131364235 */:
                Intent intent = FragmentWrapperActivity.intent(StickerDetailFragment.class);
                intent.putExtra("threadId", this.threadId);
                intent.putExtra(AccountNotice.LEVEL_MESSAGE, JacksonUtils.writeAsString(this.chatMessage));
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
                break;
            case R.id.error_retry /* 2131363079 */:
                onRetry();
                break;
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(baseLayoutId(), viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(KEY_CHAT_MESSAGE, JacksonUtils.writeAsString(this.chatMessage));
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        int i10;
        super.onViewCreated(view, bundle);
        this.contentView = view.findViewById(R.id.content);
        this.loadingView = view.findViewById(android.R.id.progress);
        this.errorView = view.findViewById(R.id.error_container);
        this.tvErrorMessage = (TextView) view.findViewById(R.id.error_message);
        View viewFindViewById = view.findViewById(R.id.error_retry);
        this.btnErrorRetry = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        this.chatMessageItem = (ChatMessageItem) view.findViewById(R.id.chat_message_item);
        BubbleViewContainer bubbleViewContainer = (BubbleViewContainer) view.findViewById(R.id.chat_bubble_container);
        this.bubbleViewContainer = bubbleViewContainer;
        bubbleViewContainer.setOnClickListener(this);
        view.findViewById(R.id.chat_sticker).setOnClickListener(this);
        view.findViewById(R.id.mood_sticker).setOnClickListener(this);
        View viewFindViewById2 = view.findViewById(R.id.chat_see_all);
        this.btnSeeAll = viewFindViewById2;
        viewFindViewById2.setOnClickListener(this);
        View view2 = this.btnSeeAll;
        int i11 = 8;
        if (getBooleanParam("seeAll", true)) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        view2.setVisibility(i10);
        View viewFindViewById3 = view.findViewById(R.id.chat_see_all_divider);
        if (viewFindViewById3 != null) {
            if (getBooleanParam("seeAll", true)) {
                i11 = 0;
            }
            viewFindViewById3.setVisibility(i11);
        }
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.avatar);
        this.imgAvatar = nVImageView;
        nVImageView.setOnClickListener(this);
        NicknameView nicknameView = (NicknameView) view.findViewById(R.id.nickname);
        this.tvNickname = nicknameView;
        nicknameView.setOnClickListener(this);
        updateViews();
        if (this.chatMessage == null) {
            sendRequest();
        }
    }
}
