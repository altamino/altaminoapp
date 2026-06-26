.class Lcom/narvii/user/profile/UserProfileFragment$12;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field n:I

.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;I)V
    .locals 0

    .line 1011
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$12;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iput p2, p0, Lcom/narvii/user/profile/UserProfileFragment$12;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    .line 1016
    iget p1, p0, Lcom/narvii/user/profile/UserProfileFragment$12;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/narvii/user/profile/UserProfileFragment$12;->n:I

    iget v0, p0, Lcom/narvii/user/profile/UserProfileFragment$12;->val$count:I

    if-ne p1, v0, :cond_0

    .line 1017
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$12;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1011
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$12;->call(Ljava/lang/Integer;)V

    return-void
.end method
