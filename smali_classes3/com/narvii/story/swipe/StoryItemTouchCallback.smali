.class public final Lcom/narvii/story/swipe/StoryItemTouchCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "StoryItemTouchCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/swipe/StoryItemTouchCallback$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/story/swipe/StoryItemTouchCallback$Companion;

.field private static final SWIPE_DOWN:I = 0x2

.field private static final SWIPE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StoryItemTouchCallback"


# instance fields
.field private swipeListener:Lcom/narvii/story/swipe/IStorySwipeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/story/swipe/StoryItemTouchCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/story/swipe/StoryItemTouchCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/story/swipe/StoryItemTouchCallback;->Companion:Lcom/narvii/story/swipe/StoryItemTouchCallback$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x3

    .line 22
    invoke-static {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public final getSwipeListener()Lcom/narvii/story/swipe/IStorySwipeListener;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/narvii/story/swipe/StoryItemTouchCallback;->swipeListener:Lcom/narvii/story/swipe/IStorySwipeListener;

    return-object v0
.end method

.method public getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x3e4ccccd    # 0.2f

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8

    const-string p4, "c"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "recyclerView"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "viewHolder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    move v7, p7

    .line 62
    invoke-super/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/swipe/StoryItemTouchCallback;->swipeListener:Lcom/narvii/story/swipe/IStorySwipeListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/narvii/story/swipe/IStorySwipeListener;->onSwipeDown()V

    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/swipe/StoryItemTouchCallback;->swipeListener:Lcom/narvii/story/swipe/IStorySwipeListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/narvii/story/swipe/IStorySwipeListener;->onSwipeUp()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setSwipeListener(Lcom/narvii/story/swipe/IStorySwipeListener;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/narvii/story/swipe/StoryItemTouchCallback;->swipeListener:Lcom/narvii/story/swipe/IStorySwipeListener;

    return-void
.end method
