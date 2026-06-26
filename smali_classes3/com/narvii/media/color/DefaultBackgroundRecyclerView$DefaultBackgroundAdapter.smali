.class public Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DefaultBackgroundRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/color/DefaultBackgroundRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultBackgroundAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemDividerViewHolder;,
        Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_BUILTIN:I = 0x2

.field private static final ITEM_TYPE_CUSTOM:I = 0x1

.field private static final ITEM_TYPE_DIVIDER:I = 0x0

.field private static final ITEM_TYPE_NONE:I = -0x1

.field private static final VIEW_TYPE_DIVIDER:I = 0x1

.field private static final VIEW_TYPE_NORMAL:I


# instance fields
.field final synthetic this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;


# direct methods
.method public constructor <init>(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemColor(I)I
    .locals 4

    const/4 v0, 0x0

    .line 145
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 147
    iget-object v1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-static {v1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->access$000(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 149
    iget-object v1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-static {v1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->access$000(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->isShownDivider()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr p1, v2

    .line 150
    invoke-static {}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->access$100()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_2
    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 128
    invoke-static {}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-static {v1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->access$000(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->isShownDivider()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemType(I)I
    .locals 1

    if-ltz p1, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemCount()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-static {v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->access$000(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->isShownDivider()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-static {v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->access$000(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x2

    return p1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 159
    invoke-virtual {p0, p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemType(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isShownDivider()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-static {v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->access$000(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 178
    instance-of v0, p1, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;

    if-eqz v0, :cond_3

    .line 179
    check-cast p1, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;

    invoke-static {p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->access$200(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    invoke-virtual {p0, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemType(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    .line 182
    invoke-static {p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->access$400(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-static {v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->access$300(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemColor(I)I

    move-result p2

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 183
    :cond_1
    invoke-virtual {p0, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 184
    invoke-static {p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->access$400(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-static {v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->access$300(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemColor(I)I

    move-result p2

    if-ne v0, p2, :cond_2

    iget-object p2, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-static {p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->access$000(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-static {v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->access$300(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 186
    :cond_3
    instance-of p1, p1, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemDividerViewHolder;

    :cond_4
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 170
    new-instance p2, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;

    iget-object v1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$layout;->color_picker_default_item_layout:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;-><init>(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;Landroid/view/View;)V

    return-object p2

    .line 172
    :cond_0
    new-instance p2, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemDividerViewHolder;

    iget-object v1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$layout;->color_picker_default_item_divider_layout:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemDividerViewHolder;-><init>(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;Landroid/view/View;)V

    return-object p2
.end method
