.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1$1;
.super Ljava/lang/Object;
.source "HeadlineSubTypeListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->onScroll(Landroid/widget/AbsListView;III)V
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
.field final synthetic this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/headlines/HeadlineRefreshMonitor;)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;

    iget-object v0, v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$602(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)Z

    .line 263
    invoke-interface {p1, v1}, Lcom/narvii/headlines/HeadlineRefreshMonitor;->isReadyToRefreshHeadline(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 259
    check-cast p1, Lcom/narvii/headlines/HeadlineRefreshMonitor;

    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1$1;->call(Lcom/narvii/headlines/HeadlineRefreshMonitor;)V

    return-void
.end method
