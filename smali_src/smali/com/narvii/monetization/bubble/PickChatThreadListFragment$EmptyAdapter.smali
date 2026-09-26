.class Lcom/narvii/monetization/bubble/PickChatThreadListFragment$EmptyAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/PickChatThreadListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmptyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$EmptyAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$EmptyAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->t(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;)Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$EmptyAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->t(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;)Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$EmptyAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->t(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;)Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$EmptyAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->t(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;)Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    move-result v0

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d05e4

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method
