.class final Lcom/narvii/video/EditorStickerPickerListFragment$GiphyDataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "EditorStickerPickerListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/EditorStickerPickerListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GiphyDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/PageDataSource<",
        "Lcom/narvii/media/giphy/GiphyItem;",
        "Lcom/narvii/media/giphy/GiphyListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/EditorStickerPickerListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/PagingConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/paging/source/PagingConfiguration;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyDataSource;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    const/4 p1, 0x0

    .line 128
    invoke-direct {p0, p2, p1, p3}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 130
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.giphy.com/v1/stickers/packs/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyDataSource;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-static {v2}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getStickerPackId$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/stickers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyDataSource;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-static {v1}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getApiKey$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "api_key"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 132
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/media/giphy/GiphyItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/media/giphy/GiphyItem;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/giphy/GiphyListResponse;I)V
    .locals 1

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 141
    invoke-virtual {p2}, Lcom/narvii/media/giphy/GiphyListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/media/giphy/GiphyItem;

    .line 142
    iget-object p3, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyDataSource;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-static {p3}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getStickerPackId$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/narvii/media/giphy/GiphyItem;->packId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 127
    check-cast p2, Lcom/narvii/media/giphy/GiphyListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/giphy/GiphyListResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/media/giphy/GiphyListResponse;",
            ">;"
        }
    .end annotation

    .line 136
    const-class v0, Lcom/narvii/media/giphy/GiphyListResponse;

    return-object v0
.end method
