.class public final Loa/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private deliveryMethod:Loa/d;

.field private id:Ljava/lang/String;

.field private isUrl:Z

.field private isVideoOnly:Ljava/lang/Boolean;

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/a;

.field private manifestUrl:Ljava/lang/String;

.field private mediaFormat:Lx9/m;

.field private resolution:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Loa/d;->PROGRESSIVE_HTTP:Loa/d;

    .line 6
    .line 7
    iput-object v0, p0, Loa/s$a;->deliveryMethod:Loa/d;

    .line 8
    return-void
.end method


# virtual methods
.method public a()Loa/s;
    .locals 12

    .line 1
    .line 2
    iget-object v1, p0, Loa/s$a;->id:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v1, :cond_4

    .line 5
    .line 6
    iget-object v2, p0, Loa/s$a;->content:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v2, :cond_3

    .line 9
    .line 10
    iget-object v5, p0, Loa/s$a;->deliveryMethod:Loa/d;

    .line 11
    .line 12
    if-eqz v5, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Loa/s$a;->isVideoOnly:Ljava/lang/Boolean;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v6, p0, Loa/s$a;->resolution:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    new-instance v11, Loa/s;

    .line 23
    .line 24
    iget-boolean v3, p0, Loa/s$a;->isUrl:Z

    .line 25
    .line 26
    iget-object v4, p0, Loa/s$a;->mediaFormat:Lx9/m;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    move-result v7

    .line 31
    .line 32
    iget-object v8, p0, Loa/s$a;->manifestUrl:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v9, p0, Loa/s$a;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 35
    const/4 v10, 0x0

    .line 36
    move-object v0, v11

    .line 37
    .line 38
    .line 39
    invoke-direct/range {v0 .. v10}, Loa/s;-><init>(Ljava/lang/String;Ljava/lang/String;ZLx9/m;Loa/d;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a;Loa/t;)V

    .line 40
    return-object v11

    .line 41
    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v1, "The resolution of the video stream has been not set. Please specify it with setResolution (use an empty string if you are not able to get it)."

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0

    .line 49
    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v1, "The video stream has been not set as a video-only stream or as a video stream with embedded audio. Please specify this information with setIsVideoOnly."

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    throw v0

    .line 57
    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v1, "The delivery method of the video stream has been set as null, which is not allowed. Pass a valid one instead with setDeliveryMethod."

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    throw v0

    .line 65
    .line 66
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v1, "The content of the video stream has been not set or is null. Please specify a non-null one with setContent."

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw v0

    .line 73
    .line 74
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v1, "The identifier of the video stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    throw v0
.end method

.method public b(Ljava/lang/String;Z)Loa/s$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/s$a;->content:Ljava/lang/String;

    iput-boolean p2, p0, Loa/s$a;->isUrl:Z

    return-object p0
.end method

.method public c(Loa/d;)Loa/s$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/s$a;->deliveryMethod:Loa/d;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Loa/s$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/s$a;->id:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)Loa/s$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Loa/s$a;->isVideoOnly:Ljava/lang/Boolean;

    .line 7
    return-object p0
.end method

.method public f(Lorg/schabi/newpipe/extractor/services/youtube/a;)Loa/s$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/s$a;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/a;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Loa/s$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/s$a;->manifestUrl:Ljava/lang/String;

    return-object p0
.end method

.method public h(Lx9/m;)Loa/s$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/s$a;->mediaFormat:Lx9/m;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Loa/s$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/s$a;->resolution:Ljava/lang/String;

    return-object p0
.end method
