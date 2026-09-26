.class public Lcom/narvii/youtube/YoutubeLoggingStub;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->ndcId:I

    iput-object p2, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->objectId:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->objectType:I

    iput-object p4, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->videoId:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->eventOrigin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildYoutubeParseErrorParams()[Ljava/lang/Object;
    .locals 4

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "videoId"

    .line 9
    .line 10
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->videoId:Ljava/lang/String;

    .line 14
    .line 15
    aput-object v2, v0, v1

    .line 16
    const/4 v1, 0x2

    .line 17
    .line 18
    const-string v2, "parserVersion"

    .line 19
    .line 20
    aput-object v2, v0, v1

    .line 21
    .line 22
    const/16 v1, 0xb

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x3

    .line 28
    .line 29
    aput-object v2, v0, v3

    .line 30
    const/4 v2, 0x4

    .line 31
    .line 32
    const-string v3, "code"

    .line 33
    .line 34
    aput-object v3, v0, v2

    .line 35
    .line 36
    iget v2, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->errorCode:I

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x5

    .line 42
    .line 43
    aput-object v2, v0, v3

    .line 44
    const/4 v2, 0x6

    .line 45
    .line 46
    const-string v3, "message"

    .line 47
    .line 48
    aput-object v3, v0, v2

    .line 49
    const/4 v2, 0x7

    .line 50
    .line 51
    iget-object v3, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->message:Ljava/lang/String;

    .line 52
    .line 53
    aput-object v3, v0, v2

    .line 54
    .line 55
    const/16 v2, 0x8

    .line 56
    .line 57
    const-string v3, "ndcId"

    .line 58
    .line 59
    aput-object v3, v0, v2

    .line 60
    .line 61
    iget v2, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->ndcId:I

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    const/16 v3, 0x9

    .line 68
    .line 69
    aput-object v2, v0, v3

    .line 70
    .line 71
    const/16 v2, 0xa

    .line 72
    .line 73
    const-string v3, "objectId"

    .line 74
    .line 75
    aput-object v3, v0, v2

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->objectId:Ljava/lang/String;

    .line 78
    .line 79
    aput-object v2, v0, v1

    .line 80
    .line 81
    const/16 v1, 0xc

    .line 82
    .line 83
    const-string v2, "objectType"

    .line 84
    .line 85
    aput-object v2, v0, v1

    .line 86
    .line 87
    iget v1, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->objectType:I

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    const/16 v2, 0xd

    .line 94
    .line 95
    aput-object v1, v0, v2

    .line 96
    .line 97
    const/16 v1, 0xe

    .line 98
    .line 99
    const-string v2, "eventOrigin"

    .line 100
    .line 101
    aput-object v2, v0, v1

    .line 102
    .line 103
    const/16 v1, 0xf

    .line 104
    .line 105
    iget-object v2, p0, Lcom/narvii/youtube/YoutubeLoggingStub;->eventOrigin:Ljava/lang/String;

    .line 106
    .line 107
    aput-object v2, v0, v1

    .line 108
    return-object v0
.end method
