.class public Lcom/narvii/photos/PhotoUploadSpec$Builder;
.super Ljava/lang/Object;
.source "PhotoUploadSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/photos/PhotoUploadSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/narvii/photos/PhotoUploadSpec;

    invoke-direct {v0, p1}, Lcom/narvii/photos/PhotoUploadSpec;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/photos/PhotoUploadSpec$Builder;->photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;

    return-void
.end method


# virtual methods
.method public build()Lcom/narvii/photos/PhotoUploadSpec;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/photos/PhotoUploadSpec$Builder;->photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;

    return-object v0
.end method

.method public headers([Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/photos/PhotoUploadSpec$Builder;->photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;

    iput-object p1, v0, Lcom/narvii/photos/PhotoUploadSpec;->headers:[Ljava/lang/String;

    return-object p0
.end method

.method public keepPng()Lcom/narvii/photos/PhotoUploadSpec$Builder;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/narvii/photos/PhotoUploadSpec$Builder;->photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/photos/PhotoUploadSpec;->keepPng:Z

    return-object p0
.end method

.method public original(Z)Lcom/narvii/photos/PhotoUploadSpec$Builder;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/narvii/photos/PhotoUploadSpec$Builder;->photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;

    iput-boolean p1, v0, Lcom/narvii/photos/PhotoUploadSpec;->original:Z

    return-object p0
.end method

.method public quality(I)Lcom/narvii/photos/PhotoUploadSpec$Builder;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/photos/PhotoUploadSpec$Builder;->photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;

    iput p1, v0, Lcom/narvii/photos/PhotoUploadSpec;->quality:I

    return-object p0
.end method

.method public target(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/photos/PhotoUploadSpec$Builder;->photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;

    iput-object p1, v0, Lcom/narvii/photos/PhotoUploadSpec;->target:Ljava/lang/String;

    return-object p0
.end method
