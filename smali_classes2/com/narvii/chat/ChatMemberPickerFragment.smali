.class public Lcom/narvii/chat/ChatMemberPickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ChatMemberPickerFragment.java"


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

    .line 46
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/chat/ChatMemberPickerFragment;)Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->searchAdapter:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/narvii/chat/ChatMemberPickerFragment;->createMainAdapter()Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    if-nez p1, :cond_0

    const-string/jumbo p1, "users"

    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    const-class v1, Lcom/narvii/model/User;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 72
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    iget-object v0, p1, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 77
    :cond_0
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 78
    new-instance v0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;-><init>(Lcom/narvii/chat/ChatMemberPickerFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->searchAdapter:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    .line 79
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    invoke-virtual {v0, v1}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 80
    invoke-virtual {p0}, Lcom/narvii/chat/ChatMemberPickerFragment;->showSearchBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->searchAdapter:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method protected createMainAdapter()Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;
    .locals 1

    .line 88
    new-instance v0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;-><init>(Lcom/narvii/chat/ChatMemberPickerFragment;)V

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

    .line 283
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 284
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "users"

    .line 285
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 286
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 287
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0f6c

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const-string p1, "thread"

    .line 63
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/ChatThread;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->thread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 98
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 100
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 101
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0483

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 102
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x104000a

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/narvii/chat/ChatMemberPickerFragment;->onConfirmPick(Ljava/util/List;)V

    .line 110
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected showSearchBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
