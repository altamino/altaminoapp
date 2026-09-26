.class Lcom/narvii/util/http/ApiService$CallPostProgress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/http/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallPostProgress"
.end annotation


# instance fields
.field volatile current:I

.field listener:Lcom/narvii/util/http/PostProgressListener;

.field volatile scheduled:Z

.field total:I


# direct methods
.method constructor <init>(Lcom/narvii/util/http/PostProgressListener;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->listener:Lcom/narvii/util/http/PostProgressListener;

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->total:I

    .line 8
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->listener:Lcom/narvii/util/http/PostProgressListener;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->current:I

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->total:I

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/narvii/util/http/PostProgressListener;->onPostProgress(II)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->scheduled:Z

    .line 13
    return-void
.end method

.method step(IZ)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->current:I

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->scheduled:Z

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    const-wide/16 p1, 0x28

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 18
    :goto_0
    const/4 p1, 0x1

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->scheduled:Z

    .line 21
    :cond_1
    return-void
.end method
