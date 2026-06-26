.class Lcom/narvii/user/list/FollowersListFragment$2;
.super Ljava/lang/Object;
.source "FollowersListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/list/FollowersListFragment;->delete(Lcom/narvii/model/User;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/list/FollowersListFragment;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/user/list/FollowersListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/narvii/user/list/FollowersListFragment$2;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    iput-object p2, p0, Lcom/narvii/user/list/FollowersListFragment$2;->val$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 223
    iget-object p1, p0, Lcom/narvii/user/list/FollowersListFragment$2;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    iget-object p2, p0, Lcom/narvii/user/list/FollowersListFragment$2;->val$user:Lcom/narvii/model/User;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/narvii/user/list/FollowersListFragment;->delete(Lcom/narvii/model/User;Z)V

    return-void
.end method
