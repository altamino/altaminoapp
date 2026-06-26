.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$3;
.super Ljava/lang/Object;
.source "HeadlineSubTypeListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->onActiveChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/headlines/HeadlineRefreshMonitor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$3;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/headlines/HeadlineRefreshMonitor;)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$3;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$600(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/narvii/headlines/HeadlineRefreshMonitor;->isReadyToRefreshHeadline(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 353
    check-cast p1, Lcom/narvii/headlines/HeadlineRefreshMonitor;

    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$3;->call(Lcom/narvii/headlines/HeadlineRefreshMonitor;)V

    return-void
.end method
