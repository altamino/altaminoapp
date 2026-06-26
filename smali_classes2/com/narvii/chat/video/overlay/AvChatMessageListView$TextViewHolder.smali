.class Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AvChatMessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/AvChatMessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

.field public tvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Landroid/view/View;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 241
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902d0

    .line 242
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    return-void
.end method
