.class Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "AvChatMessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/AvChatMessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLinearLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Landroid/content/Context;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyLinearLayoutManager;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 308
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Landroid/content/Context;IZ)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyLinearLayoutManager;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 312
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 318
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
