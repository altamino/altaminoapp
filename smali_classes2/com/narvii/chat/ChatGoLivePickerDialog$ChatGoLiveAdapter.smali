.class final Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "ChatGoLivePickerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatGoLivePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChatGoLiveAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatGoLivePickerDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatGoLivePickerDialog.kt\ncom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter\n*L\n1#1,259:1\n*E\n"
.end annotation


# instance fields
.field private final dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private itemMargin:I

.field private final itemWidth:I

.field private scrollOffset:I

.field private selectedPos:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->itemWidth:I

    .line 127
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->dataList:Ljava/util/List;

    .line 130
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->itemMargin:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 159
    iget v1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->itemWidth:I

    int-to-float v1, v1

    const v2, 0x3f2aaaab

    mul-float v1, v1, v2

    iget v3, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->itemMargin:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 160
    iget v3, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->scrollOffset:I

    int-to-float v3, v3

    int-to-float p2, p2

    mul-float p2, p2, v1

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_2

    cmpg-float v3, p2, v1

    if-gtz v3, :cond_2

    const/4 v3, 0x4

    int-to-float v3, v3

    div-float v4, v1, v3

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, v1

    div-float/2addr v4, v3

    cmpl-float v3, p2, v4

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    const v2, -0x40d55556

    mul-float p2, p2, v2

    div-float/2addr p2, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    add-float/2addr p2, v1

    const v1, 0x3eaaaaab

    sub-float v2, p2, v1

    .line 172
    :cond_2
    :goto_0
    check-cast p1, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;

    invoke-virtual {p1, v0, v2}, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->updateView(IF)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00b6

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0902ce

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "container"

    .line 135
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 136
    iget v1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->itemWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    const v2, 0x3fbadc7f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 137
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance p2, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;-><init>(Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final updateSelectedPosition(II)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->selectedPos:I

    .line 151
    iput p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->scrollOffset:I

    .line 152
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
