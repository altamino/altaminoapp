.class Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MyChatsListFragment.java"

# interfaces
.implements Lcom/narvii/chat/util/IMyChatList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/thread/MyChatsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyChatListAdapter"
.end annotation


# static fields
.field private static final THREAD_VIEW_TYPE_GROUP:I = 0x1

.field private static final THREAD_VIEW_TYPE_PUBLIC:I = 0x2

.field private static final THREAD_VIEW_TYPE_SINGLE:I


# instance fields
.field chatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

.field curUser:Lcom/narvii/model/User;

.field final synthetic this$0:Lcom/narvii/chat/thread/MyChatsListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V
    .locals 1

    .line 637
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 638
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 639
    invoke-static {p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$700(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->curUser:Lcom/narvii/model/User;

    .line 640
    new-instance p1, Lcom/narvii/chat/util/MyChatListDelegate;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/chat/util/MyChatListDelegate;-><init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;Z)V

    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->chatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$700(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->list()Ljava/util/List;

    move-result-object v0

    .line 704
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v1}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/chat/service/MyChatListService;->isEnd()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 707
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 705
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->list()Ljava/util/List;

    move-result-object v0

    .line 713
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 714
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 715
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/service/MyChatListService;->getErrorMessageValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 716
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    return-object p1

    .line 717
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/service/MyChatListService;->isEnd()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 718
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    return-object p1

    .line 720
    :cond_2
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 726
    invoke-virtual {p0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 747
    invoke-virtual {p0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 748
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    .line 749
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 750
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$900(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/util/ChatHelper;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I

    move-result p1

    return p1

    .line 751
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 753
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x4

    return p1

    .line 755
    :cond_2
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x5

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 795
    invoke-virtual {p0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 796
    instance-of v1, v0, Lcom/narvii/model/ChatThread;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 797
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 799
    invoke-virtual {p0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const p1, 0x7f0b00d4

    const-string v1, "hangout"

    .line 801
    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f0b00d7

    const-string v1, "plain"

    .line 803
    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_3

    const p1, 0x7f0b00d2

    const-string v1, "group"

    .line 805
    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    .line 809
    :goto_0
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {p2}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$1000(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/core/ChatService;

    move-result-object p2

    iget-object p3, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/narvii/chat/core/ChatService;->getDraft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->curUser:Lcom/narvii/model/User;

    invoke-virtual {p1, v0, p2, p3}, Lcom/narvii/chat/thread/ThreadListItem;->setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;)V

    .line 810
    iget-boolean p2, v0, Lcom/narvii/model/ChatThread;->isPinned:Z

    if-eqz p2, :cond_2

    const-string p2, "#F8F8F9"

    goto :goto_1

    :cond_2
    const-string p2, "#FFFFFF"

    :goto_1
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-object p1

    :cond_3
    return-object v2

    .line 812
    :cond_4
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne v0, p1, :cond_5

    const p1, 0x7f0b053b

    .line 813
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 814
    :cond_5
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne v0, p1, :cond_6

    .line 815
    invoke-virtual {p0, p3, p2}, Lcom/narvii/list/NVAdapter;->createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 816
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {p2}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/narvii/chat/service/MyChatListService;->loadNextPage(Z)V

    return-object p1

    .line 818
    :cond_6
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-ne v0, p1, :cond_7

    .line 819
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/service/MyChatListService;->errorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 738
    invoke-virtual {p0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 739
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 742
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isListEmpty()Z
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$700(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isListShown()Z
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->isEnd()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public synthetic lambda$onLongClick$0$MyChatsListFragment$MyChatListAdapter([ILjava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 864
    aget p1, p1, p4

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 872
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    check-cast p2, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment;->delete(Lcom/narvii/model/ChatThread;)V

    goto :goto_0

    .line 876
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    check-cast p2, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment;->processPin(Lcom/narvii/model/ChatThread;)V

    goto :goto_0

    .line 866
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    check-cast p2, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment;->markUnread(Lcom/narvii/model/ChatThread;)V

    goto :goto_0

    .line 869
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    check-cast p2, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment;->markRead(Lcom/narvii/model/ChatThread;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0f021e -> :sswitch_3
        0x7f0f021f -> :sswitch_2
        0x7f0f0238 -> :sswitch_1
        0x7f0f0246 -> :sswitch_1
        0x7f0f0348 -> :sswitch_0
    .end sparse-switch
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 659
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 660
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$500(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/thread/MyChatManagePopUp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$500(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/thread/MyChatManagePopUp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/thread/MyChatManagePopUp;->updateManageButtonStatus()V

    :cond_0
    return-void
.end method

.method public onAttach()V
    .locals 1

    .line 645
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 646
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->onAttach()V

    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->errorRetry()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 826
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 827
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->chatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    check-cast p3, Lcom/narvii/model/ChatThread;

    const/4 p2, 0x0

    const-string p4, "My chats"

    invoke-virtual {p1, p3, p2, p4}, Lcom/narvii/chat/util/MyChatListDelegate;->openMyChat(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;)Z

    return v1

    :cond_0
    if-eqz p5, :cond_1

    .line 830
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f09040f

    if-ne v0, v2, :cond_1

    .line 831
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$000(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    return v1

    .line 834
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_2

    .line 835
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/chat/service/MyChatListService;->loadNextPage(Z)V

    return v1

    .line 838
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 843
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_3

    .line 844
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    move-object p2, p3

    check-cast p2, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isThreadUnread(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    const/4 p4, 0x3

    new-array p4, p4, [I

    .line 847
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const p1, 0x7f0f021f

    aput p1, p4, v0

    .line 850
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const p1, 0x7f0f021e

    aput p1, p4, v0

    .line 853
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x2

    .line 856
    iget-boolean v1, p2, Lcom/narvii/model/ChatThread;->isPinned:Z

    const v2, 0x7f0f0246

    const v3, 0x7f0f0238

    if-eqz v1, :cond_1

    const v1, 0x7f0f0246

    goto :goto_1

    :cond_1
    const v1, 0x7f0f0238

    :goto_1
    const/4 v4, 0x1

    aput v1, p4, v4

    .line 857
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    iget-boolean p2, p2, Lcom/narvii/model/ChatThread;->isPinned:Z

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const v2, 0x7f0f0238

    :goto_2
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p2, 0x7f0f0348

    aput p2, p4, p1

    .line 860
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array p2, v0, [Ljava/lang/CharSequence;

    .line 862
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/CharSequence;

    new-instance p5, Lcom/narvii/chat/thread/-$$Lambda$MyChatsListFragment$MyChatListAdapter$5BdrhEzttsk9hkFl5jVY4BTp8wY;

    invoke-direct {p5, p0, p4, p3}, Lcom/narvii/chat/thread/-$$Lambda$MyChatsListFragment$MyChatListAdapter$5BdrhEzttsk9hkFl5jVY4BTp8wY;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;[ILjava/lang/Object;)V

    invoke-virtual {p1, p2, p5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 880
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v4

    .line 883
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method onResume()V
    .locals 6

    .line 650
    invoke-virtual {p0}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/service/MyChatListService;->loadNextPage(Z)V

    goto :goto_0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->getChatRequestTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 653
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object v0

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/service/MyChatListService;->refresh(ILcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onThreadUpdateInfo(Lcom/narvii/chat/core/ThreadUpdateObject;)V
    .locals 0

    return-void
.end method

.method public onUnknownThreadMessageCome(Lcom/narvii/model/ChatMessage;)V
    .locals 0

    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/service/MyChatListService;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public refreshList()V
    .locals 0

    return-void
.end method
