.class public Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DefaultBackgroundRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorPickerItemViewHolder"
.end annotation


# instance fields
.field private final colorDrawableView:Lcom/narvii/widget/NVImageView;

.field private final colorSelected:Landroid/view/View;

.field final synthetic this$1:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;Landroid/view/View;)V
    .locals 1

    .line 195
    iput-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->this$1:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    .line 196
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 197
    sget v0, Lcom/narvii/lib/R$id;->item_color_drawable:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->colorDrawableView:Lcom/narvii/widget/NVImageView;

    .line 198
    sget v0, Lcom/narvii/lib/R$id;->item_color_selected:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->colorSelected:Landroid/view/View;

    .line 199
    iget-object p1, p1, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;)Lcom/narvii/widget/NVImageView;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->colorDrawableView:Lcom/narvii/widget/NVImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;)Landroid/view/View;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->colorSelected:Landroid/view/View;

    return-object p0
.end method
