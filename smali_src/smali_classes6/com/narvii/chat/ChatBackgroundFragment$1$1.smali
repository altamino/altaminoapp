.class Lcom/narvii/chat/ChatBackgroundFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment$1$1;->this$1:Lcom/narvii/chat/ChatBackgroundFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment$1$1;->this$1:Lcom/narvii/chat/ChatBackgroundFragment$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/ChatBackgroundFragment$1;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 5
    .line 6
    iget v1, v0, Lcom/narvii/chat/ChatBackgroundFragment;->frameHeight:I

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundFragment$1$1;->this$1:Lcom/narvii/chat/ChatBackgroundFragment$1;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/chat/ChatBackgroundFragment$1;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 21
    .line 22
    iget v2, v1, Lcom/narvii/chat/ChatBackgroundFragment;->frameHeight:I

    .line 23
    .line 24
    if-eq v0, v2, :cond_0

    .line 25
    .line 26
    iput v0, v1, Lcom/narvii/chat/ChatBackgroundFragment;->frameHeight:I

    .line 27
    .line 28
    iget-object v0, v1, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundFragment$1$1;->this$1:Lcom/narvii/chat/ChatBackgroundFragment$1;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/narvii/chat/ChatBackgroundFragment$1;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 39
    .line 40
    iget v2, v1, Lcom/narvii/chat/ChatBackgroundFragment;->frameHeight:I

    .line 41
    .line 42
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    .line 44
    iget-object v1, v1, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    :cond_0
    return-void
.end method
