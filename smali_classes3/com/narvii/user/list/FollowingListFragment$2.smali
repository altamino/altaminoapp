.class Lcom/narvii/user/list/FollowingListFragment$2;
.super Ljava/lang/Object;
.source "FollowingListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/list/FollowingListFragment;->delete(Lcom/narvii/model/User;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/list/FollowingListFragment;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/user/list/FollowingListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/narvii/user/list/FollowingListFragment$2;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    iput-object p2, p0, Lcom/narvii/user/list/FollowingListFragment$2;->val$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 225
    iget-object p1, p0, Lcom/narvii/user/list/FollowingListFragment$2;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    iget-object p2, p0, Lcom/narvii/user/list/FollowingListFragment$2;->val$user:Lcom/narvii/model/User;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/narvii/user/list/FollowingListFragment;->delete(Lcom/narvii/model/User;Z)V

    return-void
.end method
