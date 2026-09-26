.class public final Lcom/narvii/util/fileloader/FileLoaderRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/fileloader/FileLoaderRequest$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final builder:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/util/fileloader/FileLoaderRequest;->Companion:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;)V
    .locals 1
    .param p1    # Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "builder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest;->builder:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 11
    return-void
.end method


# virtual methods
.method public final applyCache()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest;->builder:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getApplyCache()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final applyZipExtract()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest;->builder:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getApplyZipExtract()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getBuilder()Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest;->builder:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest;->builder:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getUrl()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
