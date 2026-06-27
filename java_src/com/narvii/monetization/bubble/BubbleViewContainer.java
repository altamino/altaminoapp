package com.narvii.monetization.bubble;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Build;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatBubbleView;
import com.narvii.chat.audio.AudioPlayer;
import com.narvii.chat.util.ChatHelper;
import com.narvii.media.MediaPlayerManager;
import com.narvii.media.MediaStatus;
import com.narvii.model.BubbleInfo;
import com.narvii.model.BubbleSlot;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatMessage;
import com.narvii.model.Media;
import com.narvii.model.SlotPoint;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class BubbleViewContainer extends FrameLayout {
    AccountService account;
    private BubbleHelper bubbleHelper;
    BubbleService bubbleService;
    public ChatBubbleView chatBubbleView;
    ChatHelper chatHelper;
    private int cid;
    private ViewGroup contentContainer;
    DoubleClickListener doubleClickListener;
    GestureDetector gd;
    private boolean isDoubleTap;
    private boolean isMine;
    private View root;
    private ChatBubble threadBubble;

    public interface DoubleClickListener {
        void onDoubleClicked();
    }

    public BubbleViewContainer(Context context) {
        this(context, null);
    }

    public BubbleViewContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        FrameLayout.inflate(context, R.layout.bubble_view_container, this);
        NVContext nVContext = Utils.getNVContext(context);
        this.bubbleService = (BubbleService) nVContext.getService("bubble");
        this.account = (AccountService) nVContext.getService("account");
        this.bubbleHelper = new BubbleHelper(nVContext);
        this.chatHelper = new ChatHelper(getContext());
        this.gd = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.monetization.bubble.BubbleViewContainer.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                BubbleViewContainer.this.performClick();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                DoubleClickListener doubleClickListener = BubbleViewContainer.this.doubleClickListener;
                if (doubleClickListener != null) {
                    doubleClickListener.onDoubleClicked();
                }
                BubbleViewContainer.this.isDoubleTap = true;
                return true;
            }
        });
    }

    public void setDoubleClickListener(DoubleClickListener doubleClickListener) {
        this.doubleClickListener = doubleClickListener;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.gd.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.isDoubleTap = false;
        this.gd.onTouchEvent(motionEvent);
        if (this.isDoubleTap) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.contentContainer = (ViewGroup) findViewById(R.id.content);
        this.chatBubbleView = (ChatBubbleView) findViewById(R.id.chat_bubble);
        this.root = findViewById(R.id.root);
    }

    public void setContentText(CharSequence charSequence, ChatMessage chatMessage) throws Resources.NotFoundException, IOException {
        setContentText(charSequence, false, null, false, chatMessage);
    }

    public void setContentText(CharSequence charSequence, boolean z, ObjectNode objectNode, boolean z2, ChatMessage chatMessage) throws Resources.NotFoundException, IOException {
        if (this.chatBubbleView == null) {
            return;
        }
        this.chatBubbleView.setText(charSequence, chatMessage, z, objectNode, z2, (chatMessage.chatBubbleId == null || this.bubbleService.getBackgroundDrawable(getMessageBubbleId(chatMessage), getMessageBubbleVersion(chatMessage), this.isMine) == null) ? 0 : this.bubbleService.getBubbleTextColor(getMessageBubbleId(chatMessage), 0));
        configBubbleViews(chatMessage, true);
    }

    public void setVoiceNote(ChatMessage chatMessage, MediaStatus mediaStatus) throws Resources.NotFoundException, IOException {
        ChatBubbleView chatBubbleView = this.chatBubbleView;
        if (chatBubbleView == null) {
            return;
        }
        chatBubbleView.setLayout(R.layout.layout_audio_player);
        this.chatBubbleView.setClipChildren(false);
        this.chatBubbleView.setClipToPadding(false);
        this.chatBubbleView.setMinimumHeight(getResources().getDimensionPixelSize(R.dimen.chat_bubble_min_height));
        AudioPlayer audioPlayer = (AudioPlayer) this.chatBubbleView.findViewById(R.id.audio_player);
        audioPlayer.setVisibility(chatMessage._status != 0 ? 4 : 0);
        audioPlayer.setMediaUrl(chatMessage.mediaValue);
        audioPlayer.setIsMine(this.isMine);
        audioPlayer.setDuration(chatMessage.getDuration());
        audioPlayer.onStatusChange(mediaStatus);
        ((MediaPlayerManager) Utils.getNVContext(getContext()).getService("mediaPlayer")).tryListenMediaStatusChange(audioPlayer);
        configBubbleViews(chatMessage);
        int color = ContextCompat.getColor(getContext(), this.isMine ? R.color.audio_player_color_mine : R.color.audio_player_color_others);
        if (getMessageBubbleId(chatMessage) != null && this.bubbleService.getBackgroundDrawable(getMessageBubbleId(chatMessage), getMessageBubbleVersion(chatMessage), this.isMine) != null) {
            color = this.bubbleService.getBubbleTextColor(getMessageBubbleId(chatMessage), color);
        }
        audioPlayer.setThemeColor(color);
    }

    private void configBubbleViews(ChatMessage chatMessage) throws Resources.NotFoundException, IOException {
        configBubbleViews(chatMessage, false);
    }

    private void configBubbleViews(ChatMessage chatMessage, boolean z) throws Resources.NotFoundException, IOException {
        BubbleService bubbleService;
        String messageBubbleId = getMessageBubbleId(chatMessage);
        int messageBubbleVersion = getMessageBubbleVersion(chatMessage);
        boolean z2 = true;
        boolean z3 = messageBubbleId == null;
        this.chatHelper.getMessage(chatMessage);
        if (z3) {
            setTextViewMinWidth(z, null, 0);
            ChatBubbleView chatBubbleView = this.chatBubbleView;
            chatBubbleView.setBackgroundDrawable(chatBubbleView.getBubbleDrawable());
            removeAllSlotViews();
            this.root.setPadding(0, 0, 0, 0);
            return;
        }
        if (this.bubbleService.getBubble(messageBubbleId, messageBubbleVersion) == null && (bubbleService = this.bubbleService) != null) {
            bubbleService.requireBubble(this.cid, messageBubbleId, messageBubbleVersion);
        }
        if (this.isMine) {
            ChatBubble chatBubble = this.threadBubble;
        }
        BubbleInfo bubbleInfo = this.bubbleService.getBubbleInfo(messageBubbleId);
        BubbleService bubbleService2 = this.bubbleService;
        if (!Utils.isRtl()) {
            z2 = this.isMine;
        } else if (this.isMine) {
            z2 = false;
        }
        Drawable backgroundDrawable = bubbleService2.getBackgroundDrawable(messageBubbleId, messageBubbleVersion, z2);
        if (backgroundDrawable != null) {
            configPadding(bubbleInfo);
            if (backgroundDrawable instanceof NinePatchDrawable) {
                Rect rect = new Rect();
                backgroundDrawable.getPadding(rect);
                this.chatBubbleView.setInnerPadding(rect.left + rect.right);
            } else {
                this.chatBubbleView.setInnerPadding(0);
            }
            this.chatBubbleView.setBackgroundDrawable(backgroundDrawable);
            int color = ContextCompat.getColor(getContext(), this.isMine ? R.color.chat_text_default_color_mine : R.color.chat_text_default_color);
            int color2 = ContextCompat.getColor(getContext(), this.isMine ? R.color.audio_player_color_mine : R.color.audio_player_color_others);
            this.chatBubbleView.setTextColor(this.bubbleService.getBubbleTextColor(messageBubbleId, color));
            AudioPlayer audioPlayer = (AudioPlayer) this.chatBubbleView.findViewById(R.id.audio_player);
            if (audioPlayer != null) {
                audioPlayer.setThemeColor(this.bubbleService.getBubbleTextColor(messageBubbleId, color2));
            }
            setTextViewMinWidth(z, backgroundDrawable, 0);
        } else {
            this.root.setPadding(0, 0, 0, 0);
            ChatBubbleView chatBubbleView2 = this.chatBubbleView;
            chatBubbleView2.setBackgroundDrawable(chatBubbleView2.getBubbleDrawable());
            View viewFindViewById = this.chatBubbleView.findViewById(R.id.chat_content_layout);
            if (viewFindViewById != null) {
                viewFindViewById.setMinimumHeight(0);
            }
            this.chatBubbleView.setMinimumHeight(getResources().getDimensionPixelSize(R.dimen.chat_bubble_min_height));
        }
        configSlotViews(messageBubbleId, messageBubbleVersion, bubbleInfo);
    }

    private String getMessageBubbleId(ChatMessage chatMessage) {
        return BubbleHelper.getChatMessageBubbleId(Utils.isEqualsNotNull(chatMessage.uid(), this.account.getUserId()), chatMessage, this.threadBubble);
    }

    private int getMessageBubbleVersion(ChatMessage chatMessage) {
        return BubbleHelper.getChatMessageBubbleVersion(Utils.isEqualsNotNull(chatMessage.uid(), this.account.getUserId()), chatMessage, this.threadBubble);
    }

    private void setTextViewMinWidth(boolean z, Drawable drawable, int i) {
        ChatBubbleView chatBubbleView;
        if (!z || (chatBubbleView = this.chatBubbleView) == null) {
            return;
        }
        View viewFindViewById = chatBubbleView.findViewById(R.id.link_snippet_root_container);
        if (viewFindViewById == null) {
            viewFindViewById = this.chatBubbleView.findViewById(R.id.chat_content_layout);
        }
        if (viewFindViewById != null) {
            if (drawable instanceof NinePatchDrawable) {
                NinePatchDrawable ninePatchDrawable = (NinePatchDrawable) drawable;
                Rect rect = new Rect();
                ninePatchDrawable.getPadding(rect);
                viewFindViewById.setMinimumWidth((ninePatchDrawable.getIntrinsicWidth() - rect.left) - rect.right);
                viewFindViewById.setMinimumHeight((ninePatchDrawable.getIntrinsicHeight() - rect.top) - rect.bottom);
                return;
            }
            viewFindViewById.setMinimumWidth(i);
            viewFindViewById.setMinimumHeight(0);
            this.chatBubbleView.setMinimumHeight(getResources().getDimensionPixelSize(R.dimen.chat_bubble_min_height));
        }
    }

    private void removeAllSlotViews() {
        while (this.contentContainer.getChildCount() > 1) {
            this.contentContainer.removeViewAt(1);
        }
    }

    private void configSlotViews(String str, int i, BubbleInfo bubbleInfo) throws Resources.NotFoundException {
        List<BubbleSlot> list;
        removeAllSlotViews();
        if (bubbleInfo == null || (list = bubbleInfo.slots) == null || list.size() == 0) {
            return;
        }
        ArrayList<BubbleSlot> arrayList = new ArrayList();
        List<SlotPoint> list2 = bubbleInfo.allowedSlots;
        if (list2 != null) {
            Iterator<SlotPoint> it = list2.iterator();
            while (it.hasNext()) {
                BubbleSlot slotByPosition = bubbleInfo.getSlotByPosition(it.next());
                if (slotByPosition != null) {
                    arrayList.add(slotByPosition);
                }
            }
        }
        for (BubbleSlot bubbleSlot : arrayList) {
            if (SlotPoint.isLegalPoint(bubbleSlot.align)) {
                String slotKey = SlotPoint.getSlotKey(bubbleSlot.align, bubbleSlot.x, bubbleSlot.y);
                NVImageView nVImageView = new NVImageView(getContext());
                nVImageView.setTag(R.id.slot_key, slotKey);
                nVImageView.setShowPressedMask(false);
                int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.bubble_slot_size_in_chat);
                float f = bubbleSlot.x;
                float f2 = this.bubbleService.scaleXY;
                BubbleHelper bubbleHelper = this.bubbleHelper;
                int i2 = bubbleSlot.align;
                double d = dimensionPixelSize;
                Double.isNaN(d);
                RelativeLayout.LayoutParams slotLayParams = bubbleHelper.getSlotLayParams(R.id.chat_bubble, dimensionPixelSize, i2, (int) (d * 0.5d), (int) (f * f2), (int) (bubbleSlot.y * f2), this.isMine);
                nVImageView.setImageDrawable(this.bubbleService.getSlotDrawable(str, i, slotKey));
                this.contentContainer.addView(nVImageView, slotLayParams);
            }
        }
    }

    private void configPadding(BubbleInfo bubbleInfo) throws Resources.NotFoundException {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.bubble_slot_size_in_chat);
        int slotPadding = this.bubbleHelper.getSlotPadding(2, dimensionPixelSize, bubbleInfo);
        int slotPadding2 = this.bubbleHelper.getSlotPadding(1, dimensionPixelSize, bubbleInfo);
        int slotPadding3 = this.bubbleHelper.getSlotPadding(3, dimensionPixelSize, bubbleInfo);
        int slotPadding4 = this.bubbleHelper.getSlotPadding(4, dimensionPixelSize, bubbleInfo);
        boolean z = this.isMine;
        if (Build.VERSION.SDK_INT >= 18) {
            View view = this.root;
            int i = z ? slotPadding : slotPadding3;
            if (z) {
                slotPadding = slotPadding3;
            }
            view.setPaddingRelative(i, slotPadding2, slotPadding, slotPadding4);
            return;
        }
        ViewGroup viewGroup = this.contentContainer;
        int i2 = z ? slotPadding : slotPadding3;
        if (z) {
            slotPadding = slotPadding3;
        }
        viewGroup.setPadding(i2, slotPadding2, slotPadding, slotPadding4);
    }

    public void setBubbleStyle(boolean z, int i) {
        ChatBubbleView chatBubbleView = this.chatBubbleView;
        if (chatBubbleView == null) {
            return;
        }
        this.isMine = z;
        chatBubbleView.setBubbleStyle(z, i);
    }

    public void setThreadBubble(ChatBubble chatBubble) {
        this.threadBubble = chatBubble;
    }

    public void setCommunityId(int i) {
        this.cid = i;
    }

    public void setContentImage(Media media, int i, ObjectNode objectNode, boolean z) throws NumberFormatException {
        ChatBubbleView chatBubbleView = this.chatBubbleView;
        if (chatBubbleView == null) {
            return;
        }
        chatBubbleView.setImage(media, i, objectNode, z);
    }

    public void setContentVideo(ChatMessage chatMessage) throws NumberFormatException {
        ChatBubbleView chatBubbleView = this.chatBubbleView;
        if (chatBubbleView == null) {
            return;
        }
        chatBubbleView.setVideo(chatMessage);
    }

    public void setContentBackground(Drawable drawable) {
        ChatBubbleView chatBubbleView = this.chatBubbleView;
        if (chatBubbleView == null) {
            return;
        }
        chatBubbleView.setBackgroundDrawable(drawable);
    }

    public ChatBubbleView getChatBubbleView() {
        return this.chatBubbleView;
    }

    public void setContentLayout(int i) {
        ChatBubbleView chatBubbleView = this.chatBubbleView;
        if (chatBubbleView == null) {
            return;
        }
        chatBubbleView.setLayout(i);
    }

    public void setCallInfo(ChatMessage chatMessage, int i, String str) {
        ChatBubbleView chatBubbleView = this.chatBubbleView;
        if (chatBubbleView == null) {
            return;
        }
        chatBubbleView.setCallInfo(chatMessage, i, str);
    }
}
