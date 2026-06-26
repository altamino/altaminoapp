.class Lcom/narvii/list/NVListFragment$2;
.super Lcom/narvii/list/refresh/SwipeRefreshLayout;
.source "NVListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/NVListFragment;->setupSwipeRefreshLayout()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/NVListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVListFragment;Landroid/content/Context;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$2;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$2;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->canChildScrollUp()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 520
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v0

    return v0
.end method
