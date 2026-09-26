.class final Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/fileloader/FileLoader$Session;-><init>(Lcom/narvii/util/fileloader/FileLoader;Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/fileloader/FileLoader$Session;


# direct methods
.method constructor <init>(Lcom/narvii/util/fileloader/FileLoader$Session;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;

    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    invoke-direct {v0, v1}, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;-><init>(Lcom/narvii/util/fileloader/FileLoader$Session;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;->invoke()Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;

    move-result-object v0

    return-object v0
.end method
