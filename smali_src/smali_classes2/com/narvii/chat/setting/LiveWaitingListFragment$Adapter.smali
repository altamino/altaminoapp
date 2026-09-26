.class public final Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "SourceFile"


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


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestedIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/setting/LiveWaitingListFragment;
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
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    .line 20
    .line 21
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->requestedIdSet:Ljava/util/Set;

    .line 27
    return-void
.end method

.method public static final synthetic access$getRequestedIdSet$p(Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;)Ljava/util/Set;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->requestedIdSet:Ljava/util/Set;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final addRequestedId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "uid"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->requestedIdSet:Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$updateClearBtn(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    .line 19
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->requestedIdSet:Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$updateClearBtn(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    .line 19
    return-void
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "UserList"

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$WaitingViewHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->getItem(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v1, "null cannot be cast to non-null type com.narvii.model.User"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/model/User;

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$WaitingViewHolder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, p2}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$WaitingViewHolder;->bind(Lcom/narvii/model/User;I)V

    .line 26
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p1, v0}, Lcom/narvii/amino/databinding/LiveWaitingItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/LiveWaitingItemBinding;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string p2, "inflate(...)"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    new-instance p2, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$WaitingViewHolder;

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$WaitingViewHolder;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;Lcom/narvii/amino/databinding/LiveWaitingItemBinding;)V

    .line 31
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
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
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    const/4 v2, 0x1

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    goto :goto_2

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v3

    .line 22
    .line 23
    .line 24
    const v4, 0x7f0a002f

    .line 25
    .line 26
    if-ne v3, v4, :cond_3

    .line 27
    .line 28
    instance-of v0, p5, Lcom/narvii/chat/setting/widget/WaitListAcceptView;

    .line 29
    .line 30
    if-eqz v0, :cond_d

    .line 31
    .line 32
    instance-of v0, p3, Lcom/narvii/model/User;

    .line 33
    .line 34
    if-eqz v0, :cond_d

    .line 35
    move-object v0, p5

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/chat/setting/widget/WaitListAcceptView;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/chat/setting/widget/WaitListAcceptView;->isRequesting()Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-nez v0, :cond_d

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$isHostOrCoHost$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Z

    .line 49
    move-result p1

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    const-string p1, "AcceptButton"

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 57
    move-result-object p1

    .line 58
    move-object p2, p3

    .line 59
    .line 60
    check-cast p2, Lcom/narvii/model/NVObject;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 70
    .line 71
    check-cast p3, Lcom/narvii/model/User;

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p3}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$acceptUser(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_2
    const-string p1, "CancelButton"

    .line 78
    .line 79
    .line 80
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 81
    move-result-object p1

    .line 82
    move-object p2, p3

    .line 83
    .line 84
    check-cast p2, Lcom/narvii/model/NVObject;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 94
    .line 95
    check-cast p3, Lcom/narvii/model/User;

    .line 96
    .line 97
    .line 98
    invoke-static {p1, p3}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$cancelJoin(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V

    .line 99
    :goto_1
    return v2

    .line 100
    .line 101
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 102
    goto :goto_3

    .line 103
    .line 104
    .line 105
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 106
    move-result v3

    .line 107
    .line 108
    .line 109
    const v4, 0x7f0a0171

    .line 110
    .line 111
    if-ne v3, v4, :cond_5

    .line 112
    goto :goto_4

    .line 113
    .line 114
    :cond_5
    :goto_3
    if-nez v1, :cond_6

    .line 115
    .line 116
    goto/16 :goto_8

    .line 117
    .line 118
    .line 119
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 120
    move-result v1

    .line 121
    .line 122
    .line 123
    const v3, 0x7f0a09f9

    .line 124
    .line 125
    if-ne v1, v3, :cond_d

    .line 126
    .line 127
    :goto_4
    new-instance p1, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 128
    .line 129
    iget-object p2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 130
    .line 131
    const-string p4, "null cannot be cast to non-null type com.narvii.model.User"

    .line 132
    .line 133
    .line 134
    invoke-static {p3, p4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    move-object p4, p3

    .line 136
    .line 137
    check-cast p4, Lcom/narvii/model/User;

    .line 138
    .line 139
    .line 140
    invoke-direct {p1, p2, p4}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V

    .line 141
    .line 142
    iget-object p2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 143
    .line 144
    .line 145
    invoke-static {p2}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getThread$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/ChatThread;

    .line 146
    move-result-object p2

    .line 147
    .line 148
    const-string p5, "thread"

    .line 149
    .line 150
    if-nez p2, :cond_7

    .line 151
    .line 152
    .line 153
    invoke-static {p5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 154
    move-object p2, v0

    .line 155
    .line 156
    .line 157
    :cond_7
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 158
    move-result p2

    .line 159
    .line 160
    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 161
    .line 162
    .line 163
    invoke-static {v1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getThread$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/ChatThread;

    .line 164
    move-result-object v1

    .line 165
    .line 166
    if-nez v1, :cond_8

    .line 167
    .line 168
    .line 169
    invoke-static {p5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 170
    move-object v1, v0

    .line 171
    .line 172
    :cond_8
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 173
    .line 174
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 175
    .line 176
    iget-object p4, p4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    invoke-static {v1, p4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    move-result p4

    .line 181
    .line 182
    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 183
    .line 184
    const-string v3, "id"

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 189
    .line 190
    iget-object v3, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 191
    .line 192
    .line 193
    invoke-static {v3}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getThread$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/ChatThread;

    .line 194
    move-result-object v3

    .line 195
    .line 196
    if-nez v3, :cond_9

    .line 197
    .line 198
    .line 199
    invoke-static {p5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 200
    goto :goto_5

    .line 201
    :cond_9
    move-object v0, v3

    .line 202
    .line 203
    .line 204
    :goto_5
    invoke-virtual {p1, v1, p2, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 205
    .line 206
    new-instance p5, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;

    .line 207
    .line 208
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 209
    .line 210
    .line 211
    invoke-direct {p5, p0, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, p5}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->clickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 215
    move-result-object p5

    .line 216
    const/4 v0, 0x0

    .line 217
    const/4 v1, 0x5

    .line 218
    .line 219
    if-eqz p4, :cond_b

    .line 220
    .line 221
    if-eq p2, v1, :cond_a

    .line 222
    goto :goto_6

    .line 223
    :cond_a
    move p4, v0

    .line 224
    goto :goto_7

    .line 225
    :cond_b
    :goto_6
    move p4, v2

    .line 226
    .line 227
    .line 228
    :goto_7
    invoke-virtual {p5, p4}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->muteVideoWhenBlockUser(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 229
    move-result-object p4

    .line 230
    .line 231
    if-eq p2, v1, :cond_c

    .line 232
    move v0, v2

    .line 233
    .line 234
    .line 235
    :cond_c
    invoke-virtual {p4, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->needVideoFrameWhenFlag(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->build()Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 239
    move-result-object p1

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->show()V

    .line 243
    .line 244
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, p3, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 248
    return v2

    .line 249
    .line 250
    .line 251
    :cond_d
    :goto_8
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 252
    move-result p1

    .line 253
    return p1
.end method

.method public final removeRequestedId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "uid"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->requestedIdSet:Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$updateClearBtn(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    .line 19
    return-void
.end method

.method public final removeUserInList(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "uid"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->requestedIdSet:Ljava/util/Set;

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$removeUserInList$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$removeUserInList$1;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/collections/t;->I(Ljava/lang/Iterable;Le8/l;)Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$removeUserInList$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$removeUserInList$2;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/collections/t;->J(Ljava/util/List;Le8/l;)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$updateClearBtn(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    .line 34
    return-void
.end method

.method public final setWaitingUserList(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "users"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->waitingUserList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$updateClearBtn(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    .line 24
    return-void
.end method
