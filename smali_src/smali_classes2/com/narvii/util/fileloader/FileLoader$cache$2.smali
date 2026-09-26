.class final Lcom/narvii/util/fileloader/FileLoader$cache$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


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
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/util/fileloader/INVFileCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/fileloader/FileLoader;


# direct methods
.method constructor <init>(Lcom/narvii/util/fileloader/FileLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$cache$2;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/fileloader/INVFileCache;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$cache$2;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    .line 1
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoader;->provideCache(Ljava/io/File;)Lcom/narvii/util/fileloader/INVFileCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader$cache$2;->invoke()Lcom/narvii/util/fileloader/INVFileCache;

    move-result-object v0

    return-object v0
.end method
