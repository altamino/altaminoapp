.class public Lcom/narvii/cropping/CroppingData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bgColor:Ljava/lang/String;

.field public dynamic:Z

.field public dynamicPath:Ljava/lang/String;

.field public orgVideoPath:Ljava/lang/String;

.field public rotateAngle:I

.field public scale:F

.field public transformX:F

.field public transformXRatio:F

.field public transformY:F

.field public transformYRatio:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FIFFLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/cropping/CroppingData;->orgVideoPath:Ljava/lang/String;

    iput p2, p0, Lcom/narvii/cropping/CroppingData;->scale:F

    iput p3, p0, Lcom/narvii/cropping/CroppingData;->rotateAngle:I

    iput p4, p0, Lcom/narvii/cropping/CroppingData;->transformX:F

    iput p5, p0, Lcom/narvii/cropping/CroppingData;->transformY:F

    iput-object p6, p0, Lcom/narvii/cropping/CroppingData;->bgColor:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/narvii/cropping/CroppingData;->dynamic:Z

    iput-object p8, p0, Lcom/narvii/cropping/CroppingData;->dynamicPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FIFFLjava/lang/String;ZLjava/lang/String;FF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/cropping/CroppingData;->orgVideoPath:Ljava/lang/String;

    iput p2, p0, Lcom/narvii/cropping/CroppingData;->scale:F

    iput p3, p0, Lcom/narvii/cropping/CroppingData;->rotateAngle:I

    iput p4, p0, Lcom/narvii/cropping/CroppingData;->transformX:F

    iput p5, p0, Lcom/narvii/cropping/CroppingData;->transformY:F

    iput-object p6, p0, Lcom/narvii/cropping/CroppingData;->bgColor:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/narvii/cropping/CroppingData;->dynamic:Z

    iput-object p8, p0, Lcom/narvii/cropping/CroppingData;->dynamicPath:Ljava/lang/String;

    iput p9, p0, Lcom/narvii/cropping/CroppingData;->transformXRatio:F

    iput p10, p0, Lcom/narvii/cropping/CroppingData;->transformYRatio:F

    return-void
.end method


# virtual methods
.method public getBgColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/cropping/CroppingData;->bgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/cropping/CroppingData;->dynamicPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRotateAngle()I
    .locals 1

    iget v0, p0, Lcom/narvii/cropping/CroppingData;->rotateAngle:I

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/narvii/cropping/CroppingData;->scale:F

    return v0
.end method

.method public getTransformX()F
    .locals 1

    iget v0, p0, Lcom/narvii/cropping/CroppingData;->transformX:F

    return v0
.end method

.method public getTransformY()F
    .locals 1

    iget v0, p0, Lcom/narvii/cropping/CroppingData;->transformY:F

    return v0
.end method

.method public isDynamic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/cropping/CroppingData;->dynamic:Z

    return v0
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/cropping/CroppingData;->bgColor:Ljava/lang/String;

    return-void
.end method

.method public setDynamic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/cropping/CroppingData;->dynamic:Z

    return-void
.end method

.method public setDynamicPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/cropping/CroppingData;->dynamicPath:Ljava/lang/String;

    return-void
.end method

.method public setRotateAngle(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/cropping/CroppingData;->rotateAngle:I

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/cropping/CroppingData;->scale:F

    return-void
.end method

.method public setTransformX(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/cropping/CroppingData;->transformX:F

    return-void
.end method

.method public setTransformY(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/cropping/CroppingData;->transformY:F

    return-void
.end method
