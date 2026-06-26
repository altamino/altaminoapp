.class public Lcom/narvii/media/GiphyPickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "GiphyPickerFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentWillFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/GiphyPickerFragment$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/media/GiphyPickerFragment$Adapter;

.field chooseSticker:Z

.field listFrame:Landroid/view/View;

.field maxLen:I

.field pickButton:Landroid/widget/Button;

.field selections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field titleView:Landroid/view/View;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/GiphyPickerFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/media/GiphyPickerFragment;->pick()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/media/GiphyPickerFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/media/GiphyPickerFragment;->update()V

    return-void
.end method

.method private pick()V
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment;->adapter:Lcom/narvii/media/GiphyPickerFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 194
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 196
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_2
    new-instance v1, Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;-><init>(Landroid/content/Context;)V

    .line 201
    sget v2, Lcom/narvii/lib/R$string;->downlading_from_giphy:I

    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->setText(I)V

    .line 202
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->show()V

    .line 204
    new-instance v2, Lcom/narvii/media/GiphyPickerFragment$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/media/GiphyPickerFragment$3;-><init>(Lcom/narvii/media/GiphyPickerFragment;Lcom/narvii/util/dialog/ProgressHorizontalDialog;Ljava/util/ArrayList;)V

    .line 337
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 339
    new-instance v0, Lcom/narvii/media/GiphyPickerFragment$4;

    invoke-direct {v0, p0, v2}, Lcom/narvii/media/GiphyPickerFragment$4;-><init>(Lcom/narvii/media/GiphyPickerFragment;Ljava/lang/Thread;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private update()V
    .locals 5

    .line 348
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 350
    :goto_0
    iget-object v2, p0, Lcom/narvii/media/GiphyPickerFragment;->pickButton:Landroid/widget/Button;

    const/4 v3, 0x1

    if-lez v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 351
    sget v2, Lcom/narvii/lib/R$string;->pick:I

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-lez v0, :cond_2

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->pickButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->adapter:Lcom/narvii/media/GiphyPickerFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    .line 358
    iget-object v2, p0, Lcom/narvii/media/GiphyPickerFragment;->titleView:Landroid/view/View;

    sget v3, Lcom/narvii/lib/R$id;->icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/narvii/media/GiphyPickerFragment;->titleView:Landroid/view/View;

    sget v4, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v2, p0, Lcom/narvii/media/GiphyPickerFragment;->listFrame:Landroid/view/View;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x4

    :cond_6
    :goto_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 181
    new-instance p1, Lcom/narvii/media/GiphyPickerFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/media/GiphyPickerFragment$Adapter;-><init>(Lcom/narvii/media/GiphyPickerFragment;)V

    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment;->adapter:Lcom/narvii/media/GiphyPickerFragment$Adapter;

    .line 182
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment;->adapter:Lcom/narvii/media/GiphyPickerFragment$Adapter;

    const-string v0, "keyword"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    .line 183
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 184
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->adapter:Lcom/narvii/media/GiphyPickerFragment$Adapter;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    return-object p1
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 109
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 115
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 117
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->media_giphy_picker_title:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->titleView:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->titleView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarTitleView(Landroid/view/View;)V

    .line 121
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "giphy_logo.gif"

    invoke-direct {v0, v1, v2}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment;->titleView:Landroid/view/View;

    sget v2, Lcom/narvii/lib/R$id;->icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 125
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->media_image_picker_button:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 127
    sget v0, Lcom/narvii/lib/R$id;->pick_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment;->pickButton:Landroid/widget/Button;

    .line 128
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment;->pickButton:Landroid/widget/Button;

    new-instance v0, Lcom/narvii/media/GiphyPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/GiphyPickerFragment$1;-><init>(Lcom/narvii/media/GiphyPickerFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment;->titleView:Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 135
    iget-boolean v0, p0, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/narvii/lib/R$string;->media_image_sticker:I

    goto :goto_1

    :cond_0
    sget v0, Lcom/narvii/lib/R$string;->media_image_giphy:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 136
    invoke-direct {p0}, Lcom/narvii/media/GiphyPickerFragment;->update()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 87
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v0, "config"

    .line 90
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    const-string v1, "maxUploadImagePayloadLength"

    const/high16 v2, 0x600000

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/narvii/config/ConfigService;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/narvii/media/GiphyPickerFragment;->maxLen:I

    .line 93
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 94
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/narvii/media/GiphyPickerFragment;->width:I

    const-string v0, "chooseSticker"

    .line 96
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    const-string v0, "images"

    if-nez p1, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 141
    sget p3, Lcom/narvii/lib/R$layout;->media_giphy_picker:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 175
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 176
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "images"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 146
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 147
    sget p2, Lcom/narvii/lib/R$id;->list_frame:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/media/GiphyPickerFragment;->listFrame:Landroid/view/View;

    .line 148
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 151
    sget p2, Lcom/narvii/lib/R$id;->search:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SearchBar;

    .line 152
    new-instance p2, Lcom/narvii/media/GiphyPickerFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/media/GiphyPickerFragment$2;-><init>(Lcom/narvii/media/GiphyPickerFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 365
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    return-void
.end method
