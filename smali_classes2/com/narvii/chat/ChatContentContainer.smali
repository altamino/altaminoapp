.class public Lcom/narvii/chat/ChatContentContainer;
.super Landroid/widget/RelativeLayout;
.source "ChatContentContainer.java"


# instance fields
.field private chatMessageIndex:I

.field private chatMessageListFrame:Landroid/view/View;

.field private shouldChangeOrder:Z

.field private vvChatMainFrame:Landroid/view/View;

.field private vvChatMainFrameIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/ChatContentContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/narvii/chat/ChatContentContainer;->chatMessageIndex:I

    .line 18
    iput p1, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrameIndex:I

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/narvii/chat/ChatContentContainer;->shouldChangeOrder:Z

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 56
    iget v0, p0, Lcom/narvii/chat/ChatContentContainer;->chatMessageIndex:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrameIndex:I

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lcom/narvii/chat/ChatContentContainer;->shouldChangeOrder:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget v0, p0, Lcom/narvii/chat/ChatContentContainer;->chatMessageIndex:I

    if-ne p2, v0, :cond_1

    .line 60
    iget p1, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrameIndex:I

    return p1

    .line 62
    :cond_1
    iget v1, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrameIndex:I

    if-ne p2, v1, :cond_2

    return v0

    .line 65
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->getChildDrawingOrder(II)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    return p2
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 33
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0901ef

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatContentContainer;->chatMessageListFrame:Landroid/view/View;

    const v0, 0x7f090ce9

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrame:Landroid/view/View;

    const/4 v0, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 37
    iget-object v1, p0, Lcom/narvii/chat/ChatContentContainer;->chatMessageListFrame:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 38
    iput v0, p0, Lcom/narvii/chat/ChatContentContainer;->chatMessageIndex:I

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrame:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 41
    iput v0, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrameIndex:I

    .line 43
    :cond_1
    iget v1, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrameIndex:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/narvii/chat/ChatContentContainer;->chatMessageIndex:I

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setShouldChangeOrder(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/narvii/chat/ChatContentContainer;->shouldChangeOrder:Z

    .line 51
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
