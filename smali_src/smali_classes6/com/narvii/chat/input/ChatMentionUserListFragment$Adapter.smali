.class public final Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/ChatMentionUserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatMentionUserListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatMentionUserListFragment.kt\ncom/narvii/chat/input/ChatMentionUserListFragment$Adapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,248:1\n766#2:249\n857#2,2:250\n1045#2:252\n766#2:253\n857#2,2:254\n1045#2:256\n*S KotlinDebug\n*F\n+ 1 ChatMentionUserListFragment.kt\ncom/narvii/chat/input/ChatMentionUserListFragment$Adapter\n*L\n218#1:249\n218#1:250,2\n220#1:252\n221#1:253\n221#1:254,2\n224#1:256\n*E\n"
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/chat/input/ChatMentionUserListFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/input/ChatMentionUserListFragment;
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
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    .line 18
    return-void
.end method


# virtual methods
.method public createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d03af

    .line 4
    .line 5
    const-string v1, "loading"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string p2, "createView(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getActive$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Z

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getThreadId$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string v1, "threadId"

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v0, v1

    .line 31
    .line 32
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    const-string v2, "/chat/thread/"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v0, "/member"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-string v0, "type"

    .line 59
    .line 60
    const-string v1, "at"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    const-string v1, "q"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 78
    move-result-object p1

    .line 79
    return-object p1
.end method

.method protected filterYourself()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getLocalFilterRequired()Z
    .locals 1

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    const p3, 0x7f0a0681

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p3

    .line 12
    .line 13
    check-cast p3, Landroid/widget/TextView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getChatHelper$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/chat/util/ChatHelper;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const-string v0, "chatHelper"

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    .line 36
    .line 37
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getChatThread$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/model/ChatThread;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast p1, Lcom/narvii/model/User;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/util/ChatHelper;->getHostLabelName(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    const/16 p1, 0x8

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 72
    move-result p1

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 77
    .line 78
    const/high16 p3, -0x1000000

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 88
    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d059b

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->localFilterRequired:Z

    .line 22
    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 36
    .line 37
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v3

    .line 49
    const/4 v4, 0x1

    .line 50
    .line 51
    const-string v5, "nickname(...)"

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    move-object v6, v3

    .line 59
    .line 60
    check-cast v6, Lcom/narvii/model/User;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    .line 67
    invoke-static {v6, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    .line 71
    move-result-object v5

    .line 72
    .line 73
    .line 74
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v6, v5, v4}, Lkotlin/text/k;->I(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 78
    move-result v4

    .line 79
    .line 80
    if-eqz v4, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_2
    new-instance v0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter$notifyDataSetChanged$$inlined$sortedBy$1;

    .line 87
    .line 88
    .line 89
    invoke-direct {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter$notifyDataSetChanged$$inlined$sortedBy$1;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v0}, Lkotlin/collections/t;->L0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 98
    .line 99
    new-instance v3, Ljava/util/ArrayList;

    .line 100
    .line 101
    .line 102
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    move-result v6

    .line 111
    .line 112
    if-eqz v6, :cond_4

    .line 113
    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    move-result-object v6

    .line 117
    move-object v7, v6

    .line 118
    .line 119
    check-cast v7, Lcom/narvii/model/User;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 123
    move-result-object v8

    .line 124
    .line 125
    .line 126
    invoke-static {v8, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v2}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    .line 130
    move-result-object v9

    .line 131
    .line 132
    .line 133
    invoke-static {v9}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v8, v9, v4}, Lkotlin/text/k;->I(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 137
    move-result v8

    .line 138
    .line 139
    if-nez v8, :cond_3

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 143
    move-result-object v7

    .line 144
    .line 145
    .line 146
    invoke-static {v7, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v2}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    .line 150
    move-result-object v8

    .line 151
    .line 152
    .line 153
    invoke-static {v8}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v7, v8, v4}, Lkotlin/text/k;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 157
    move-result v7

    .line 158
    .line 159
    if-eqz v7, :cond_3

    .line 160
    .line 161
    .line 162
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    goto :goto_1

    .line 164
    .line 165
    :cond_4
    new-instance v1, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter$notifyDataSetChanged$$inlined$sortedBy$2;

    .line 166
    .line 167
    .line 168
    invoke-direct {v1}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter$notifyDataSetChanged$$inlined$sortedBy$2;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-static {v3, v1}, Lkotlin/collections/t;->L0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 172
    move-result-object v1

    .line 173
    .line 174
    check-cast v0, Ljava/util/Collection;

    .line 175
    .line 176
    check-cast v1, Ljava/lang/Iterable;

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v1}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 180
    move-result-object v0

    .line 181
    .line 182
    const-string v1, "null cannot be cast to non-null type java.util.ArrayList<com.narvii.model.User>{ kotlin.collections.TypeAliasesKt.ArrayList<com.narvii.model.User> }"

    .line 183
    .line 184
    .line 185
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    check-cast v0, Ljava/util/ArrayList;

    .line 188
    .line 189
    iput-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    .line 190
    .line 191
    new-instance v0, Ljava/util/ArrayList;

    .line 192
    .line 193
    .line 194
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .line 196
    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->setList(Ljava/util/ArrayList;)V

    .line 203
    :cond_5
    const/4 v0, 0x0

    .line 204
    .line 205
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->localFilterRequired:Z

    .line 206
    .line 207
    .line 208
    :cond_6
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 209
    .line 210
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    .line 217
    const v1, 0x7f070343

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 221
    move-result v0

    .line 222
    .line 223
    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 227
    move-result v1

    .line 228
    const/4 v2, 0x4

    .line 229
    .line 230
    .line 231
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 232
    move-result v1

    .line 233
    mul-int/2addr v0, v1

    .line 234
    .line 235
    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 236
    .line 237
    .line 238
    invoke-static {v1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getBinding(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/amino/databinding/FragmentMentionedMembersBinding;

    .line 239
    move-result-object v1

    .line 240
    .line 241
    iget-object v1, v1, Lcom/narvii/amino/databinding/FragmentMentionedMembersBinding;->bgView:Landroid/view/View;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 245
    move-result-object v1

    .line 246
    .line 247
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 248
    .line 249
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 250
    .line 251
    .line 252
    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getBinding(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/amino/databinding/FragmentMentionedMembersBinding;

    .line 253
    move-result-object v0

    .line 254
    .line 255
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentMentionedMembersBinding;->bgView:Landroid/view/View;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    .line 260
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getMentionRelatedUsersCallback()Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;

    .line 264
    move-result-object v0

    .line 265
    .line 266
    if-eqz v0, :cond_7

    .line 267
    .line 268
    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    .line 269
    .line 270
    .line 271
    invoke-interface {v0, v1}, Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;->onMentionedUserListUpdated(Ljava/util/List;)V

    .line 272
    :cond_7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getMentionRelatedUsersCallback()Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    check-cast p3, Lcom/narvii/model/User;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p3}, Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;->onMentionedUserSelected(Lcom/narvii/model/User;)V

    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/user/list/UserListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 2
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/UserListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 3
    invoke-virtual {p2}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$setCurPageSize$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;I)V

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getPageSizeLimit$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setLocalFilterRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->localFilterRequired:Z

    return-void
.end method

.method public final setUserList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->userList:Ljava/util/ArrayList;

    return-void
.end method
