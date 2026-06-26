.class public Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;
.super Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;
.source "OnlineAudioHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createMainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;
    .locals 0

    .line 48
    new-instance p1, Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;)V

    return-object p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget p1, Lcom/narvii/lib/R$string;->recently_used:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 28
    sget p3, Lcom/narvii/lib/R$layout;->media_audio_online_picker_list:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 33
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 34
    sget p2, Lcom/narvii/lib/R$id;->filter_and_sourt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    sget p2, Lcom/narvii/lib/R$id;->empty_retry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
