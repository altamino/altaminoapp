.class public Lcom/narvii/media/GiphyPickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method private pick()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment;->adapter:Lcom/narvii/media/GiphyPickerFragment$Adapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v3

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 44
    move-result v3

    .line 45
    const/4 v4, -0x1

    .line 46
    .line 47
    if-eq v3, v4, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    check-cast v3, Lcom/narvii/media/giphy/GiphyItem;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_2
    new-instance v1, Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    sget v2, Lcom/narvii/lib/R$string;->downlading_from_giphy:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->setText(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->show()V

    .line 75
    .line 76
    new-instance v2, Lcom/narvii/media/GiphyPickerFragment$3;

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/media/GiphyPickerFragment$3;-><init>(Lcom/narvii/media/GiphyPickerFragment;Lcom/narvii/util/dialog/ProgressHorizontalDialog;Ljava/util/ArrayList;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 83
    .line 84
    new-instance v0, Lcom/narvii/media/GiphyPickerFragment$4;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, p0, v2}, Lcom/narvii/media/GiphyPickerFragment$4;-><init>(Lcom/narvii/media/GiphyPickerFragment;Ljava/lang/Thread;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 91
    :cond_3
    :goto_1
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/media/GiphyPickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/GiphyPickerFragment;->pick()V

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/media/GiphyPickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/GiphyPickerFragment;->update()V

    return-void
.end method

.method private update()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    :goto_0
    iget-object v2, p0, Lcom/narvii/media/GiphyPickerFragment;->pickButton:Landroid/widget/Button;

    .line 14
    const/4 v3, 0x1

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    move v4, v3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v4, v1

    .line 20
    .line 21
    .line 22
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    .line 24
    sget v2, Lcom/narvii/lib/R$string;->pick:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    if-lez v0, :cond_2

    .line 31
    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, " ("

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v0, ")"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->pickButton:Landroid/widget/Button;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->adapter:Lcom/narvii/media/GiphyPickerFragment$Adapter;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    move-result v0

    .line 69
    xor-int/2addr v0, v3

    .line 70
    .line 71
    iget-object v2, p0, Lcom/narvii/media/GiphyPickerFragment;->titleView:Landroid/view/View;

    .line 72
    .line 73
    sget v3, Lcom/narvii/lib/R$id;->icon:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    const/16 v3, 0x8

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    move v4, v1

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move v4, v3

    .line 85
    .line 86
    .line 87
    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    iget-object v2, p0, Lcom/narvii/media/GiphyPickerFragment;->titleView:Landroid/view/View;

    .line 90
    .line 91
    sget v4, Lcom/narvii/lib/R$id;->title:I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    goto :goto_3

    .line 99
    :cond_4
    move v3, v1

    .line 100
    .line 101
    .line 102
    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    iget-object v2, p0, Lcom/narvii/media/GiphyPickerFragment;->listFrame:Landroid/view/View;

    .line 105
    .line 106
    if-nez v0, :cond_6

    .line 107
    .line 108
    iget-boolean v0, p0, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    goto :goto_4

    .line 112
    :cond_5
    const/4 v1, 0x4

    .line 113
    .line 114
    .line 115
    :cond_6
    :goto_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/media/GiphyPickerFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/media/GiphyPickerFragment$Adapter;-><init>(Lcom/narvii/media/GiphyPickerFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment;->adapter:Lcom/narvii/media/GiphyPickerFragment$Adapter;

    .line 8
    .line 9
    const-string v0, "keyword"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iput-object v0, p1, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->adapter:Lcom/narvii/media/GiphyPickerFragment$Adapter;

    .line 23
    const/4 v1, 0x3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 27
    return-object p1
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    const/high16 v1, -0x1000000

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 8
    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$layout;->media_giphy_picker_title:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->titleView:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarTitleView(Landroid/view/View;)V

    .line 20
    .line 21
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    const-string v2, "giphy_logo.gif"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Lpl/droidsonroids/gif/b;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment;->titleView:Landroid/view/View;

    .line 37
    .line 38
    sget v2, Lcom/narvii/lib/R$id;->icon:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    check-cast v1, Landroid/widget/ImageView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    sget v1, Lcom/narvii/lib/R$layout;->media_image_picker_button:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 61
    .line 62
    sget v0, Lcom/narvii/lib/R$id;->pick_image:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    check-cast p1, Landroid/widget/Button;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment;->pickButton:Landroid/widget/Button;

    .line 71
    .line 72
    new-instance v0, Lcom/narvii/media/GiphyPickerFragment$1;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/narvii/media/GiphyPickerFragment$1;-><init>(Lcom/narvii/media/GiphyPickerFragment;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment;->titleView:Landroid/view/View;

    .line 81
    .line 82
    sget v0, Lcom/narvii/lib/R$id;->title:I

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    check-cast p1, Landroid/widget/TextView;

    .line 89
    .line 90
    iget-boolean v0, p0, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    .line 91
    .line 92
    if-eqz v0, :cond_0

    .line 93
    .line 94
    sget v0, Lcom/narvii/lib/R$string;->media_image_sticker:I

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_0
    sget v0, Lcom/narvii/lib/R$string;->media_image_giphy:I

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Lcom/narvii/media/GiphyPickerFragment;->update()V

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x4

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 16
    .line 17
    const-string v0, "config"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 24
    .line 25
    const-string v1, "maxUploadImagePayloadLength"

    .line 26
    .line 27
    const/high16 v2, 0x600000

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/narvii/config/ConfigService;->getInt(Ljava/lang/String;I)I

    .line 31
    move-result v0

    .line 32
    .line 33
    iput v0, p0, Lcom/narvii/media/GiphyPickerFragment;->maxLen:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 44
    .line 45
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 49
    move-result v0

    .line 50
    .line 51
    div-int/lit8 v0, v0, 0x3

    .line 52
    .line 53
    iput v0, p0, Lcom/narvii/media/GiphyPickerFragment;->width:I

    .line 54
    .line 55
    const-string v0, "chooseSticker"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    .line 62
    .line 63
    const-class v0, Ljava/lang/String;

    .line 64
    .line 65
    const-string v1, "images"

    .line 66
    .line 67
    if-nez p1, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 89
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->media_giphy_picker:I

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
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "images"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p2, Lcom/narvii/lib/R$id;->list_frame:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    iput-object p2, p0, Lcom/narvii/media/GiphyPickerFragment;->listFrame:Landroid/view/View;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 15
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 23
    move-result-object p2

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 28
    .line 29
    sget p2, Lcom/narvii/lib/R$id;->search:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Lcom/narvii/widget/SearchBar;

    .line 36
    .line 37
    new-instance p2, Lcom/narvii/media/GiphyPickerFragment$2;

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, p0}, Lcom/narvii/media/GiphyPickerFragment$2;-><init>(Lcom/narvii/media/GiphyPickerFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 44
    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 8
    return-void
.end method
