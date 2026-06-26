.class final Lcom/narvii/nested/CoordinateTabFragment$headerRefreshCallback$1;
.super Ljava/lang/Object;
.source "CoordinateTabFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/CoordinateTabFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/CoordinateTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/nested/CoordinateTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$headerRefreshCallback$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Integer;)V
    .locals 1

    .line 317
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$headerRefreshCallback$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->getRefreshingCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/nested/CoordinateTabFragment;->setRefreshingCount(I)V

    .line 318
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$headerRefreshCallback$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->getRefreshingCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$headerRefreshCallback$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment$headerRefreshCallback$1;->call(Ljava/lang/Integer;)V

    return-void
.end method
