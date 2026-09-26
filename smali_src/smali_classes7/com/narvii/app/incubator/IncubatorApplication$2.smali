.class Lcom/narvii/app/incubator/IncubatorApplication$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/incubator/IncubatorApplication;->activityOnCreate(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/incubator/IncubatorApplication;

.field final synthetic val$cid:I

.field final synthetic val$t:I

.field final synthetic val$trackId:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/app/incubator/IncubatorApplication;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->val$t:I

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->val$cid:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->val$trackId:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->val$url:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    .line 3
    .line 4
    const-string v1, "logging"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->val$t:I

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    .line 16
    if-eq v1, v3, :cond_1

    .line 17
    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    const-string v1, "marketing"

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    const-string v1, "chat"

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    const-string v1, "normal"

    .line 27
    .line 28
    :goto_0
    const/16 v4, 0x8

    .line 29
    .line 30
    new-array v4, v4, [Ljava/lang/Object;

    .line 31
    const/4 v5, 0x0

    .line 32
    .line 33
    const-string v6, "type"

    .line 34
    .line 35
    aput-object v6, v4, v5

    .line 36
    .line 37
    aput-object v1, v4, v3

    .line 38
    .line 39
    const-string v1, "ndcId"

    .line 40
    .line 41
    aput-object v1, v4, v2

    .line 42
    .line 43
    iget v1, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->val$cid:I

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x3

    .line 49
    .line 50
    aput-object v1, v4, v2

    .line 51
    const/4 v1, 0x4

    .line 52
    .line 53
    const-string v2, "trackId"

    .line 54
    .line 55
    aput-object v2, v4, v1

    .line 56
    const/4 v1, 0x5

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->val$trackId:Ljava/lang/String;

    .line 59
    .line 60
    aput-object v2, v4, v1

    .line 61
    const/4 v1, 0x6

    .line 62
    .line 63
    const-string v2, "url"

    .line 64
    .line 65
    aput-object v2, v4, v1

    .line 66
    const/4 v1, 0x7

    .line 67
    .line 68
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->val$url:Ljava/lang/String;

    .line 69
    .line 70
    aput-object v2, v4, v1

    .line 71
    .line 72
    const-string v1, "PushOpened"

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1, v4}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method
