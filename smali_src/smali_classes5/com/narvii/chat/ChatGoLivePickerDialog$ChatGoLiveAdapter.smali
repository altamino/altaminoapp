.class final Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "SourceFile"


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


# instance fields
.field private final dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private itemMargin:I

.field private final itemWidth:I

.field private scrollOffset:I

.field private selectedPos:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->itemWidth:I

    .line 11
    .line 12
    new-instance p2, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->dataList:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const/high16 p2, 0x41200000    # 10.0f

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 27
    move-result p1

    .line 28
    .line 29
    iput p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->itemMargin:I

    .line 30
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->dataList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->dataList:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Ljava/lang/Number;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 17
    move-result v0

    .line 18
    .line 19
    iget v1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->itemWidth:I

    .line 20
    int-to-float v1, v1

    .line 21
    .line 22
    .line 23
    const v2, 0x3f2aaaab

    .line 24
    mul-float/2addr v1, v2

    .line 25
    .line 26
    iget v3, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->itemMargin:I

    .line 27
    int-to-float v3, v3

    .line 28
    add-float/2addr v1, v3

    .line 29
    .line 30
    iget v3, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->scrollOffset:I

    .line 31
    int-to-float v3, v3

    .line 32
    int-to-float p2, p2

    .line 33
    mul-float/2addr p2, v1

    .line 34
    sub-float/2addr v3, p2

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 38
    move-result p2

    .line 39
    const/4 v3, 0x0

    .line 40
    .line 41
    cmpg-float v3, v3, p2

    .line 42
    .line 43
    if-gtz v3, :cond_2

    .line 44
    .line 45
    cmpg-float v3, p2, v1

    .line 46
    .line 47
    if-gtz v3, :cond_2

    .line 48
    const/4 v3, 0x4

    .line 49
    int-to-float v3, v3

    .line 50
    .line 51
    div-float v4, v1, v3

    .line 52
    .line 53
    cmpg-float v4, p2, v4

    .line 54
    .line 55
    if-gez v4, :cond_0

    .line 56
    .line 57
    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    const/high16 v4, 0x40400000    # 3.0f

    .line 61
    mul-float/2addr v4, v1

    .line 62
    div-float/2addr v4, v3

    .line 63
    .line 64
    cmpl-float v3, p2, v4

    .line 65
    .line 66
    if-lez v3, :cond_1

    .line 67
    goto :goto_0

    .line 68
    .line 69
    .line 70
    :cond_1
    const v2, -0x40d55556

    .line 71
    mul-float/2addr p2, v2

    .line 72
    div-float/2addr p2, v1

    .line 73
    .line 74
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 75
    add-float/2addr p2, v1

    .line 76
    .line 77
    .line 78
    const v1, 0x3eaaaaab

    .line 79
    .line 80
    sub-float v2, p2, v1

    .line 81
    .line 82
    :cond_2
    :goto_0
    check-cast p1, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0, v2}, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->updateView(IF)V

    .line 86
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0d00cc

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    const p2, 0x7f0a039a

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget v1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->itemWidth:I

    .line 35
    .line 36
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 37
    int-to-float v1, v1

    .line 38
    .line 39
    .line 40
    const v2, 0x3fbadc7f

    .line 41
    div-float/2addr v1, v2

    .line 42
    float-to-int v1, v1

    .line 43
    .line 44
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    new-instance p2, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, p1}, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;-><init>(Landroid/view/View;)V

    .line 56
    return-object p2
.end method

.method public final setDataList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "list"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->dataList:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->dataList:Ljava/util/List;

    .line 13
    .line 14
    check-cast p1, Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 21
    return-void
.end method

.method public final updateSelectedPosition(II)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->selectedPos:I

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->scrollOffset:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    return-void
.end method
