.class Lcom/narvii/chat/detail/ThreadDetailFragment$1;
.super Ljava/lang/Object;
.source "ThreadDetailFragment.java"

# interfaces
.implements Lcom/narvii/chat/detail/HeaderLayout$UserClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$1;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserClicked(Lcom/narvii/model/User;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$1;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$000(Lcom/narvii/chat/detail/ThreadDetailFragment;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$1;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {v0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$1;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
