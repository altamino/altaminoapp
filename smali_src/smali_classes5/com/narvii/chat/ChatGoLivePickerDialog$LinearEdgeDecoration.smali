.class final Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatGoLivePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinearEdgeDecoration"
.end annotation


# instance fields
.field private final endPadding:I

.field private final inverted:Z

.field private final orientation:I

.field private final startPadding:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->startPadding:I

    iput p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->endPadding:I

    iput p3, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->orientation:I

    iput-boolean p4, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->inverted:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIZILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    move p2, p1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 1
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;-><init>(IIIZ)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outRect"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "view"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "parent"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "state"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    .line 30
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    const-string p4, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    .line 37
    .line 38
    .line 39
    invoke-static {p2, p4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a()I

    .line 45
    move-result p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 49
    move-result p3

    .line 50
    const/4 p4, -0x1

    .line 51
    .line 52
    if-eq p2, p4, :cond_8

    .line 53
    .line 54
    if-eqz p3, :cond_8

    .line 55
    .line 56
    if-lez p2, :cond_0

    .line 57
    .line 58
    add-int/lit8 p4, p3, -0x1

    .line 59
    .line 60
    if-ge p2, p4, :cond_0

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_0
    iget p4, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->orientation:I

    .line 64
    .line 65
    if-nez p4, :cond_4

    .line 66
    .line 67
    if-nez p2, :cond_2

    .line 68
    .line 69
    iget-boolean p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->inverted:Z

    .line 70
    .line 71
    if-nez p2, :cond_1

    .line 72
    .line 73
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->startPadding:I

    .line 74
    .line 75
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_1
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->startPadding:I

    .line 79
    .line 80
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_2
    add-int/lit8 p3, p3, -0x1

    .line 84
    .line 85
    if-ne p2, p3, :cond_8

    .line 86
    .line 87
    iget-boolean p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->inverted:Z

    .line 88
    .line 89
    if-nez p2, :cond_3

    .line 90
    .line 91
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->endPadding:I

    .line 92
    .line 93
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :cond_3
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->endPadding:I

    .line 97
    .line 98
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_4
    if-nez p2, :cond_6

    .line 102
    .line 103
    iget-boolean p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->inverted:Z

    .line 104
    .line 105
    if-nez p2, :cond_5

    .line 106
    .line 107
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->startPadding:I

    .line 108
    .line 109
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_5
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->startPadding:I

    .line 113
    .line 114
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 115
    goto :goto_0

    .line 116
    .line 117
    :cond_6
    add-int/lit8 p3, p3, -0x1

    .line 118
    .line 119
    if-ne p2, p3, :cond_8

    .line 120
    .line 121
    iget-boolean p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->inverted:Z

    .line 122
    .line 123
    if-nez p2, :cond_7

    .line 124
    .line 125
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->endPadding:I

    .line 126
    .line 127
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 128
    goto :goto_0

    .line 129
    .line 130
    :cond_7
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->endPadding:I

    .line 131
    .line 132
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 133
    :cond_8
    :goto_0
    return-void
.end method
