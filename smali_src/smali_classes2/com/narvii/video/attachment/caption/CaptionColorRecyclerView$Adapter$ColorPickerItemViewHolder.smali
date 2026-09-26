.class public Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$ColorPickerItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$ColorPickerItemViewHolder;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->onClickListener:Landroid/view/View$OnClickListener;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    return-void
.end method
