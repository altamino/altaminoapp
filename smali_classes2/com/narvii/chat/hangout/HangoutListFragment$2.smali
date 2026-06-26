.class Lcom/narvii/chat/hangout/HangoutListFragment$2;
.super Ljava/lang/Object;
.source "HangoutListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/hangout/HangoutListFragment;->onRefresh()V
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
.field final synthetic this$0:Lcom/narvii/chat/hangout/HangoutListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$2;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    .line 291
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$2;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-static {p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->access$000(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 287
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/hangout/HangoutListFragment$2;->call(Ljava/lang/Integer;)V

    return-void
.end method
