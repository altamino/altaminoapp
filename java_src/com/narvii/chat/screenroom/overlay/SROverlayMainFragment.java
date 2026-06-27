package com.narvii.chat.screenroom.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.ChatDetailDialog;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.ChatListFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.input.ChatInputFragment;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.chat.video.overlay.AvChatMessageListView;
import com.narvii.media.MediaGalleryActivity;
import com.narvii.model.ChatMessage;
import com.narvii.model.Media;
import com.narvii.monetization.sticker.StickerDetailFragment;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.video.NVFullScreenVideoActivity;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class SROverlayMainFragment extends NVFragment implements NotificationListener, ChatInputFragment.PanelHideListener, ChatService.ChatMessageReceptor {
    public static final int CHAT_MESSAGE_CONTENT_LENGTH_LIMIT = 90;
    private static final int VIEWIMAGE = 3;
    private ChatInputFragment chatInputFragment;
    private ChatListFragment chatListFragment;
    private AvChatMessageListView chatRecycleView;
    private ChatService chatService;
    private boolean ignoreTouchEvent;
    private boolean isKeyboardVisible;
    SoftKeyboard.KeyboardObserver keyboardObserver;
    Runnable runnable = new Runnable() { // from class: com.narvii.chat.screenroom.overlay.SROverlayMainFragment.1
        @Override // java.lang.Runnable
        public void run() {
            if (SROverlayMainFragment.this.getView() != null) {
                SROverlayMainFragment.this.getView().requestLayout();
            }
        }
    };
    int chatListMarginEnd = 0;
    AvChatMessageListView.ItemClickListener viewImageListener = new AvChatMessageListView.ItemClickListener() { // from class: com.narvii.chat.screenroom.overlay.SROverlayMainFragment.2
        @Override // com.narvii.chat.video.overlay.AvChatMessageListView.ItemClickListener
        public void onItemClicked(ChatMessage chatMessage) {
            if (chatMessage.isStickerMessage()) {
                Intent intent = FragmentWrapperActivity.intent(StickerDetailFragment.class);
                intent.putExtra("threadId", SROverlayMainFragment.this.getThreadId());
                intent.putExtra(AccountNotice.LEVEL_MESSAGE, JacksonUtils.writeAsString(chatMessage));
                SROverlayMainFragment.this.startActivity(intent);
                return;
            }
            if (chatMessage.hasMedia()) {
                if (chatMessage.mediaType == 100 && chatMessage.mediaValue != null) {
                    Media media = new Media();
                    media.type = chatMessage.mediaType;
                    media.url = chatMessage.mediaValue;
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(media);
                    Intent intent2 = new Intent(SROverlayMainFragment.this.getContext(), (Class<?>) MediaGalleryActivity.class);
                    intent2.putExtra("list", JacksonUtils.writeAsString(arrayList));
                    if (!chatMessage.isAccessibleByUser(null)) {
                        intent2.putExtra("hideShareBar", true);
                    }
                    intent2.putExtra("showCheckHD", true);
                    SROverlayMainFragment.this.startActivityForResult(intent2, 3);
                    return;
                }
                if (chatMessage.media().isVideo()) {
                    SROverlayMainFragment.this.startActivity(NVFullScreenVideoActivity.intent(chatMessage.media()));
                    return;
                }
                return;
            }
            String str = chatMessage.content;
            if (str == null || str.length() <= 90) {
                return;
            }
            ChatDetailDialog chatDetailDialog = new ChatDetailDialog(SROverlayMainFragment.this.getContext());
            chatDetailDialog.setChatMessage(chatMessage);
            chatDetailDialog.show();
        }
    };

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i) {
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity() instanceof NVActivity) {
            Fragment rootFragment = ((NVActivity) getActivity()).getRootFragment();
            if (rootFragment instanceof ChatFragment) {
                this.chatListFragment = (ChatListFragment) rootFragment.getChildFragmentManager().findFragmentByTag("chatList");
                this.chatInputFragment = (ChatInputFragment) rootFragment.getChildFragmentManager().findFragmentByTag("chatInput");
            }
        }
        if (this.chatListFragment == null || this.chatInputFragment == null) {
            Log.e("sr", "can not find chat list or chat input");
        }
        ChatInputFragment chatInputFragment = this.chatInputFragment;
        if (chatInputFragment != null) {
            chatInputFragment.addPanelHideListener(this);
        }
        this.chatService = (ChatService) getService("chat");
        this.chatService.addThreadLvelRecptor(getThreadId(), this);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.sr_overlay_main, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(final View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.chatRecycleView = (AvChatMessageListView) view.findViewById(R.id.chat_recycle);
        this.chatRecycleView.setItemClickListener(this.viewImageListener);
        int screenWidth = Utils.getScreenWidth(getContext());
        ViewGroup.LayoutParams layoutParams = this.chatRecycleView.getLayoutParams();
        layoutParams.height = getResources().getDimensionPixelSize(R.dimen.vv_chat_list_height);
        this.chatListMarginEnd = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_height) + Utils.dpToPxInt(getContext(), 132.0f);
        layoutParams.width = screenWidth - this.chatListMarginEnd;
        this.chatRecycleView.setLayoutParams(layoutParams);
        this.keyboardObserver = SoftKeyboard.observeKeyboard(getView(), new Callback<Boolean>() { // from class: com.narvii.chat.screenroom.overlay.SROverlayMainFragment.3
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                SROverlayMainFragment.this.isKeyboardVisible = bool.booleanValue();
            }
        });
        this.chatRecycleView.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.chat.screenroom.overlay.SROverlayMainFragment.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                View viewFindViewById;
                if (motionEvent.getAction() == 0) {
                    SROverlayMainFragment.this.ignoreTouchEvent = false;
                }
                if (!SROverlayMainFragment.this.ignoreTouchEvent) {
                    boolean z = true;
                    boolean z2 = SROverlayMainFragment.this.chatInputFragment == null || SROverlayMainFragment.this.chatInputFragment.isAllPanelHidden();
                    SROverlayMainFragment sROverlayMainFragment = SROverlayMainFragment.this;
                    if (!sROverlayMainFragment.isKeyboardVisible && z2) {
                        z = false;
                    }
                    sROverlayMainFragment.ignoreTouchEvent = z;
                }
                if (!SROverlayMainFragment.this.ignoreTouchEvent && view.getRootView() != null && (viewFindViewById = view.getRootView().findViewById(R.id.rtc_screen_room_scroll_intercept)) != null) {
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.offsetLocation(Utils.isRtl() ? SROverlayMainFragment.this.chatListMarginEnd : 0.0f, (view.getHeight() - SROverlayMainFragment.this.chatRecycleView.getHeight()) - SROverlayMainFragment.this.getResources().getDimensionPixelSize(R.dimen.rtc_bottom_chat_list_margin));
                    if (viewFindViewById != null) {
                        viewFindViewById.dispatchTouchEvent(motionEventObtain);
                    }
                }
                Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.screenroom.overlay.SROverlayMainFragment.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!SROverlayMainFragment.this.isAdded() || SROverlayMainFragment.this.isDestoryed() || SROverlayMainFragment.this.chatInputFragment == null) {
                            return;
                        }
                        SROverlayMainFragment.this.chatInputFragment.hideAllPanels();
                    }
                }, 100L);
                return false;
            }
        });
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        SoftKeyboard.KeyboardObserver keyboardObserver = this.keyboardObserver;
        if (keyboardObserver != null) {
            keyboardObserver.dispose();
        }
        this.chatService.removeThreadLevelReceptor(getThreadId(), this);
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i, ChatMessageDto chatMessageDto) {
        this.chatRecycleView.addNewMessage(chatMessageDto.chatMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getThreadId() {
        return getStringParam("threadId");
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        AvChatMessageListView avChatMessageListView;
        if ("new".equals(notification.action)) {
            Object obj = notification.obj;
            if ((obj instanceof ChatMessage) && Utils.isEqualsNotNull(((ChatMessage) obj).threadId, getThreadId()) && (avChatMessageListView = this.chatRecycleView) != null) {
                avChatMessageListView.addNewMessage((ChatMessage) notification.obj);
            }
        }
    }

    @Override // com.narvii.chat.input.ChatInputFragment.PanelHideListener
    public void onPanelHide() {
        this.runnable.run();
    }

    @Override // com.narvii.chat.input.ChatInputFragment.PanelHideListener
    public void onPanelShow() {
        this.runnable.run();
    }
}
