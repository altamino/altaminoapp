.class Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;
.super Ljava/lang/Object;
.source "OnlineAudioPickerListSearchFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


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

    .line 53
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    invoke-static {p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->access$002(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    iget-object p1, p1, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->adapter:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;

    invoke-virtual {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->resetList()V

    .line 64
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->access$100(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    invoke-static {p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->access$002(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    iget-object p1, p1, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->adapter:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;

    invoke-virtual {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->resetList()V

    return-void
.end method
