.class Lcom/narvii/util/NVToast$SafelyHandlerWrapper;
.super Landroid/os/Handler;
.source "NVToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/NVToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafelyHandlerWrapper"
.end annotation


# instance fields
.field private impl:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 303
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/narvii/util/NVToast$SafelyHandlerWrapper;->impl:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0

    .line 310
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/narvii/util/NVToast$SafelyHandlerWrapper;->impl:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
