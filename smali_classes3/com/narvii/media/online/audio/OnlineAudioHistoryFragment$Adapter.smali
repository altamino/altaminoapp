.class Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "OnlineAudioHistoryFragment.java"


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

    .line 53
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;

    .line 54
    const-class v0, Lcom/narvii/media/online/audio/model/Sound;

    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 55
    iget-object p1, p1, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->soundHistoryHelper:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    invoke-virtual {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 66
    sget v0, Lcom/narvii/lib/R$layout;->media_audio_online_picker_list_item:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 67
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/online/audio/model/Sound;

    .line 69
    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;

    invoke-virtual {p3, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->configItemView(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 76
    instance-of v0, p3, Lcom/narvii/media/online/audio/model/Sound;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;

    move-object v1, p3

    check-cast v1, Lcom/narvii/media/online/audio/model/Sound;

    invoke-virtual {v0, v1, p4, p5}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->dealClickEvent(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 82
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

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

    .line 60
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;

    iget-object v0, v0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->soundHistoryHelper:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    invoke-virtual {v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 61
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method
