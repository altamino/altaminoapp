.class public Lcom/narvii/youtube/YoutubeLoggingStub;
.super Ljava/lang/Object;
.source "YoutubeLoggingStub.java"


# instance fields
.field public errorCode:I

.field public eventOrigin:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public ndcId:I

.field public objectId:Ljava/lang/String;

.field public objectType:I

.field public videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->ndcId:I

    .line 18
    iput-object p2, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->objectId:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->objectType:I

    .line 20
    iput-object p4, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->videoId:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->eventOrigin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildYoutubeParseErrorParams()[Ljava/lang/Object;
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videoId"

    aput-object v2, v0, v1

    .line 25
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->videoId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "parserVersion"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    const-string v3, "code"

    aput-object v3, v0, v2

    iget v2, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->errorCode:I

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const/4 v2, 0x6

    const-string v3, "message"

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->message:Ljava/lang/String;

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const/16 v2, 0x8

    const-string v3, "ndcId"

    aput-object v3, v0, v2

    iget v2, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->ndcId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const/16 v2, 0xa

    const-string v3, "objectId"

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->objectId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "objectType"

    aput-object v2, v0, v1

    iget v1, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->objectType:I

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0xe

    const-string v2, "eventOrigin"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->eventOrigin:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    return-object v0
.end method
