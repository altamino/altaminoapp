.class public Lcom/narvii/photos/VideoUploadSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/photos/VideoUploadSpec;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/narvii/photos/VideoUploadSpec;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/photos/VideoUploadSpec$Builder;->spec:Lcom/narvii/photos/VideoUploadSpec;

    .line 11
    return-void
.end method


# virtual methods
.method public build()Lcom/narvii/photos/VideoUploadSpec;
    .locals 1

    iget-object v0, p0, Lcom/narvii/photos/VideoUploadSpec$Builder;->spec:Lcom/narvii/photos/VideoUploadSpec;

    return-object v0
.end method

.method public headers([Ljava/lang/String;)Lcom/narvii/photos/VideoUploadSpec$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/photos/VideoUploadSpec$Builder;->spec:Lcom/narvii/photos/VideoUploadSpec;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/photos/VideoUploadSpec;->headers:[Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public target(Ljava/lang/String;)Lcom/narvii/photos/VideoUploadSpec$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/photos/VideoUploadSpec$Builder;->spec:Lcom/narvii/photos/VideoUploadSpec;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/photos/VideoUploadSpec;->target:Ljava/lang/String;

    .line 5
    return-object p0
.end method
