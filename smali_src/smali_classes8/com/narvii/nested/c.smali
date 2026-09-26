.class public final synthetic Lcom/narvii/nested/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic a:Lcom/narvii/nested/CoordinateTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/nested/CoordinateTabFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nested/c;->a:Lcom/narvii/nested/CoordinateTabFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/nested/c;->a:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-static {v0}, Lcom/narvii/nested/CoordinateTabFragment;->p(Lcom/narvii/nested/CoordinateTabFragment;)V

    return-void
.end method
