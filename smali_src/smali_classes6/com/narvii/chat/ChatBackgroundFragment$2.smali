.class Lcom/narvii/chat/ChatBackgroundFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment$2;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment$2;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 3
    iget-object p1, p1, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 4
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment$2;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 5
    iget-object v0, v0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment$2;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 6
    iget-object p1, p1, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment$2;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 7
    iget-object v0, v0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment$2;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 9
    iget-object p1, p1, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatBackgroundFragment$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
