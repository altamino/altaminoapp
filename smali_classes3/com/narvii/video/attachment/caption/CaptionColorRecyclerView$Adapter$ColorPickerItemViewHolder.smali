.class public Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$ColorPickerItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CaptionColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorPickerItemViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;


# direct methods
.method public constructor <init>(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;Landroid/view/View;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$ColorPickerItemViewHolder;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 165
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 166
    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
