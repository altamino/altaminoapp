.class Lcom/narvii/chat/ChatBackgroundFragment$2;
.super Ljava/lang/Object;
.source "ChatBackgroundFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatBackgroundFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatBackgroundFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatBackgroundFragment;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment$2;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment$2;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    iget-object p1, p1, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 79
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 80
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment$2;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    iget-object v0, v0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment$2;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    iget-object p1, p1, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 84
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment$2;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    iget-object v0, v0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment$2;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    iget-object p1, p1, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatBackgroundFragment$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
