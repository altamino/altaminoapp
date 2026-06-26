.class public Lcom/narvii/video/gles/OESTexture;
.super Ljava/lang/Object;
.source "OESTexture.java"


# instance fields
.field private mTextureHandle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextureId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/narvii/video/gles/OESTexture;->mTextureHandle:I

    return v0
.end method

.method public init()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 23
    aget v0, v1, v2

    iput v0, p0, Lcom/narvii/video/gles/OESTexture;->mTextureHandle:I

    .line 25
    aget v0, v1, v2

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v0, 0x812f

    const/16 v2, 0x2802

    .line 26
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 27
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2601

    const/16 v2, 0x2801

    .line 28
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    .line 29
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method
