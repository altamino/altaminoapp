.class public Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


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
        Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;,
        Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemDividerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getItemColor(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemType(I)I

    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->c(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 v2, 0x2

    .line 27
    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->c(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 38
    move-result v1

    .line 39
    sub-int/2addr p1, v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->isShownDivider()Z

    .line 43
    move-result v1

    .line 44
    sub-int/2addr p1, v1

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->d()Ljava/util/List;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    check-cast p1, Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return p1

    .line 60
    :catch_0
    :cond_1
    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->d()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->c(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->isShownDivider()Z

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public getItemType(I)I
    .locals 1

    .line 1
    .line 2
    if-ltz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-le p1, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->c(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-ge p1, v0, :cond_1

    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->isShownDivider()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->c(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    move-result v0

    .line 40
    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    const/4 p1, 0x0

    .line 43
    return p1

    .line 44
    :cond_2
    const/4 p1, 0x2

    .line 45
    return p1

    .line 46
    :cond_3
    :goto_0
    const/4 p1, -0x1

    .line 47
    return p1
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemType(I)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    const/4 v1, 0x2

    .line 9
    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return v0

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public isShownDivider()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->c(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 13
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->a(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;)Lcom/narvii/widget/NVImageView;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemColor(I)I

    .line 16
    move-result v2

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemType(I)I

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    .line 29
    const/16 v2, 0x8

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->b(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->b(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)I

    .line 42
    move-result v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemColor(I)I

    .line 46
    move-result p2

    .line 47
    .line 48
    if-ne v0, p2, :cond_0

    .line 49
    move v2, v3

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemType(I)I

    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x2

    .line 59
    .line 60
    if-ne v0, v1, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;->b(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->b(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)I

    .line 70
    move-result v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemColor(I)I

    .line 74
    move-result p2

    .line 75
    .line 76
    if-ne v0, p2, :cond_2

    .line 77
    .line 78
    iget-object p2, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 79
    .line 80
    .line 81
    invoke-static {p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->c(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->b(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)I

    .line 88
    move-result v0

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 96
    move-result p2

    .line 97
    .line 98
    if-nez p2, :cond_2

    .line 99
    move v2, v3

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_3
    instance-of p1, p1, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemDividerViewHolder;

    .line 106
    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    sget v2, Lcom/narvii/lib/R$layout;->color_picker_default_item_layout:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, p0, p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemViewHolder;-><init>(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;Landroid/view/View;)V

    .line 25
    return-object p2

    .line 26
    .line 27
    :cond_0
    new-instance p2, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemDividerViewHolder;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    sget v2, Lcom/narvii/lib/R$layout;->color_picker_default_item_divider_layout:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-direct {p2, p0, p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter$ColorPickerItemDividerViewHolder;-><init>(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;Landroid/view/View;)V

    .line 47
    return-object p2
.end method
