.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->onRefresh()V
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

.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$9;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    iget p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$9;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$9;->n:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$9;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 2
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$9;->call(Ljava/lang/Integer;)V

    return-void
.end method
