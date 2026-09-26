.class Lcom/narvii/media/YoutubePlaylistLayout$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->access$000(Lcom/narvii/media/YoutubePlaylistLayout;)Lcom/narvii/app/NVContext;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 11
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->h(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubePlaylistIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "https://www.googleapis.com/youtube/v3/playlistItems"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "key"

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/narvii/util/YoutubeUtils;->ytk()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const-string v1, "playlistId"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    const/16 v0, 0x32

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    const-string v1, "maxResults"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    const-string v0, "part"

    .line 51
    .line 52
    const-string v1, "snippet"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 60
    move-result-object p1

    .line 61
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    new-instance p2, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    .line 28
    .line 29
    iget-object v1, v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->url:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    iget-object v1, v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    iget-object v0, v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->thumbnail:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move-object p1, p2

    .line 57
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

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$layout;->youtube_playlist_items_picker_item:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    instance-of p3, p1, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    .line 9
    .line 10
    if-eqz p3, :cond_2

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    .line 13
    .line 14
    sget p3, Lcom/narvii/lib/R$id;->youtube_video_select:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Landroid/widget/ImageView;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/media/YoutubePlaylistLayout;->g(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/util/Map;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p1, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    sget v0, Lcom/narvii/lib/R$drawable;->ic_media_picker_youtube_playlist_item_radio_selected:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    sget v0, Lcom/narvii/lib/R$drawable;->ic_media_picker_youtube_playlist_item_radio_unselected:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    .line 47
    :goto_0
    sget p3, Lcom/narvii/lib/R$id;->screenroom_playlist_thumbnail:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p3

    .line 52
    .line 53
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 54
    .line 55
    iget-object v0, p1, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->thumbnail:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    iget-object v0, p1, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->thumbnail:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_1
    sget v0, Lcom/narvii/lib/R$drawable;->ic_playlist_media_default_background:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 73
    .line 74
    :goto_1
    sget p3, Lcom/narvii/lib/R$id;->screenroom_playlist_title:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p3

    .line 79
    .line 80
    check-cast p3, Landroid/widget/TextView;

    .line 81
    .line 82
    iget-object v0, p1, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->title:Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    sget p3, Lcom/narvii/lib/R$id;->screenroom_playlist_source_text:I

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object p3

    .line 92
    .line 93
    check-cast p3, Landroid/widget/TextView;

    .line 94
    .line 95
    sget v0, Lcom/narvii/lib/R$id;->screenroom_playlist_source_icon:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    check-cast v0, Landroid/widget/ImageView;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    sget v2, Lcom/narvii/lib/R$string;->playlist_source_youtube:I

    .line 108
    const/4 v3, 0x1

    .line 109
    .line 110
    new-array v3, v3, [Ljava/lang/Object;

    .line 111
    const/4 v4, 0x0

    .line 112
    .line 113
    iget-object p1, p1, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->author:Ljava/lang/String;

    .line 114
    .line 115
    aput-object p1, v3, v4

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    sget p1, Lcom/narvii/lib/R$drawable;->ic_playlist_youtube:I

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    :cond_2
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->g(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/util/Map;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object p2, p3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->g(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/util/Map;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object p2, p3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->g(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/util/Map;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iget-object p2, p3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->i(Lcom/narvii/media/YoutubePlaylistLayout;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 52
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 3
    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->i(Lcom/narvii/media/YoutubePlaylistLayout;)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
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

    const-class v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistResponse;

    return-object v0
.end method
