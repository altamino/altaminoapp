.class public final Lcom/narvii/util/fileloader/FileLoaderRequest;
.super Ljava/lang/Object;
.source "FileLoaderRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/fileloader/FileLoaderRequest$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion;


# instance fields
.field private final builder:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/util/fileloader/FileLoaderRequest;->Companion:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoaderRequest;->builder:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    return-void
.end method


# virtual methods
.method public final applyCache()Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest;->builder:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getApplyCache()Z

    move-result v0

    return v0
.end method

.method public final applyZipExtract()Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest;->builder:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getApplyZipExtract()Z

    move-result v0

    return v0
.end method

.method public final getBuilder()Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest;->builder:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoaderRequest;->builder:Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
