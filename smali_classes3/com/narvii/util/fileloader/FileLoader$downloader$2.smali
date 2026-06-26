.class final Lcom/narvii/util/fileloader/FileLoader$downloader$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FileLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/fileloader/FileLoader;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/util/fileloader/FileDownloader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/fileloader/FileLoader;


# direct methods
.method constructor <init>(Lcom/narvii/util/fileloader/FileLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$downloader$2;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/fileloader/FileDownloader;
    .locals 2

    .line 20
    new-instance v0, Lcom/narvii/util/fileloader/FileDownloader;

    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$downloader$2;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {v1}, Lcom/narvii/util/fileloader/FileLoader;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/fileloader/FileDownloader;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader$downloader$2;->invoke()Lcom/narvii/util/fileloader/FileDownloader;

    move-result-object v0

    return-object v0
.end method
