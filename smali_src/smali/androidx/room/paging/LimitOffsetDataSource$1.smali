.class Landroidx/room/paging/LimitOffsetDataSource$1;
.super Landroidx/room/InvalidationTracker$Observer;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/room/paging/LimitOffsetDataSource;


# virtual methods
.method public c(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/room/paging/LimitOffsetDataSource$1;->this$0:Landroidx/room/paging/LimitOffsetDataSource;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/room/paging/LimitOffsetDataSource;->invalidate()V

    .line 6
    return-void
.end method
