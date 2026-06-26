.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4$1;
.super Ljava/lang/Object;
.source "HeadlineSubTypeListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->call(Ljava/lang/Object;)V
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
.field final synthetic this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/headlines/HeadlineRefreshMonitor;)V
    .locals 1

    const/4 v0, 0x1

    .line 388
    invoke-interface {p1, v0}, Lcom/narvii/headlines/HeadlineRefreshMonitor;->isHeadlineRefreshFinished(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 385
    check-cast p1, Lcom/narvii/headlines/HeadlineRefreshMonitor;

    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4$1;->call(Lcom/narvii/headlines/HeadlineRefreshMonitor;)V

    return-void
.end method
