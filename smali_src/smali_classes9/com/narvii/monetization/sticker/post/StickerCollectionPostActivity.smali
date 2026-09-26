.class public Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$1;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->pickStickerListener:Landroid/view/View$OnClickListener;

    .line 11
    return-void
.end method

.method private isStickerComplete(Lcom/narvii/monetization/sticker/post/StickerPost;)Z
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/StickerPost;->name:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    xor-int/lit8 p1, p1, 0x1

    .line 13
    return p1
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startPickSticker(I)V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    const-string v2, "photo"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 19
    .line 20
    new-instance v1, Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    const-string v2, "index"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 29
    .line 30
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    .line 34
    .line 35
    const/16 v3, 0xc

    .line 36
    .line 37
    iput v3, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 38
    const/4 v3, 0x1

    .line 39
    .line 40
    iput-boolean v3, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGiphySticker:Z

    .line 41
    const/4 v4, -0x1

    .line 42
    .line 43
    if-eq p1, v4, :cond_0

    .line 44
    .line 45
    iput-boolean v3, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    .line 46
    .line 47
    :cond_0
    const/16 v5, 0x80

    .line 48
    .line 49
    const/16 v6, 0x44

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v5, v5, v6, v6}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->setSize(IIII)V

    .line 53
    .line 54
    iget-object v5, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 58
    move-result v5

    .line 59
    const/4 v6, 0x0

    .line 60
    .line 61
    if-ne p1, v4, :cond_1

    .line 62
    .line 63
    rsub-int/lit8 p1, v5, 0x64

    .line 64
    .line 65
    .line 66
    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    .line 67
    move-result p1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move p1, v6

    .line 70
    .line 71
    :goto_0
    iput p1, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->maximum:I

    .line 72
    .line 73
    new-instance p1, Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    new-instance v4, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 79
    .line 80
    .line 81
    const v5, 0x7f1202a1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    move-result-object v5

    .line 86
    .line 87
    .line 88
    invoke-direct {v4, v3, v5, v6, v6}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;II)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    iput-object p1, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->customOptions:Ljava/util/List;

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    .line 99
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)Lcom/narvii/monetization/sticker/post/StickerPostItemList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    return-object p0
.end method

.method private updateAddStickerLayout()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x64

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    :goto_0
    const/4 v3, 0x3

    .line 16
    .line 17
    rsub-int/lit8 v0, v0, 0x3

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result v0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->addStickerLayout:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    move-result v1

    .line 32
    sub-int/2addr v0, v1

    .line 33
    .line 34
    if-lez v0, :cond_1

    .line 35
    move v1, v2

    .line 36
    .line 37
    :goto_1
    if-ge v1, v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    const v4, 0x7f0d0629

    .line 49
    .line 50
    iget-object v5, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->addStickerLayout:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    iget-object v4, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->pickStickerListener:Landroid/view/View$OnClickListener;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    iget-object v4, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->addStickerLayout:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v1, v2

    .line 69
    :goto_2
    neg-int v3, v0

    .line 70
    .line 71
    if-ge v1, v3, :cond_2

    .line 72
    .line 73
    iget-object v3, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->addStickerLayout:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    return-void
.end method

.method private updateDescCountDown()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->descCountDown:Landroid/widget/TextView;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 21
    move-result v2

    .line 22
    .line 23
    rsub-int/lit8 v2, v2, 0x64

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->descCountDown:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 50
    return-void
.end method

.method private updateNameCountDown()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->nameCountDown:Landroid/widget/TextView;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 21
    move-result v2

    .line 22
    .line 23
    rsub-int/lit8 v2, v2, 0x14

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->nameCountDown:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 50
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->startPickSticker(I)V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateDescCountDown()V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateNameCountDown()V

    return-void
.end method


# virtual methods
.method protected doPost(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V
    .locals 5

    const-string v0, "collectionId"

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$8;

    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$8;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;Lcom/narvii/app/NVContext;)V

    .line 4
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 5
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

    .line 6
    invoke-virtual {v1, v2}, Lcom/narvii/post/PostHelper;->setDefaultPhotoUploadTarget(Ljava/lang/String;)V

    const-class v2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    .line 7
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->doPost(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V

    return-void
.end method

.method protected doPreview(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V
    .locals 3

    const-string v0, "collection"

    .line 2
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

    const-class v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 3
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preview"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "prefetch"

    .line 5
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "id"

    .line 6
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {p0, v0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->doPreview(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V

    return-void
.end method

.method public isEdit()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "collectionId"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xc8

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const-string p1, "index"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 15
    move-result p1

    .line 16
    .line 17
    const-string p2, "stickerList"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    const-class p3, Lcom/narvii/model/Sticker;

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p1, p2}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onPickStickerResult(ILjava/util/List;)V

    .line 33
    .line 34
    if-ne p1, v0, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateAddStickerLayout()V

    .line 38
    :cond_0
    return-void

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->setOnCustomOptionSelectedListener(Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    new-array v2, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    const/16 v3, 0x64

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v4

    .line 20
    const/4 v5, 0x0

    .line 21
    .line 22
    aput-object v4, v2, v5

    .line 23
    .line 24
    .line 25
    const v4, 0x7f12113c

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    iput-object v2, v0, Lcom/narvii/media/MediaPickerFragment;->maxStr:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "sticker"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/monetization/sticker/StickerService;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 42
    .line 43
    const-class v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 44
    .line 45
    const-string v2, "post"

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 60
    .line 61
    if-nez p1, :cond_0

    .line 62
    .line 63
    new-instance p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;-><init>()V

    .line 67
    .line 68
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->isEdit()Z

    .line 72
    move-result p1

    .line 73
    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    .line 77
    const p1, 0x7f120438

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_1
    const p1, 0x7f120d4e

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 85
    .line 86
    .line 87
    const p1, 0x7f0d0645

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 91
    .line 92
    .line 93
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 94
    .line 95
    .line 96
    const p1, 0x7f0a04bd

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    check-cast v0, Landroid/widget/EditText;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    .line 105
    .line 106
    .line 107
    const v0, 0x7f0a09d4

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    check-cast v0, Landroid/widget/TextView;

    .line 114
    .line 115
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->nameCountDown:Landroid/widget/TextView;

    .line 116
    .line 117
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    .line 118
    .line 119
    new-instance v2, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$2;

    .line 120
    .line 121
    .line 122
    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$2;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    .line 128
    .line 129
    new-instance v2, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$3;

    .line 130
    .line 131
    .line 132
    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$3;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    .line 137
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    .line 138
    .line 139
    new-array v2, v1, [Landroid/text/InputFilter;

    .line 140
    .line 141
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    .line 142
    .line 143
    const/16 v6, 0x14

    .line 144
    .line 145
    .line 146
    invoke-direct {v4, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 147
    .line 148
    aput-object v4, v2, v5

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 152
    .line 153
    .line 154
    const v0, 0x7f0a04ba

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    check-cast v0, Landroid/widget/EditText;

    .line 161
    .line 162
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    .line 163
    .line 164
    new-instance v2, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$4;

    .line 165
    .line 166
    .line 167
    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$4;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 171
    .line 172
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    .line 173
    .line 174
    new-instance v2, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$5;

    .line 175
    .line 176
    .line 177
    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$5;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    .line 182
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    .line 183
    .line 184
    new-array v1, v1, [Landroid/text/InputFilter;

    .line 185
    .line 186
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 187
    .line 188
    .line 189
    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 190
    .line 191
    aput-object v2, v1, v5

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 195
    .line 196
    .line 197
    const v0, 0x7f0a0420

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    check-cast v0, Landroid/widget/TextView;

    .line 204
    .line 205
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->descCountDown:Landroid/widget/TextView;

    .line 206
    .line 207
    .line 208
    const v0, 0x7f0a0daf

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    check-cast v0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 215
    .line 216
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, p1}, Lcom/narvii/widget/DragSortLinearLayout;->setChildFocusViewId(I)V

    .line 220
    .line 221
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, p0}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->setStickerItemDeleteListener(Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;)V

    .line 225
    .line 226
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 227
    .line 228
    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;

    .line 229
    .line 230
    .line 231
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->setOnIconClickListener(Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;)V

    .line 235
    .line 236
    .line 237
    const p1, 0x7f0a00a3

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 241
    move-result-object p1

    .line 242
    .line 243
    check-cast p1, Landroid/widget/LinearLayout;

    .line 244
    .line 245
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->addStickerLayout:Landroid/widget/LinearLayout;

    .line 246
    .line 247
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateView(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V

    .line 251
    return-void

    .line 252
    .line 253
    .line 254
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    move-result-object p1

    .line 256
    .line 257
    .line 258
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 259
    move-result-object p1

    .line 260
    .line 261
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 262
    .line 263
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 264
    .line 265
    if-nez p1, :cond_3

    .line 266
    .line 267
    new-instance p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 268
    .line 269
    .line 270
    invoke-direct {p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;-><init>()V

    .line 271
    .line 272
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 273
    .line 274
    .line 275
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 276
    return-void
.end method

.method public onCustomOptionSelected(Lcom/narvii/media/MediaPickerFragment$Option;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    const-string p1, "index"

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result p2

    .line 10
    .line 11
    const-class v1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    const/4 p1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    if-eq p2, v0, :cond_0

    .line 23
    move p2, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p2, p1

    .line 26
    .line 27
    :goto_0
    const-string v0, "singlePick"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 36
    move-result p2

    .line 37
    .line 38
    const-string v0, "max"

    .line 39
    .line 40
    const/16 v3, 0x64

    .line 41
    .line 42
    rsub-int/lit8 p2, p2, 0x64

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    .line 47
    new-array p2, v2, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    aput-object v0, p2, p1

    .line 54
    .line 55
    .line 56
    const p1, 0x7f12113c

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    const-string p2, "maxStr"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    const/16 p1, 0xc8

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v1, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 71
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->savePost()Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    .line 7
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

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    const-string v0, "index"

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result p2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onPickMediaResult(ILjava/util/List;)V

    .line 15
    .line 16
    if-ne p2, v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateAddStickerLayout()V

    .line 20
    :cond_0
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->object()Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->isEdit()Z

    .line 13
    move-result p2

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const-string p2, "fromDetail"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 21
    move-result p2

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    :cond_0
    const-class p2, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    const-string v0, "prefetch"

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    const-string v0, "id"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    const-string p1, "Source"

    .line 50
    .line 51
    const-string v0, "View Created Post"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p2}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 58
    .line 59
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 60
    const/4 p2, 0x1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 64
    .line 65
    const-string p1, "statistics"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 72
    .line 73
    const-string p2, "Creates Custom Sticker Pack"

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    const-string p2, "Creates Custom Sticker Pack Total"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 83
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateView(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V

    .line 9
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "post"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public onStickerItemDeleted()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateAddStickerLayout()V

    .line 4
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

    const-class v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/monetization/sticker/post/StickerCollectionPost;
    .locals 2

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 2
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->getStickerList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    .line 3
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    .line 4
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->description:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 5
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->getThumbnailIndex()I

    move-result v1

    iput v1, v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->iconSourceStickerIndex:I

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->post:Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
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

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    .line 3
    iget-object v1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->description:Landroid/widget/EditText;

    .line 4
    iget-object v1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 5
    iget-object v1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->updateStickerList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->dragSortLinearLayout:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 6
    iget p1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->iconSourceStickerIndex:I

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->setThumbnailCell(I)V

    .line 7
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateAddStickerLayout()V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->updateView(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)Z
    .locals 5

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->name:Landroid/widget/EditText;

    const v1, 0x7f120eda

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    const v2, 0x104000a

    const v3, 0x7f121114

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p1, p0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f120175

    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v2, v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 11
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return v1

    :cond_2
    move p1, v1

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_4

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 14
    invoke-direct {p0, v4}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->isStickerComplete(Lcom/narvii/monetization/sticker/post/StickerPost;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 15
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(I)V

    const v3, 0x7f12008a

    .line 17
    invoke-virtual {v0, v3}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 18
    new-instance v3, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;

    invoke-direct {v3, p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;I)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 19
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

    .line 1
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->validateUpload(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)Z

    move-result p1

    return p1
.end method
