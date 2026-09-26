.class Lcom/narvii/drawer/DrawerRightHost$ResetDelayed;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$ResetDelayed;->r:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$ResetDelayed;->r:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/drawer/DrawerRightHost;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, v0, Lcom/narvii/drawer/DrawerRightHost;->resetDelayed:Ljava/lang/Runnable;

    .line 13
    .line 14
    if-ne v1, p0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost;->reset()V

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    iput-object v1, v0, Lcom/narvii/drawer/DrawerRightHost;->resetDelayed:Ljava/lang/Runnable;

    .line 21
    :cond_0
    return-void
.end method
