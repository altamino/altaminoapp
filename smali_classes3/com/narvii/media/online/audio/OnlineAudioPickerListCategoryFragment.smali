.class public Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment;
.super Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;
.source "OnlineAudioPickerListCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 1

    .line 55
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 56
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->category:Lcom/narvii/media/online/audio/model/AssetCategory;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/narvii/media/online/audio/model/AssetCategory;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "musicCategory"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method

.method protected createMainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;
    .locals 0

    .line 50
    new-instance p1, Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment$Adapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment$Adapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->adapter:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;

    return-object p1
.end method

.method protected initPopupWindow(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->initPopupWindow(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 44
    sget v0, Lcom/narvii/lib/R$id;->sort_select_relevance:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->category:Lcom/narvii/media/online/audio/model/AssetCategory;

    if-nez p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 27
    :cond_0
    iget-object p1, p1, Lcom/narvii/media/online/audio/model/AssetCategory;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected presetSubCategoryViewData(Landroid/content/Intent;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->category:Lcom/narvii/media/online/audio/model/AssetCategory;

    iget-object v0, v0, Lcom/narvii/media/online/audio/model/AssetCategory;->id:Ljava/lang/String;

    const-string v1, "categoryId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
