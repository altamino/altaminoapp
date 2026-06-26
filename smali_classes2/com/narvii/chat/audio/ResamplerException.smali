.class public Lcom/narvii/chat/audio/ResamplerException;
.super Ljava/io/IOException;
.source "ResamplerException.java"


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

    .line 19
    invoke-static {p1}, Lcom/narvii/chat/audio/ResamplerException;->msg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 20
    iput p1, p0, Lcom/narvii/chat/audio/ResamplerException;->error:I

    return-void
.end method

.method private static msg(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESAMPLER_ERR_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "RESAMPLER_ERR_PTR_OVERLAP"

    return-object p0

    :cond_1
    const-string p0, "RESAMPLER_ERR_INVALID_ARG"

    return-object p0

    :cond_2
    const-string p0, "RESAMPLER_ERR_BAD_STATE"

    return-object p0

    :cond_3
    const-string p0, "RESAMPLER_ERR_ALLOC_FAILED"

    return-object p0

    :cond_4
    const-string p0, "RESAMPLER_ERR_SUCCESS"

    return-object p0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/narvii/chat/audio/ResamplerException;->error:I

    return v0
.end method
