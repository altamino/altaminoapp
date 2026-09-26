.class Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/PickChatThreadListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyChatListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/ChatThread;",
        "Lcom/narvii/chat/thread/ThreadListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field final synthetic this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 17
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "/chat/thread?type=joined-me"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0d00ea

    .line 13
    .line 14
    const-string v1, "hangout"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Lcom/narvii/chat/thread/ThreadListItem;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0d00ed

    .line 27
    .line 28
    const-string v1, "plain"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    check-cast p2, Lcom/narvii/chat/thread/ThreadListItem;

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x1

    .line 37
    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0d00e8

    .line 42
    .line 43
    const-string v1, "group"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    check-cast p2, Lcom/narvii/chat/thread/ThreadListItem;

    .line 50
    .line 51
    :goto_0
    iget-object p3, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {p3}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->u(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;)Z

    .line 55
    move-result p3

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Lcom/narvii/chat/thread/ThreadListItem;->setDarkTheme(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lcom/narvii/chat/thread/ThreadListItem;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 62
    return-object p2

    .line 63
    :cond_2
    const/4 p1, 0x0

    .line 64
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    .line 7
    move-object v1, p3

    .line 8
    .line 9
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->onThreadPicked(Lcom/narvii/model/ChatThread;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/chat/thread/ThreadListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/chat/thread/ThreadListResponse;

    return-object v0
.end method
