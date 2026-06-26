.class Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3$1;
.super Ljava/lang/Object;
.source "OnlineAudioPickerListSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3;


# direct methods
.method constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3$1;->this$1:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3$1;->this$1:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3;

    iget-object v0, v0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    invoke-static {v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->access$100(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
