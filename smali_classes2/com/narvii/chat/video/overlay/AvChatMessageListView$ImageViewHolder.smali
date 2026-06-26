.class Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AvChatMessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/AvChatMessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageViewHolder"
.end annotation


# instance fields
.field img:Lcom/narvii/widget/NVImageView;

.field nickName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Landroid/view/View;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 260
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090764

    .line 261
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    const p1, 0x7f090571

    .line 262
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->img:Lcom/narvii/widget/NVImageView;

    return-void
.end method
