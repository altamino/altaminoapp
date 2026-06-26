.class Lcom/narvii/app/NVCollapsibleTabFragment$3;
.super Ljava/lang/Object;
.source "NVCollapsibleTabFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/NVCollapsibleTabFragment;
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
.field final synthetic this$0:Lcom/narvii/app/NVCollapsibleTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVCollapsibleTabFragment;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$3;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$3;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    invoke-static {p1}, Lcom/narvii/app/NVCollapsibleTabFragment;->access$010(Lcom/narvii/app/NVCollapsibleTabFragment;)I

    .line 143
    iget-object p1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$3;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    invoke-static {p1}, Lcom/narvii/app/NVCollapsibleTabFragment;->access$000(Lcom/narvii/app/NVCollapsibleTabFragment;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$3;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    iget-object p1, p1, Lcom/narvii/app/NVCollapsibleTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVCollapsibleTabFragment$3;->call(Ljava/lang/Integer;)V

    return-void
.end method
