.class public Lcom/narvii/sharedfolder/SharedPhotosAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SharedPhotosAdapter.java"

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

    .line 51
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "uploadPhoto"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->UPLOAD_PHOTO:Lcom/narvii/util/Tag;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    const-string p1, "Shared Folder"

    .line 45
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->source:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->albumId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method

.method private isNewPhoto(Lcom/narvii/model/SharedFile;)Z
    .locals 4

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p1, Lcom/narvii/model/SharedFile;->createdTime:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    if-nez p1, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_1

    .line 107
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onSelectedCountChanged(I)V

    .line 113
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

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

    .line 141
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getApiPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->sourceType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->sourceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 145
    :cond_0
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
            "Lcom/narvii/model/SharedFile;",
            ">;"
        }
    .end annotation

    .line 122
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

    .line 181
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->filterDuplicated(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowNormalDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 185
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getApiPath()Ljava/lang/String;
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->albumId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "/shared-folder/files"

    return-object v0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/shared-folder/folders/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 164
    instance-of v0, p1, Lcom/narvii/model/SharedFile;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 168
    :cond_0
    sget-object v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->UPLOAD_PHOTO:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 337
    sget-object v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->UPLOAD_PHOTO:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_0

    const p1, 0x7f0b0415

    .line 338
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 341
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/SharedFile;

    if-eqz v0, :cond_4

    .line 342
    check-cast p1, Lcom/narvii/model/SharedFile;

    const v0, 0x7f0b043a

    .line 343
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09082c

    .line 344
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 345
    iget-object v0, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    const p3, 0x7f0909fe

    .line 347
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 348
    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectable:Z

    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 349
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    invoke-virtual {p1}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0803d7

    goto :goto_0

    :cond_1
    const v0, 0x7f0803d3

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090b9a

    .line 352
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 353
    iget-object v0, p1, Lcom/narvii/model/SharedFile;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p1, Lcom/narvii/model/SharedFile;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p3, 0x7f090755

    .line 356
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 357
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->showNew()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->isNewPhoto(Lcom/narvii/model/SharedFile;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    :cond_4
    const/4 p1, 0x0

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

    .line 117
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    return-object v0
.end method

.method protected ignoreStopTime()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 196
    instance-of v3, v2, Lcom/narvii/model/SharedFile;

    if-eqz v3, :cond_15

    .line 197
    move-object v3, v2

    check-cast v3, Lcom/narvii/model/SharedFile;

    .line 198
    iget-boolean v4, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectable:Z

    const-string v5, "sourceType"

    const-string v6, "apiPath"

    const-string v7, "allowShowNormalDisable"

    const-string v8, "allowShowIModeDisable"

    const-string v9, "position"

    const-string v12, "list"

    const-string v13, "count"

    const-string v14, "isEnd"

    const-string v15, "start"

    const-string v10, "stopTime"

    if-eqz v4, :cond_c

    const/16 v2, 0xc8

    if-eqz p5, :cond_3

    .line 199
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v4

    const v11, 0x7f0909fe

    if-ne v4, v11, :cond_3

    .line 200
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    invoke-virtual {v3}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    invoke-virtual {v3}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0b39

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v6, v11

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/NVToast;->show()V

    return v5

    .line 208
    :cond_1
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    invoke-virtual {v3}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 211
    :goto_0
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onSelectedCountChanged(I)V

    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_6

    :cond_3
    const/4 v11, 0x0

    .line 213
    const-class v3, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    invoke-static {v3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_4

    .line 215
    sget-object v4, Lcom/narvii/media/MediaPickerGalleryFragment;->MEDIA_ITEM_LIST:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move-object/from16 p3, v3

    const-wide/16 v2, 0x3e8

    invoke-virtual {v4, v12, v2, v3}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    move-object/from16 v3, p3

    goto :goto_2

    :cond_4
    move-object/from16 p3, v3

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    :goto_2
    iget-object v2, v0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    invoke-virtual {v3, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget v2, v0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    invoke-virtual {v3, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    iget-boolean v2, v0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    invoke-virtual {v3, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    iget v2, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v4

    .line 224
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_7

    .line 226
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/narvii/model/SharedFile;

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowDisabledByAmino()Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v12}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 228
    :cond_6
    :goto_4
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 234
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    return v4

    .line 237
    :cond_8
    invoke-virtual {v3, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "selected"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-class v2, Lcom/narvii/model/SharedFile;

    const-string v4, "class"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "maxCount"

    const/16 v4, 0xc8

    .line 240
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x0

    :goto_5
    if-ge v11, v1, :cond_b

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/narvii/model/SharedFile;

    if-eqz v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowDisabledByAmino()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/SharedFile;

    invoke-virtual {v4}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    add-int/lit8 v2, v2, 0x1

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 247
    :cond_b
    invoke-virtual {v3, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowDisabledByAmino()Z

    move-result v1

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowNormalDisable()Z

    move-result v1

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getApiPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->sourceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->source:Ljava/lang/String;

    const-string v2, "Source"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->galleyPickCallback:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_2

    .line 254
    invoke-interface {v1, v3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto/16 :goto_1

    :goto_6
    return v1

    :cond_c
    const/4 v11, 0x0

    .line 259
    const-class v3, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    invoke-static {v3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 260
    iget-object v4, v0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget v4, v0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    invoke-virtual {v3, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    iget-boolean v4, v0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    invoke-virtual {v3, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    iget v4, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v10

    .line 265
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_f

    .line 267
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/narvii/model/SharedFile;

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowDisabledByAmino()Z

    move-result v16

    if-nez v16, :cond_e

    invoke-virtual {v15}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    move-result v16

    if-nez v16, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 269
    :cond_e
    :goto_8
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 275
    :cond_f
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x1

    return v10

    .line 278
    :cond_10
    invoke-virtual {v3, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    const/16 v10, 0x64

    if-le v4, v10, :cond_11

    .line 281
    sget-object v4, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->FILE_LIST:Lcom/narvii/util/statistics/TmpValue;

    const-wide/16 v12, 0x3e8

    invoke-virtual {v4, v14, v12, v13}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    goto :goto_9

    .line 283
    :cond_11
    invoke-static {v14}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_9
    const/4 v4, 0x0

    :goto_a
    if-ge v11, v1, :cond_14

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/narvii/model/SharedFile;

    if-eqz v10, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowDisabledByAmino()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/model/SharedFile;

    invoke-virtual {v10}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    move-result v10

    if-nez v10, :cond_13

    :cond_12
    add-int/lit8 v4, v4, 0x1

    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 291
    :cond_14
    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowDisabledByAmino()Z

    move-result v4

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->allowShowNormalDisable()Z

    move-result v4

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getApiPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->sourceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    iget-object v4, v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->source:Ljava/lang/String;

    const-string v5, "Source"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {v0, v3}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 300
    :cond_15
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    return v1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 376
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/SharedFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "update"

    if-ne v0, v2, :cond_0

    .line 377
    invoke-virtual {p0, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    return-void

    .line 380
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v0, Lcom/narvii/sharedfolder/PhotoAdd;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->albumId:Ljava/lang/String;

    check-cast v0, Lcom/narvii/sharedfolder/PhotoAdd;

    iget-object v0, v0, Lcom/narvii/sharedfolder/PhotoAdd;->folderId:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {p0, v1, v3}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->albumId:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/sharedfolder/PhotoUpload;

    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {p0, v1, v3}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void

    .line 388
    :cond_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/sharedfolder/PhotoDelete;

    if-eqz v1, :cond_6

    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "delete"

    if-ne p1, v1, :cond_6

    .line 389
    check-cast v0, Lcom/narvii/sharedfolder/PhotoDelete;

    .line 390
    iget-object p1, v0, Lcom/narvii/sharedfolder/PhotoDelete;->ids:Ljava/util/List;

    if-nez p1, :cond_3

    return-void

    .line 393
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 394
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    .line 395
    iget v1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    if-eqz v0, :cond_4

    .line 397
    iget v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    goto :goto_0

    .line 400
    :cond_5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_6
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 38
    check-cast p2, Lcom/narvii/sharedfolder/SharedFileListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFileListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFileListResponse;I)V
    .locals 0

    .line 305
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 306
    iget p1, p2, Lcom/narvii/sharedfolder/SharedFileListResponse;->totalCount:I

    if-ltz p1, :cond_0

    .line 307
    iput p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    .line 308
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onPhotosCountChangeListener:Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnPhotosCountChangeListener;

    if-eqz p1, :cond_0

    .line 309
    iget p2, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    invoke-interface {p1, p2}, Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnPhotosCountChangeListener;->onPhotosCountChanged(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "count"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 81
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    iget v1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->count:I

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onSelectedCountChanged(I)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onSelectedCountChangeListener:Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnSelectedCountChangeListener;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0, p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnSelectedCountChangeListener;->onSelectedChanged(I)V

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

    .line 127
    const-class v0, Lcom/narvii/sharedfolder/SharedFileListResponse;

    return-object v0
.end method

.method public setOnPhotosCountChangeListener(Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnPhotosCountChangeListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onPhotosCountChangeListener:Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnPhotosCountChangeListener;

    return-void
.end method

.method public setOnSelectedCountChangeListener(Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnSelectedCountChangeListener;)V
    .locals 0

    .line 66
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

    .line 93
    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectable:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 96
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectable:Z

    .line 97
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->galleyPickCallback:Lcom/narvii/util/Callback;

    .line 98
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

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

    if-nez p1, :cond_0

    return-void

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->selectedIds:Ljava/util/List;

    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onSelectedCountChanged(I)V

    .line 154
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected showNew()Z
    .locals 1

    .line 368
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

    .line 328
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->albumId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "latest"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
