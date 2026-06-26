.class Lcom/narvii/media/GiphyPickerFragment$2;
.super Ljava/lang/Object;
.source "GiphyPickerFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/GiphyPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/GiphyPickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/GiphyPickerFragment;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$2;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$2;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/GiphyPickerFragment;->adapter:Lcom/narvii/media/GiphyPickerFragment$Adapter;

    iput-object p2, p1, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 167
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$2;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 168
    invoke-static {p1}, Lcom/narvii/media/GiphyPickerFragment;->access$100(Lcom/narvii/media/GiphyPickerFragment;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 155
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$2;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget-boolean v0, p1, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object p1, p1, Lcom/narvii/media/GiphyPickerFragment;->adapter:Lcom/narvii/media/GiphyPickerFragment$Adapter;

    iput-object p2, p1, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 158
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$2;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 159
    invoke-static {p1}, Lcom/narvii/media/GiphyPickerFragment;->access$100(Lcom/narvii/media/GiphyPickerFragment;)V

    :cond_0
    return-void
.end method
