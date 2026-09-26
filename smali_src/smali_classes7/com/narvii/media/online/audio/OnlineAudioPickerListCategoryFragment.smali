.class public Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment;
.super Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->category:Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p2, Lcom/narvii/media/online/audio/model/AssetCategory;->title:Ljava/lang/String;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p2, 0x0

    .line 12
    .line 13
    :goto_0
    const-string v0, "musicCategory"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    return-void
.end method

.method protected createMainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment$Adapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->adapter:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;

    .line 8
    return-object p1
.end method

.method protected initPopupWindow(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->initPopupWindow(Landroid/view/View;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$id;->sort_select_relevance:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->category:Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object p1, p1, Lcom/narvii/media/online/audio/model/AssetCategory;->title:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected presetSubCategoryViewData(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->category:Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/media/online/audio/model/AssetCategory;->id:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "categoryId"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    return-void
.end method
