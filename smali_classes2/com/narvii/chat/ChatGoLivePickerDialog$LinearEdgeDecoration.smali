.class final Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ChatGoLivePickerDialog.kt"


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

    .line 216
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->startPadding:I

    iput p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->endPadding:I

    iput p3, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->orientation:I

    iput-boolean p4, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->inverted:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 216
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;-><init>(IIIZ)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 219
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 220
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_9

    check-cast p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 221
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p2

    .line 222
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p3

    const/4 p4, -0x1

    if-eq p2, p4, :cond_8

    if-eqz p3, :cond_8

    if-lez p2, :cond_0

    add-int/lit8 p4, p3, -0x1

    if-ge p2, p4, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iget p4, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->orientation:I

    if-nez p4, :cond_4

    if-nez p2, :cond_2

    .line 230
    iget-boolean p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->inverted:Z

    if-nez p2, :cond_1

    .line 231
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->startPadding:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 233
    :cond_1
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->startPadding:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_8

    .line 236
    iget-boolean p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->inverted:Z

    if-nez p2, :cond_3

    .line 237
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->endPadding:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 239
    :cond_3
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->endPadding:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_4
    if-nez p2, :cond_6

    .line 244
    iget-boolean p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->inverted:Z

    if-nez p2, :cond_5

    .line 245
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->startPadding:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 247
    :cond_5
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->startPadding:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_6
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_8

    .line 250
    iget-boolean p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->inverted:Z

    if-nez p2, :cond_7

    .line 251
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->endPadding:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 253
    :cond_7
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;->endPadding:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_8
    :goto_0
    return-void

    .line 220
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.RecyclerView.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method
