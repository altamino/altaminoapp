.class public Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


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
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field onClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;


# direct methods
.method public constructor <init>(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;-><init>(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->onClickListener:Landroid/view/View$OnClickListener;

    .line 13
    return-void
.end method


# virtual methods
.method public getItemColor(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$500()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    add-int/lit8 p1, p1, -0x1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$500()Ljava/util/List;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    check-cast p1, Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$500()Ljava/util/List;

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
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isItemSelected(I)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$100(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    .line 17
    move-result p1

    .line 18
    xor-int/2addr p1, v1

    .line 19
    return p1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$200(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->getItemColor(I)I

    .line 29
    move-result p1

    .line 30
    .line 31
    if-ne v0, p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$100(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    .line 37
    move-result p1

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$ColorPickerItemViewHolder;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    instance-of v0, p1, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->getItemColor(I)I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->setColor(I)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->setDisabled(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p2}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->isItemSelected(I)Z

    .line 39
    move-result p2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->setSelected(Z)V

    .line 43
    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$ColorPickerItemViewHolder;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sget v1, Lcom/narvii/mediaeditor/R$layout;->caption_color_item:I

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p0, p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$ColorPickerItemViewHolder;-><init>(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;Landroid/view/View;)V

    .line 23
    return-object p2
.end method
