package com.narvii.chat;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.SystemClock;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.R;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.util.ChatHelper;
import com.narvii.link.viewer.LinkSnippetImageLayout;
import com.narvii.model.ChatMessage;
import com.narvii.model.LinkSummary;
import com.narvii.model.Media;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Tag;
import com.narvii.util.TimeUtils;
import com.narvii.util.Utils;
import com.narvii.util.VoiceMessageUtils;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.widget.FlexSizeImageView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SmoothProgressBar;
import com.narvii.widget.TintButton;

/* loaded from: classes2.dex */
public class ChatBubbleView extends RelativeLayout implements NVImageView.OnImageChangedListener {
    private boolean block;
    protected BubbleBitmapDrawable bubble;
    private ChatHelper chatHelper;
    private ChatService chatService;
    private MotionEvent downEvent;
    private GestureDetector gestureDetector;
    private final GestureDetector.SimpleOnGestureListener gestureListener;
    private boolean isVideo;
    private boolean isYoutubeVideo;
    private long lastLongClick;
    int layoutId;
    private int leftMargin;
    private int maxContentWidth;
    boolean mine;
    int widthMargin;
    private static final Point size = new Point();
    private static final Object EXPAND_TAG = new Tag("expandtag");

    private void setReplyMessage() {
    }

    public ChatBubbleView(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        this.gestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.chat.ChatBubbleView.3
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                if (ChatBubbleView.this.downEvent != null) {
                    ChatBubbleView.this.downEvent.setAction(3);
                    ChatBubbleView chatBubbleView = ChatBubbleView.this;
                    ChatBubbleView.super.dispatchTouchEvent(chatBubbleView.downEvent);
                    ChatBubbleView.this.downEvent.recycle();
                    ChatBubbleView.this.downEvent = null;
                }
                ChatBubbleView.this.performLongClick();
                ChatBubbleView.this.block = true;
            }
        };
        NVContext nVContext = Utils.getNVContext(getContext());
        this.chatService = nVContext == null ? null : (ChatService) nVContext.getService("chat");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ChatBubbleView);
        this.widthMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        int dimensionPixelSize = getResources().getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.chat_bubble_left_margin);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(0, true);
        this.leftMargin = z ? dimensionPixelSize : 0;
        typedArrayObtainStyledAttributes.recycle();
        this.bubble = new BubbleBitmapDrawable();
        this.bubble.setDefault(context);
        setBackgroundDrawable(z ? this.bubble : null);
        ((Activity) getContext()).getWindowManager().getDefaultDisplay().getSize(size);
        int i = size.x - this.widthMargin;
        Rect rect = new Rect();
        this.bubble.getPadding(rect);
        this.maxContentWidth = (i - rect.left) - rect.right;
        setGravity(8388627);
        setMinimumHeight(getResources().getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.chat_bubble_min_height));
        setClipToPadding(false);
        setClipChildren(false);
        this.chatHelper = new ChatHelper(getContext());
    }

    public Drawable getBubbleDrawable() {
        return this.bubble;
    }

    public int getMaxContentWidth() {
        return this.maxContentWidth;
    }

    public void setInnerPadding(int i) {
        ((Activity) getContext()).getWindowManager().getDefaultDisplay().getSize(size);
        int i2 = size.x - this.widthMargin;
        if (i == 0) {
            Rect rect = new Rect();
            this.bubble.getPadding(rect);
            this.maxContentWidth = (i2 - rect.left) - rect.right;
            return;
        }
        this.maxContentWidth = i2 - i;
    }

    public void setBubbleStyle(boolean z, int i) {
        this.mine = z;
        setBackgroundDrawable(null);
        if (Utils.isRtl()) {
            this.bubble.setDirection(z);
        } else {
            this.bubble.setDirection(!z);
        }
        if (i == 0) {
            this.bubble.setColor(getResources().getColor(z ? com.narvii.amino.mastes.R.color.chat_bubble_mine : com.narvii.amino.mastes.R.color.chat_bubble_normal));
        } else {
            this.bubble.setColor(i);
        }
        setBackgroundDrawable(this.bubble);
    }

    public void setBubbleArrowMiddle(boolean z) {
        this.bubble.setArrowMiddle(z);
    }

    public void setLayout(int i) {
        if (this.layoutId != i) {
            removeAllViews();
            if (i != 0) {
                LayoutInflater.from(getContext()).inflate(i, this);
            }
            this.layoutId = i;
        }
    }

    public void setText(CharSequence charSequence) {
        setText(charSequence, null, false, null, false);
    }

    public void setCallInfo(ChatMessage chatMessage, int i, String str) {
        setLayout(com.narvii.amino.mastes.R.layout.chat_bubble_call_info);
        this.bubble.setBitmap(null);
        TintButton tintButton = (TintButton) findViewById(com.narvii.amino.mastes.R.id.indicator);
        tintButton.setImageDrawable(ContextCompat.getDrawable(getContext(), i == 1 ? com.narvii.amino.mastes.R.drawable.ic_call_chat_indicator : com.narvii.amino.mastes.R.drawable.ic_video_call_chat_indicator));
        int i2 = this.chatHelper.isMine(chatMessage) ? -1 : -14540254;
        tintButton.setTintColor(i2);
        TextView textView = (TextView) findViewById(com.narvii.amino.mastes.R.id.text);
        textView.setTextColor(i2);
        textView.setText(str);
        textView.setClickable(false);
    }

    public void setText(CharSequence charSequence, ChatMessage chatMessage, boolean z, ObjectNode objectNode, boolean z2) {
        setText(charSequence, chatMessage, z, objectNode, z2, 0);
    }

    public void setText(CharSequence charSequence, ChatMessage chatMessage, boolean z, ObjectNode objectNode, boolean z2, int i) {
        int color;
        boolean zHasAttachment = hasAttachment(objectNode, z2);
        boolean z3 = chatMessage != null && chatMessage._linkParsing;
        boolean z4 = chatMessage != null && chatMessage.isReplyMessage();
        final LinkSummary firstLinkSnippet = chatMessage != null ? chatMessage.getFirstLinkSnippet() : null;
        if (z3 || (firstLinkSnippet != null && firstLinkSnippet.getFirstMedia() != null)) {
            setLayout(com.narvii.amino.mastes.R.layout.chat_bubble_text_with_link_snippet);
            LinkSnippetImageLayout linkSnippetImageLayout = (LinkSnippetImageLayout) findViewById(com.narvii.amino.mastes.R.id.chat_image_layout);
            View viewFindViewById = findViewById(com.narvii.amino.mastes.R.id.link_parsing);
            if (firstLinkSnippet != null) {
                linkSnippetImageLayout.setVisibility(0);
                viewFindViewById.setVisibility(8);
                linkSnippetImageLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatBubbleView.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ChatBubbleView.this.chatHelper.handleLinkSnippetClick(firstLinkSnippet);
                    }
                });
                linkSnippetImageLayout.setChatBubbleView(this);
                linkSnippetImageLayout.setImageMedia(firstLinkSnippet.getFirstMedia(), chatMessage);
            } else if (z3) {
                linkSnippetImageLayout.setVisibility(8);
                viewFindViewById.setVisibility(0);
            }
        } else {
            setLayout(zHasAttachment ? com.narvii.amino.mastes.R.layout.chat_bubble_text_with_attach : com.narvii.amino.mastes.R.layout.chat_bubble_text);
        }
        this.bubble.setBitmap(null);
        TextView textView = (TextView) findViewById(com.narvii.amino.mastes.R.id.text);
        textView.setText(charSequence);
        boolean zIsMine = this.chatHelper.isMine(chatMessage);
        if (i == 0) {
            color = ContextCompat.getColor(getContext(), zIsMine ? com.narvii.amino.mastes.R.color.chat_text_default_color_mine : com.narvii.amino.mastes.R.color.chat_text_default_color);
        } else {
            color = i;
        }
        textView.setTextColor(color);
        if (z) {
            textView.setClickable(true);
            textView.setMovementMethod(LinkTouchMovementMethod.getInstance());
        } else {
            textView.setClickable(false);
        }
        if (zHasAttachment) {
            setAttachment(objectNode, z2, zIsMine, color);
        }
        ChatReplyLayout chatReplyLayout = (ChatReplyLayout) findViewById(com.narvii.amino.mastes.R.id.reply_layout);
        if (chatReplyLayout != null) {
            if (z4) {
                chatReplyLayout.setMessage(chatMessage.getReplyMessage(), color);
                chatReplyLayout.setVisibility(0);
            } else {
                chatReplyLayout.setVisibility(8);
            }
        }
    }

    public void setTextColor(int i) {
        TextView textView = (TextView) findViewById(com.narvii.amino.mastes.R.id.text);
        if (textView != null) {
            textView.setTextColor(i);
        }
    }

    private void setImage(Drawable drawable) throws Resources.NotFoundException {
        int intrinsicHeight;
        int width;
        Bitmap bitmap;
        int i;
        int dimensionPixelSize;
        if (drawable == null) {
            this.bubble.setBitmap(null);
            this.bubble.setAlpha(51);
            View viewFindViewById = findViewById(com.narvii.amino.mastes.R.id.stub1);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
            View viewFindViewById2 = findViewById(com.narvii.amino.mastes.R.id.placeholder);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setVisibility(0);
                return;
            }
            return;
        }
        this.bubble.setAlpha(255);
        setLayout(this.isVideo ? com.narvii.amino.mastes.R.layout.chat_bubble_video : com.narvii.amino.mastes.R.layout.chat_bubble_img);
        if ((drawable instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null) {
            this.bubble.setBitmap(bitmap);
            this.bubble.setHideArrow(false);
            width = bitmap.getWidth();
            intrinsicHeight = bitmap.getHeight();
        } else {
            this.bubble.setBitmap(null);
            this.bubble.setHideArrow(true);
            int intrinsicWidth = drawable.getIntrinsicWidth();
            intrinsicHeight = drawable.getIntrinsicHeight();
            width = intrinsicWidth;
            bitmap = null;
        }
        Resources resources = getResources();
        int dimensionPixelSize2 = resources.getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.chat_bubble_max_img_width);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.chat_bubble_max_img_height);
        int dimensionPixelSize4 = resources.getDimensionPixelSize(this.isVideo ? com.narvii.amino.mastes.R.dimen.chat_bubble_min_video_width : com.narvii.amino.mastes.R.dimen.chat_bubble_min_img_width);
        int dimensionPixelSize5 = resources.getDimensionPixelSize(this.isVideo ? com.narvii.amino.mastes.R.dimen.chat_bubble_min_video_height : com.narvii.amino.mastes.R.dimen.chat_bubble_min_img_height);
        if (this.isYoutubeVideo) {
            dimensionPixelSize = resources.getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.chat_bubble_youtube_width);
            dimensionPixelSize5 = resources.getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.chat_bubble_youtube_height);
            i = dimensionPixelSize;
            dimensionPixelSize3 = dimensionPixelSize5;
        } else {
            i = dimensionPixelSize2;
            dimensionPixelSize = dimensionPixelSize4;
        }
        if (width < dimensionPixelSize && intrinsicHeight > dimensionPixelSize3) {
            width = dimensionPixelSize;
            intrinsicHeight = dimensionPixelSize3;
        }
        if (width > i && intrinsicHeight < dimensionPixelSize5) {
            width = i;
            intrinsicHeight = dimensionPixelSize5;
        }
        if (width < dimensionPixelSize || intrinsicHeight < dimensionPixelSize5) {
            float f = width;
            float f2 = intrinsicHeight;
            float fMax = Math.max((dimensionPixelSize * 1.0f) / f, (dimensionPixelSize5 * 1.0f) / f2);
            if (fMax != 1.0f) {
                width = (int) ((f * fMax) + 0.5f);
                intrinsicHeight = (int) ((fMax * f2) + 0.5f);
            }
        }
        if (width > i || intrinsicHeight > dimensionPixelSize3) {
            float f3 = width;
            float f4 = dimensionPixelSize3 * 1.0f;
            float f5 = intrinsicHeight;
            float fMin = Math.min((i * 1.0f) / f3, f4 / f5);
            if (fMin != 1.0f) {
                width = (int) ((f3 * fMin) + 0.5f);
                intrinsicHeight = (int) ((fMin * f5) + 0.5f);
            }
        }
        int dimensionPixelSize6 = width - (resources.getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.chat_bubble_padding_h) * 2);
        int dimensionPixelSize7 = intrinsicHeight - (resources.getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.chat_bubble_padding_v) * 2);
        if (dimensionPixelSize6 < 0) {
            dimensionPixelSize6 = 0;
        }
        if (dimensionPixelSize7 < 0) {
            dimensionPixelSize7 = 0;
        }
        findViewById(com.narvii.amino.mastes.R.id.image).setTag(bitmap == null ? EXPAND_TAG : null);
        View viewFindViewById3 = findViewById(com.narvii.amino.mastes.R.id.stub1);
        ViewGroup.LayoutParams layoutParams = viewFindViewById3.getLayoutParams();
        layoutParams.width = dimensionPixelSize6;
        layoutParams.height = dimensionPixelSize7;
        viewFindViewById3.setVisibility(4);
        View viewFindViewById4 = findViewById(com.narvii.amino.mastes.R.id.attach_content);
        if (viewFindViewById4 != null) {
            ViewGroup.LayoutParams layoutParams2 = viewFindViewById4.getLayoutParams();
            layoutParams2.width = dimensionPixelSize6;
            layoutParams2.height = dimensionPixelSize7;
        }
        findViewById(com.narvii.amino.mastes.R.id.placeholder).setVisibility(8);
        View viewFindViewById5 = findViewById(com.narvii.amino.mastes.R.id.video_play);
        if (viewFindViewById5 != null) {
            viewFindViewById5.setVisibility(this.isVideo ? 0 : 8);
        }
        requestLayout();
    }

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i, Media media) throws Resources.NotFoundException {
        setImage(nVImageView.getDrawable());
    }

    public void setImage(Media media, int i, ObjectNode objectNode, boolean z) throws NumberFormatException {
        FlexSizeImageView flexSizeImageView;
        this.isVideo = false;
        boolean zHasAttachment = hasAttachment(objectNode, z);
        setLayout(zHasAttachment ? com.narvii.amino.mastes.R.layout.chat_bubble_img_with_attach : com.narvii.amino.mastes.R.layout.chat_bubble_img);
        String str = media == null ? null : media.url;
        ChatImageView chatImageView = (ChatImageView) findViewById(com.narvii.amino.mastes.R.id.image);
        if (!TextUtils.isEmpty(str) && (flexSizeImageView = (FlexSizeImageView) findViewById(com.narvii.amino.mastes.R.id.placeholder)) != null) {
            flexSizeImageView.setImageSizeFromUrl(str);
        }
        if (zHasAttachment) {
            this.bubble.setBitmap(null);
            setAttachment(objectNode, z, false, 0);
            chatImageView.setVisibility(0);
            chatImageView.setOnImageChangedListener(null);
            chatImageView.setImageMedia(media, i);
        } else {
            chatImageView.setOnImageChangedListener(this);
            chatImageView.setImageMedia(media, i);
        }
        ChatService chatService = this.chatService;
        if (chatService != null && chatService.isMediaUploadingStillInProcess(i)) {
            this.bubble.setAlpha(255);
        } else {
            this.bubble.setAlpha(chatImageView.getStatus() != 4 ? 51 : 255);
        }
        if (this.chatService == null || str == null || str.startsWith("photo://") || chatImageView.getStatus() != 4) {
            return;
        }
        this.chatService.removeInProcessUploadMedia(i);
    }

    private boolean hasAttachment(ObjectNode objectNode, boolean z) {
        return z || JacksonUtils.nodePath(objectNode, "attachedObjectInfo") != null;
    }

    private void setAttachment(final ObjectNode objectNode, boolean z, boolean z2, int i) {
        int color;
        View viewFindViewById = findViewById(com.narvii.amino.mastes.R.id.chat_attachment);
        View viewFindViewById2 = findViewById(com.narvii.amino.mastes.R.id.attach_divider);
        View viewFindViewById3 = findViewById(com.narvii.amino.mastes.R.id.strike_button);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setVisibility(z ? 0 : 8);
        }
        if (objectNode == null) {
            if (viewFindViewById3 == null || viewFindViewById == null || viewFindViewById2 == null) {
                return;
            }
            viewFindViewById.setVisibility(8);
            viewFindViewById2.setVisibility(8);
            return;
        }
        if (viewFindViewById3 != null && viewFindViewById != null && viewFindViewById2 != null) {
            viewFindViewById.setVisibility(0);
            viewFindViewById2.setVisibility(0);
        }
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatBubbleView.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    int iNodeInt = JacksonUtils.nodeInt(objectNode, "attachedObjectInfo", ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE);
                    int iNodeInt2 = JacksonUtils.nodeInt(objectNode, "attachedObjectInfo", "parentType");
                    try {
                        if (iNodeInt == 7 && iNodeInt2 == 12) {
                            ChatBubbleView.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("ndc://chat-message/" + JacksonUtils.nodeString(objectNode, "attachedObjectInfo", ModerationHistoryBaseFragment.PARAMS_OBJECT_ID) + "?threadId=" + JacksonUtils.nodeString(objectNode, "attachedObjectInfo", "parentId"))));
                        } else {
                            String strNodeString = JacksonUtils.nodeString(objectNode, "attachedObjectInfo", "link");
                            if (strNodeString == null) {
                            } else {
                                ChatBubbleView.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(strNodeString)));
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            });
        }
        int iNodeInt = JacksonUtils.nodeInt(objectNode, "attachedObjectInfo", ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE);
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(objectNode, "attachedObjectInfo", "mediaList");
        Media media = null;
        if (jsonNodeNodePath instanceof ArrayNode) {
            try {
                ArrayNode arrayNode = (ArrayNode) jsonNodeNodePath;
                if (arrayNode.size() > 0) {
                    media = (Media) JacksonUtils.DEFAULT_MAPPER.treeToValue(arrayNode.get(0), Media.class);
                }
            } catch (Exception unused) {
            }
        }
        NVImageView nVImageView = (NVImageView) findViewById(com.narvii.amino.mastes.R.id.attach_image);
        if (nVImageView != null) {
            if (media == null && iNodeInt == 3) {
                nVImageView.setImageUrl("res://strike_icon_comment");
                nVImageView.setVisibility(0);
            } else if (media == null && iNodeInt == 7) {
                nVImageView.setImageUrl("res://strike_icon_chat");
                nVImageView.setVisibility(0);
            } else if (media != null && media.type == 110) {
                nVImageView.setImageUrl(this.mine ? "res://strike_icon_audio" : "res://strike_icon_audio_others");
                nVImageView.setVisibility(0);
            } else {
                nVImageView.setImageMedia(media);
                nVImageView.setVisibility(media == null ? 8 : 0);
            }
        }
        String strNodeString = JacksonUtils.nodeString(objectNode, "attachedObjectInfo", "title");
        String strNodeString2 = JacksonUtils.nodeString(objectNode, "attachedObjectInfo", "content");
        TextView textView = (TextView) findViewById(com.narvii.amino.mastes.R.id.attach_title);
        if (i == 0) {
            color = ContextCompat.getColor(getContext(), z2 ? com.narvii.amino.mastes.R.color.chat_text_default_color_mine : com.narvii.amino.mastes.R.color.chat_text_default_color);
        } else {
            color = i;
        }
        if (textView != null) {
            if (strNodeString == null && media != null && iNodeInt == 3) {
                textView.setText(com.narvii.amino.mastes.R.string.strike_comment_image);
                textView.setVisibility(0);
            } else if (strNodeString == null && media != null && iNodeInt == 7) {
                if (media.type == 110 || media.isVideo()) {
                    textView.setText(com.narvii.amino.mastes.R.string.strike_chat_message);
                    textView.setVisibility(0);
                } else {
                    textView.setText(com.narvii.amino.mastes.R.string.strike_chat_image);
                    textView.setVisibility(0);
                }
            } else if (strNodeString == null && iNodeInt == 0) {
                textView.setText(com.narvii.amino.mastes.R.string.attach_user_profile);
                textView.setVisibility(0);
            } else {
                textView.setText(strNodeString);
                textView.setVisibility(TextUtils.isEmpty(strNodeString) ? 8 : 0);
            }
            textView.setTextColor(color);
        }
        TextView textView2 = (TextView) findViewById(com.narvii.amino.mastes.R.id.attach_content);
        if (textView2 != null) {
            if (strNodeString2 == null && media != null && media.type == 110 && iNodeInt == 7) {
                strNodeString2 = VoiceMessageUtils.getVoiceMessageSummary(getContext(), (int) (JacksonUtils.nodeDouble(objectNode, "attachedObjectInfo", "extensions", "duration") * 1000.0d));
            }
            textView2.setText(strNodeString2);
            textView2.setVisibility(TextUtils.isEmpty(strNodeString2) ? 8 : 0);
            textView2.setTextColor(color);
        }
    }

    public void setVideo(ChatMessage chatMessage) throws NumberFormatException {
        FlexSizeImageView flexSizeImageView;
        if (chatMessage == null) {
            return;
        }
        this.isVideo = true;
        this.isYoutubeVideo = chatMessage.mediaType == 103;
        boolean z = chatMessage._status == 1;
        setLayout(com.narvii.amino.mastes.R.layout.chat_bubble_video);
        SmoothProgressBar smoothProgressBar = (SmoothProgressBar) findViewById(com.narvii.amino.mastes.R.id.progress);
        if (smoothProgressBar != null) {
            if (z) {
                smoothProgressBar.setProgress(this.chatService.getCurVideoUploadProgress(chatMessage));
                smoothProgressBar.setVisibility(0);
            } else {
                smoothProgressBar.setVisibility(8);
            }
        }
        String str = chatMessage.getVideoInfo() == null ? null : chatMessage.getVideoInfo().coverImage;
        if (!TextUtils.isEmpty(str)) {
            FlexSizeImageView flexSizeImageView2 = (FlexSizeImageView) findViewById(com.narvii.amino.mastes.R.id.placeholder);
            if (flexSizeImageView2 != null) {
                flexSizeImageView2.setImageSizeFromUrl(str, true);
            }
        } else if (this.isYoutubeVideo && (flexSizeImageView = (FlexSizeImageView) findViewById(com.narvii.amino.mastes.R.id.placeholder)) != null) {
            flexSizeImageView.setImageSize(getResources().getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.chat_bubble_youtube_width), getResources().getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.chat_bubble_youtube_height));
        }
        ChatImageView chatImageView = (ChatImageView) findViewById(com.narvii.amino.mastes.R.id.image);
        chatImageView.setOnImageChangedListener(this);
        chatImageView.setImageMedia(chatMessage.media(), chatMessage.clientRefId);
        ChatService chatService = this.chatService;
        if (chatService != null && chatService.isMediaUploadingStillInProcess(chatMessage.clientRefId)) {
            this.bubble.setAlpha(255);
        } else {
            this.bubble.setAlpha(chatImageView.getStatus() != 4 ? 51 : 255);
        }
        if (this.chatService != null && str != null && !str.startsWith("photo://") && chatImageView.getStatus() == 4) {
            this.chatService.removeInProcessUploadMedia(chatMessage.clientRefId);
        }
        View viewFindViewById = findViewById(com.narvii.amino.mastes.R.id.video_play);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility((this.bubble.getBitmap() == null || z) ? 8 : 0);
        }
        ((TextView) findViewById(com.narvii.amino.mastes.R.id.duration)).setText(this.isYoutubeVideo ? null : TimeUtils.formatTimeDuration(chatMessage.getVideoDuration()));
        TextView textView = (TextView) findViewById(com.narvii.amino.mastes.R.id.text);
        if (textView != null) {
            textView.setText(chatMessage.content);
            textView.setVisibility(TextUtils.isEmpty(chatMessage.content) ? 8 : 0);
        }
        View viewFindViewById2 = findViewById(com.narvii.amino.mastes.R.id.attach_content);
        if (viewFindViewById2 != null) {
            ViewGroup.LayoutParams layoutParams = viewFindViewById2.getLayoutParams();
            layoutParams.width = 0;
            layoutParams.height = 0;
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.widthMargin > 0) {
            int size2 = View.MeasureSpec.getSize(i);
            ((Activity) getContext()).getWindowManager().getDefaultDisplay().getSize(size);
            int i3 = size.x - this.widthMargin;
            if (i3 < size2) {
                i = View.MeasureSpec.makeMeasureSpec(i3, View.MeasureSpec.getMode(i));
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View viewFindViewById = findViewById(com.narvii.amino.mastes.R.id.image);
        if (viewFindViewById == null || viewFindViewById.getTag() != EXPAND_TAG) {
            return;
        }
        if (Utils.isRtl() ? !this.mine : this.mine) {
            viewFindViewById.layout(0, 0, (i3 - i) - this.leftMargin, i4 - i2);
        } else {
            viewFindViewById.layout(this.leftMargin, 0, i3 - i, i4 - i2);
        }
    }

    @Override // android.view.View
    public boolean performLongClick() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        boolean zPerformLongClick = jUptimeMillis - this.lastLongClick > 500 ? super.performLongClick() : false;
        this.lastLongClick = jUptimeMillis;
        return zPerformLongClick;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            MotionEvent motionEvent2 = this.downEvent;
            if (motionEvent2 != null) {
                motionEvent2.recycle();
            }
            this.downEvent = MotionEvent.obtain(motionEvent);
        }
        if (this.gestureDetector == null) {
            this.gestureDetector = new GestureDetector(getContext(), this.gestureListener);
        }
        this.gestureDetector.onTouchEvent(motionEvent);
        if (this.block) {
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                this.block = false;
            }
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }
}
