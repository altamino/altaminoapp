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
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Display;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.master.R;
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
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes4.dex */
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

    private boolean hasAttachment(ObjectNode objectNode, boolean z6) {
        return z6 || JacksonUtils.nodePath(objectNode, "attachedObjectInfo") != null;
    }

    private void setAttachment(final ObjectNode objectNode, boolean z6, boolean z10, int i10) {
        View viewFindViewById = findViewById(R.id.chat_attachment);
        View viewFindViewById2 = findViewById(R.id.attach_divider);
        View viewFindViewById3 = findViewById(R.id.strike_button);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setVisibility(z6 ? 0 : 8);
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
                public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    int iNodeInt = JacksonUtils.nodeInt(objectNode, "attachedObjectInfo", ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE);
                    int iNodeInt2 = JacksonUtils.nodeInt(objectNode, "attachedObjectInfo", "parentType");
                    try {
                        if (iNodeInt == 7 && iNodeInt2 == 12) {
                            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(ChatBubbleView.this.getContext(), new Intent("android.intent.action.VIEW", Uri.parse("ndc://chat-message/" + JacksonUtils.nodeString(objectNode, "attachedObjectInfo", ModerationHistoryBaseFragment.PARAMS_OBJECT_ID) + "?threadId=" + JacksonUtils.nodeString(objectNode, "attachedObjectInfo", "parentId"))));
                        } else {
                            String strNodeString = JacksonUtils.nodeString(objectNode, "attachedObjectInfo", "link");
                            if (strNodeString == null) {
                            } else {
                                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(ChatBubbleView.this.getContext(), new Intent("android.intent.action.VIEW", Uri.parse(strNodeString)));
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
        NVImageView nVImageView = (NVImageView) findViewById(R.id.attach_image);
        if (nVImageView != null) {
            if (media == null && iNodeInt == 3) {
                nVImageView.setImageUrl("res://strike_icon_comment");
                nVImageView.setVisibility(0);
            } else if (media == null && iNodeInt == 7) {
                nVImageView.setImageUrl("res://strike_icon_chat");
                nVImageView.setVisibility(0);
            } else if (media == null || media.type != 110) {
                nVImageView.setImageMedia(media);
                nVImageView.setVisibility(media == null ? 8 : 0);
            } else {
                nVImageView.setImageUrl(this.mine ? "res://strike_icon_audio" : "res://strike_icon_audio_others");
                nVImageView.setVisibility(0);
            }
        }
        String strNodeString = JacksonUtils.nodeString(objectNode, "attachedObjectInfo", "title");
        String strNodeString2 = JacksonUtils.nodeString(objectNode, "attachedObjectInfo", "content");
        TextView textView = (TextView) findViewById(R.id.attach_title);
        if (i10 == 0) {
            i10 = ContextCompat.getColor(getContext(), z10 ? R.color.chat_text_default_color_mine : R.color.chat_text_default_color);
        }
        if (textView != null) {
            if (strNodeString == null && media != null && iNodeInt == 3) {
                textView.setText(R.string.strike_comment_image);
                textView.setVisibility(0);
            } else if (strNodeString == null && media != null && iNodeInt == 7) {
                if (media.type == 110 || media.isVideo()) {
                    textView.setText(R.string.strike_chat_message);
                    textView.setVisibility(0);
                } else {
                    textView.setText(R.string.strike_chat_image);
                    textView.setVisibility(0);
                }
            } else if (strNodeString == null && iNodeInt == 0) {
                textView.setText(R.string.attach_user_profile);
                textView.setVisibility(0);
            } else {
                textView.setText(strNodeString);
                textView.setVisibility(TextUtils.isEmpty(strNodeString) ? 8 : 0);
            }
            textView.setTextColor(i10);
        }
        TextView textView2 = (TextView) findViewById(R.id.attach_content);
        if (textView2 != null) {
            if (strNodeString2 == null && media != null && media.type == 110 && iNodeInt == 7) {
                strNodeString2 = VoiceMessageUtils.getVoiceMessageSummary(getContext(), (int) (JacksonUtils.nodeDouble(objectNode, "attachedObjectInfo", "extensions", TypedValues.TransitionType.S_DURATION) * 1000.0d));
            }
            textView2.setText(strNodeString2);
            textView2.setVisibility(TextUtils.isEmpty(strNodeString2) ? 8 : 0);
            textView2.setTextColor(i10);
        }
    }

    private void setImage(Drawable drawable) {
        int intrinsicHeight;
        int width;
        Bitmap bitmap;
        if (drawable == null) {
            this.bubble.setBitmap(null);
            this.bubble.setAlpha(51);
            View viewFindViewById = findViewById(R.id.stub1);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
            View viewFindViewById2 = findViewById(R.id.placeholder);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setVisibility(0);
                return;
            }
            return;
        }
        this.bubble.setAlpha(255);
        setLayout(this.isVideo ? R.layout.chat_bubble_video : R.layout.chat_bubble_img);
        if (!(drawable instanceof BitmapDrawable) || (bitmap = ((BitmapDrawable) drawable).getBitmap()) == null) {
            this.bubble.setBitmap(null);
            this.bubble.setHideArrow(true);
            int intrinsicWidth = drawable.getIntrinsicWidth();
            intrinsicHeight = drawable.getIntrinsicHeight();
            width = intrinsicWidth;
            bitmap = null;
        } else {
            this.bubble.setBitmap(bitmap);
            this.bubble.setHideArrow(false);
            width = bitmap.getWidth();
            intrinsicHeight = bitmap.getHeight();
        }
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.chat_bubble_max_img_width);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.chat_bubble_max_img_height);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(this.isVideo ? R.dimen.chat_bubble_min_video_width : R.dimen.chat_bubble_min_img_width);
        int dimensionPixelSize4 = resources.getDimensionPixelSize(this.isVideo ? R.dimen.chat_bubble_min_video_height : R.dimen.chat_bubble_min_img_height);
        if (this.isYoutubeVideo) {
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.chat_bubble_youtube_width);
            dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.chat_bubble_youtube_height);
            dimensionPixelSize3 = dimensionPixelSize;
            dimensionPixelSize4 = dimensionPixelSize2;
        }
        if (width < dimensionPixelSize3 && intrinsicHeight > dimensionPixelSize2) {
            intrinsicHeight = dimensionPixelSize2;
            width = dimensionPixelSize3;
        }
        if (width > dimensionPixelSize && intrinsicHeight < dimensionPixelSize4) {
            width = dimensionPixelSize;
            intrinsicHeight = dimensionPixelSize4;
        }
        if (width < dimensionPixelSize3 || intrinsicHeight < dimensionPixelSize4) {
            float f = width;
            float f6 = intrinsicHeight;
            float fMax = Math.max((dimensionPixelSize3 * 1.0f) / f, (dimensionPixelSize4 * 1.0f) / f6);
            if (fMax != 1.0f) {
                width = (int) ((f * fMax) + 0.5f);
                intrinsicHeight = (int) ((fMax * f6) + 0.5f);
            }
        }
        if (width > dimensionPixelSize || intrinsicHeight > dimensionPixelSize2) {
            float f7 = width;
            float f10 = (dimensionPixelSize * 1.0f) / f7;
            float f11 = dimensionPixelSize2 * 1.0f;
            float f12 = intrinsicHeight;
            float fMin = Math.min(f10, f11 / f12);
            if (fMin != 1.0f) {
                width = (int) ((f7 * fMin) + 0.5f);
                intrinsicHeight = (int) ((fMin * f12) + 0.5f);
            }
        }
        int dimensionPixelSize5 = width - (resources.getDimensionPixelSize(R.dimen.chat_bubble_padding_h) * 2);
        int dimensionPixelSize6 = intrinsicHeight - (resources.getDimensionPixelSize(R.dimen.chat_bubble_padding_v) * 2);
        if (dimensionPixelSize5 < 0) {
            dimensionPixelSize5 = 0;
        }
        if (dimensionPixelSize6 < 0) {
            dimensionPixelSize6 = 0;
        }
        findViewById(R.id.image).setTag(bitmap == null ? EXPAND_TAG : null);
        View viewFindViewById3 = findViewById(R.id.stub1);
        ViewGroup.LayoutParams layoutParams = viewFindViewById3.getLayoutParams();
        layoutParams.width = dimensionPixelSize5;
        layoutParams.height = dimensionPixelSize6;
        viewFindViewById3.setVisibility(4);
        View viewFindViewById4 = findViewById(R.id.attach_content);
        if (viewFindViewById4 != null) {
            ViewGroup.LayoutParams layoutParams2 = viewFindViewById4.getLayoutParams();
            layoutParams2.width = dimensionPixelSize5;
            layoutParams2.height = dimensionPixelSize6;
        }
        findViewById(R.id.placeholder).setVisibility(8);
        View viewFindViewById5 = findViewById(R.id.video_play);
        if (viewFindViewById5 != null) {
            viewFindViewById5.setVisibility(this.isVideo ? 0 : 8);
        }
        requestLayout();
    }

    private void setReplyMessage() {
    }

    public Drawable getBubbleDrawable() {
        return this.bubble;
    }

    public int getMaxContentWidth() {
        return this.maxContentWidth;
    }

    public void setText(CharSequence charSequence) {
        setText(charSequence, null, false, null, false);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.widthMargin > 0) {
            int size2 = View.MeasureSpec.getSize(i10);
            Display defaultDisplay = ((Activity) getContext()).getWindowManager().getDefaultDisplay();
            Point point = size;
            defaultDisplay.getSize(point);
            int i12 = point.x - this.widthMargin;
            if (i12 < size2) {
                i10 = View.MeasureSpec.makeMeasureSpec(i12, View.MeasureSpec.getMode(i10));
            }
        }
        super.onMeasure(i10, i11);
    }

    public void setBubbleArrowMiddle(boolean z6) {
        this.bubble.setArrowMiddle(z6);
    }

    public void setBubbleStyle(boolean z6, int i10) {
        this.mine = z6;
        setBackgroundDrawable(null);
        if (Utils.isRtl()) {
            this.bubble.setDirection(z6);
        } else {
            this.bubble.setDirection(!z6);
        }
        if (i10 == 0) {
            this.bubble.setColor(getResources().getColor(z6 ? R.color.chat_bubble_mine : R.color.chat_bubble_normal));
        } else {
            this.bubble.setColor(i10);
        }
        setBackgroundDrawable(this.bubble);
    }

    public void setLayout(int i10) {
        if (this.layoutId != i10) {
            removeAllViews();
            if (i10 != 0) {
                LayoutInflater.from(getContext()).inflate(i10, this);
            }
            this.layoutId = i10;
        }
    }

    public void setText(CharSequence charSequence, ChatMessage chatMessage, boolean z6, ObjectNode objectNode, boolean z10) {
        setText(charSequence, chatMessage, z6, objectNode, z10, 0);
    }

    public void setVideo(ChatMessage chatMessage) {
        FlexSizeImageView flexSizeImageView;
        if (chatMessage == null) {
            return;
        }
        this.isVideo = true;
        this.isYoutubeVideo = chatMessage.mediaType == 103;
        boolean z6 = chatMessage._status == 1;
        setLayout(R.layout.chat_bubble_video);
        SmoothProgressBar smoothProgressBar = (SmoothProgressBar) findViewById(R.id.progress);
        if (smoothProgressBar != null) {
            if (z6) {
                smoothProgressBar.setProgress(this.chatService.getCurVideoUploadProgress(chatMessage));
                smoothProgressBar.setVisibility(0);
            } else {
                smoothProgressBar.setVisibility(8);
            }
        }
        String str = chatMessage.getVideoInfo() == null ? null : chatMessage.getVideoInfo().coverImage;
        if (!TextUtils.isEmpty(str)) {
            FlexSizeImageView flexSizeImageView2 = (FlexSizeImageView) findViewById(R.id.placeholder);
            if (flexSizeImageView2 != null) {
                flexSizeImageView2.setImageSizeFromUrl(str, true);
            }
        } else if (this.isYoutubeVideo && (flexSizeImageView = (FlexSizeImageView) findViewById(R.id.placeholder)) != null) {
            flexSizeImageView.setImageSize(getResources().getDimensionPixelSize(R.dimen.chat_bubble_youtube_width), getResources().getDimensionPixelSize(R.dimen.chat_bubble_youtube_height));
        }
        ChatImageView chatImageView = (ChatImageView) findViewById(R.id.image);
        chatImageView.setOnImageChangedListener(this);
        chatImageView.setImageMedia(chatMessage.media(), chatMessage.getClientRefIdTmp());
        ChatService chatService = this.chatService;
        if (chatService == null || !chatService.isMediaUploadingStillInProcess(chatMessage.getClientRefIdTmp())) {
            this.bubble.setAlpha(chatImageView.getStatus() != 4 ? 51 : 255);
        } else {
            this.bubble.setAlpha(255);
        }
        if (this.chatService != null && str != null && !str.startsWith("photo://") && chatImageView.getStatus() == 4) {
            this.chatService.removeInProcessUploadMedia(chatMessage.getClientRefIdTmp());
        }
        View viewFindViewById = findViewById(R.id.video_play);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility((this.bubble.getBitmap() == null || z6) ? 8 : 0);
        }
        ((TextView) findViewById(R.id.duration)).setText(this.isYoutubeVideo ? null : TimeUtils.formatTimeDuration(chatMessage.getVideoDuration()));
        TextView textView = (TextView) findViewById(R.id.text);
        if (textView != null) {
            textView.setText(chatMessage.content);
            textView.setVisibility(TextUtils.isEmpty(chatMessage.content) ? 8 : 0);
        }
        View viewFindViewById2 = findViewById(R.id.attach_content);
        if (viewFindViewById2 != null) {
            ViewGroup.LayoutParams layoutParams = viewFindViewById2.getLayoutParams();
            layoutParams.width = 0;
            layoutParams.height = 0;
        }
    }

    public ChatBubbleView(Context context, AttributeSet attributeSet) {
        ChatService chatService;
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
        if (nVContext == null) {
            chatService = null;
        } else {
            chatService = (ChatService) nVContext.getService("chat");
        }
        this.chatService = chatService;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.ChatBubbleView);
        this.widthMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.chat_bubble_left_margin);
        boolean z6 = typedArrayObtainStyledAttributes.getBoolean(0, true);
        this.leftMargin = z6 ? dimensionPixelSize : 0;
        typedArrayObtainStyledAttributes.recycle();
        BubbleBitmapDrawable bubbleBitmapDrawable = new BubbleBitmapDrawable();
        this.bubble = bubbleBitmapDrawable;
        bubbleBitmapDrawable.setDefault(context);
        setBackgroundDrawable(z6 ? this.bubble : null);
        Display defaultDisplay = ((Activity) getContext()).getWindowManager().getDefaultDisplay();
        Point point = size;
        defaultDisplay.getSize(point);
        int i10 = point.x - this.widthMargin;
        Rect rect = new Rect();
        this.bubble.getPadding(rect);
        this.maxContentWidth = (i10 - rect.left) - rect.right;
        setGravity(8388627);
        setMinimumHeight(getResources().getDimensionPixelSize(R.dimen.chat_bubble_min_height));
        setClipToPadding(false);
        setClipChildren(false);
        this.chatHelper = new ChatHelper(getContext());
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

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i10, Media media) {
        setImage(nVImageView.getDrawable());
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        View viewFindViewById = findViewById(R.id.image);
        if (viewFindViewById != null && viewFindViewById.getTag() == EXPAND_TAG) {
            if (!Utils.isRtl() ? this.mine : !this.mine) {
                viewFindViewById.layout(0, 0, (i12 - i10) - this.leftMargin, i13 - i11);
            } else {
                viewFindViewById.layout(this.leftMargin, 0, i12 - i10, i13 - i11);
            }
        }
    }

    @Override // android.view.View
    public boolean performLongClick() {
        boolean zPerformLongClick;
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (jUptimeMillis - this.lastLongClick > 500) {
            zPerformLongClick = super.performLongClick();
        } else {
            zPerformLongClick = false;
        }
        this.lastLongClick = jUptimeMillis;
        return zPerformLongClick;
    }

    public void setCallInfo(ChatMessage chatMessage, int i10, String str) {
        int i11;
        int i12;
        setLayout(R.layout.chat_bubble_call_info);
        this.bubble.setBitmap(null);
        TintButton tintButton = (TintButton) findViewById(R.id.indicator);
        if (i10 == 1) {
            i11 = R.drawable.ic_call_chat_indicator;
        } else {
            i11 = R.drawable.ic_video_call_chat_indicator;
        }
        tintButton.setImageDrawable(ContextCompat.getDrawable(getContext(), i11));
        if (this.chatHelper.isMine(chatMessage)) {
            i12 = -1;
        } else {
            i12 = -14540254;
        }
        tintButton.setTintColor(i12);
        TextView textView = (TextView) findViewById(R.id.text);
        textView.setTextColor(i12);
        textView.setText(str);
        textView.setClickable(false);
    }

    public void setInnerPadding(int i10) {
        Display defaultDisplay = ((Activity) getContext()).getWindowManager().getDefaultDisplay();
        Point point = size;
        defaultDisplay.getSize(point);
        int i11 = point.x - this.widthMargin;
        if (i10 == 0) {
            Rect rect = new Rect();
            this.bubble.getPadding(rect);
            this.maxContentWidth = (i11 - rect.left) - rect.right;
            return;
        }
        this.maxContentWidth = i11 - i10;
    }

    public void setText(CharSequence charSequence, ChatMessage chatMessage, boolean z6, ObjectNode objectNode, boolean z10, int i10) {
        int color;
        boolean zHasAttachment = hasAttachment(objectNode, z10);
        boolean z11 = chatMessage != null && chatMessage._linkParsing;
        boolean z12 = chatMessage != null && chatMessage.isReplyMessage();
        final LinkSummary firstLinkSnippet = chatMessage != null ? chatMessage.getFirstLinkSnippet() : null;
        if (!z11 && (firstLinkSnippet == null || firstLinkSnippet.getFirstMedia() == null)) {
            setLayout(zHasAttachment ? R.layout.chat_bubble_text_with_attach : R.layout.chat_bubble_text);
        } else {
            setLayout(R.layout.chat_bubble_text_with_link_snippet);
            LinkSnippetImageLayout linkSnippetImageLayout = (LinkSnippetImageLayout) findViewById(R.id.chat_image_layout);
            View viewFindViewById = findViewById(R.id.link_parsing);
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
            } else if (z11) {
                linkSnippetImageLayout.setVisibility(8);
                viewFindViewById.setVisibility(0);
            }
        }
        this.bubble.setBitmap(null);
        TextView textView = (TextView) findViewById(R.id.text);
        textView.setText(charSequence);
        boolean zIsMine = this.chatHelper.isMine(chatMessage);
        if (i10 == 0) {
            color = ContextCompat.getColor(getContext(), zIsMine ? R.color.chat_text_default_color_mine : R.color.chat_text_default_color);
        } else {
            color = i10;
        }
        textView.setTextColor(color);
        if (z6) {
            textView.setClickable(true);
            textView.setMovementMethod(LinkTouchMovementMethod.getInstance());
        } else {
            textView.setClickable(false);
        }
        if (zHasAttachment) {
            setAttachment(objectNode, z10, zIsMine, color);
        }
        ChatReplyLayout chatReplyLayout = (ChatReplyLayout) findViewById(R.id.reply_layout);
        if (chatReplyLayout != null) {
            if (z12) {
                chatReplyLayout.setMessage(chatMessage.getReplyMessage(), color);
                chatReplyLayout.setVisibility(0);
            } else {
                chatReplyLayout.setVisibility(8);
            }
        }
    }

    public void setTextColor(int i10) {
        TextView textView = (TextView) findViewById(R.id.text);
        if (textView != null) {
            textView.setTextColor(i10);
        }
    }

    public void setImage(Media media, int i10, ObjectNode objectNode, boolean z6) {
        FlexSizeImageView flexSizeImageView;
        this.isVideo = false;
        boolean zHasAttachment = hasAttachment(objectNode, z6);
        setLayout(zHasAttachment ? R.layout.chat_bubble_img_with_attach : R.layout.chat_bubble_img);
        String str = media == null ? null : media.url;
        ChatImageView chatImageView = (ChatImageView) findViewById(R.id.image);
        if (!TextUtils.isEmpty(str) && (flexSizeImageView = (FlexSizeImageView) findViewById(R.id.placeholder)) != null) {
            flexSizeImageView.setImageSizeFromUrl(str);
        }
        if (zHasAttachment) {
            this.bubble.setBitmap(null);
            setAttachment(objectNode, z6, false, 0);
            chatImageView.setVisibility(0);
            chatImageView.setOnImageChangedListener(null);
            chatImageView.setImageMedia(media, i10);
        } else {
            chatImageView.setOnImageChangedListener(this);
            chatImageView.setImageMedia(media, i10);
        }
        ChatService chatService = this.chatService;
        if (chatService != null && chatService.isMediaUploadingStillInProcess(i10)) {
            this.bubble.setAlpha(255);
        } else {
            this.bubble.setAlpha(chatImageView.getStatus() != 4 ? 51 : 255);
        }
        if (this.chatService == null || str == null || str.startsWith("photo://") || chatImageView.getStatus() != 4) {
            return;
        }
        this.chatService.removeInProcessUploadMedia(i10);
    }
}
