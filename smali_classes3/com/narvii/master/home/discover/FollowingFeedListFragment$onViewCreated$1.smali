.class final Lcom/narvii/master/home/discover/FollowingFeedListFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "FollowingFeedListFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/FollowingFeedListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/FollowingFeedListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/FollowingFeedListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/FollowingFeedListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 83
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/FollowingFeedListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    iget-object v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/FollowingFeedListFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
