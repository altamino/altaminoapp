.class public Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;
.super Ljava/lang/Object;
.source "TextureMovieEncoder.java"


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

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mOutputFile:Ljava/io/File;

    .line 149
    iput p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mWidth:I

    .line 150
    iput p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mHeight:I

    .line 151
    iput p4, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mFrameRate:I

    .line 152
    iput p5, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mBitRate:I

    .line 153
    iput-object p6, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mEglContext:Landroid/opengl/EGLContext;

    .line 154
    iput-wide p7, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->firstTimeStampBase:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncoderConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mOutputFile:Ljava/io/File;

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' ctxt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mEglContext:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
