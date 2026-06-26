.class Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "PickChatThreadListFragment.java"

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

    .line 166
    iput-object p1, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    .line 167
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 168
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 188
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/chat/thread?type=joined-me"

    .line 189
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 190
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 191
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

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

    .line 178
    const-class v0, Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 201
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 202
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-static {v0, p1}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I

    move-result p1

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 207
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 209
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f0b00d4

    const-string v1, "hangout"

    .line 212
    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/thread/ThreadListItem;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const v0, 0x7f0b00d7

    const-string v1, "plain"

    .line 215
    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/thread/ThreadListItem;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const v0, 0x7f0b00d2

    const-string v1, "group"

    .line 218
    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/thread/ThreadListItem;

    .line 222
    :goto_0
    iget-object p3, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    invoke-static {p3}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->access$100(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/narvii/chat/thread/ThreadListItem;->setDarkTheme(Z)V

    .line 223
    invoke-virtual {p2, p1}, Lcom/narvii/chat/thread/ThreadListItem;->setChatThread(Lcom/narvii/model/ChatThread;)V

    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 230
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    move-object v1, p3

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->onThreadPicked(Lcom/narvii/model/ChatThread;)V

    .line 233
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

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

    .line 183
    const-class v0, Lcom/narvii/chat/thread/ThreadListResponse;

    return-object v0
.end method
