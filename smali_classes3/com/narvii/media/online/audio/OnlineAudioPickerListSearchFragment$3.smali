.class Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3;
.super Ljava/lang/Object;
.source "OnlineAudioPickerListSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 85
    new-instance v0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3$1;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
