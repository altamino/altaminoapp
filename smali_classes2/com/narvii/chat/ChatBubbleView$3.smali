.class Lcom/narvii/chat/ChatBubbleView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChatBubbleView.java"


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

    .line 680
    iput-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 683
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    invoke-static {p1}, Lcom/narvii/chat/ChatBubbleView;->access$100(Lcom/narvii/chat/ChatBubbleView;)Landroid/view/MotionEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 684
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    invoke-static {p1}, Lcom/narvii/chat/ChatBubbleView;->access$100(Lcom/narvii/chat/ChatBubbleView;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 685
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    invoke-static {p1}, Lcom/narvii/chat/ChatBubbleView;->access$100(Lcom/narvii/chat/ChatBubbleView;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/chat/ChatBubbleView;->access$201(Lcom/narvii/chat/ChatBubbleView;Landroid/view/MotionEvent;)Z

    .line 686
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    invoke-static {p1}, Lcom/narvii/chat/ChatBubbleView;->access$100(Lcom/narvii/chat/ChatBubbleView;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 687
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/chat/ChatBubbleView;->access$102(Lcom/narvii/chat/ChatBubbleView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 689
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    invoke-virtual {p1}, Lcom/narvii/chat/ChatBubbleView;->performLongClick()Z

    .line 690
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$3;->this$0:Lcom/narvii/chat/ChatBubbleView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/ChatBubbleView;->access$302(Lcom/narvii/chat/ChatBubbleView;Z)Z

    return-void
.end method
