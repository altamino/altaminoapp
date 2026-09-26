.class public final Lcom/narvii/chat/setting/helper/ChatWaitingListService;
.super Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;


# instance fields
.field private isWaitingListShown:Z

.field private thread:Lcom/narvii/model/ChatThread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private waitingListFragment:Lcom/narvii/chat/setting/LiveWaitingListFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVActivity;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    return-void
.end method

.method public static synthetic b(Lcom/narvii/chat/setting/helper/ChatWaitingListService;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->onBottomLayoutCreated$lambda$1(Lcom/narvii/chat/setting/helper/ChatWaitingListService;Landroid/view/View;)V

    return-void
.end method

.method private static final onBottomLayoutCreated$lambda$1(Lcom/narvii/chat/setting/helper/ChatWaitingListService;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    .line 9
    return-void
.end method


# virtual methods
.method public closeWaitingList()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    .line 4
    return-void
.end method

.method public initBottomLayout()I
    .locals 1

    const v0, 0x7f0d079e

    return v0
.end method

.method public initFragment()Lcom/narvii/app/NVFragment;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;-><init>()V

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->thread:Lcom/narvii/model/ChatThread;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->getBriefContent()Lcom/narvii/model/ChatThread;

    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    const-string/jumbo v3, "thread"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->setWaitingListListener(Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;)V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->waitingListFragment:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 38
    return-object v0
.end method

.method public final isWaitingListShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->isWaitingListShown:Z

    return v0
.end method

.method public onBottomLayoutCreated(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->onBottomLayoutCreated(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0a0aad

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    new-instance v0, Lx5/a;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lx5/a;-><init>(Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-void
.end method

.method public onCollapsed()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->onCollapsed()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->isWaitingListShown:Z

    .line 7
    return-void
.end method

.method public final setWaitingListShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->isWaitingListShown:Z

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->show()V

    iget-object v0, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->waitingListFragment:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateWaitingList(Lcom/narvii/model/ChatThread;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->isWaitingListShown:Z

    return-void
.end method

.method public final show(Lcom/narvii/model/ChatThread;)V
    .locals 1
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->thread:Lcom/narvii/model/ChatThread;

    iget-object v0, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->waitingListFragment:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->show()V

    return-void
.end method
