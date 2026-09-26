.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
.super Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatedStateListState"
.end annotation


# static fields
.field private static final REVERSED_BIT:J = 0x100000000L

.field private static final REVERSIBLE_FLAG_BIT:J = 0x200000000L


# instance fields
.field mStateIds:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTransitions:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V
    .locals 0
    .param p1    # Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    new-instance p1, Landroidx/collection/LongSparseArray;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    .line 22
    .line 23
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    .line 29
    :goto_0
    return-void
.end method

.method private static E(II)J
    .locals 2

    .line 1
    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method C([ILandroid/graphics/drawable/Drawable;I)I
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->A([ILandroid/graphics/drawable/Drawable;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-object p2, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1, p3}, Landroidx/collection/SparseArrayCompat;->o(ILjava/lang/Object;)V

    .line 14
    return p1
.end method

.method D(IILandroid/graphics/drawable/Drawable;Z)I
    .locals 9
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p3}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->a(Landroid/graphics/drawable/Drawable;)I

    .line 4
    move-result p3

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->E(II)J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v2, 0x200000000L

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    :goto_0
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    .line 21
    int-to-long v5, p3

    .line 22
    .line 23
    or-long v7, v5, v2

    .line 24
    .line 25
    .line 26
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    move-result-object v7

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v0, v1, v7}, Landroidx/collection/LongSparseArray;->b(JLjava/lang/Object;)V

    .line 31
    .line 32
    if-eqz p4, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-static {p2, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->E(II)J

    .line 36
    move-result-wide p1

    .line 37
    .line 38
    iget-object p4, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const-wide v0, 0x100000000L

    .line 44
    or-long/2addr v0, v5

    .line 45
    or-long/2addr v0, v2

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4, p1, p2, v0}, Landroidx/collection/LongSparseArray;->b(JLjava/lang/Object;)V

    .line 53
    :cond_1
    return p3
.end method

.method F(I)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-gez p1, :cond_0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1, v0}, Landroidx/collection/SparseArrayCompat;->k(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v0

    .line 21
    :goto_0
    return v0
.end method

.method G([I)I
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->B([I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    return p1

    .line 8
    .line 9
    :cond_0
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->B([I)I

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method H(II)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->E(II)J

    .line 4
    move-result-wide p1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    .line 7
    .line 8
    const-wide/16 v1, -0x1

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, v1}, Landroidx/collection/LongSparseArray;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 22
    move-result-wide p1

    .line 23
    long-to-int p1, p1

    .line 24
    return p1
.end method

.method I(II)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->E(II)J

    .line 4
    move-result-wide p1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    .line 7
    .line 8
    const-wide/16 v1, -0x1

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, v1}, Landroidx/collection/LongSparseArray;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 22
    move-result-wide p1

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    const-wide v0, 0x100000000L

    .line 28
    and-long/2addr p1, v0

    .line 29
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    cmp-long p1, p1, v0

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    return p1
.end method

.method J(II)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->E(II)J

    .line 4
    move-result-wide p1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    .line 7
    .line 8
    const-wide/16 v1, -0x1

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, v1}, Landroidx/collection/LongSparseArray;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 22
    move-result-wide p1

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    const-wide v0, 0x200000000L

    .line 28
    and-long/2addr p1, v0

    .line 29
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    cmp-long p1, p1, v0

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    return p1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method s()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->e()Landroidx/collection/LongSparseArray;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->e()Landroidx/collection/SparseArrayCompat;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    .line 17
    return-void
.end method
