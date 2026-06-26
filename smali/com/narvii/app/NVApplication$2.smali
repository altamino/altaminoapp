.class Lcom/narvii/app/NVApplication$2;
.super Ljava/lang/Object;
.source "NVApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVApplication;->onApplicationResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lcom/narvii/app/NVApplication;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVApplication;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/narvii/app/NVApplication$2;->this$0:Lcom/narvii/app/NVApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 389
    iget v0, p0, Lcom/narvii/app/NVApplication$2;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/narvii/app/NVApplication$2;->i:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 390
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVApplication$2;->this$0:Lcom/narvii/app/NVApplication;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/narvii/app/NVApplication;->access$002(Lcom/narvii/app/NVApplication;J)J

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first frame loaded in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/app/NVApplication$2;->this$0:Lcom/narvii/app/NVApplication;

    invoke-static {v1}, Lcom/narvii/app/NVApplication;->access$000(Lcom/narvii/app/NVApplication;)J

    move-result-wide v1

    sget-wide v3, Lcom/narvii/app/NVApplication;->START_TIME:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
