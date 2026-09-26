.class public Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncoderConfig"
.end annotation


# instance fields
.field final firstTimeStampBase:J

.field final mBitRate:I

.field final mEglContext:Landroid/opengl/EGLContext;

.field final mFrameRate:I

.field final mHeight:I

.field final mOutputFile:Ljava/io/File;

.field final mWidth:I


# direct methods
.method public constructor <init>(Ljava/io/File;IIIILandroid/opengl/EGLContext;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mOutputFile:Ljava/io/File;

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mWidth:I

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mHeight:I

    .line 10
    .line 11
    iput p4, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mFrameRate:I

    .line 12
    .line 13
    iput p5, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mBitRate:I

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mEglContext:Landroid/opengl/EGLContext;

    .line 16
    .line 17
    iput-wide p7, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->firstTimeStampBase:J

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "EncoderConfig: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mWidth:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "x"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mHeight:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, " @"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mBitRate:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, " to \'"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mOutputFile:Ljava/io/File;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "\' ctxt="

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mEglContext:Landroid/opengl/EGLContext;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method
