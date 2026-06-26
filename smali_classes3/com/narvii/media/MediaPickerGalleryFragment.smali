.class public Lcom/narvii/media/MediaPickerGalleryFragment;
.super Lcom/narvii/app/NVFragment;
.source "MediaPickerGalleryFragment.java"

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

.field private pageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

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

    .line 61
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/media/MediaPickerGalleryFragment;->MEDIA_ITEM_LIST:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->mediaItems:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lcom/narvii/media/MediaPickerGalleryFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPickerGalleryFragment$1;-><init>(Lcom/narvii/media/MediaPickerGalleryFragment;)V

    iput-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/MediaPickerGalleryFragment;Lcom/narvii/media/MediaSelectItem;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->isEntrySpecOk(Lcom/narvii/media/MediaSelectItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/media/MediaPickerGalleryFragment;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->changeSelectViewStatus(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/media/MediaPickerGalleryFragment;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->maxCount:I

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/media/MediaPickerGalleryFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerGalleryFragment;->finishMultiPickWithResult()V

    return-void
.end method

.method private changeSelectViewStatus(Z)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 108
    sget p1, Lcom/narvii/lib/R$drawable;->ic_media_selected:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/narvii/lib/R$drawable;->ic_media_not_selected:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method private finishMultiPickWithResult()V
    .locals 3

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "selected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const-string v2, "isHQChecked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 324
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 325
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method private isEntrySpecOk(Lcom/narvii/media/MediaSelectItem;)Z
    .locals 7

    .line 153
    instance-of v0, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 154
    check-cast p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 156
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isGif()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "config"

    .line 157
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    const/high16 v3, 0x600000

    const-string v4, "maxUploadImagePayloadLength"

    .line 158
    invoke-virtual {v0, v4, v3}, Lcom/narvii/config/ConfigService;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 159
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Utils;->uriToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->media_image_picker_file_too_large:I

    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return v2

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isGif()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "minGifWidth"

    goto :goto_0

    :cond_1
    const-string v0, "minWidth"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    .line 167
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isGif()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "minGifHeight"

    goto :goto_1

    :cond_2
    const-string v3, "minHeight"

    :goto_1
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v3

    if-gtz v0, :cond_3

    if-lez v3, :cond_8

    .line 169
    :cond_3
    iget v4, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->width:I

    .line 170
    iget v5, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->height:I

    if-eqz v4, :cond_4

    if-nez v5, :cond_5

    .line 173
    :cond_4
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 174
    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 175
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->uriToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 176
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 177
    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 179
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    if-lez v4, :cond_6

    if-lez v0, :cond_6

    if-lt v4, v0, :cond_7

    :cond_6
    if-lez v5, :cond_8

    if-lez v3, :cond_8

    if-ge v5, v3, :cond_8

    .line 184
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->media_image_picker_image_too_small:I

    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return v2

    :cond_8
    return v1
.end method


# virtual methods
.method public getCurrentMediaItem()Lcom/narvii/media/MediaSelectItem;
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ltz v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->adapter:Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/util/PagerGalleryAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->adapter:Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;

    invoke-virtual {v1, v0}, Lcom/narvii/util/PagerGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaSelectItem;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 241
    sget v0, Lcom/narvii/lib/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaPickerGallery"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 194
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$layout;->media_select_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    .line 196
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    new-instance v0, Lcom/narvii/media/MediaPickerGalleryFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPickerGalleryFragment$2;-><init>(Lcom/narvii/media/MediaPickerGalleryFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 236
    invoke-virtual {p0}, Lcom/narvii/media/MediaPickerGalleryFragment;->updateSelectView()V

    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    const-string p1, "single"

    .line 313
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerGalleryFragment;->finishMultiPickWithResult()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "list"

    .line 126
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 129
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object p1, Lcom/narvii/media/MediaPickerGalleryFragment;->MEDIA_ITEM_LIST:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {p1}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 132
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 138
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectClass"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-nez p1, :cond_1

    .line 141
    const-class p1, Ljava/lang/String;

    :cond_1
    const-string v0, "selected"

    .line 143
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    :cond_2
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const-string p1, "maxCount"

    .line 148
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->maxCount:I

    const-string p1, "hqChecked"

    .line 149
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->isHQChecked:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 115
    sget p3, Lcom/narvii/lib/R$layout;->media_picker_gallery_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 307
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 308
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 246
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 247
    sget v0, Lcom/narvii/lib/R$id;->pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVViewPager;

    iput-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 248
    invoke-virtual {p0, p2}, Lcom/narvii/media/MediaPickerGalleryFragment;->setUpPagerAdapter(Landroid/os/Bundle;)V

    const-string v0, "position"

    if-nez p2, :cond_0

    .line 251
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    if-ltz p2, :cond_1

    .line 256
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 259
    :cond_1
    iget-object p2, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 260
    iget-object p2, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    const-string p2, "membership"

    .line 262
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/wallet/MembershipService;

    .line 263
    sget v0, Lcom/narvii/lib/R$id;->hq_banner_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "showHQBar"

    .line 264
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-eqz v1, :cond_2

    .line 266
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 264
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    sget v1, Lcom/narvii/lib/R$id;->hq_selected:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    .line 268
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->isHQChecked:Z

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 p1, 0x0

    .line 269
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    new-instance v0, Lcom/narvii/media/MediaPickerGalleryFragment$3;

    invoke-direct {v0, p0, p2}, Lcom/narvii/media/MediaPickerGalleryFragment$3;-><init>(Lcom/narvii/media/MediaPickerGalleryFragment;Lcom/narvii/wallet/MembershipService;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setUpPagerAdapter(Landroid/os/Bundle;)V
    .locals 1

    .line 290
    new-instance p1, Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;-><init>(Lcom/narvii/media/MediaPickerGalleryFragment;)V

    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->adapter:Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;

    .line 291
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->adapter:Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;

    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/narvii/util/PagerGalleryAdapter;->setList(Ljava/util/List;)V

    .line 292
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->adapter:Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method protected updateSelectView()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/media/MediaPickerGalleryFragment;->getCurrentMediaItem()Lcom/narvii/media/MediaSelectItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    invoke-interface {v0}, Lcom/narvii/media/MediaSelectItem;->getUniqueKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/narvii/lib/R$drawable;->ic_media_selected:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/narvii/lib/R$drawable;->ic_media_not_selected:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
