.class final Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;
.super Lcom/narvii/chat/thread/MyThreadListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/thread/SearchMyChatsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyChatsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/thread/SearchMyChatsFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/thread/SearchMyChatsFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;->this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/chat/thread/MyThreadListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    return-void
.end method

.method private final customItemView(Lcom/narvii/chat/thread/ThreadListItem;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/chat/thread/ThreadListItem;->datetime:Landroid/widget/TextView;

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object v0, p1, Lcom/narvii/chat/thread/ThreadListItem;->rctIndicatorIcon:Lcom/narvii/widget/NVImageView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    iget-object v0, p1, Lcom/narvii/chat/thread/ThreadListItem;->unread:Landroid/view/View;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    iget-object v0, p1, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    move-object v1, v0

    .line 35
    .line 36
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 37
    .line 38
    const/16 v2, 0xf

    .line 39
    const/4 v3, 0x1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43
    .line 44
    const/16 v2, 0xa

    .line 45
    const/4 v3, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 49
    .line 50
    iget-object p1, p1, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    const-string v0, "/chat/thread/search"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;->this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->access$getInstantSearchListener$p(Lcom/narvii/chat/thread/SearchMyChatsFragment;)Lcom/narvii/search/InstantSearchListener;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "q"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-string v1, "action"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    const-string v0, "build(...)"

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    return-object p1
.end method

.method public createThreadItem(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/narvii/chat/thread/ThreadListItem;
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "createView(...)"

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0d00e8

    .line 11
    .line 12
    const-string v1, "group"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    .line 22
    return-object p1

    .line 23
    .line 24
    .line 25
    :cond_0
    const p1, 0x7f0d00ea

    .line 26
    .line 27
    const-string v1, "hangout"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    .line 37
    return-object p1

    .line 38
    .line 39
    .line 40
    :cond_1
    const p1, 0x7f0d00ed

    .line 41
    .line 42
    const-string v1, "plain"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    .line 52
    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/thread/MyThreadListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string p2, "null cannot be cast to non-null type com.narvii.chat.thread.ThreadListItem"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    move-object p2, p1

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/chat/thread/ThreadListItem;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;->customItemView(Lcom/narvii/chat/thread/ThreadListItem;)V

    .line 16
    return-object p1
.end method

.method public getSearchKey()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;->this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->access$getInstantSearchListener$p(Lcom/narvii/chat/thread/SearchMyChatsFragment;)Lcom/narvii/search/InstantSearchListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "getKeyword(...)"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method public isDarkNVTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;->this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->access$getInstantSearchListener$p(Lcom/narvii/chat/thread/SearchMyChatsFragment;)Lcom/narvii/search/InstantSearchListener;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method
