.class public Lcom/narvii/story/widgets/StoryItemInterceptLayout;
.super Landroid/widget/FrameLayout;
.source "StoryItemInterceptLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;,
        Lcom/narvii/story/widgets/StoryItemInterceptLayout$ClickListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_CLICK_DISABLE_DURATION:J = 0x3e8L

.field public static final HORIZONTAL:I = 0x1

.field public static final VERTICAL:I


# instance fields
.field private btnBottom:Landroid/view/View;

.field private btnLeft:Landroid/view/View;

.field private btnRight:Landroid/view/View;

.field private btnTop:Landroid/view/View;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private horizontalLayout:Landroid/view/View;

.field itemClickListener:Lcom/narvii/story/widgets/StoryItemInterceptLayout$ClickListener;

.field private orientation:I

.field private player:Lcom/narvii/nvplayer/INVPlayer;

.field private storyPlayEnable:Z

.field private target:Landroid/view/View;

.field private verticalLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0b0669

    invoke-static {p2, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f090c4b

    .line 59
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->verticalLayout:Landroid/view/View;

    const p2, 0x7f090522

    .line 60
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->horizontalLayout:Landroid/view/View;

    const p2, 0x7f090653

    .line 61
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->btnLeft:Landroid/view/View;

    .line 62
    iget-object p2, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->btnLeft:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f090147

    .line 63
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->btnBottom:Landroid/view/View;

    .line 64
    iget-object p2, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->btnBottom:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f090bb0

    .line 65
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->btnTop:Landroid/view/View;

    .line 66
    iget-object p2, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->btnTop:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f09097e

    .line 67
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->btnRight:Landroid/view/View;

    .line 68
    iget-object p2, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->btnRight:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;-><init>(Lcom/narvii/story/widgets/StoryItemInterceptLayout;Lcom/narvii/story/widgets/StoryItemInterceptLayout$1;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/story/widgets/StoryItemInterceptLayout;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->storyPlayEnable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/story/widgets/StoryItemInterceptLayout;)Lcom/narvii/nvplayer/INVPlayer;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->player:Lcom/narvii/nvplayer/INVPlayer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/story/widgets/StoryItemInterceptLayout;Lcom/narvii/nvplayer/INVPlayer;)Lcom/narvii/nvplayer/INVPlayer;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->player:Lcom/narvii/nvplayer/INVPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/narvii/story/widgets/StoryItemInterceptLayout;)Landroid/view/View;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->target:Landroid/view/View;

    return-object p0
.end method

.method private updateViews()V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->verticalLayout:Landroid/view/View;

    iget v1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->orientation:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->horizontalLayout:Landroid/view/View;

    iget v1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->orientation:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 77
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->itemClickListener:Lcom/narvii/story/widgets/StoryItemInterceptLayout$ClickListener;

    if-eqz p1, :cond_0

    .line 78
    invoke-interface {p1}, Lcom/narvii/story/widgets/StoryItemInterceptLayout$ClickListener;->onPrevDirectionClicked()V

    goto :goto_0

    .line 83
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->itemClickListener:Lcom/narvii/story/widgets/StoryItemInterceptLayout$ClickListener;

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Lcom/narvii/story/widgets/StoryItemInterceptLayout$ClickListener;->onNextDirectionClicked()V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090147 -> :sswitch_1
        0x7f090653 -> :sswitch_0
        0x7f09097e -> :sswitch_1
        0x7f090bb0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->target:Landroid/view/View;

    .line 153
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setItemClickListener(Lcom/narvii/story/widgets/StoryItemInterceptLayout$ClickListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->itemClickListener:Lcom/narvii/story/widgets/StoryItemInterceptLayout$ClickListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->orientation:I

    .line 91
    invoke-direct {p0}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->updateViews()V

    return-void
.end method

.method public setStoryPlayEnable(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->storyPlayEnable:Z

    return-void
.end method
