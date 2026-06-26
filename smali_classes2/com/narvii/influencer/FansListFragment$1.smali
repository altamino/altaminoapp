.class Lcom/narvii/influencer/FansListFragment$1;
.super Ljava/lang/Object;
.source "FansListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FansListFragment;->onRefresh()V
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
.field final synthetic this$0:Lcom/narvii/influencer/FansListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/influencer/FansListFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/narvii/influencer/FansListFragment$1;->this$0:Lcom/narvii/influencer/FansListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    .line 156
    iget-object p1, p0, Lcom/narvii/influencer/FansListFragment$1;->this$0:Lcom/narvii/influencer/FansListFragment;

    iget-object p1, p1, Lcom/narvii/influencer/FansListFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 153
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/influencer/FansListFragment$1;->call(Ljava/lang/Integer;)V

    return-void
.end method
