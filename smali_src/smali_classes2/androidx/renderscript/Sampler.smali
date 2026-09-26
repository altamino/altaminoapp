.class public Landroidx/renderscript/Sampler;
.super Landroidx/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/Sampler$Builder;,
        Landroidx/renderscript/Sampler$Value;
    }
.end annotation


# instance fields
.field mAniso:F

.field mMag:Landroidx/renderscript/Sampler$Value;

.field mMin:Landroidx/renderscript/Sampler$Value;

.field mWrapR:Landroidx/renderscript/Sampler$Value;

.field mWrapS:Landroidx/renderscript/Sampler$Value;

.field mWrapT:Landroidx/renderscript/Sampler$Value;


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 4
    return-void
.end method

.method public static CLAMP_LINEAR(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroidx/renderscript/Sampler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 10
    .line 11
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR:Landroidx/renderscript/Sampler$Value;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    sget-object v1, Landroidx/renderscript/Sampler$Value;->CLAMP:Landroidx/renderscript/Sampler$Value;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroidx/renderscript/Sampler;

    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroidx/renderscript/Sampler;

    .line 34
    return-object p0
.end method

.method public static CLAMP_LINEAR_MIP_LINEAR(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 10
    .line 11
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler$Value;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 15
    .line 16
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR:Landroidx/renderscript/Sampler$Value;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 20
    .line 21
    sget-object v1, Landroidx/renderscript/Sampler$Value;->CLAMP:Landroidx/renderscript/Sampler$Value;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

    .line 34
    .line 35
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

    .line 36
    return-object p0
.end method

.method public static CLAMP_NEAREST(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroidx/renderscript/Sampler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 10
    .line 11
    sget-object v1, Landroidx/renderscript/Sampler$Value;->NEAREST:Landroidx/renderscript/Sampler$Value;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    sget-object v1, Landroidx/renderscript/Sampler$Value;->CLAMP:Landroidx/renderscript/Sampler$Value;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroidx/renderscript/Sampler;

    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroidx/renderscript/Sampler;

    .line 34
    return-object p0
.end method

.method public static MIRRORED_REPEAT_LINEAR(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroidx/renderscript/Sampler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 10
    .line 11
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR:Landroidx/renderscript/Sampler$Value;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    sget-object v1, Landroidx/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroidx/renderscript/Sampler$Value;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroidx/renderscript/Sampler;

    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroidx/renderscript/Sampler;

    .line 34
    return-object p0
.end method

.method public static MIRRORED_REPEAT_NEAREST(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroidx/renderscript/Sampler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 10
    .line 11
    sget-object v1, Landroidx/renderscript/Sampler$Value;->NEAREST:Landroidx/renderscript/Sampler$Value;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    sget-object v1, Landroidx/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroidx/renderscript/Sampler$Value;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroidx/renderscript/Sampler;

    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroidx/renderscript/Sampler;

    .line 34
    return-object p0
.end method

.method public static WRAP_LINEAR(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroidx/renderscript/Sampler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 10
    .line 11
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR:Landroidx/renderscript/Sampler$Value;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    sget-object v1, Landroidx/renderscript/Sampler$Value;->WRAP:Landroidx/renderscript/Sampler$Value;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroidx/renderscript/Sampler;

    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroidx/renderscript/Sampler;

    .line 34
    return-object p0
.end method

.method public static WRAP_LINEAR_MIP_LINEAR(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 10
    .line 11
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler$Value;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 15
    .line 16
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR:Landroidx/renderscript/Sampler$Value;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 20
    .line 21
    sget-object v1, Landroidx/renderscript/Sampler$Value;->WRAP:Landroidx/renderscript/Sampler$Value;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

    .line 34
    .line 35
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

    .line 36
    return-object p0
.end method

.method public static WRAP_NEAREST(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroidx/renderscript/Sampler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 10
    .line 11
    sget-object v1, Landroidx/renderscript/Sampler$Value;->NEAREST:Landroidx/renderscript/Sampler$Value;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    sget-object v1, Landroidx/renderscript/Sampler$Value;->WRAP:Landroidx/renderscript/Sampler$Value;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroidx/renderscript/Sampler;

    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroidx/renderscript/Sampler;

    .line 34
    return-object p0
.end method


# virtual methods
.method public getAnisotropy()F
    .locals 1

    iget v0, p0, Landroidx/renderscript/Sampler;->mAniso:F

    return v0
.end method

.method public getMagnification()Landroidx/renderscript/Sampler$Value;
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/Sampler;->mMag:Landroidx/renderscript/Sampler$Value;

    return-object v0
.end method

.method public getMinification()Landroidx/renderscript/Sampler$Value;
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/Sampler;->mMin:Landroidx/renderscript/Sampler$Value;

    return-object v0
.end method

.method public getWrapS()Landroidx/renderscript/Sampler$Value;
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/Sampler;->mWrapS:Landroidx/renderscript/Sampler$Value;

    return-object v0
.end method

.method public getWrapT()Landroidx/renderscript/Sampler$Value;
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/Sampler;->mWrapT:Landroidx/renderscript/Sampler$Value;

    return-object v0
.end method
