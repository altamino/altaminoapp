.class public final Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "ChatMentionUserListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/ChatMentionUserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatMentionUserListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatMentionUserListFragment.kt\ncom/narvii/chat/input/ChatMentionUserListFragment$Adapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,227:1\n673#2:228\n746#2,2:229\n919#2:231\n673#2:232\n746#2,2:233\n919#2:235\n*E\n*S KotlinDebug\n*F\n+ 1 ChatMentionUserListFragment.kt\ncom/narvii/chat/input/ChatMentionUserListFragment$Adapter\n*L\n202#1:228\n202#1,2:229\n204#1:231\n205#1:232\n205#1,2:233\n207#1:235\n*E\n"
.end annotation


# instance fields
.field private localFilterRequired:Z

.field final synthetic this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

.field private userList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/chat/input/ChatMentionUserListFragment;Lcom/narvii/app/NVContext;)V
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

    .line 122
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b0374

    const-string v1, "loading"

    .line 131
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const-string p2, "createView(com.narvii.li\u2026  convertView, \"loading\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 162
    iget-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getActive$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 165
    :cond_0
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/chat/thread/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getThreadId$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/member"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string/jumbo v0, "type"

    const-string v1, "at"

    .line 166
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 167
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 168
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected filterYourself()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getLocalFilterRequired()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->localFilterRequired:Z

    return v0
.end method

.method public final getUserList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 145
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 146
    instance-of p3, p1, Lcom/narvii/model/User;

    const-string v0, "cell"

    if-eqz p3, :cond_1

    .line 147
    iget-object p3, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {p3}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getChatHelper$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/chat/util/ChatHelper;

    move-result-object p3

    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getChatThread$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v1

    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Lcom/narvii/chat/util/ChatHelper;->getHostLabelName(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "cell.host_label"

    if-nez p1, :cond_0

    .line 149
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/narvii/amino/R$id;->host_label:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/narvii/amino/R$id;->host_label:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    sget v1, Lcom/narvii/amino/R$id;->host_label:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 156
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 p3, -0x1000000

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :cond_2
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b051a

    return v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 11

    .line 196
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->localFilterRequired:Z

    if-eqz v0, :cond_b

    .line 201
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 202
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "it.nickname()"

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/narvii/model/User;

    .line 203
    invoke-virtual {v7}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v5}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v7, v5, v6}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 231
    :cond_3
    new-instance v0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter$notifyDataSetChanged$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter$notifyDataSetChanged$$inlined$sortedBy$1;-><init>()V

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 205
    iget-object v2, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    .line 232
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/narvii/model/User;

    .line 206
    invoke-virtual {v8}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v10}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-static {v9, v10, v6}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v8}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v9}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-static {v8, v9, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    :cond_6
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_4

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 235
    :cond_8
    new-instance v2, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter$notifyDataSetChanged$$inlined$sortedBy$2;

    invoke-direct {v2}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter$notifyDataSetChanged$$inlined$sortedBy$2;-><init>()V

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 209
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget-object v2, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->setList(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 209
    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.narvii.model.User> /* = java.util.ArrayList<com.narvii.model.User> */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_a
    :goto_3
    iput-boolean v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->localFilterRequired:Z

    .line 217
    :cond_b
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 219
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int v0, v0, v1

    .line 220
    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    sget v2, Lcom/narvii/amino/R$id;->bg_view:I

    invoke-virtual {v1, v2}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "bg_view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 221
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 222
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    sget v3, Lcom/narvii/amino/R$id;->bg_view:I

    invoke-virtual {v0, v3}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getMentionRelatedUsersCallback()Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;->onMentionedUserListUpdated(Ljava/util/List;)V

    :cond_c
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 136
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    .line 137
    iget-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getMentionRelatedUsersCallback()Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p3, Lcom/narvii/model/User;

    invoke-interface {p1, p3}, Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;->onMentionedUserSelected(Lcom/narvii/model/User;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 140
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/user/list/UserListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 122
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 184
    invoke-virtual {p2}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {p2}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$setCurPageSize$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;I)V

    .line 186
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getPageSizeLimit$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)I

    move-result v0

    return v0
.end method

.method public final setLocalFilterRequired(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->localFilterRequired:Z

    return-void
.end method

.method public final setUserList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    return-void
.end method
