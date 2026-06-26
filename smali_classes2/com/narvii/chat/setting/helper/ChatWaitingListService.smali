.class public final Lcom/narvii/chat/setting/helper/ChatWaitingListService;
.super Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;
.source "ChatWaitingListService.kt"

# interfaces
.implements Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatWaitingListService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatWaitingListService.kt\ncom/narvii/chat/setting/helper/ChatWaitingListService\n*L\n1#1,94:1\n*E\n"
.end annotation


# instance fields
.field private isWaitingListShown:Z

.field private thread:Lcom/narvii/model/ChatThread;

.field private waitingListFragment:Lcom/narvii/chat/setting/LiveWaitingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVActivity;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public closeWaitingList()V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    return-void
.end method

.method public initBottomLayout()I
    .locals 1

    const v0, 0x7f0b06eb

    return v0
.end method

.method public initFragment()Lcom/narvii/app/NVFragment;
    .locals 4

    .line 28
    new-instance v0, Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-direct {v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;-><init>()V

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    iget-object v2, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->getBriefContent()Lcom/narvii/model/ChatThread;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "thread"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {v0, p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->setWaitingListListener(Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;)V

    .line 33
    iput-object v0, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->waitingListFragment:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    return-object v0
.end method

.method public final isWaitingListShown()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->isWaitingListShown:Z

    return v0
.end method

.method public onBottomLayoutCreated(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->onBottomLayoutCreated(Landroid/view/View;)V

    const v0, 0x7f090808

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/chat/setting/helper/ChatWaitingListService$onBottomLayoutCreated$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/setting/helper/ChatWaitingListService$onBottomLayoutCreated$1;-><init>(Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCollapsed()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->onCollapsed()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->isWaitingListShown:Z

    return-void
.end method

.method public final setWaitingListShown(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->isWaitingListShown:Z

    return-void
.end method

.method public show()V
    .locals 2

    .line 38
    invoke-super {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->show()V

    .line 39
    iget-object v0, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->waitingListFragment:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateWaitingList(Lcom/narvii/model/ChatThread;)V

    :cond_0
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->isWaitingListShown:Z

    return-void
.end method

.method public final show(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 46
    iput-object p1, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->thread:Lcom/narvii/model/ChatThread;

    .line 47
    iget-object v0, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->waitingListFragment:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->show()V

    return-void
.end method
