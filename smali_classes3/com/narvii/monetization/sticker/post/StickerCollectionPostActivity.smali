.class public Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "StickerCollectionPostActivity.java"

# interfaces
.implements Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/post/BasePostActivity<",
        "Lcom/narvii/monetization/sticker/post/StickerCollectionPost;",
        ">;",
        "Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;",
        "Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;"
    }
.end annotation


# static fields
.field public static final DESC_MAX_LENGTH:I = 0x64

.field public static final MAX_STICKER_COUNT:I = 0x64

.field private static final MIN_FOOTER_COUNT:I = 0x3

.field public static final NAME_MAX_LENGTH:I = 0x14

.field private static final REQUEST_CHOOSE_FAV_STICKERS:I = 0xc8


# instance fields
.field private addStickerLayout:Landroid/widget/LinearLayout;

.field private descCountDown:Landroid/widget/TextView;

.field description:Landroid/widget/EditText;

.field private dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

.field name:Landroid/widget/EditText;

.field private nameCountDown:Landroid/widget/TextView;

.field pickStickerListener:Landroid/view/View$OnClickListener;

.field post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

.field private stickerService:Lcom/narvii/monetization/sticker/StickerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    .line 64
    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$1;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->pickStickerListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->startPickSticker(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateNameCountDown()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateDescCountDown()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)Lcom/narvii/monetization/sticker/post/StickerPostItemList;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    return-object p0
.end method

.method private isStickerComplete(Lcom/narvii/monetization/sticker/post/StickerPost;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 362
    :cond_0
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/StickerPost;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private startPickSticker(I)V
    .locals 7

    .line 210
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "photo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 212
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "index"

    .line 213
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-direct {v2}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    const/16 v3, 0xc

    .line 216
    iput v3, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    const/4 v3, 0x1

    .line 217
    iput-boolean v3, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGiphySticker:Z

    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 219
    iput-boolean v3, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    :cond_0
    const/16 v5, 0x44

    const/16 v6, 0x80

    .line 221
    invoke-virtual {v2, v6, v6, v5, v5}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->setSize(IIII)V

    .line 223
    iget-object v5, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    if-ne p1, v4, :cond_1

    rsub-int/lit8 p1, v5, 0x64

    .line 224
    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->maximum:I

    .line 226
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    new-instance v4, Lcom/narvii/media/MediaPickerFragment$Option;

    const v5, 0x7f0f025d

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v6, v6}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;II)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iput-object p1, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->customOptions:Ljava/util/List;

    .line 230
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    return-void
.end method

.method private updateAddStickerLayout()V
    .locals 6

    .line 253
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    rsub-int/lit8 v0, v0, 0x3

    .line 254
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 256
    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->addStickerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0581

    iget-object v5, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->addStickerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 260
    iget-object v4, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->pickStickerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v4, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->addStickerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_2
    neg-int v3, v0

    if-ge v2, v3, :cond_2

    .line 265
    iget-object v3, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->addStickerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private updateDescCountDown()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->descCountDown:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->descCountDown:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method

.method private updateNameCountDown()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->nameCountDown:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->nameCountDown:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method protected doPost(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V
    .locals 5

    const-string v0, "collectionId"

    .line 374
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    new-instance v1, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$8;

    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$8;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;Lcom/narvii/app/NVContext;)V

    .line 381
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 382
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/sticker-collection"

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v2, "sticker"

    .line 383
    invoke-virtual {v1, v2}, Lcom/narvii/post/PostHelper;->setDefaultPhotoUploadTarget(Ljava/lang/String;)V

    .line 384
    const-class v2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->doPost(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V

    return-void
.end method

.method protected doPreview(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V
    .locals 3

    const-string v0, "collection"

    .line 406
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    const-string v1, "collectionId"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->getPreviewStickerCollection(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    .line 407
    const-class v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preview"

    const/4 v2, 0x1

    .line 408
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 409
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefetch"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->doPreview(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V

    return-void
.end method

.method public isEdit()Z
    .locals 1

    const-string v0, "collectionId"

    .line 283
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "index"

    .line 442
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "stickerList"

    .line 443
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/narvii/model/Sticker;

    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    .line 444
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    invoke-virtual {p3, p1, p2}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onPickStickerResult(ILjava/util/List;)V

    if-ne p1, v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateAddStickerLayout()V

    :cond_0
    return-void

    .line 450
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 76
    const-class v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    iget-object v1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v1, p0}, Lcom/narvii/media/MediaPickerFragment;->setOnCustomOptionSelectedListener(Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;)V

    .line 79
    iget-object v1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f0f1026

    invoke-virtual {p0, v5, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/narvii/media/MediaPickerFragment;->maxStr:Ljava/lang/String;

    const-string v1, "sticker"

    .line 81
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/sticker/StickerService;

    iput-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const-string v1, "post"

    if-nez p1, :cond_2

    .line 84
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 93
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    if-nez p1, :cond_0

    .line 94
    new-instance p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    invoke-direct {p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f03cd

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0c20

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f0b059d

    .line 98
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 99
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const p1, 0x7f0903c6

    .line 101
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    const v0, 0x7f09074c

    .line 102
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->nameCountDown:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    new-instance v1, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$2;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$2;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    new-instance v1, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$3;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$3;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x14

    invoke-direct {v3, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v0, 0x7f0903c3

    .line 131
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    .line 132
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    new-instance v1, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$4;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$4;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 138
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    new-instance v1, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$5;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$5;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v0, 0x7f090342

    .line 156
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->descCountDown:Landroid/widget/TextView;

    const v0, 0x7f090ab5

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 159
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/DragSortLinearLayout;->setChildFocusViewId(I)V

    .line 160
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    invoke-virtual {p1, p0}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->setStickerItemDeleteListener(Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;)V

    .line 161
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->setOnIconClickListener(Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;)V

    const p1, 0x7f09006a

    .line 188
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->addStickerLayout:Landroid/widget/LinearLayout;

    .line 190
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateView(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V

    return-void

    .line 86
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 87
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    if-nez p1, :cond_3

    .line 88
    new-instance p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    invoke-direct {p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method

.method public onCustomOptionSelected(Lcom/narvii/media/MediaPickerFragment$Option;Landroid/os/Bundle;)V
    .locals 4

    if-eqz p2, :cond_1

    const/4 p1, -0x1

    const-string v0, "index"

    .line 428
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 429
    const-class v1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 430
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "singlePick"

    .line 431
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/16 p2, 0x64

    rsub-int/lit8 p1, p1, 0x64

    const-string v3, "max"

    .line 433
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const p1, 0x7f0f1026

    new-array v0, v0, [Ljava/lang/Object;

    .line 434
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "maxStr"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0xc8

    .line 435
    invoke-virtual {p0, v1, p1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 367
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->savePost()Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 368
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    const-string v1, "index"

    .line 417
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 418
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    invoke-virtual {v1, p2, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onPickMediaResult(ILjava/util/List;)V

    if-ne p2, v0, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateAddStickerLayout()V

    :cond_0
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 389
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 390
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->object()Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    .line 391
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->isEdit()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "fromDetail"

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 392
    :cond_0
    const-class p2, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 393
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v0, "View Created Post"

    .line 395
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 398
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 206
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateView(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 235
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 236
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "post"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStickerItemDeleted()V
    .locals 0

    .line 455
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateAddStickerLayout()V

    return-void
.end method

.method public postClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/monetization/sticker/post/StickerCollectionPost;",
            ">;"
        }
    .end annotation

    .line 278
    const-class v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/monetization/sticker/post/StickerCollectionPost;
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->getStickerList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    .line 289
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->name:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->description:Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->getThumbnailIndex()I

    move-result v1

    iput v1, v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->iconSourceStickerIndex:I

    .line 292
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->savePost()Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    move-result-object v0

    return-object v0
.end method

.method protected supportPreview()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateView(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V
    .locals 2

    .line 242
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 244
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    iget-object v1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->updateStickerList(Ljava/util/ArrayList;)V

    .line 248
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    iget p1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->iconSourceStickerIndex:I

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->setThumbnailCell(I)V

    .line 249
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateAddStickerLayout()V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateView(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)Z
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    const v1, 0x7f0f0daf

    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 300
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 302
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 306
    :cond_1
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    const v2, 0x104000a

    const v3, 0x7f0f0ffe

    if-eqz p1, :cond_2

    .line 307
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p1, p0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 308
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f0f0130

    .line 309
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p1, v2, v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 311
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return v1

    :cond_2
    const/4 p1, 0x0

    .line 315
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_4

    .line 316
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 317
    invoke-direct {p0, v4}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->isStickerComplete(Lcom/narvii/monetization/sticker/post/StickerPost;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 318
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 319
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(I)V

    const v3, 0x7f0f0081

    .line 320
    invoke-virtual {v0, v3}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 323
    new-instance v3, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;

    invoke-direct {v3, p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;I)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 349
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return v1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 47
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->validateUpload(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)Z

    move-result p1

    return p1
.end method
