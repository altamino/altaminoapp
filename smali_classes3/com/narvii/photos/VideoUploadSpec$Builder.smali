.class public Lcom/narvii/photos/VideoUploadSpec$Builder;
.super Ljava/lang/Object;
.source "VideoUploadSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/photos/VideoUploadSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field spec:Lcom/narvii/photos/VideoUploadSpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/narvii/photos/VideoUploadSpec;

    invoke-direct {v0, p1}, Lcom/narvii/photos/VideoUploadSpec;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/photos/VideoUploadSpec$Builder;->spec:Lcom/narvii/photos/VideoUploadSpec;

    return-void
.end method


# virtual methods
.method public build()Lcom/narvii/photos/VideoUploadSpec;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/photos/VideoUploadSpec$Builder;->spec:Lcom/narvii/photos/VideoUploadSpec;

    return-object v0
.end method

.method public headers([Ljava/lang/String;)Lcom/narvii/photos/VideoUploadSpec$Builder;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/narvii/photos/VideoUploadSpec$Builder;->spec:Lcom/narvii/photos/VideoUploadSpec;

    iput-object p1, v0, Lcom/narvii/photos/VideoUploadSpec;->headers:[Ljava/lang/String;

    return-object p0
.end method

.method public target(Ljava/lang/String;)Lcom/narvii/photos/VideoUploadSpec$Builder;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/narvii/photos/VideoUploadSpec$Builder;->spec:Lcom/narvii/photos/VideoUploadSpec;

    iput-object p1, v0, Lcom/narvii/photos/VideoUploadSpec;->target:Ljava/lang/String;

    return-object p0
.end method
