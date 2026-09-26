.class Lcom/narvii/media/GiphyPickerFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/GiphyPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/media/giphy/GiphyItem;",
        "Lcom/narvii/media/giphy/GiphyListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field keyword:Ljava/lang/String;

.field start:I

.field final synthetic this$0:Lcom/narvii/media/GiphyPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/GiphyPickerFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 3
    const/4 v0, -0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 10

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    const-string v1, "giphyApiKey"

    .line 11
    .line 12
    const-string v2, "12ss5TcLvRjUze"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/narvii/config/ConfigService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    const-string v2, "fromStart"

    .line 25
    .line 26
    const-string v3, "limit"

    .line 27
    const/4 v4, 0x0

    .line 28
    .line 29
    const-string v5, "offset"

    .line 30
    .line 31
    const-string v6, "api_key"

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 36
    .line 37
    iget-boolean v1, v1, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    const-string v7, "https://api.giphy.com/v1/stickers/trending"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v6, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    iget v4, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->start:I

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/media/GiphyPickerFragment$Adapter;->pageSize()I

    .line 68
    move-result v0

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    :cond_1
    const/4 p1, 0x0

    .line 89
    return-object p1

    .line 90
    .line 91
    :cond_2
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 92
    .line 93
    iget-boolean v1, v1, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    .line 94
    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    const-string v1, "stickers"

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_3
    const-string v1, "gifs"

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    move-result-object v7

    .line 105
    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    const-string v9, "https://api.giphy.com/v1/"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v1, "/search"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    const-string v7, "q"

    .line 133
    .line 134
    iget-object v8, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v7, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v6, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 141
    .line 142
    if-eqz p1, :cond_4

    .line 143
    goto :goto_2

    .line 144
    .line 145
    :cond_4
    iget v4, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->start:I

    .line 146
    .line 147
    .line 148
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/narvii/media/GiphyPickerFragment$Adapter;->pageSize()I

    .line 156
    move-result v0

    .line 157
    .line 158
    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 164
    .line 165
    .line 166
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 174
    move-result-object p1

    .line 175
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/media/giphy/GiphyItem;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/media/giphy/GiphyItem;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 20
    move-result v0

    .line 21
    return v0
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
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/media/giphy/GiphyItem;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/media/giphy/GiphyItem;

    .line 7
    .line 8
    sget v0, Lcom/narvii/lib/R$layout;->media_image_grid:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    const/4 p3, 0x0

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3, p3, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 24
    .line 25
    iget v1, v1, Lcom/narvii/media/GiphyPickerFragment;->width:I

    .line 26
    .line 27
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 34
    .line 35
    iget v1, v1, Lcom/narvii/media/GiphyPickerFragment;->width:I

    .line 36
    .line 37
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    .line 39
    sget v0, Lcom/narvii/lib/R$id;->image:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 48
    .line 49
    iget-boolean v1, v1, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->thumbUrl()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    goto :goto_1

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    move-result p3

    .line 82
    .line 83
    :goto_1
    sget p1, Lcom/narvii/lib/R$id;->select:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    check-cast p1, Landroid/widget/ImageView;

    .line 90
    .line 91
    if-eqz p3, :cond_2

    .line 92
    .line 93
    sget p3, Lcom/narvii/lib/R$drawable;->ic_media_selected:I

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_2
    sget p3, Lcom/narvii/lib/R$drawable;->ic_media_not_selected:I

    .line 97
    .line 98
    .line 99
    :goto_2
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    return-object p2

    .line 101
    :cond_3
    const/4 p1, 0x0

    .line 102
    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/media/giphy/GiphyItem;

    .line 3
    .line 4
    if-eqz v0, :cond_b

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/media/giphy/GiphyItem;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 9
    .line 10
    const-string p2, "maximum"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 14
    move-result p1

    .line 15
    .line 16
    const-string p2, "single"

    .line 17
    const/4 p4, 0x1

    .line 18
    .line 19
    if-eq p1, p4, :cond_0

    .line 20
    .line 21
    iget-object p5, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 22
    .line 23
    iget-object v0, p5, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p5, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 29
    move-result p5

    .line 30
    .line 31
    if-eqz p5, :cond_1

    .line 32
    .line 33
    :cond_0
    iget-object p5, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    iput-object v0, p5, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 41
    .line 42
    :cond_1
    iget-object p5, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 43
    .line 44
    iget-object p5, p5, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    move-result p5

    .line 53
    .line 54
    if-nez p5, :cond_9

    .line 55
    .line 56
    iget-object p5, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 57
    .line 58
    iget p5, p5, Lcom/narvii/media/GiphyPickerFragment;->maxLen:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, p5}, Lcom/narvii/media/giphy/GiphyItem;->fullsizeImage(I)Lcom/narvii/media/giphy/GiphyImage;

    .line 62
    move-result-object p5

    .line 63
    .line 64
    if-eqz p5, :cond_8

    .line 65
    .line 66
    iget v0, p5, Lcom/narvii/media/giphy/GiphyImage;->size:I

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 69
    .line 70
    iget v2, v1, Lcom/narvii/media/GiphyPickerFragment;->maxLen:I

    .line 71
    .line 72
    if-le v0, v2, :cond_2

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_2
    const-string v0, "minWidth"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 80
    move-result v0

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 83
    .line 84
    const-string v2, "minHeight"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 88
    move-result v1

    .line 89
    const/4 v2, 0x0

    .line 90
    .line 91
    if-lez v0, :cond_3

    .line 92
    .line 93
    iget v3, p5, Lcom/narvii/media/giphy/GiphyImage;->width:I

    .line 94
    .line 95
    if-lez v3, :cond_3

    .line 96
    .line 97
    if-lt v3, v0, :cond_4

    .line 98
    .line 99
    :cond_3
    if-lez v1, :cond_5

    .line 100
    .line 101
    iget p5, p5, Lcom/narvii/media/giphy/GiphyImage;->height:I

    .line 102
    .line 103
    if-lez p5, :cond_5

    .line 104
    .line 105
    if-ge p5, v1, :cond_5

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    sget p2, Lcom/narvii/lib/R$string;->media_image_picker_image_too_small:I

    .line 112
    .line 113
    .line 114
    invoke-static {p1, p2, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 119
    return p4

    .line 120
    .line 121
    :cond_5
    if-lez p1, :cond_7

    .line 122
    .line 123
    iget-object p5, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 124
    .line 125
    iget-object p5, p5, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 129
    move-result p5

    .line 130
    .line 131
    if-lt p5, p1, :cond_7

    .line 132
    .line 133
    iget-object p3, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 134
    .line 135
    const-string p5, "maxStr"

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3, p5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object p3

    .line 140
    .line 141
    .line 142
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    move-result p5

    .line 144
    .line 145
    if-eqz p5, :cond_6

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 149
    move-result-object p3

    .line 150
    .line 151
    iget-object p5, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 152
    .line 153
    sget v0, Lcom/narvii/lib/R$string;->media_image_picker_hit_max_count:I

    .line 154
    .line 155
    new-array v1, p4, [Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    aput-object p1, v1, v2

    .line 162
    .line 163
    .line 164
    invoke-virtual {p5, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    .line 168
    invoke-static {p3, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 173
    goto :goto_1

    .line 174
    .line 175
    .line 176
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 177
    move-result-object p1

    .line 178
    .line 179
    .line 180
    invoke-static {p1, p3, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 181
    move-result-object p1

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 185
    goto :goto_1

    .line 186
    .line 187
    :cond_7
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 188
    .line 189
    iget-object p1, p1, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    .line 193
    move-result-object p3

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    goto :goto_1

    .line 198
    .line 199
    .line 200
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 201
    move-result-object p1

    .line 202
    .line 203
    sget p2, Lcom/narvii/lib/R$string;->media_image_picker_file_too_large:I

    .line 204
    .line 205
    .line 206
    invoke-static {p1, p2, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 207
    move-result-object p1

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 211
    return p4

    .line 212
    .line 213
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 217
    move-result p1

    .line 218
    .line 219
    if-eqz p1, :cond_a

    .line 220
    .line 221
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 222
    .line 223
    .line 224
    invoke-static {p1}, Lcom/narvii/media/GiphyPickerFragment;->t(Lcom/narvii/media/GiphyPickerFragment;)V

    .line 225
    goto :goto_2

    .line 226
    .line 227
    .line 228
    :cond_a
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 229
    .line 230
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 231
    .line 232
    .line 233
    invoke-static {p1}, Lcom/narvii/media/GiphyPickerFragment;->u(Lcom/narvii/media/GiphyPickerFragment;)V

    .line 234
    :goto_2
    return p4

    .line 235
    .line 236
    .line 237
    :cond_b
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 238
    move-result p1

    .line 239
    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/giphy/GiphyListResponse;I)V
    .locals 4

    .line 2
    iget-object v0, p2, Lcom/narvii/media/giphy/GiphyListResponse;->data:Ljava/util/List;

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-static {v0, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    const-string p2, "fromStart"

    .line 4
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->start:I

    :cond_0
    iget p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->start:I

    .line 5
    invoke-virtual {p0}, Lcom/narvii/media/GiphyPickerFragment$Adapter;->pageSize()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->start:I

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/media/giphy/GiphyListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/media/GiphyPickerFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/giphy/GiphyListResponse;I)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/media/giphy/GiphyListResponse;

    return-object v0
.end method
