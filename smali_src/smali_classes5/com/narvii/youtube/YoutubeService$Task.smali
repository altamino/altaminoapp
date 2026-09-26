.class Lcom/narvii/youtube/YoutubeService$Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/youtube/YoutubeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation


# instance fields
.field callback:Lcom/narvii/youtube/YoutubeVideoCallback;

.field loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

.field preloadOrder:I

.field videoId:Ljava/lang/String;


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
