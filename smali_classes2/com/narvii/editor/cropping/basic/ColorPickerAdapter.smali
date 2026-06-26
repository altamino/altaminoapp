.class public Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ColorPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:[Ljava/lang/String;

.field private mListener:Lcom/narvii/editor/cropping/basic/IColorSelectedListener;

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->mSelectedIndex:I

    .line 21
    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->mData:[Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->mData:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->onBindViewHolder(Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;I)V
    .locals 2

    .line 35
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 37
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;

    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->mData:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->setColor(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->mData:[Ljava/lang/String;

    aget-object v0, v0, p2

    iput-object v0, p1, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->color:Ljava/lang/String;

    .line 39
    iput p2, p1, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->position:I

    .line 40
    iget v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->mSelectedIndex:I

    if-ne p2, v0, :cond_0

    .line 41
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;
    .locals 3

    .line 28
    new-instance p2, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/meisheeditor/R$layout;->cropping_color_picker_item_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;-><init>(Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;Landroid/view/View;)V

    .line 29
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->mListener:Lcom/narvii/editor/cropping/basic/IColorSelectedListener;

    iput-object p1, p2, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->listener:Lcom/narvii/editor/cropping/basic/IColorSelectedListener;

    return-object p2
.end method

.method public setListener(Lcom/narvii/editor/cropping/basic/IColorSelectedListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->mListener:Lcom/narvii/editor/cropping/basic/IColorSelectedListener;

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1

    .line 52
    iget v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->mSelectedIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 56
    iput p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->mSelectedIndex:I

    .line 57
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
