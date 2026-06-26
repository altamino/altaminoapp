.class public Lcom/narvii/chat/video/overlay/AvChatMessageListView;
.super Lcom/narvii/widget/recycleview/NVRecyclerView;
.source "AvChatMessageListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyLinearLayoutManager;,
        Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;,
        Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;,
        Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;,
        Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;,
        Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;
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
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 49
    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->colors:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0600a5
        0x7f0600a7
        0x7f0600a9
        0x7f0600ab
        0x7f0600ad
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    .line 53
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageIds:Ljava/util/HashSet;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->inflater:Landroid/view/LayoutInflater;

    .line 75
    new-instance p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->chatRecyclerAdapter:Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;

    .line 76
    new-instance p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyLinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0, v0}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyLinearLayoutManager;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Landroid/content/Context;IZ)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 77
    new-instance p1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x190

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 79
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 80
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->chatRecyclerAdapter:Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 40
    sget-object v0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->colors:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Ljava/lang/String;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->getRandomIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getRandomIndex(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 270
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    sget-object v0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->colors:[I

    array-length v0, v0

    rem-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public addNewMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 5

    .line 274
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const v2, 0xff02

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageIds:Ljava/util/HashSet;

    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 275
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageIds:Ljava/util/HashSet;

    iget v2, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    .line 276
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/narvii/model/ChatMessage;->_status:I

    if-nez v0, :cond_5

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageIds:Ljava/util/HashSet;

    iget v2, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 278
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ChatMessage;

    .line 279
    iget v3, v2, Lcom/narvii/model/ChatMessage;->clientRefId:I

    iget v4, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    if-ne v3, v4, :cond_2

    .line 280
    iget-object v3, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    goto :goto_0

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 285
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 286
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageIds:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_4
    iget p1, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    if-eqz p1, :cond_5

    .line 289
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_6

    .line 295
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 297
    :cond_6
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->chatRecyclerAdapter:Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 298
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

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

    .line 302
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    return-object v0
.end method

.method public setItemClickListener(Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->itemClickListener:Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;

    return-void
.end method
