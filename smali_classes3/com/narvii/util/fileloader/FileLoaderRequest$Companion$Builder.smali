.class public final Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;
.super Ljava/lang/Object;
.source "FileLoaderRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/fileloader/FileLoaderRequest$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private applyCache:Z

.field private applyZipExtract:Z

.field private obj:Ljava/lang/Object;

.field private rev:I

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->url:Ljava/lang/String;

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->rev:I

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache:Z

    return-void
.end method


# virtual methods
.method public final applyCache(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache:Z

    return-object p0
.end method

.method public final applyZipExtract(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract:Z

    return-object p0
.end method

.method public final attachObject(Ljava/lang/Object;)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method public final build()Lcom/narvii/util/fileloader/FileLoaderRequest;
    .locals 1

    .line 48
    new-instance v0, Lcom/narvii/util/fileloader/FileLoaderRequest;

    invoke-direct {v0, p0}, Lcom/narvii/util/fileloader/FileLoaderRequest;-><init>(Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;)V

    return-object v0
.end method

.method public final getApplyCache()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache:Z

    return v0
.end method

.method public final getApplyZipExtract()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract:Z

    return v0
.end method

.method public final getObj()Ljava/lang/Object;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRev()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->rev:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final rev(I)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;
    .locals 0

    .line 28
    iput p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->rev:I

    return-object p0
.end method

.method public final setApplyCache(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache:Z

    return-void
.end method

.method public final setApplyZipExtract(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract:Z

    return-void
.end method

.method public final setObj(Ljava/lang/Object;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->obj:Ljava/lang/Object;

    return-void
.end method

.method public final setRev(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->rev:I

    return-void
.end method
