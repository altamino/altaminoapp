.class final Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/RecentChatListComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecentChatItemHolder"
.end annotation


# instance fields
.field private final fansOnlyMask:Landroid/view/View;

.field private final image$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/global/RecentChatListComponent;

.field private final title$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final unreadSig$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/RecentChatListComponent;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/global/RecentChatListComponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "itemView"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a06eb

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->bind(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)Lw7/m;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->image$delegate:Lw7/m;

    .line 20
    .line 21
    .line 22
    const p1, 0x7f0a0e9e

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->bind(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)Lw7/m;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->title$delegate:Lw7/m;

    .line 29
    .line 30
    .line 31
    const p1, 0x7f0a02c4

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->bind(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)Lw7/m;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->unreadSig$delegate:Lw7/m;

    .line 38
    .line 39
    .line 40
    const p1, 0x7f0a055e

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->fansOnlyMask:Landroid/view/View;

    .line 47
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/global/RecentChatListComponent;Lcom/narvii/chat/global/GlobalChatThread;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->bindData$lambda$1(Lcom/narvii/chat/global/RecentChatListComponent;Lcom/narvii/chat/global/GlobalChatThread;Landroid/view/View;)V

    return-void
.end method

.method private final bind(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)Lw7/m;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;",
            "I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bind$1;-><init>(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private static final bindData$lambda$1(Lcom/narvii/chat/global/RecentChatListComponent;Lcom/narvii/chat/global/GlobalChatThread;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$globalChatThread"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/narvii/chat/global/RecentChatListComponent;->access$getShownInAdapter$p(Lcom/narvii/chat/global/RecentChatListComponent;)Lcom/narvii/list/NVAdapter;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p0}, Lcom/narvii/chat/global/RecentChatListComponent;->access$getNavigateToChatCallback$p(Lcom/narvii/chat/global/RecentChatListComponent;)Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    iget-object p2, p1, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "chatThreadId"

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    iget p1, p1, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, p2, p1}, Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;->onNavigateToChat(Ljava/lang/String;I)V

    .line 40
    :cond_1
    return-void
.end method

.method private final getImage()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->image$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getTitle()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->title$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getUnreadSig()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->unreadSig$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final bindData(Lcom/narvii/chat/global/GlobalChatThread;)V
    .locals 5
    .param p1    # Lcom/narvii/chat/global/GlobalChatThread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "globalChatThread"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getImage()Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    instance-of v1, v0, Lcom/narvii/widget/ThumbImageView;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getImage()Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "null cannot be cast to non-null type com.narvii.widget.ThumbImageView"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 25
    .line 26
    iget-object v1, p1, Lcom/narvii/chat/global/GlobalChatThread;->icon:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getTitle()Landroid/widget/TextView;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iget-object v1, p1, Lcom/narvii/chat/global/GlobalChatThread;->title:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_0
    instance-of v1, v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v0, p1, Lcom/narvii/chat/global/GlobalChatThread;->targetUser:Lcom/narvii/model/User;

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getImage()Landroid/view/View;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    const-string v2, "null cannot be cast to non-null type com.narvii.widget.UserAvatarLayout"

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getTitle()Landroid/widget/TextView;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    const v2, 0x7f120221

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    goto :goto_1

    .line 90
    .line 91
    :cond_2
    instance-of v0, v0, Lcom/narvii/chat/MultiAvatarView;

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getImage()Landroid/view/View;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    const-string v1, "null cannot be cast to non-null type com.narvii.chat.MultiAvatarView"

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    check-cast v0, Lcom/narvii/chat/MultiAvatarView;

    .line 105
    .line 106
    iget-object v1, p1, Lcom/narvii/chat/global/GlobalChatThread;->avatarList:Ljava/util/List;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/narvii/chat/MultiAvatarView;->setAvatars(Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getTitle()Landroid/widget/TextView;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    iget-object v1, p1, Lcom/narvii/chat/global/GlobalChatThread;->title:Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->fansOnlyMask:Landroid/view/View;

    .line 121
    .line 122
    const/16 v1, 0x8

    .line 123
    const/4 v2, 0x0

    .line 124
    .line 125
    if-nez v0, :cond_4

    .line 126
    goto :goto_3

    .line 127
    .line 128
    :cond_4
    iget-boolean v3, p1, Lcom/narvii/chat/global/GlobalChatThread;->isFansOnly:Z

    .line 129
    .line 130
    if-eqz v3, :cond_5

    .line 131
    move v3, v2

    .line 132
    goto :goto_2

    .line 133
    :cond_5
    move v3, v1

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    :goto_3
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getUnreadSig()Landroid/view/View;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    iget-object v3, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    .line 143
    .line 144
    .line 145
    invoke-static {v3}, Lcom/narvii/chat/global/RecentChatListComponent;->access$getGlobalChatService$p(Lcom/narvii/chat/global/RecentChatListComponent;)Lcom/narvii/chat/util/GlobalChatService;

    .line 146
    move-result-object v3

    .line 147
    .line 148
    iget-object v4, p1, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v4}, Lcom/narvii/chat/util/GlobalChatService;->isThreadUnread(Ljava/lang/String;)Z

    .line 152
    move-result v3

    .line 153
    .line 154
    if-eqz v3, :cond_6

    .line 155
    move v1, v2

    .line 156
    .line 157
    .line 158
    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 161
    .line 162
    iget-object v1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    .line 163
    .line 164
    new-instance v2, Lcom/narvii/chat/global/j;

    .line 165
    .line 166
    .line 167
    invoke-direct {v2, v1, p1}, Lcom/narvii/chat/global/j;-><init>(Lcom/narvii/chat/global/RecentChatListComponent;Lcom/narvii/chat/global/GlobalChatThread;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method
