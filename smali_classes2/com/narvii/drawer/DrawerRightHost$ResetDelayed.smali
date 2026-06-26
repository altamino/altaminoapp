.class Lcom/narvii/drawer/DrawerRightHost$ResetDelayed;
.super Ljava/lang/Object;
.source "DrawerRightHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerRightHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResetDelayed"
.end annotation


# instance fields
.field final r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/drawer/DrawerRightHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 1

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$ResetDelayed;->r:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$ResetDelayed;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerRightHost;

    if-eqz v0, :cond_0

    .line 390
    iget-object v1, v0, Lcom/narvii/drawer/DrawerRightHost;->resetDelayed:Ljava/lang/Runnable;

    if-ne v1, p0, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost;->reset()V

    const/4 v1, 0x0

    .line 392
    iput-object v1, v0, Lcom/narvii/drawer/DrawerRightHost;->resetDelayed:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
