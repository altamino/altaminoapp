.class Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/media/online/audio/model/Sound;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;

    .line 3
    .line 4
    const-class v0, Lcom/narvii/media/online/audio/model/Sound;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->soundHistoryHelper:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->getList()Ljava/util/ArrayList;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$layout;->media_audio_online_picker_list_item:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/media/online/audio/model/Sound;

    .line 13
    .line 14
    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->configItemView(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;)V

    .line 18
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p5    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/media/online/audio/model/Sound;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;

    .line 9
    move-object v1, p3

    .line 10
    .line 11
    check-cast v1, Lcom/narvii/media/online/audio/model/Sound;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p4, p5}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->dealClickEvent(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;Landroid/view/View;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->soundHistoryHelper:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->getList()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 15
    return-void
.end method
