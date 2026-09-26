.class public final synthetic Lcom/narvii/paging/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/paging/NVRecyclerViewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/a;->a:Lcom/narvii/paging/NVRecyclerViewFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/paging/a;->a:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-static {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->n(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    return-void
.end method
