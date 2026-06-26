.class public final Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "LiveWaitingListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/setting/LiveWaitingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$WaitingViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiveWaitingListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiveWaitingListFragment.kt\ncom/narvii/chat/setting/LiveWaitingListFragment$Adapter\n*L\n1#1,428:1\n*E\n"
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private final requestedIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

.field private final waitingUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/app/NVContext;)V
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

    .line 236
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    .line 238
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    .line 239
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->requestedIdSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addRequestedId(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "uid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->requestedIdSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 271
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$updateClearBtn(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    return-void
.end method

.method public final clear()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 250
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->requestedIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 251
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 252
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$updateClearBtn(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    return-void
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserList"

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getWaitingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    instance-of v0, p1, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$WaitingViewHolder;

    if-eqz v0, :cond_2

    .line 294
    invoke-virtual {p0, p2}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/narvii/model/User;

    .line 295
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0900e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 296
    :cond_0
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/narvii/amino/R$id;->nickname:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NicknameView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 297
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/narvii/amino/R$id;->index:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "holder.itemView.index"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object p2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->requestedIdSet:Ljava/util/Set;

    iget-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 300
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {v1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getCurrentUser$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/User;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 301
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/narvii/amino/R$id;->accept_view:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/setting/widget/WaitListAcceptView;

    iget-object v3, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {v3}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$isHostOrCoHost$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Z

    move-result v3

    invoke-virtual {v1, p2, v3, v0}, Lcom/narvii/chat/setting/widget/WaitListAcceptView;->updateState(ZZZ)V

    if-eqz v0, :cond_2

    .line 303
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/narvii/amino/R$id;->nickname:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    const p2, 0x7f0f0b28

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NicknameView;->setText(I)V

    goto :goto_0

    .line 294
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.model.User"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    new-instance p2, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$WaitingViewHolder;

    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b04e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(ctx.\u2026ting_item, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$WaitingViewHolder;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    if-eqz p5, :cond_0

    .line 309
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f090022

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_2

    .line 310
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 311
    instance-of v0, p5, Lcom/narvii/chat/setting/widget/WaitListAcceptView;

    if-eqz v0, :cond_b

    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_b

    move-object v0, p5

    check-cast v0, Lcom/narvii/chat/setting/widget/WaitListAcceptView;

    invoke-virtual {v0}, Lcom/narvii/chat/setting/widget/WaitListAcceptView;->isRequesting()Z

    move-result v0

    if-nez v0, :cond_b

    .line 312
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$isHostOrCoHost$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "AcceptButton"

    .line 313
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    move-object p2, p3

    check-cast p2, Lcom/narvii/model/NVObject;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 314
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    check-cast p3, Lcom/narvii/model/User;

    invoke-static {p1, p3}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$acceptUser(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V

    goto :goto_1

    :cond_2
    const-string p1, "CancelButton"

    .line 316
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    move-object p2, p3

    check-cast p2, Lcom/narvii/model/NVObject;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 317
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    check-cast p3, Lcom/narvii/model/User;

    invoke-static {p1, p3}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$cancelJoin(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V

    :goto_1
    return v2

    :cond_3
    :goto_2
    const v1, 0x7f0900e4

    if-nez v0, :cond_4

    goto :goto_3

    .line 322
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    const v1, 0x7f090764

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 323
    :goto_4
    new-instance p1, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    iget-object p2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    if-eqz p3, :cond_a

    move-object p4, p3

    check-cast p4, Lcom/narvii/model/User;

    invoke-direct {p1, p2, p4}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V

    .line 324
    iget-object p2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {p2}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getThread$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result p2

    .line 325
    iget-object p5, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {p5}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getThread$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object p5

    iget-object p5, p5, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    iget-object p5, p5, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object p4, p4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {p5, p4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    .line 326
    iget-object p5, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    const-string v0, "id"

    invoke-virtual {p5, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getThread$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {p1, p5, p2, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 327
    new-instance p5, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;

    invoke-direct {p5, p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;)V

    invoke-virtual {p1, p5}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->clickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    move-result-object p5

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eqz p4, :cond_8

    if-eq p2, v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 p4, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 p4, 0x1

    .line 345
    :goto_6
    invoke-virtual {p5, p4}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->muteVideoWhenBlockUser(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    move-result-object p4

    if-eq p2, v1, :cond_9

    const/4 v0, 0x1

    .line 346
    :cond_9
    invoke-virtual {p4, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->needVideoFrameWhenFlag(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 347
    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->build()Lcom/narvii/chat/dialog/VVChatUserDialog;

    move-result-object p1

    .line 348
    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->show()V

    .line 349
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    return v2

    .line 323
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.model.User"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 353
    :cond_b
    :goto_7
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public final removeRequestedId(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "uid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->requestedIdSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 277
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$updateClearBtn(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    return-void
.end method

.method public final removeUserInList(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "uid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->requestedIdSet:Ljava/util/Set;

    new-instance v1, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$removeUserInList$1;

    invoke-direct {v1, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$removeUserInList$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    .line 257
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    new-instance v1, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$removeUserInList$2;

    invoke-direct {v1, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$removeUserInList$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 258
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 259
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$updateClearBtn(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    return-void
.end method

.method public final setWaitingUserList(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "users"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 245
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$updateClearBtn(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    return-void
.end method
