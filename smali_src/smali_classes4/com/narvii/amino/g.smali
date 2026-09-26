.class public final synthetic Lcom/narvii/amino/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic a:Lcom/narvii/amino/HomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/amino/g;->a:Lcom/narvii/amino/HomeFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/g;->a:Lcom/narvii/amino/HomeFragment;

    invoke-static {v0}, Lcom/narvii/amino/HomeFragment;->q(Lcom/narvii/amino/HomeFragment;)V

    return-void
.end method
