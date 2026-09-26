.class Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->C(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->adapter:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->resetList()V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->B(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)Lcom/narvii/widget/SearchBar;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 26
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->C(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->adapter:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->resetList()V

    .line 13
    return-void
.end method
