.class public Lcom/narvii/media/MediaPickerGalleryFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;
    }
.end annotation


# static fields
.field public static final MEDIA_ITEM_LIST:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/MediaSelectItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final REQUEST_SELECT_MEDIA_GALLEY:I = 0x58


# instance fields
.field private adapter:Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;

.field checkBoxHQ:Landroid/widget/CheckBox;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field public isHQChecked:Z

.field private maxCount:I

.field protected mediaItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/MediaSelectItem;",
            ">;"
        }
    .end annotation
.end field

.field private pageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field protected pager:Lcom/narvii/widget/NVViewPager;

.field public selectView:Landroid/widget/ImageView;

.field selectedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/media/MediaPickerGalleryFragment;->MEDIA_ITEM_LIST:Lcom/narvii/util/statistics/TmpValue;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->mediaItems:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/media/MediaPickerGalleryFragment$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPickerGalleryFragment$1;-><init>(Lcom/narvii/media/MediaPickerGalleryFragment;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 25
    return-void
.end method

.method private changeSelectViewStatus(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget p1, Lcom/narvii/lib/R$drawable;->ic_media_selected:I

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget p1, Lcom/narvii/lib/R$drawable;->ic_media_not_selected:I

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    :cond_1
    return-void
.end method

.method private finishMultiPickWithResult()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const-string v2, "selected"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    const-string v2, "isHQChecked"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    const/4 v1, -0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 35
    return-void
.end method

.method private isEntrySpecOk(Lcom/narvii/media/MediaSelectItem;)Z
    .locals 7

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isGif()Z

    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "config"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 23
    .line 24
    const-string v3, "maxUploadImagePayloadLength"

    .line 25
    .line 26
    const/high16 v4, 0x600000

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3, v4}, Lcom/narvii/config/ConfigService;->getInt(Ljava/lang/String;I)I

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lcom/narvii/util/Utils;->uriToFile(Ljava/lang/String;)Ljava/io/File;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 42
    move-result-wide v3

    .line 43
    int-to-long v5, v0

    .line 44
    .line 45
    cmp-long v0, v3, v5

    .line 46
    .line 47
    if-lez v0, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    sget v0, Lcom/narvii/lib/R$string;->media_image_picker_file_too_large:I

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 61
    return v2

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isGif()Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    const-string v0, "minGifWidth"

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 73
    move-result v0

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_1
    const-string v0, "minWidth"

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isGif()Z

    .line 81
    move-result v3

    .line 82
    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    const-string v3, "minGifHeight"

    .line 86
    .line 87
    .line 88
    :goto_2
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 89
    move-result v3

    .line 90
    goto :goto_3

    .line 91
    .line 92
    :cond_2
    const-string v3, "minHeight"

    .line 93
    goto :goto_2

    .line 94
    .line 95
    :goto_3
    if-gtz v0, :cond_3

    .line 96
    .line 97
    if-lez v3, :cond_8

    .line 98
    .line 99
    :cond_3
    iget v4, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->width:I

    .line 100
    .line 101
    iget v5, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->height:I

    .line 102
    .line 103
    if-eqz v4, :cond_4

    .line 104
    .line 105
    if-nez v5, :cond_5

    .line 106
    .line 107
    :cond_4
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    .line 108
    .line 109
    .line 110
    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 111
    .line 112
    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Lcom/narvii/util/Utils;->uriToFile(Ljava/lang/String;)Ljava/io/File;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    .line 127
    invoke-static {p1, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 128
    .line 129
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 130
    .line 131
    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    goto :goto_4

    .line 133
    :catchall_0
    move-exception p1

    .line 134
    .line 135
    .line 136
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 137
    .line 138
    :cond_5
    :goto_4
    if-lez v4, :cond_6

    .line 139
    .line 140
    if-lez v0, :cond_6

    .line 141
    .line 142
    if-lt v4, v0, :cond_7

    .line 143
    .line 144
    :cond_6
    if-lez v5, :cond_8

    .line 145
    .line 146
    if-lez v3, :cond_8

    .line 147
    .line 148
    if-ge v5, v3, :cond_8

    .line 149
    .line 150
    .line 151
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 152
    move-result-object p1

    .line 153
    .line 154
    sget v0, Lcom/narvii/lib/R$string;->media_image_picker_image_too_small:I

    .line 155
    .line 156
    .line 157
    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 162
    return v2

    .line 163
    :cond_8
    return v1
.end method

.method static bridge synthetic n(Lcom/narvii/media/MediaPickerGalleryFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->maxCount:I

    return p0
.end method

.method static bridge synthetic o(Lcom/narvii/media/MediaPickerGalleryFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->changeSelectViewStatus(Z)V

    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/media/MediaPickerGalleryFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerGalleryFragment;->finishMultiPickWithResult()V

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/media/MediaPickerGalleryFragment;Lcom/narvii/media/MediaSelectItem;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->isEntrySpecOk(Lcom/narvii/media/MediaSelectItem;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCurrentMediaItem()Lcom/narvii/media/MediaSelectItem;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->adapter:Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/util/PagerGalleryAdapter;->getCount()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->adapter:Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/narvii/util/PagerGalleryAdapter;->getItem(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/media/MediaSelectItem;

    .line 25
    return-object v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "media_picker_gallery"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    sget v0, Lcom/narvii/lib/R$layout;->media_select_layout:I

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Landroid/widget/ImageView;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/media/MediaPickerGalleryFragment$2;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPickerGalleryFragment$2;-><init>(Lcom/narvii/media/MediaPickerGalleryFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/media/MediaPickerGalleryFragment;->updateSelectView()V

    .line 39
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 1
    .line 2
    const-string p1, "single"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerGalleryFragment;->finishMultiPickWithResult()V

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "list"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "class"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    sget-object p1, Lcom/narvii/media/MediaPickerGalleryFragment;->MEDIA_ITEM_LIST:Lcom/narvii/util/statistics/TmpValue;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 57
    return-void

    .line 58
    .line 59
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->mediaItems:Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->mediaItems:Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result v0

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    check-cast v0, Lcom/narvii/media/MediaSelectItem;

    .line 81
    .line 82
    .line 83
    invoke-interface {v0}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 87
    .line 88
    const-string v2, "file://"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    move-result v1

    .line 93
    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    .line 97
    invoke-interface {v0}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    const-string v3, "mediastore://"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    move-object v3, v0

    .line 110
    .line 111
    check-cast v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 112
    .line 113
    iget-wide v3, v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->imageId:J

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v3, "|"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-interface {v0}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 128
    const/4 v3, 0x7

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    iput-object v0, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 142
    goto :goto_0

    .line 143
    :cond_2
    const/4 p1, 0x0

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    const-string v0, "selectClass"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    check-cast p1, Ljava/lang/Class;

    .line 163
    .line 164
    if-nez p1, :cond_3

    .line 165
    .line 166
    const-class p1, Ljava/lang/String;

    .line 167
    .line 168
    :cond_3
    const-string v0, "selected"

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    .line 174
    .line 175
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    if-eqz p1, :cond_4

    .line 179
    .line 180
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    .line 181
    .line 182
    .line 183
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    .line 185
    :cond_4
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 186
    .line 187
    .line 188
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 189
    .line 190
    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 191
    .line 192
    const-string p1, "maxCount"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 196
    move-result p1

    .line 197
    .line 198
    iput p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->maxCount:I

    .line 199
    .line 200
    const-string p1, "hqChecked"

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 204
    move-result p1

    .line 205
    .line 206
    iput-boolean p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->isHQChecked:Z

    .line 207
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->media_picker_gallery_layout:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 9
    move-result v0

    .line 10
    .line 11
    const-string v1, "position"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->pager:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/widget/NVViewPager;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/narvii/media/MediaPickerGalleryFragment;->setUpPagerAdapter(Landroid/os/Bundle;)V

    .line 17
    .line 18
    const-string v0, "position"

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 24
    move-result p2

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 29
    move-result p2

    .line 30
    .line 31
    :goto_0
    if-ltz p2, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 37
    .line 38
    :cond_1
    iget-object p2, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 51
    move-result v0

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 55
    .line 56
    const-string p2, "membership"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    check-cast p2, Lcom/narvii/wallet/MembershipService;

    .line 63
    .line 64
    sget v0, Lcom/narvii/lib/R$id;->hq_banner_root:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    const-string v1, "showHQBar"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 84
    move-result v1

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    const/4 v1, 0x0

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_2
    const/16 v1, 0x8

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    sget v1, Lcom/narvii/lib/R$id;->hq_selected:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    check-cast p1, Landroid/widget/CheckBox;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    .line 104
    .line 105
    iget-boolean v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->isHQChecked:Z

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 109
    const/4 p1, 0x0

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    .line 115
    .line 116
    new-instance v0, Lcom/narvii/media/MediaPickerGalleryFragment$3;

    .line 117
    .line 118
    .line 119
    invoke-direct {v0, p0, p2}, Lcom/narvii/media/MediaPickerGalleryFragment$3;-><init>(Lcom/narvii/media/MediaPickerGalleryFragment;Lcom/narvii/wallet/MembershipService;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method protected setUpPagerAdapter(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;-><init>(Lcom/narvii/media/MediaPickerGalleryFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->adapter:Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->mediaItems:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/narvii/util/PagerGalleryAdapter;->setList(Ljava/util/List;)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->adapter:Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 20
    return-void
.end method

.method protected updateSelectView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/media/MediaPickerGalleryFragment;->getCurrentMediaItem()Lcom/narvii/media/MediaSelectItem;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lcom/narvii/media/MediaSelectItem;->getUniqueKey()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    sget v0, Lcom/narvii/lib/R$drawable;->ic_media_selected:I

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_2
    sget v0, Lcom/narvii/lib/R$drawable;->ic_media_not_selected:I

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    return-void
.end method
