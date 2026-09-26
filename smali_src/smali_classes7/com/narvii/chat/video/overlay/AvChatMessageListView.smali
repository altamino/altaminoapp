.class public Lcom/narvii/chat/video/overlay/AvChatMessageListView;
.super Lcom/narvii/widget/recycleview/NVRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;,
        Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;,
        Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyLinearLayoutManager;,
        Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;,
        Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;,
        Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0x3e8

.field private static final NICKNAME_ELLIPSIS_THRESHHOLD:I = 0xf

.field private static final TYPE_GENERAL_IMAGE:I = 0x1

.field private static final TYPE_GENERAL_TEXT:I = 0x0

.field private static final TYPE_IGNORE:I = 0x2

.field private static final TYPE_WELCOME_MESSAGE:I = 0x3

.field private static final colors:[I


# instance fields
.field chatRecyclerAdapter:Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;

.field inflater:Landroid/view/LayoutInflater;

.field itemClickListener:Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;

.field messageIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f0600cb

    const v1, 0x7f0600cd

    const v2, 0x7f0600c5

    const v3, 0x7f0600c7

    const v4, 0x7f0600c9

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->colors:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    .line 4
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageIds:Ljava/util/HashSet;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->inflater:Landroid/view/LayoutInflater;

    .line 6
    new-instance p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->chatRecyclerAdapter:Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;

    .line 7
    new-instance p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyLinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0, v0}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyLinearLayoutManager;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Landroid/content/Context;IZ)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x190

    .line 9
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->chatRecyclerAdapter:Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->getRandomIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic c()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->colors:[I

    return-object v0
.end method

.method private getRandomIndex(Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result p1

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->colors:[I

    .line 11
    array-length v0, v0

    .line 12
    rem-int/2addr p1, v0

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method


# virtual methods
.method public addNewMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 5

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    .line 9
    const v1, 0xff02

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/4 v1, 0x3

    .line 15
    .line 16
    if-ne v0, v1, :cond_5

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageIds:Ljava/util/HashSet;

    .line 19
    .line 20
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_5

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageIds:Ljava/util/HashSet;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget v0, p1, Lcom/narvii/model/ChatMessage;->_status:I

    .line 45
    .line 46
    if-nez v0, :cond_5

    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageIds:Ljava/util/HashSet;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    check-cast v1, Lcom/narvii/model/ChatMessage;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 86
    move-result v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 90
    move-result v4

    .line 91
    .line 92
    if-ne v3, v4, :cond_2

    .line 93
    .line 94
    iget-object v3, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v3, v1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 103
    .line 104
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageIds:Ljava/util/HashSet;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 115
    move-result v0

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageIds:Ljava/util/HashSet;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 123
    move-result p1

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    .line 133
    .line 134
    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 136
    move-result p1

    .line 137
    .line 138
    const/16 v0, 0x3e8

    .line 139
    .line 140
    if-le p1, v0, :cond_6

    .line 141
    .line 142
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    .line 143
    .line 144
    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 146
    move-result v0

    .line 147
    .line 148
    add-int/lit8 v0, v0, -0x1

    .line 149
    .line 150
    .line 151
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 152
    goto :goto_1

    .line 153
    .line 154
    :cond_6
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->chatRecyclerAdapter:Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 161
    return-void
.end method

.method public getMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    return-object v0
.end method

.method public setItemClickListener(Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->itemClickListener:Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;

    return-void
.end method
