.class Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$2;
.super Ljava/lang/Object;
.source "OnlineAudioPickerListSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 72
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
