.class public Lcom/narvii/livelayer/detailview/LiveLayerChatBubbleView;
.super Lcom/narvii/chat/ChatBubbleView;
.source "LiveLayerChatBubbleView.java"


# instance fields
.field public animation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/ChatBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 30
    iput-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerChatBubbleView;->animation:Landroid/view/animation/TranslateAnimation;

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p0, p2, p2}, Lcom/narvii/chat/ChatBubbleView;->setBubbleStyle(ZI)V

    const/4 p2, 0x1

    .line 22
    invoke-virtual {p0, p2}, Lcom/narvii/chat/ChatBubbleView;->setBubbleArrowMiddle(Z)V

    .line 24
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v1, 0x40c00000    # 6.0f

    if-eqz p2, :cond_0

    const/high16 p2, 0x40c00000    # 6.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x41400000    # 12.0f

    :goto_0
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x40c00000    # 6.0f

    :goto_1
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, p2, v3, v0, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 25
    iget-object p2, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Lcom/narvii/chat/BubbleDrawable;->setArrowSize(I)V

    .line 26
    iget-object p2, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Lcom/narvii/chat/BubbleDrawable;->setRadius(I)V

    return-void
.end method


# virtual methods
.method public performLongClick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/narvii/chat/ChatBubbleView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090b5b

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x1

    const/high16 v1, 0x41200000    # 10.0f

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
