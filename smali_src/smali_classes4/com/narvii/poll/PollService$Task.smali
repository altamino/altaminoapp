.class Lcom/narvii/poll/PollService$Task;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
