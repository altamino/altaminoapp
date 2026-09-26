.class public Lcom/narvii/chat/ChatContentContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/ChatContentContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/narvii/chat/ChatContentContainer;->chatMessageIndex:I

    iput p1, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrameIndex:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/chat/ChatContentContainer;->shouldChangeOrder:Z

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/ChatContentContainer;->chatMessageIndex:I

    .line 3
    .line 4
    if-ltz v0, :cond_3

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrameIndex:I

    .line 7
    .line 8
    if-ltz v0, :cond_3

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/chat/ChatContentContainer;->shouldChangeOrder:Z

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget v0, p0, Lcom/narvii/chat/ChatContentContainer;->chatMessageIndex:I

    .line 26
    .line 27
    if-ne p2, v0, :cond_1

    .line 28
    .line 29
    iget p1, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrameIndex:I

    .line 30
    return p1

    .line 31
    .line 32
    :cond_1
    iget v1, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrameIndex:I

    .line 33
    .line 34
    if-ne p2, v1, :cond_2

    .line 35
    return v0

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->getChildDrawingOrder(II)I

    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_3
    :goto_0
    return p2
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a02a6

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/chat/ChatContentContainer;->chatMessageListFrame:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a100e

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrame:Landroid/view/View;

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-ge v0, v1, :cond_3

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/ChatContentContainer;->chatMessageListFrame:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    iput v0, p0, Lcom/narvii/chat/ChatContentContainer;->chatMessageIndex:I

    .line 39
    .line 40
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrame:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    if-ne v1, v2, :cond_1

    .line 47
    .line 48
    iput v0, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrameIndex:I

    .line 49
    .line 50
    :cond_1
    iget v1, p0, Lcom/narvii/chat/ChatContentContainer;->vvChatMainFrameIndex:I

    .line 51
    .line 52
    if-ltz v1, :cond_2

    .line 53
    .line 54
    iget v1, p0, Lcom/narvii/chat/ChatContentContainer;->chatMessageIndex:I

    .line 55
    .line 56
    if-ltz v1, :cond_2

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    :goto_1
    return-void
.end method

.method public setShouldChangeOrder(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/ChatContentContainer;->shouldChangeOrder:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method
