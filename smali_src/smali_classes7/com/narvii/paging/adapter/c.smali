.class public final synthetic Lcom/narvii/paging/adapter/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/paging/state/ErrorRetryListener;


# instance fields
.field public final synthetic a:Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/adapter/c;->a:Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;

    return-void
.end method


# virtual methods
.method public final onErrorRetry()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/paging/adapter/c;->a:Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;

    invoke-static {v0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->g(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;)V

    return-void
.end method
