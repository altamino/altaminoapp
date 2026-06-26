.class Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$1;
.super Lcom/narvii/list/DividerAdapter;
.source "OnlineAudioPickerBaseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getDividerLayoutId()I
    .locals 1

    .line 108
    sget v0, Lcom/narvii/lib/R$layout;->media_audio_online_picker_list_divider:I

    return v0
.end method
