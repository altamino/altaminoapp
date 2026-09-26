.class Lcom/narvii/chat/ChatBubbleView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatBubbleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatBubbleView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatBubbleView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/ChatBubbleView;->b(Lcom/narvii/chat/ChatBubbleView;)Landroid/view/MotionEvent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/chat/ChatBubbleView;->b(Lcom/narvii/chat/ChatBubbleView;)Landroid/view/MotionEvent;

    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/chat/ChatBubbleView;->b(Lcom/narvii/chat/ChatBubbleView;)Landroid/view/MotionEvent;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/narvii/chat/ChatBubbleView;->access$001(Lcom/narvii/chat/ChatBubbleView;Landroid/view/MotionEvent;)Z

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/chat/ChatBubbleView;->b(Lcom/narvii/chat/ChatBubbleView;)Landroid/view/MotionEvent;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Lcom/narvii/chat/ChatBubbleView;->d(Lcom/narvii/chat/ChatBubbleView;Landroid/view/MotionEvent;)V

    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/chat/ChatBubbleView;->performLongClick()Z

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    .line 50
    const/4 v0, 0x1

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Lcom/narvii/chat/ChatBubbleView;->c(Lcom/narvii/chat/ChatBubbleView;Z)V

    .line 54
    return-void
.end method
