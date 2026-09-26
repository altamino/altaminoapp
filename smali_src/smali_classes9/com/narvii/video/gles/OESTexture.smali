.class public Lcom/narvii/video/gles/OESTexture;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mTextureHandle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getTextureId()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/gles/OESTexture;->mTextureHandle:I

    return v0
.end method

.method public init()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 8
    .line 9
    aget v0, v1, v2

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/video/gles/OESTexture;->mTextureHandle:I

    .line 12
    .line 13
    .line 14
    const v1, 0x8d65

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 18
    .line 19
    const/16 v0, 0x2802

    .line 20
    .line 21
    .line 22
    const v2, 0x812f

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 26
    .line 27
    const/16 v0, 0x2803

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 31
    .line 32
    const/16 v0, 0x2801

    .line 33
    .line 34
    const/16 v2, 0x2601

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 38
    .line 39
    const/16 v0, 0x2800

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 43
    return-void
.end method
