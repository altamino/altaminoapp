.class final Lcom/coloros/ocs/base/common/api/j$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/ocs/base/common/api/j;->e(Lcom/coloros/ocs/base/common/api/c;Lcom/coloros/ocs/base/common/api/f;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/ocs/base/common/api/f;

.field final synthetic b:Lcom/coloros/ocs/base/common/api/j;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/common/api/j;Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/f;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/j$b;->b:Lcom/coloros/ocs/base/common/api/j;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/coloros/ocs/base/common/api/j$b;->a:Lcom/coloros/ocs/base/common/api/f;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/j$b;->a:Lcom/coloros/ocs/base/common/api/f;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/coloros/ocs/base/common/api/f;->onConnectionSucceed()V

    .line 9
    return-void
.end method
