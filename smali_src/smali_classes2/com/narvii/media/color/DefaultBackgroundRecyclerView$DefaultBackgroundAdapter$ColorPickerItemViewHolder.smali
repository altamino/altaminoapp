.class public Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->this$1:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    sget v0, Lcom/narvii/lib/R$id;->item_color_drawable:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->colorDrawableView:Lcom/narvii/widget/NVImageView;

    .line 16
    .line 17
    sget v0, Lcom/narvii/lib/R$id;->item_color_selected:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->colorSelected:Landroid/view/View;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;)Lcom/narvii/widget/NVImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->colorDrawableView:Lcom/narvii/widget/NVImageView;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->colorSelected:Landroid/view/View;

    return-object p0
.end method
