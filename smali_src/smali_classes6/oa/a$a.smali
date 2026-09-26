.class public final Loa/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private audioLocale:Ljava/util/Locale;

.field private audioTrackId:Ljava/lang/String;

.field private audioTrackName:Ljava/lang/String;

.field private audioTrackType:Loa/c;

.field private averageBitrate:I

.field private content:Ljava/lang/String;

.field private deliveryMethod:Loa/d;

.field private id:Ljava/lang/String;

.field private isUrl:Z

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/a;

.field private manifestUrl:Ljava/lang/String;

.field private mediaFormat:Lx9/m;


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
    iput-object v0, p0, Loa/a$a;->deliveryMethod:Loa/d;

    .line 8
    const/4 v0, -0x1

    .line 9
    .line 10
    iput v0, p0, Loa/a$a;->averageBitrate:I

    .line 11
    return-void
.end method


# virtual methods
.method public a()Loa/a;
    .locals 15

    .line 1
    .line 2
    iget-object v1, p0, Loa/a$a;->id:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Loa/a$a;->content:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    iget-object v5, p0, Loa/a$a;->deliveryMethod:Loa/d;

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    new-instance v14, Loa/a;

    .line 15
    .line 16
    iget-boolean v3, p0, Loa/a$a;->isUrl:Z

    .line 17
    .line 18
    iget-object v4, p0, Loa/a$a;->mediaFormat:Lx9/m;

    .line 19
    .line 20
    iget v6, p0, Loa/a$a;->averageBitrate:I

    .line 21
    .line 22
    iget-object v7, p0, Loa/a$a;->manifestUrl:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v8, p0, Loa/a$a;->audioTrackId:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v9, p0, Loa/a$a;->audioTrackName:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v10, p0, Loa/a$a;->audioLocale:Ljava/util/Locale;

    .line 29
    .line 30
    iget-object v11, p0, Loa/a$a;->audioTrackType:Loa/c;

    .line 31
    .line 32
    iget-object v12, p0, Loa/a$a;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 33
    const/4 v13, 0x0

    .line 34
    move-object v0, v14

    .line 35
    .line 36
    .line 37
    invoke-direct/range {v0 .. v13}, Loa/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZLx9/m;Loa/d;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Loa/c;Lorg/schabi/newpipe/extractor/services/youtube/a;Loa/b;)V

    .line 38
    return-object v14

    .line 39
    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v1, "The delivery method of the audio stream has been set as null, which is not allowed. Pass a valid one instead with setDeliveryMethod."

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0

    .line 47
    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v1, "The content of the audio stream has been not set or is null. Please specify a non-null one with setContent."

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0

    .line 55
    .line 56
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v1, "The identifier of the audio stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw v0
.end method

.method public b(Ljava/util/Locale;)Loa/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/a$a;->audioLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Loa/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/a$a;->audioTrackId:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Loa/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/a$a;->audioTrackName:Ljava/lang/String;

    return-object p0
.end method

.method public e(Loa/c;)Loa/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/a$a;->audioTrackType:Loa/c;

    return-object p0
.end method

.method public f(I)Loa/a$a;
    .locals 0

    .line 1
    iput p1, p0, Loa/a$a;->averageBitrate:I

    return-object p0
.end method

.method public g(Ljava/lang/String;Z)Loa/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/a$a;->content:Ljava/lang/String;

    iput-boolean p2, p0, Loa/a$a;->isUrl:Z

    return-object p0
.end method

.method public h(Loa/d;)Loa/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/a$a;->deliveryMethod:Loa/d;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Loa/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/a$a;->id:Ljava/lang/String;

    return-object p0
.end method

.method public j(Lorg/schabi/newpipe/extractor/services/youtube/a;)Loa/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/a$a;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/a;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Loa/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/a$a;->manifestUrl:Ljava/lang/String;

    return-object p0
.end method

.method public l(Lx9/m;)Loa/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Loa/a$a;->mediaFormat:Lx9/m;

    return-object p0
.end method
