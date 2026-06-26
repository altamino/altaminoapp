.class public Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CaptionColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$ColorPickerItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field onClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;


# direct methods
.method public constructor <init>(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 94
    new-instance p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;-><init>(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;)V

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getItemColor(I)I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_0
    invoke-static {}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$500()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 128
    :cond_1
    invoke-static {}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$500()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getItemCount()I
    .locals 2

    .line 116
    invoke-static {}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$500()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-static {v1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isItemSelected(I)Z
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-static {p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$100(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$200(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->getItemColor(I)I

    move-result p1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-static {p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$100(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 152
    instance-of v0, p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$ColorPickerItemViewHolder;

    if-eqz v0, :cond_1

    .line 153
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;

    if-eqz v0, :cond_1

    .line 154
    check-cast p1, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;

    .line 155
    invoke-virtual {p0, p2}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->getItemColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->setColor(I)V

    .line 156
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->setDisabled(Z)V

    .line 157
    invoke-virtual {p0, p2}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->isItemSelected(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 138
    new-instance p2, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$ColorPickerItemViewHolder;

    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$layout;->caption_color_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$ColorPickerItemViewHolder;-><init>(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;Landroid/view/View;)V

    return-object p2
.end method
