.class final Lcom/narvii/media/giphy/GiphyStickerService$giphyLoader$2;
.super Lkotlin/jvm/internal/Lambda;
.source "GiphyStickerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/giphy/GiphyStickerService;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/media/giphy/GiphyStickerLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/giphy/GiphyStickerService;


# direct methods
.method constructor <init>(Lcom/narvii/media/giphy/GiphyStickerService;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$giphyLoader$2;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/media/giphy/GiphyStickerLoader;
    .locals 3

    .line 32
    new-instance v0, Lcom/narvii/media/giphy/GiphyStickerLoader;

    iget-object v1, p0, Lcom/narvii/media/giphy/GiphyStickerService$giphyLoader$2;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-virtual {v1}, Lcom/narvii/media/giphy/GiphyStickerService;->getNvContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/media/giphy/GiphyStickerService$giphyLoader$2;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-static {v2}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getGIPHY_STICKER_DOWNLOAD_DIR_PATH$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/narvii/media/giphy/GiphyStickerLoader;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/narvii/media/giphy/GiphyStickerService$giphyLoader$2;->invoke()Lcom/narvii/media/giphy/GiphyStickerLoader;

    move-result-object v0

    return-object v0
.end method
