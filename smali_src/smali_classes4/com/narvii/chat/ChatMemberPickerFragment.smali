.class public Lcom/narvii/chat/ChatMemberPickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;,
        Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

.field protected instantSearchListener:Lcom/narvii/search/InstantSearchListener;

.field private searchAdapter:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

.field protected thread:Lcom/narvii/model/ChatThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 11
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/chat/ChatMemberPickerFragment;)Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->searchAdapter:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/ChatMemberPickerFragment;->createMainAdapter()Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "users"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 17
    .line 18
    const-class v1, Lcom/narvii/model/User;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iput-object p1, v0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    iput-object v0, p1, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 38
    .line 39
    :cond_0
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 43
    .line 44
    new-instance v0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;-><init>(Lcom/narvii/chat/ChatMemberPickerFragment;)V

    .line 48
    .line 49
    iput-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->searchAdapter:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/chat/ChatMemberPickerFragment;->showSearchBar()Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->searchAdapter:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    .line 69
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 70
    const/4 v1, 0x1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 74
    return-object p1
.end method

.method protected createMainAdapter()Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;-><init>(Lcom/narvii/chat/ChatMemberPickerFragment;)V

    .line 6
    return-object v0
.end method

.method protected getMemberType()Ljava/lang/String;
    .locals 1

    const-string v0, "default"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isUserEnableInSearchBar(Lcom/narvii/model/User;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onConfirmPick(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v1, "users"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const/4 p1, -0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f121078

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    const/4 p1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 14
    .line 15
    const-string p1, "thread"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-class v0, Lcom/narvii/model/ChatThread;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 30
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x104000a

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f12052e

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x2

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 32
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x104000a

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/chat/ChatMemberPickerFragment;->onConfirmPick(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method protected showSearchBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
