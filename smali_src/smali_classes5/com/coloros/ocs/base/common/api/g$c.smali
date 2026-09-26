.class Lcom/coloros/ocs/base/common/api/g$c;
.super Ld1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/base/common/api/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/ocs/base/common/api/g;


# direct methods
.method public constructor <init>(Lcom/coloros/ocs/base/common/api/g;Landroid/os/Looper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/g$c;->this$0:Lcom/coloros/ocs/base/common/api/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Ld1/a;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    .line 5
    iget v0, p1, Landroid/os/Message;->what:I

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/g$c;->this$0:Lcom/coloros/ocs/base/common/api/g;

    .line 11
    .line 12
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/coloros/ocs/base/common/api/g;->a(Lcom/coloros/ocs/base/common/api/g;I)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 22
    throw p1
.end method
