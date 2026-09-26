.class Lcom/coloros/ocs/mediaunit/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/ocs/base/common/api/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/ocs/mediaunit/e;->r()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/ocs/base/common/api/g$b<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/ocs/mediaunit/e;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/mediaunit/e;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/coloros/ocs/mediaunit/e$b;->this$0:Lcom/coloros/ocs/mediaunit/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lg1/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg1/b<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/coloros/ocs/mediaunit/e$b;->this$0:Lcom/coloros/ocs/mediaunit/e;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/coloros/ocs/mediaunit/e;->g(Lcom/coloros/ocs/mediaunit/e;)Lcom/coloros/ocs/mediaunit/a;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/coloros/ocs/mediaunit/e$b;->this$0:Lcom/coloros/ocs/mediaunit/e;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/coloros/ocs/mediaunit/e;->k(Lcom/coloros/ocs/mediaunit/e;)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/coloros/ocs/mediaunit/e$b;->this$0:Lcom/coloros/ocs/mediaunit/e;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/coloros/ocs/mediaunit/e;->g(Lcom/coloros/ocs/mediaunit/e;)Lcom/coloros/ocs/mediaunit/a;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/coloros/ocs/mediaunit/e$b;->this$0:Lcom/coloros/ocs/mediaunit/e;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/coloros/ocs/mediaunit/e;->i(Lcom/coloros/ocs/mediaunit/e;)Landroid/os/IBinder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/coloros/ocs/mediaunit/e$b;->this$0:Lcom/coloros/ocs/mediaunit/e;

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lcom/coloros/ocs/mediaunit/e;->j(Lcom/coloros/ocs/mediaunit/e;)Landroid/content/Context;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0, v1}, Lcom/coloros/ocs/mediaunit/a;->N(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    :goto_0
    return-void
.end method
