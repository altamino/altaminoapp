.class Lcom/narvii/app/NVApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVApplication$1;->this$0:Lcom/narvii/app/NVApplication;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/app/NVApplication$1;->i:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    iput v1, p0, Lcom/narvii/app/NVApplication$1;->i:I

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVApplication$1;->this$0:Lcom/narvii/app/NVApplication;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/narvii/app/NVApplication;->d(Lcom/narvii/app/NVApplication;J)V

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    const-string v1, "first frame loaded in "

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/app/NVApplication$1;->this$0:Lcom/narvii/app/NVApplication;

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/narvii/app/NVApplication;->c(Lcom/narvii/app/NVApplication;)J

    .line 38
    move-result-wide v1

    .line 39
    .line 40
    sget-wide v3, Lcom/narvii/app/NVApplication;->START_TIME:J

    .line 41
    sub-long/2addr v1, v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "ms"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void
.end method
