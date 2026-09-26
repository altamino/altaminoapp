.class public Lcom/narvii/sharedfolder/SharedAlbumSortAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method


# virtual methods
.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedAlbumSortAdapter;->pageSize()I

    .line 19
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    .line 22
    .line 23
    const v2, 0x3f666666    # 0.9f

    .line 24
    mul-float/2addr v1, v2

    .line 25
    .line 26
    cmpg-float v0, v0, v1

    .line 27
    .line 28
    if-gez v0, :cond_0

    .line 29
    .line 30
    new-instance p2, Landroid/view/View;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    return-object p2

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/shared-folder/folders"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "type"

    .line 14
    .line 15
    const-string v1, "custom"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/model/SharedAlbum;

    return-object v0
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
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/SharedAlbum;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/SharedAlbum;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d046e

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const p3, 0x7f0a06d5

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/model/SharedAlbum;->getCoverImage()Lcom/narvii/model/Media;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 30
    .line 31
    .line 32
    const p3, 0x7f0a0e51

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p3

    .line 37
    .line 38
    check-cast p3, Landroid/widget/TextView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    const p3, 0x7f0a0e53

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p3

    .line 57
    .line 58
    check-cast p3, Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    iget p1, p1, Lcom/narvii/model/SharedAlbum;->filesCount:I

    .line 65
    .line 66
    .line 67
    const v1, 0x7f120dfd

    .line 68
    .line 69
    .line 70
    const v2, 0x7f120d2c

    .line 71
    .line 72
    .line 73
    invoke-static {v0, p1, v1, v2}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-object p2

    .line 79
    :cond_0
    const/4 p1, 0x0

    .line 80
    return-object p1
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/sharedfolder/SharedAlbumListResponse;

    return-object v0
.end method
