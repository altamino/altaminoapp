.class public Lcom/narvii/media/PostMediaPickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "PostMediaPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/PostMediaPickerFragment$Adapter;
    }
.end annotation


# static fields
.field public static final MAX_PHOTO_COUNT:I = 0x19

.field public static final REQUEST_SELECT_ALBUM:I = 0x1


# instance fields
.field public adapter:Lcom/narvii/media/PostMediaPickerFragment$Adapter;

.field allMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field pickButton:Landroid/widget/Button;

.field selectedMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/PostMediaPickerFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/media/PostMediaPickerFragment;->pick()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/media/PostMediaPickerFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/media/PostMediaPickerFragment;->updatePickButton()V

    return-void
.end method

.method private pick()V
    .locals 4

    const-string v0, "mediaPickCallback"

    .line 99
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaPickCallbackManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "shared_photo_pick_from_post"

    .line 100
    invoke-virtual {v0, v1}, Lcom/narvii/media/MediaPickCallbackManager;->getCallback(Ljava/lang/String;)Lcom/narvii/media/MediaPickCallback;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 104
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 105
    iget-object v2, p0, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mediaList"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "objectId"

    .line 106
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "objectType"

    .line 107
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/NVActivity;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/narvii/media/MediaPickCallback;->onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V

    return-void
.end method

.method private updatePickButton()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 129
    :goto_0
    iget-object v2, p0, Lcom/narvii/media/PostMediaPickerFragment;->pickButton:Landroid/widget/Button;

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    sget v1, Lcom/narvii/lib/R$string;->pick:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-lez v0, :cond_2

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/narvii/media/PostMediaPickerFragment;->pickButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 74
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int v5, p1

    .line 75
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    move-object v0, p1

    move-object v1, p0

    move v2, v5

    move v3, v5

    move v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 76
    new-instance v0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;

    const-class v1, Lcom/narvii/model/Media;

    iget-object v2, p0, Lcom/narvii/media/PostMediaPickerFragment;->allMediaList:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/narvii/media/PostMediaPickerFragment$Adapter;-><init>(Lcom/narvii/media/PostMediaPickerFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    iput-object v0, p0, Lcom/narvii/media/PostMediaPickerFragment;->adapter:Lcom/narvii/media/PostMediaPickerFragment$Adapter;

    .line 77
    iget-object v0, p0, Lcom/narvii/media/PostMediaPickerFragment;->adapter:Lcom/narvii/media/PostMediaPickerFragment$Adapter;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    return-object p1
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 69
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->media_image_picker_button:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 87
    sget v0, Lcom/narvii/lib/R$string;->photos:I

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 88
    sget v0, Lcom/narvii/lib/R$id;->pick_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/media/PostMediaPickerFragment;->pickButton:Landroid/widget/Button;

    .line 89
    iget-object p1, p0, Lcom/narvii/media/PostMediaPickerFragment;->pickButton:Landroid/widget/Button;

    new-instance v0, Lcom/narvii/media/PostMediaPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/PostMediaPickerFragment$1;-><init>(Lcom/narvii/media/PostMediaPickerFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-direct {p0}, Lcom/narvii/media/PostMediaPickerFragment;->updatePickButton()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 v1, 0x58

    if-ne p1, v1, :cond_1

    if-eqz p3, :cond_1

    const-string v1, "selected"

    .line 114
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/Media;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 115
    iput-object v1, p0, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    .line 116
    iget-object v1, p0, Lcom/narvii/media/PostMediaPickerFragment;->adapter:Lcom/narvii/media/PostMediaPickerFragment$Adapter;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/narvii/media/PostMediaPickerFragment;->updatePickButton()V

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 124
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    const-class v0, Lcom/narvii/model/Media;

    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "list"

    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/PostMediaPickerFragment;->allMediaList:Ljava/util/List;

    .line 54
    iget-object p1, p0, Lcom/narvii/media/PostMediaPickerFragment;->allMediaList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string p1, "selected"

    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    if-eqz p1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    iget-object v0, p0, Lcom/narvii/media/PostMediaPickerFragment;->allMediaList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method
