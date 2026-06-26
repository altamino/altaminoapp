.class Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StoryItemInterceptLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/widgets/StoryItemInterceptLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleClickConfirm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/widgets/StoryItemInterceptLayout;


# direct methods
.method private constructor <init>(Lcom/narvii/story/widgets/StoryItemInterceptLayout;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;->this$0:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/story/widgets/StoryItemInterceptLayout;Lcom/narvii/story/widgets/StoryItemInterceptLayout$1;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;-><init>(Lcom/narvii/story/widgets/StoryItemInterceptLayout;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 108
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;->this$0:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->access$100(Lcom/narvii/story/widgets/StoryItemInterceptLayout;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;->this$0:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->access$200(Lcom/narvii/story/widgets/StoryItemInterceptLayout;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;->this$0:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->access$202(Lcom/narvii/story/widgets/StoryItemInterceptLayout;Lcom/narvii/nvplayer/INVPlayer;)Lcom/narvii/nvplayer/INVPlayer;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;->this$0:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->access$200(Lcom/narvii/story/widgets/StoryItemInterceptLayout;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 115
    iget-object v2, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;->this$0:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    invoke-static {v2}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->access$300(Lcom/narvii/story/widgets/StoryItemInterceptLayout;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 116
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;->this$0:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    invoke-static {p1}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->access$300(Lcom/narvii/story/widgets/StoryItemInterceptLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->onClick(Landroid/view/View;)V

    :cond_2
    return v1

    .line 120
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 121
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;->this$0:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    iget-object v1, v1, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->itemClickListener:Lcom/narvii/story/widgets/StoryItemInterceptLayout$ClickListener;

    if-eqz v1, :cond_4

    .line 122
    invoke-interface {v1, p1}, Lcom/narvii/story/widgets/StoryItemInterceptLayout$ClickListener;->onDoubleClicked(Landroid/view/MotionEvent;)V

    :cond_4
    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;->this$0:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    iget-object p1, p1, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->itemClickListener:Lcom/narvii/story/widgets/StoryItemInterceptLayout$ClickListener;

    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p1}, Lcom/narvii/story/widgets/StoryItemInterceptLayout$ClickListener;->onLongClick()V

    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;->this$0:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    invoke-static {p1}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->access$300(Lcom/narvii/story/widgets/StoryItemInterceptLayout;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemInterceptLayout$DoubleClickConfirm;->this$0:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    invoke-static {p1}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->access$300(Lcom/narvii/story/widgets/StoryItemInterceptLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->onClick(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
