.class public Lcom/narvii/photos/PhotoUploadSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/photos/PhotoUploadSpec;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/narvii/photos/PhotoUploadSpec;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/photos/PhotoUploadSpec$Builder;->photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;

    .line 11
    return-void
.end method


# virtual methods
.method public build()Lcom/narvii/photos/PhotoUploadSpec;
    .locals 1

    iget-object v0, p0, Lcom/narvii/photos/PhotoUploadSpec$Builder;->photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;

    return-object v0
.end method

.method public headers([Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/photos/PhotoUploadSpec$Builder;->photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/photos/PhotoUploadSpec;->headers:[Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public keepPng()Lcom/narvii/photos/PhotoUploadSpec$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/photos/PhotoUploadSpec$Builder;->photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/photos/PhotoUploadSpec;->keepPng:Z

    .line 6
    return-object p0
.end method

.method public original(Z)Lcom/narvii/photos/PhotoUploadSpec$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/photos/PhotoUploadSpec$Builder;->photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;

    .line 3
    .line 4
    iput-boolean p1, v0, Lcom/narvii/photos/PhotoUploadSpec;->original:Z

    .line 5
    return-object p0
.end method

.method public quality(I)Lcom/narvii/photos/PhotoUploadSpec$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/photos/PhotoUploadSpec$Builder;->photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/photos/PhotoUploadSpec;->quality:I

    .line 5
    return-object p0
.end method

.method public target(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/photos/PhotoUploadSpec$Builder;->photoUploadSpec:Lcom/narvii/photos/PhotoUploadSpec;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/photos/PhotoUploadSpec;->target:Ljava/lang/String;

    .line 5
    return-object p0
.end method
