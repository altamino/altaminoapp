.class Lcom/narvii/list/NVListFragment$2;
.super Lcom/narvii/list/refresh/SwipeRefreshLayout;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$2;->this$0:Lcom/narvii/list/NVListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    .line 6
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$2;->this$0:Lcom/narvii/list/NVListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->canChildScrollUp()Ljava/lang/Boolean;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->canChildScrollUp()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method
