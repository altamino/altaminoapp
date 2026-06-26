.class final Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;
.super Lcom/narvii/chat/thread/MyThreadListAdapter;
.source "SearchMyChatsFragment.kt"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;->this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;

    invoke-direct {p0, p2}, Lcom/narvii/chat/thread/MyThreadListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private final customItemView(Lcom/narvii/chat/thread/ThreadListItem;)V
    .locals 5

    .line 131
    iget-object v0, p1, Lcom/narvii/chat/thread/ThreadListItem;->datetime:Landroid/widget/TextView;

    const-string/jumbo v1, "view.datetime"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p1, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    const-string/jumbo v2, "view.content"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p1, Lcom/narvii/chat/thread/ThreadListItem;->rctIndicatorIcon:Lcom/narvii/widget/NVImageView;

    const-string/jumbo v3, "view.rctIndicatorIcon"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p1, Lcom/narvii/chat/thread/ThreadListItem;->unread:Landroid/view/View;

    const-string/jumbo v2, "view.unread"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p1, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    const-string/jumbo v1, "view.title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 136
    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 137
    move-object v2, v0

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 138
    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 139
    iget-object p1, p1, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 100
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v0, "/chat/thread/search"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;->this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->access$getInstantSearchListener$p(Lcom/narvii/chat/thread/SearchMyChatsFragment;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "ApiRequest.Builder().pat\u2026ARCH_ACTION_NONE).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public createThreadItem(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/narvii/chat/thread/ThreadListItem;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f0b00d4

    const-string v0, "hangout"

    .line 110
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const-string p2, "createView(R.layout.chat\u2026, convertView, \"hangout\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f0b00d7

    const-string v0, "plain"

    .line 113
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const-string p2, "createView(R.layout.chat\u2026nt, convertView, \"plain\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    return-object p1

    :cond_1
    const p1, 0x7f0b00d2

    const-string v0, "group"

    .line 116
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const-string p2, "createView(R.layout.chat\u2026nt, convertView, \"group\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/thread/MyThreadListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    move-object p2, p1

    check-cast p2, Lcom/narvii/chat/thread/ThreadListItem;

    invoke-direct {p0, p2}, Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;->customItemView(Lcom/narvii/chat/thread/ThreadListItem;)V

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.chat.thread.ThreadListItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSearchKey()Ljava/lang/String;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;->this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->access$getInstantSearchListener$p(Lcom/narvii/chat/thread/SearchMyChatsFragment;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "instantSearchListener.keyword"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public isDarkNVTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;->this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->access$getInstantSearchListener$p(Lcom/narvii/chat/thread/SearchMyChatsFragment;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
