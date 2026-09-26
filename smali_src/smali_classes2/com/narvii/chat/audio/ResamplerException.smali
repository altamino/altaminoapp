.class public Lcom/narvii/chat/audio/ResamplerException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field public static final RESAMPLER_ERR_ALLOC_FAILED:I = 0x1

.field public static final RESAMPLER_ERR_BAD_STATE:I = 0x2

.field public static final RESAMPLER_ERR_INVALID_ARG:I = 0x3

.field public static final RESAMPLER_ERR_PTR_OVERLAP:I = 0x4

.field public static final RESAMPLER_ERR_SUCCESS:I


# instance fields
.field private error:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/chat/audio/ResamplerException;->msg(I)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    iput p1, p0, Lcom/narvii/chat/audio/ResamplerException;->error:I

    .line 10
    return-void
.end method

.method private static msg(I)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p0, v0, :cond_2

    .line 9
    const/4 v0, 0x3

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    const/4 v0, 0x4

    .line 13
    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v1, "RESAMPLER_ERR_"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    .line 34
    :cond_0
    const-string p0, "RESAMPLER_ERR_PTR_OVERLAP"

    .line 35
    return-object p0

    .line 36
    .line 37
    :cond_1
    const-string p0, "RESAMPLER_ERR_INVALID_ARG"

    .line 38
    return-object p0

    .line 39
    .line 40
    :cond_2
    const-string p0, "RESAMPLER_ERR_BAD_STATE"

    .line 41
    return-object p0

    .line 42
    .line 43
    :cond_3
    const-string p0, "RESAMPLER_ERR_ALLOC_FAILED"

    .line 44
    return-object p0

    .line 45
    .line 46
    :cond_4
    const-string p0, "RESAMPLER_ERR_SUCCESS"

    .line 47
    return-object p0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/audio/ResamplerException;->error:I

    return v0
.end method
