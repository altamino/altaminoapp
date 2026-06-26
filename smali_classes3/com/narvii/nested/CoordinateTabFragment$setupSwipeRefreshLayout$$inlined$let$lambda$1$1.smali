.class public final Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1$1;
.super Ljava/lang/Object;
.source "CoordinateTabFragment.kt"

# interfaces
.implements Lcom/narvii/paging/source/PageRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;


# direct methods
.method constructor <init>(Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageRequestFinished(I)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-static {v0}, Lcom/narvii/nested/CoordinateTabFragment;->access$getBodyRefreshCallback$p(Lcom/narvii/nested/CoordinateTabFragment;)Lcom/narvii/util/Callback;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method
