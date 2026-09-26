.class public Lcom/narvii/livelayer/detailview/LiveLayerChatBubbleView;
.super Lcom/narvii/chat/ChatBubbleView;
.source "SourceFile"


# instance fields
.field public animation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/ChatBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    iput-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerChatBubbleView;->animation:Landroid/view/animation/TranslateAnimation;

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p2}, Lcom/narvii/chat/ChatBubbleView;->setBubbleStyle(ZI)V

    .line 11
    const/4 p2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/narvii/chat/ChatBubbleView;->setBubbleArrowMiddle(Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 18
    move-result p2

    .line 19
    .line 20
    const/high16 v0, 0x41400000    # 12.0f

    .line 21
    .line 22
    const/high16 v1, 0x40c00000    # 6.0f

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    move p2, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p2, v0

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 31
    move-result p2

    .line 32
    float-to-int p2, p2

    .line 33
    .line 34
    const/high16 v2, 0x40800000    # 4.0f

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 38
    move-result v3

    .line 39
    float-to-int v3, v3

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 43
    move-result v4

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v0, v1

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 51
    move-result v0

    .line 52
    float-to-int v0, v0

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 56
    move-result v2

    .line 57
    float-to-int v2, v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2, v3, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    .line 62
    iget-object p2, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 63
    .line 64
    const/high16 v0, 0x40a00000    # 5.0f

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 68
    move-result v0

    .line 69
    float-to-int v0, v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0}, Lcom/narvii/chat/BubbleDrawable;->setArrowSize(I)V

    .line 73
    .line 74
    iget-object p2, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 78
    move-result p1

    .line 79
    float-to-int p1, p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Lcom/narvii/chat/BubbleDrawable;->setRadius(I)V

    .line 83
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/chat/ChatBubbleView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a0e51

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    const/high16 v1, 0x41200000    # 10.0f

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    return-void
.end method
