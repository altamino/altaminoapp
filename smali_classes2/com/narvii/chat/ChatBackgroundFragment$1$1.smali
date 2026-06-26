.class Lcom/narvii/chat/ChatBackgroundFragment$1$1;
.super Ljava/lang/Object;
.source "ChatBackgroundFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatBackgroundFragment$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/ChatBackgroundFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatBackgroundFragment$1;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment$1$1;->this$1:Lcom/narvii/chat/ChatBackgroundFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment$1$1;->this$1:Lcom/narvii/chat/ChatBackgroundFragment$1;

    iget-object v0, v0, Lcom/narvii/chat/ChatBackgroundFragment$1;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    iget v1, v0, Lcom/narvii/chat/ChatBackgroundFragment;->frameHeight:I

    iget-object v0, v0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundFragment$1$1;->this$1:Lcom/narvii/chat/ChatBackgroundFragment$1;

    iget-object v1, v1, Lcom/narvii/chat/ChatBackgroundFragment$1;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    iget v2, v1, Lcom/narvii/chat/ChatBackgroundFragment;->frameHeight:I

    if-eq v0, v2, :cond_0

    .line 61
    iput v0, v1, Lcom/narvii/chat/ChatBackgroundFragment;->frameHeight:I

    .line 62
    iget-object v0, v1, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundFragment$1$1;->this$1:Lcom/narvii/chat/ChatBackgroundFragment$1;

    iget-object v1, v1, Lcom/narvii/chat/ChatBackgroundFragment$1;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    iget v2, v1, Lcom/narvii/chat/ChatBackgroundFragment;->frameHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    iget-object v1, v1, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
