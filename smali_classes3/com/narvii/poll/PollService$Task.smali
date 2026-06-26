.class Lcom/narvii/poll/PollService$Task;
.super Ljava/lang/Object;
.source "PollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poll/PollService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation


# instance fields
.field blog:Lcom/narvii/model/Blog;

.field optId:Ljava/lang/String;

.field request:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
