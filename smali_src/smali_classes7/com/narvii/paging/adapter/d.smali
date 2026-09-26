.class public final synthetic Lcom/narvii/paging/adapter/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/adapter/d;->a:Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;

    iput p2, p0, Lcom/narvii/paging/adapter/d;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/paging/adapter/d;->a:Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;

    iget v1, p0, Lcom/narvii/paging/adapter/d;->b:I

    invoke-static {v0, v1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->h(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;I)V

    return-void
.end method
