package com.narvii.chat.screenroom.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
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
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
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

        @Override // com.narvii.chat.video.overlay.AvChatMessageListView.ItemClickListener
        public void onItemClicked(ChatMessage chatMessage) {
            if (chatMessage.isStickerMessage()) {
                Intent intent = FragmentWrapperActivity.intent(StickerDetailFragment.class);
                intent.putExtra("threadId", SROverlayMainFragment.this.getThreadId());
                intent.putExtra(AccountNotice.LEVEL_MESSAGE, JacksonUtils.writeAsString(chatMessage));
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(SROverlayMainFragment.this, intent);
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
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(SROverlayMainFragment.this, intent2, 3);
                    return;
                }
                if (chatMessage.media().isVideo()) {
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(SROverlayMainFragment.this, NVFullScreenVideoActivity.intent(chatMessage.media()));
                    return;
                }
                return;
            }
            String str = chatMessage.content;
            if (str != null && str.length() > 90) {
                ChatDetailDialog chatDetailDialog = new ChatDetailDialog(SROverlayMainFragment.this.getContext());
                chatDetailDialog.setChatMessage(chatMessage);
                chatDetailDialog.show();
            }
        }
    };

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i10) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getThreadId() {
        return getStringParam("threadId");
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i10, @NotNull ChatMessageDto chatMessageDto) {
        this.chatRecycleView.addNewMessage(chatMessageDto.chatMessage);
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

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity() instanceof NVActivity) {
            Fragment rootFragment = ((NVActivity) getActivity()).getRootFragment();
            if (rootFragment instanceof ChatFragment) {
                this.chatListFragment = (ChatListFragment) rootFragment.getChildFragmentManager().m0("chatList");
                this.chatInputFragment = (ChatInputFragment) rootFragment.getChildFragmentManager().m0("chatInput");
            }
        }
        if (this.chatListFragment == null || this.chatInputFragment == null) {
            Log.e("sr", "can not find chat list or chat input");
        }
        ChatInputFragment chatInputFragment = this.chatInputFragment;
        if (chatInputFragment != null) {
            chatInputFragment.addPanelHideListener(this);
        }
        ChatService chatService = (ChatService) getService("chat");
        this.chatService = chatService;
        chatService.addThreadLvelRecptor(getThreadId(), this);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.sr_overlay_main, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        SoftKeyboard.KeyboardObserver keyboardObserver = this.keyboardObserver;
        if (keyboardObserver != null) {
            keyboardObserver.dispose();
        }
        this.chatService.removeThreadLevelReceptor(getThreadId(), this);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull final View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        AvChatMessageListView avChatMessageListView = (AvChatMessageListView) view.findViewById(R.id.chat_recycle);
        this.chatRecycleView = avChatMessageListView;
        avChatMessageListView.setItemClickListener(this.viewImageListener);
        int screenWidth = Utils.getScreenWidth(getContext());
        ViewGroup.LayoutParams layoutParams = this.chatRecycleView.getLayoutParams();
        layoutParams.height = getResources().getDimensionPixelSize(R.dimen.vv_chat_list_height);
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_height) + Utils.dpToPxInt(getContext(), 132.0f);
        this.chatListMarginEnd = dimensionPixelSize;
        layoutParams.width = screenWidth - dimensionPixelSize;
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
                SoftKeyboard.hideSoftKeyboard(SROverlayMainFragment.this.getContext());
                if (motionEvent.getAction() == 0) {
                    SROverlayMainFragment.this.ignoreTouchEvent = false;
                }
                if (!SROverlayMainFragment.this.ignoreTouchEvent) {
                    boolean z6 = true;
                    boolean z10 = SROverlayMainFragment.this.chatInputFragment == null || SROverlayMainFragment.this.chatInputFragment.isAllPanelHidden();
                    SROverlayMainFragment sROverlayMainFragment = SROverlayMainFragment.this;
                    if (!sROverlayMainFragment.isKeyboardVisible && z10) {
                        z6 = false;
                    }
                    sROverlayMainFragment.ignoreTouchEvent = z6;
                }
                if (!SROverlayMainFragment.this.ignoreTouchEvent && view.getRootView() != null && (viewFindViewById = view.getRootView().findViewById(R.id.rtc_screen_room_scroll_intercept)) != null) {
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.offsetLocation(Utils.isRtl() ? SROverlayMainFragment.this.chatListMarginEnd : 0.0f, (view.getHeight() - SROverlayMainFragment.this.chatRecycleView.getHeight()) - SROverlayMainFragment.this.getResources().getDimensionPixelSize(R.dimen.rtc_bottom_chat_list_margin));
                    viewFindViewById.dispatchTouchEvent(motionEventObtain);
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
}
