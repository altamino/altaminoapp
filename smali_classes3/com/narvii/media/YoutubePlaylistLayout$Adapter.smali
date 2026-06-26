.class Lcom/narvii/media/YoutubePlaylistLayout$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "YoutubePlaylistLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/YoutubePlaylistLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;",
        "Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/YoutubePlaylistLayout;


# direct methods
.method public constructor <init>(Lcom/narvii/media/YoutubePlaylistLayout;)V
    .locals 1

    .line 255
    iput-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 256
    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->access$300(Lcom/narvii/media/YoutubePlaylistLayout;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 271
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->access$400(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubePlaylistIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/youtube/v3/playlistItems"

    .line 273
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 274
    invoke-static {}, Lcom/narvii/util/YoutubeUtils;->ytk()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "playlistId"

    .line 275
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/16 v0, 0x32

    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "maxResults"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "part"

    const-string v1, "snippet"

    .line 277
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;",
            ">;"
        }
    .end annotation

    .line 261
    const-class v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;",
            ">;"
        }
    .end annotation

    .line 291
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 293
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 295
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    .line 297
    iget-object v1, v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->thumbnail:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    move-object p1, p2

    :cond_3
    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 317
    sget v0, Lcom/narvii/lib/R$layout;->youtube_playlist_items_picker_item:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 318
    instance-of p3, p1, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    if-eqz p3, :cond_2

    .line 319
    check-cast p1, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    .line 321
    sget p3, Lcom/narvii/lib/R$id;->youtube_video_select:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 322
    iget-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    invoke-static {v0}, Lcom/narvii/media/YoutubePlaylistLayout;->access$000(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    sget v0, Lcom/narvii/lib/R$drawable;->ic_media_picker_youtube_playlist_item_radio_selected:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 325
    :cond_0
    sget v0, Lcom/narvii/lib/R$drawable;->ic_media_picker_youtube_playlist_item_radio_unselected:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    :goto_0
    sget p3, Lcom/narvii/lib/R$id;->screenroom_playlist_thumbnail:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 329
    iget-object v0, p1, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->thumbnail:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p1, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->thumbnail:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_1

    .line 332
    :cond_1
    sget v0, Lcom/narvii/lib/R$drawable;->ic_playlist_media_default_background:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    :goto_1
    sget p3, Lcom/narvii/lib/R$id;->screenroom_playlist_title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 336
    iget-object v0, p1, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    sget p3, Lcom/narvii/lib/R$id;->screenroom_playlist_source_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 339
    sget v0, Lcom/narvii/lib/R$id;->screenroom_playlist_source_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 340
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$string;->playlist_source_youtube:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p1, p1, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->author:Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    sget p1, Lcom/narvii/lib/R$drawable;->ic_playlist_youtube:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 354
    instance-of v0, p3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    if-eqz v0, :cond_1

    .line 355
    check-cast p3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    .line 356
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->access$000(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->access$000(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->access$000(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->access$500(Lcom/narvii/media/YoutubePlaylistLayout;)V

    .line 362
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1

    .line 365
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistResponse;I)V
    .locals 0

    .line 285
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 286
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->access$500(Lcom/narvii/media/YoutubePlaylistLayout;)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 253
    check-cast p2, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistResponse;",
            ">;"
        }
    .end annotation

    .line 266
    const-class v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistResponse;

    return-object v0
.end method
