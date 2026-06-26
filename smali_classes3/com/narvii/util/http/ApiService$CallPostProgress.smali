.class Lcom/narvii/util/http/ApiService$CallPostProgress;
.super Ljava/lang/Object;
.source "ApiService.java"

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

    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1191
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->listener:Lcom/narvii/util/http/PostProgressListener;

    .line 1192
    iput p2, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->total:I

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 1214
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1197
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->listener:Lcom/narvii/util/http/PostProgressListener;

    iget v1, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->current:I

    iget v2, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->total:I

    invoke-interface {v0, v1, v2}, Lcom/narvii/util/http/PostProgressListener;->onPostProgress(II)V

    const/4 v0, 0x0

    .line 1198
    iput-boolean v0, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->scheduled:Z

    return-void
.end method

.method step(IZ)V
    .locals 0

    .line 1202
    iput p1, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->current:I

    .line 1203
    iget-boolean p1, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->scheduled:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 1205
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x28

    .line 1207
    invoke-static {p0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    const/4 p1, 0x1

    .line 1209
    iput-boolean p1, p0, Lcom/narvii/util/http/ApiService$CallPostProgress;->scheduled:Z

    :cond_1
    return-void
.end method
