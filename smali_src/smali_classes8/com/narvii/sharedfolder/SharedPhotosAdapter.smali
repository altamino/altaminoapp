.class public Lcom/narvii/sharedfolder/SharedPhotosAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnPhotosCountChangeListener;,
        Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnSelectedCountChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/SharedFile;",
        "Lcom/narvii/sharedfolder/SharedFileListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# static fields
.field public static final MAX_PHOTO_COUNT:I = 0xc8

.field public static final UPLOAD_PHOTO:Lcom/narvii/util/Tag;


# instance fields
.field albumId:Ljava/lang/String;

.field count:I

.field galleyPickCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field onPhotosCountChangeListener:Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnPhotosCountChangeListener;

.field onSelectedCountChangeListener:Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnSelectedCountChangeListener;

.field selectable:Z

.field selectedIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "uploadPhoto"

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->UPLOAD_PHOTO:Lcom/narvii/util/Tag;

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    const-string p1, "Shared Folder"

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->source:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->albumId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method

.method private isNewPhoto(Lcom/narvii/model/SharedFile;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/model/SharedFile;->createdTime:Ljava/util/Date;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v0, v2

    .line 12
    .line 13
    .line 14
    const-wide/32 v2, 0x5265c00

    .line 15
    .line 16
    cmp-long p1, v0, v2

    .line 17
    .line 18
    if-gez p1, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addSelectedIds(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    move-result v1

    .line 26
    .line 27
    const/16 v2, 0xc8

    .line 28
    .line 29
    if-ge v1, v2, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 41
    move-result p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onSelectedCountChanged(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method

.method protected allowShowDisabledByAmino()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected allowShowNormalDisable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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
    .line 7
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getApiPath()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->sourceType()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "type"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->sourceType()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/SharedFile;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/SharedFile;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/SharedFile;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/SharedFile;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->filterDuplicated(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowNormalDisable()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    return-object p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method protected getApiPath()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->albumId:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "/shared-folder/files"

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v1, "/shared-folder/folders/"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->albumId:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "/files"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/SharedFile;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->UPLOAD_PHOTO:Lcom/narvii/util/Tag;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_1
    const/4 p1, -0x1

    .line 14
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->UPLOAD_PHOTO:Lcom/narvii/util/Tag;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0d044b

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    .line 14
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/SharedFile;

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/model/SharedFile;

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0d0470

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    const p3, 0x7f0a0ae3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 40
    .line 41
    .line 42
    const p3, 0x7f0a0cc5

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p3

    .line 47
    .line 48
    check-cast p3, Landroid/widget/ImageView;

    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectable:Z

    .line 51
    .line 52
    .line 53
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0804fa

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_1
    const v0, 0x7f0804f6

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    const p3, 0x7f0a0e9e

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p3

    .line 88
    .line 89
    check-cast p3, Landroid/widget/TextView;

    .line 90
    .line 91
    iget-object v0, p1, Lcom/narvii/model/SharedFile;->title:Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    iget-object v0, p1, Lcom/narvii/model/SharedFile;->title:Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    move-result v0

    .line 101
    const/4 v1, 0x0

    .line 102
    .line 103
    const/16 v2, 0x8

    .line 104
    .line 105
    if-eqz v0, :cond_2

    .line 106
    move v0, v2

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    move v0, v1

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    const p3, 0x7f0a09f1

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object p3

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->showNew()Z

    .line 122
    move-result v0

    .line 123
    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->isNewPhoto(Lcom/narvii/model/SharedFile;)Z

    .line 128
    move-result p1

    .line 129
    .line 130
    if-eqz p1, :cond_3

    .line 131
    goto :goto_2

    .line 132
    :cond_3
    move v1, v2

    .line 133
    .line 134
    .line 135
    :goto_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    return-object p2

    .line 137
    :cond_4
    const/4 p1, 0x0

    .line 138
    return-object p1
.end method

.method public getSelectedIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    return-object v0
.end method

.method protected ignoreStopTime()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    .line 8
    instance-of v3, v2, Lcom/narvii/model/SharedFile;

    .line 9
    .line 10
    if-eqz v3, :cond_15

    .line 11
    move-object v3, v2

    .line 12
    .line 13
    check-cast v3, Lcom/narvii/model/SharedFile;

    .line 14
    .line 15
    iget-boolean v4, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectable:Z

    .line 16
    .line 17
    const-string v5, "Source"

    .line 18
    .line 19
    const-string v6, "sourceType"

    .line 20
    .line 21
    const-string v7, "apiPath"

    .line 22
    .line 23
    const-string v8, "allowShowNormalDisable"

    .line 24
    .line 25
    const-string v9, "allowShowIModeDisable"

    .line 26
    .line 27
    const-string v10, "position"

    .line 28
    .line 29
    const-string v11, "count"

    .line 30
    .line 31
    const-string v12, "isEnd"

    .line 32
    .line 33
    const-string v13, "start"

    .line 34
    .line 35
    const-string v14, "stopTime"

    .line 36
    .line 37
    const-string v15, "list"

    .line 38
    .line 39
    move-object/from16 v16, v5

    .line 40
    .line 41
    move-object/from16 v17, v6

    .line 42
    const/4 v6, 0x1

    .line 43
    .line 44
    if-eqz v4, :cond_c

    .line 45
    .line 46
    const/16 v2, 0xc8

    .line 47
    .line 48
    if-eqz p5, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    .line 52
    move-result v4

    .line 53
    .line 54
    .line 55
    const v5, 0x7f0a0cc5

    .line 56
    .line 57
    if-ne v4, v5, :cond_2

    .line 58
    .line 59
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    .line 66
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 67
    move-result v1

    .line 68
    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_0
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    .line 85
    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 88
    move-result v1

    .line 89
    .line 90
    if-lt v1, v2, :cond_1

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    new-array v4, v6, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v2

    .line 105
    const/4 v5, 0x0

    .line 106
    .line 107
    aput-object v2, v4, v5

    .line 108
    .line 109
    .line 110
    const v2, 0x7f120c3a

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v2, v5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/narvii/util/NVToast;->show()V

    .line 122
    return v6

    .line 123
    .line 124
    :cond_1
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    .line 131
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 135
    .line 136
    :goto_0
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    .line 137
    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 140
    move-result v1

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onSelectedCountChanged(I)V

    .line 144
    move v1, v6

    .line 145
    .line 146
    goto/16 :goto_5

    .line 147
    :cond_2
    const/4 v5, 0x0

    .line 148
    .line 149
    const-class v3, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    .line 150
    .line 151
    .line 152
    invoke-static {v3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 153
    move-result-object v3

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 157
    move-result-object v4

    .line 158
    .line 159
    .line 160
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 161
    move-result v4

    .line 162
    .line 163
    if-le v4, v2, :cond_3

    .line 164
    .line 165
    sget-object v4, Lcom/narvii/media/MediaPickerGalleryFragment;->MEDIA_ITEM_LIST:Lcom/narvii/util/statistics/TmpValue;

    .line 166
    .line 167
    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 169
    move-result-object v15

    .line 170
    .line 171
    check-cast v15, Ljava/util/ArrayList;

    .line 172
    .line 173
    const-wide/16 v5, 0x3e8

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v15, v5, v6}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 177
    goto :goto_1

    .line 178
    .line 179
    .line 180
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 181
    move-result-object v4

    .line 182
    .line 183
    .line 184
    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    move-result-object v4

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    .line 190
    :goto_1
    iget-object v4, v0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    .line 195
    iget v4, v0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    .line 200
    iget-boolean v4, v0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    .line 205
    iget v4, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 209
    move-result-object v5

    .line 210
    .line 211
    new-instance v6, Ljava/util/ArrayList;

    .line 212
    .line 213
    .line 214
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .line 216
    if-eqz v5, :cond_6

    .line 217
    .line 218
    .line 219
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 220
    move-result-object v5

    .line 221
    .line 222
    .line 223
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    move-result v12

    .line 225
    .line 226
    if-eqz v12, :cond_6

    .line 227
    .line 228
    .line 229
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    move-result-object v12

    .line 231
    .line 232
    check-cast v12, Lcom/narvii/model/SharedFile;

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowDisabledByAmino()Z

    .line 236
    move-result v13

    .line 237
    .line 238
    if-nez v13, :cond_5

    .line 239
    .line 240
    .line 241
    invoke-virtual {v12}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    .line 242
    move-result v13

    .line 243
    .line 244
    if-nez v13, :cond_4

    .line 245
    goto :goto_3

    .line 246
    .line 247
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 248
    goto :goto_2

    .line 249
    .line 250
    .line 251
    :cond_5
    :goto_3
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    goto :goto_2

    .line 253
    .line 254
    .line 255
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 256
    move-result v5

    .line 257
    .line 258
    if-eqz v5, :cond_7

    .line 259
    const/4 v5, 0x1

    .line 260
    return v5

    .line 261
    .line 262
    .line 263
    :cond_7
    invoke-virtual {v3, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    .line 265
    new-instance v4, Ljava/util/ArrayList;

    .line 266
    .line 267
    iget-object v5, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    .line 268
    .line 269
    .line 270
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    .line 272
    .line 273
    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 274
    move-result-object v4

    .line 275
    .line 276
    const-string v5, "selected"

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    .line 281
    const-string v4, "class"

    .line 282
    .line 283
    const-class v5, Lcom/narvii/model/SharedFile;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 287
    .line 288
    const-string v4, "maxCount"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const/4 v2, 0x0

    .line 293
    const/4 v5, 0x0

    .line 294
    .line 295
    :goto_4
    if-ge v5, v1, :cond_a

    .line 296
    .line 297
    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 299
    move-result-object v4

    .line 300
    .line 301
    .line 302
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 303
    move-result-object v4

    .line 304
    .line 305
    instance-of v4, v4, Lcom/narvii/model/SharedFile;

    .line 306
    .line 307
    if-eqz v4, :cond_9

    .line 308
    .line 309
    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowDisabledByAmino()Z

    .line 311
    move-result v4

    .line 312
    .line 313
    if-nez v4, :cond_8

    .line 314
    .line 315
    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 317
    move-result-object v4

    .line 318
    .line 319
    .line 320
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 321
    move-result-object v4

    .line 322
    .line 323
    check-cast v4, Lcom/narvii/model/SharedFile;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    .line 327
    move-result v4

    .line 328
    .line 329
    if-nez v4, :cond_9

    .line 330
    .line 331
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 332
    .line 333
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 334
    goto :goto_4

    .line 335
    .line 336
    .line 337
    :cond_a
    invoke-virtual {v3, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    .line 339
    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowDisabledByAmino()Z

    .line 341
    move-result v1

    .line 342
    .line 343
    .line 344
    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    .line 346
    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowNormalDisable()Z

    .line 348
    move-result v1

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    .line 353
    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getApiPath()Ljava/lang/String;

    .line 355
    move-result-object v1

    .line 356
    .line 357
    .line 358
    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    .line 360
    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->sourceType()Ljava/lang/String;

    .line 362
    move-result-object v1

    .line 363
    .line 364
    move-object/from16 v4, v17

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    .line 369
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->source:Ljava/lang/String;

    .line 370
    .line 371
    move-object/from16 v5, v16

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    .line 376
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->galleyPickCallback:Lcom/narvii/util/Callback;

    .line 377
    .line 378
    if-eqz v1, :cond_b

    .line 379
    .line 380
    .line 381
    invoke-interface {v1, v3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 382
    :cond_b
    const/4 v1, 0x1

    .line 383
    :goto_5
    return v1

    .line 384
    .line 385
    :cond_c
    move-object/from16 v5, v16

    .line 386
    .line 387
    move-object/from16 v4, v17

    .line 388
    .line 389
    const-class v3, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    .line 390
    .line 391
    .line 392
    invoke-static {v3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 393
    move-result-object v3

    .line 394
    .line 395
    iget-object v6, v0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    .line 400
    iget v6, v0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    .line 405
    iget-boolean v6, v0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 409
    .line 410
    iget v6, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    .line 411
    .line 412
    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 414
    move-result-object v12

    .line 415
    .line 416
    new-instance v13, Ljava/util/ArrayList;

    .line 417
    .line 418
    .line 419
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .line 421
    if-eqz v12, :cond_f

    .line 422
    .line 423
    .line 424
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 425
    move-result-object v12

    .line 426
    .line 427
    .line 428
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 429
    move-result v14

    .line 430
    .line 431
    if-eqz v14, :cond_f

    .line 432
    .line 433
    .line 434
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 435
    move-result-object v14

    .line 436
    .line 437
    check-cast v14, Lcom/narvii/model/SharedFile;

    .line 438
    .line 439
    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowDisabledByAmino()Z

    .line 441
    move-result v16

    .line 442
    .line 443
    if-nez v16, :cond_e

    .line 444
    .line 445
    .line 446
    invoke-virtual {v14}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    .line 447
    move-result v16

    .line 448
    .line 449
    if-nez v16, :cond_d

    .line 450
    goto :goto_7

    .line 451
    .line 452
    :cond_d
    add-int/lit8 v6, v6, -0x1

    .line 453
    goto :goto_6

    .line 454
    .line 455
    .line 456
    :cond_e
    :goto_7
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    goto :goto_6

    .line 458
    .line 459
    .line 460
    :cond_f
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 461
    move-result v12

    .line 462
    .line 463
    if-eqz v12, :cond_10

    .line 464
    const/4 v12, 0x1

    .line 465
    return v12

    .line 466
    .line 467
    .line 468
    :cond_10
    invoke-virtual {v3, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    .line 470
    .line 471
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 472
    move-result v6

    .line 473
    .line 474
    const/16 v11, 0x64

    .line 475
    .line 476
    if-le v6, v11, :cond_11

    .line 477
    .line 478
    sget-object v6, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->FILE_LIST:Lcom/narvii/util/statistics/TmpValue;

    .line 479
    .line 480
    const-wide/16 v11, 0x3e8

    .line 481
    .line 482
    .line 483
    invoke-virtual {v6, v13, v11, v12}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 484
    goto :goto_8

    .line 485
    .line 486
    .line 487
    :cond_11
    invoke-static {v13}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 488
    move-result-object v6

    .line 489
    .line 490
    .line 491
    invoke-virtual {v3, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    :goto_8
    const/4 v6, 0x0

    .line 493
    const/4 v11, 0x0

    .line 494
    .line 495
    :goto_9
    if-ge v6, v1, :cond_14

    .line 496
    .line 497
    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 499
    move-result-object v12

    .line 500
    .line 501
    .line 502
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 503
    move-result-object v12

    .line 504
    .line 505
    instance-of v12, v12, Lcom/narvii/model/SharedFile;

    .line 506
    .line 507
    if-eqz v12, :cond_13

    .line 508
    .line 509
    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowDisabledByAmino()Z

    .line 511
    move-result v12

    .line 512
    .line 513
    if-nez v12, :cond_12

    .line 514
    .line 515
    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 517
    move-result-object v12

    .line 518
    .line 519
    .line 520
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 521
    move-result-object v12

    .line 522
    .line 523
    check-cast v12, Lcom/narvii/model/SharedFile;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v12}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    .line 527
    move-result v12

    .line 528
    .line 529
    if-nez v12, :cond_13

    .line 530
    .line 531
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 532
    .line 533
    :cond_13
    add-int/lit8 v6, v6, 0x1

    .line 534
    goto :goto_9

    .line 535
    .line 536
    .line 537
    :cond_14
    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    .line 539
    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowDisabledByAmino()Z

    .line 541
    move-result v6

    .line 542
    .line 543
    .line 544
    invoke-virtual {v3, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    .line 546
    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowNormalDisable()Z

    .line 548
    move-result v6

    .line 549
    .line 550
    .line 551
    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 552
    .line 553
    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getApiPath()Ljava/lang/String;

    .line 555
    move-result-object v6

    .line 556
    .line 557
    .line 558
    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    .line 560
    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->sourceType()Ljava/lang/String;

    .line 562
    move-result-object v6

    .line 563
    .line 564
    .line 565
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    .line 567
    iget-object v4, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->source:Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    .line 572
    .line 573
    invoke-static {v0, v3}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 574
    .line 575
    .line 576
    :cond_15
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 577
    move-result v1

    .line 578
    return v1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/SharedFile;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v3, "update"

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    instance-of v1, v0, Lcom/narvii/sharedfolder/PhotoAdd;

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->albumId:Ljava/lang/String;

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/sharedfolder/PhotoAdd;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/narvii/sharedfolder/PhotoAdd;->folderId:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2, v3}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 39
    return-void

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->albumId:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 46
    .line 47
    instance-of v0, v0, Lcom/narvii/sharedfolder/PhotoUpload;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v2, v3}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 53
    return-void

    .line 54
    .line 55
    :cond_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 56
    .line 57
    instance-of v1, v0, Lcom/narvii/sharedfolder/PhotoDelete;

    .line 58
    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 62
    .line 63
    const-string v1, "delete"

    .line 64
    .line 65
    if-ne p1, v1, :cond_6

    .line 66
    .line 67
    check-cast v0, Lcom/narvii/sharedfolder/PhotoDelete;

    .line 68
    .line 69
    iget-object p1, v0, Lcom/narvii/sharedfolder/PhotoDelete;->ids:Ljava/util/List;

    .line 70
    .line 71
    if-nez p1, :cond_3

    .line 72
    return-void

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    check-cast v0, Ljava/lang/String;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 94
    move-result v0

    .line 95
    .line 96
    iget v1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 97
    sub-int/2addr v1, v0

    .line 98
    .line 99
    iput v1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    iget v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    .line 104
    .line 105
    add-int/lit8 v0, v0, -0x1

    .line 106
    .line 107
    iput v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    .line 108
    goto :goto_0

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 112
    :cond_6
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/sharedfolder/SharedFileListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFileListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFileListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 3
    iget p1, p2, Lcom/narvii/sharedfolder/SharedFileListResponse;->totalCount:I

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onPhotosCountChangeListener:Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnPhotosCountChangeListener;

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2, p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnPhotosCountChangeListener;->onPhotosCountChanged(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "count"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 10
    .line 11
    iput p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    .line 12
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "count"

    .line 7
    .line 8
    iget v2, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    return-object v0
.end method

.method protected onSelectedCountChanged(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onSelectedCountChangeListener:Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnSelectedCountChangeListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnSelectedCountChangeListener;->onSelectedChanged(I)V

    .line 8
    :cond_0
    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/sharedfolder/SharedFileListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/sharedfolder/SharedFileListResponse;

    return-object v0
.end method

.method public setOnPhotosCountChangeListener(Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnPhotosCountChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onPhotosCountChangeListener:Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnPhotosCountChangeListener;

    return-void
.end method

.method public setOnSelectedCountChangeListener(Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnSelectedCountChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onSelectedCountChangeListener:Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnSelectedCountChangeListener;

    return-void
.end method

.method public setSelectable(ZLcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/narvii/util/Callback<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectable:Z

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectable:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->galleyPickCallback:Lcom/narvii/util/Callback;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    return-void
.end method

.method public setSelectedIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onSelectedCountChanged(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16
    return-void
.end method

.method protected showNew()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected sourceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->albumId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "latest"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
