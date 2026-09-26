.class public final Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rev:I

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "url"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->url:Ljava/lang/String;

    .line 12
    const/4 p1, -0x1

    .line 13
    .line 14
    iput p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->rev:I

    .line 15
    const/4 p1, 0x1

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache:Z

    .line 18
    return-void
.end method


# virtual methods
.method public final applyCache(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache:Z

    return-object p0
.end method

.method public final applyZipExtract(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract:Z

    return-object p0
.end method

.method public final attachObject(Ljava/lang/Object;)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method public final build()Lcom/narvii/util/fileloader/FileLoaderRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/util/fileloader/FileLoaderRequest;-><init>(Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;)V

    .line 6
    return-object v0
.end method

.method public final getApplyCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache:Z

    return v0
.end method

.method public final getApplyZipExtract()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract:Z

    return v0
.end method

.method public final getObj()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRev()I
    .locals 1

    iget v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->rev:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final rev(I)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->rev:I

    return-object p0
.end method

.method public final setApplyCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache:Z

    return-void
.end method

.method public final setApplyZipExtract(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract:Z

    return-void
.end method

.method public final setObj(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->obj:Ljava/lang/Object;

    return-void
.end method

.method public final setRev(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->rev:I

    return-void
.end method
