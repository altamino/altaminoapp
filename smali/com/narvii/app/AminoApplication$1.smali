.class Lcom/narvii/app/AminoApplication$1;
.super Ljava/lang/Object;
.source "AminoApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/AminoApplication;->activityOnCreate(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/AminoApplication;

.field final synthetic val$cid:I

.field final synthetic val$t:I

.field final synthetic val$trackId:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/app/AminoApplication;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/narvii/app/AminoApplication$1;->this$0:Lcom/narvii/app/AminoApplication;

    iput p2, p0, Lcom/narvii/app/AminoApplication$1;->val$t:I

    iput p3, p0, Lcom/narvii/app/AminoApplication$1;->val$cid:I

    iput-object p4, p0, Lcom/narvii/app/AminoApplication$1;->val$trackId:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/app/AminoApplication$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 196
    iget-object v0, p0, Lcom/narvii/app/AminoApplication$1;->this$0:Lcom/narvii/app/AminoApplication;

    const-string v1, "logging"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 198
    iget v1, p0, Lcom/narvii/app/AminoApplication$1;->val$t:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const-string v1, "marketing"

    goto :goto_0

    :cond_0
    const-string v1, "chat"

    goto :goto_0

    :cond_1
    const-string v1, "normal"

    :goto_0
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "type"

    aput-object v6, v4, v5

    aput-object v1, v4, v3

    const-string v1, "ndcId"

    aput-object v1, v4, v2

    const/4 v1, 0x3

    .line 209
    iget v2, p0, Lcom/narvii/app/AminoApplication$1;->val$cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "trackId"

    aput-object v2, v4, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/narvii/app/AminoApplication$1;->val$trackId:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "url"

    aput-object v2, v4, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/narvii/app/AminoApplication$1;->val$url:Ljava/lang/String;

    aput-object v2, v4, v1

    const-string v1, "PushOpened"

    invoke-interface {v0, v1, v4}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
