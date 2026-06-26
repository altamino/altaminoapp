.class public Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;
.super Lcom/narvii/list/NVListFragment;
.source "OnlineAudioPickerCategoryPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_AUDIO:I = 0x100


# instance fields
.field private section:Lcom/narvii/media/online/audio/model/AssetSection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;)Lcom/narvii/media/online/audio/model/AssetSection;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;->section:Lcom/narvii/media/online/audio/model/AssetSection;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 62
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 63
    new-instance v0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;Lcom/narvii/app/NVContext;Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$1;)V

    const/4 v1, 0x2

    .line 64
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    return-object p1
.end method

.method protected getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 177
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 6

    .line 71
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;->section:Lcom/narvii/media/online/audio/model/AssetSection;

    if-eqz v0, :cond_5

    .line 72
    iget-object v0, v0, Lcom/narvii/media/online/audio/model/AssetSection;->name:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x14065

    const-string v4, "SFX"

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x636ee25

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "music"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    goto :goto_1

    :cond_3
    return-object v4

    :cond_4
    const-string v0, "Music"

    return-object v0

    .line 79
    :cond_5
    :goto_1
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 85
    invoke-virtual {p0, v0, p3}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_0

    .line 88
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "categorySection"

    .line 45
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/media/online/audio/model/AssetSection;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/online/audio/model/AssetSection;

    iput-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;->section:Lcom/narvii/media/online/audio/model/AssetSection;

    .line 46
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
