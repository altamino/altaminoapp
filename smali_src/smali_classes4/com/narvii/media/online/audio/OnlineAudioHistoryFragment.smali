.class public Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;
.super Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createMainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;)V

    .line 6
    return-object p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p1, Lcom/narvii/lib/R$string;->recently_used:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 9
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    sget p3, Lcom/narvii/lib/R$layout;->media_audio_online_picker_list:I

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

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p2, Lcom/narvii/lib/R$id;->filter_and_sourt:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    sget p2, Lcom/narvii/lib/R$id;->empty_retry:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :cond_0
    return-void
.end method
