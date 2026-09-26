.class Lcom/narvii/media/GiphyPickerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$2;->this$0:Lcom/narvii/media/GiphyPickerFragment;

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
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$2;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/media/GiphyPickerFragment;->adapter:Lcom/narvii/media/GiphyPickerFragment$Adapter;

    .line 5
    .line 6
    iput-object p2, p1, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$2;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    iput-object p2, p1, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/media/GiphyPickerFragment;->u(Lcom/narvii/media/GiphyPickerFragment;)V

    .line 18
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$2;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 9
    .line 10
    iget-boolean v0, p1, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/media/GiphyPickerFragment;->adapter:Lcom/narvii/media/GiphyPickerFragment$Adapter;

    .line 15
    .line 16
    iput-object p2, p1, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$2;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    iput-object p2, p1, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/media/GiphyPickerFragment;->u(Lcom/narvii/media/GiphyPickerFragment;)V

    .line 28
    :cond_0
    return-void
.end method
