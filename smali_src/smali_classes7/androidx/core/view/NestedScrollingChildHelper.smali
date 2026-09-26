.class public Landroidx/core/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field private mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 6
    return-void
.end method

.method private h(IIII[II[I)Z
    .locals 15
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->m()Z

    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    if-eqz v2, :cond_6

    .line 11
    .line 12
    move/from16 v2, p6

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v2}, Landroidx/core/view/NestedScrollingChildHelper;->i(I)Landroid/view/ViewParent;

    .line 16
    move-result-object v4

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    return v3

    .line 20
    :cond_0
    const/4 v12, 0x1

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    if-nez p3, :cond_2

    .line 27
    .line 28
    if-eqz p4, :cond_1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    if-eqz v1, :cond_6

    .line 32
    .line 33
    aput v3, v1, v3

    .line 34
    .line 35
    aput v3, v1, v12

    .line 36
    goto :goto_3

    .line 37
    .line 38
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget-object v5, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 44
    .line 45
    aget v5, v1, v3

    .line 46
    .line 47
    aget v6, v1, v12

    .line 48
    move v13, v5

    .line 49
    move v14, v6

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    move v13, v3

    .line 52
    move v14, v13

    .line 53
    .line 54
    :goto_1
    if-nez p7, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Landroidx/core/view/NestedScrollingChildHelper;->j()[I

    .line 58
    move-result-object v5

    .line 59
    .line 60
    aput v3, v5, v3

    .line 61
    .line 62
    aput v3, v5, v12

    .line 63
    move-object v11, v5

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_4
    move-object/from16 v11, p7

    .line 67
    .line 68
    :goto_2
    iget-object v5, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 69
    .line 70
    move/from16 v6, p1

    .line 71
    .line 72
    move/from16 v7, p2

    .line 73
    .line 74
    move/from16 v8, p3

    .line 75
    .line 76
    move/from16 v9, p4

    .line 77
    .line 78
    move/from16 v10, p6

    .line 79
    .line 80
    .line 81
    invoke-static/range {v4 .. v11}, Landroidx/core/view/ViewParentCompat;->d(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    iget-object v2, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 89
    .line 90
    aget v2, v1, v3

    .line 91
    sub-int/2addr v2, v13

    .line 92
    .line 93
    aput v2, v1, v3

    .line 94
    .line 95
    aget v2, v1, v12

    .line 96
    sub-int/2addr v2, v14

    .line 97
    .line 98
    aput v2, v1, v12

    .line 99
    :cond_5
    return v12

    .line 100
    :cond_6
    :goto_3
    return v3
.end method

.method private i(I)Landroid/view/ViewParent;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    return-object p1

    :cond_1
    iget-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    return-object p1
.end method

.method private j()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    :cond_0
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    return-object v0
.end method

.method private o(ILandroid/view/ViewParent;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(FFZ)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->m()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->i(I)Landroid/view/ViewParent;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, p1, p2, p3}, Landroidx/core/view/ViewParentCompat;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    return v1
.end method

.method public b(FF)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->m()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->i(I)Landroid/view/ViewParent;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, p1, p2}, Landroidx/core/view/ViewParentCompat;->b(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    return v1
.end method

.method public c(II[I[I)Z
    .locals 6
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->d(II[I[II)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public d(II[I[II)Z
    .locals 10
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->m()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p5}, Landroidx/core/view/NestedScrollingChildHelper;->i(I)Landroid/view/ViewParent;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    return v1

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    if-eqz p4, :cond_7

    .line 23
    .line 24
    aput v1, p4, v1

    .line 25
    .line 26
    aput v1, p4, v0

    .line 27
    goto :goto_2

    .line 28
    .line 29
    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 35
    .line 36
    aget v3, p4, v1

    .line 37
    .line 38
    aget v4, p4, v0

    .line 39
    move v8, v3

    .line 40
    move v9, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move v8, v1

    .line 43
    move v9, v8

    .line 44
    .line 45
    :goto_1
    if-nez p3, :cond_4

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Landroidx/core/view/NestedScrollingChildHelper;->j()[I

    .line 49
    move-result-object p3

    .line 50
    .line 51
    :cond_4
    aput v1, p3, v1

    .line 52
    .line 53
    aput v1, p3, v0

    .line 54
    .line 55
    iget-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 56
    move v4, p1

    .line 57
    move v5, p2

    .line 58
    move-object v6, p3

    .line 59
    move v7, p5

    .line 60
    .line 61
    .line 62
    invoke-static/range {v2 .. v7}, Landroidx/core/view/ViewParentCompat;->c(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 63
    .line 64
    if-eqz p4, :cond_5

    .line 65
    .line 66
    iget-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 70
    .line 71
    aget p1, p4, v1

    .line 72
    sub-int/2addr p1, v8

    .line 73
    .line 74
    aput p1, p4, v1

    .line 75
    .line 76
    aget p1, p4, v0

    .line 77
    sub-int/2addr p1, v9

    .line 78
    .line 79
    aput p1, p4, v0

    .line 80
    .line 81
    :cond_5
    aget p1, p3, v1

    .line 82
    .line 83
    if-nez p1, :cond_6

    .line 84
    .line 85
    aget p1, p3, v0

    .line 86
    .line 87
    if-eqz p1, :cond_7

    .line 88
    :cond_6
    move v1, v0

    .line 89
    :cond_7
    :goto_2
    return v1
.end method

.method public e(IIII[II[I)V
    .locals 0
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p7}, Landroidx/core/view/NestedScrollingChildHelper;->h(IIII[II[I)Z

    .line 4
    return-void
.end method

.method public f(IIII[I)Z
    .locals 8
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move-object v5, p5

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->h(IIII[II[I)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public g(IIII[II)Z
    .locals 8
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v7, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move v6, p6

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->h(IIII[II[I)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->l(I)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public l(I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->i(I)Landroid/view/ViewParent;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public n(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->e1(Landroid/view/View;)V

    .line 10
    .line 11
    :cond_0
    iput-boolean p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 12
    return-void
.end method

.method public p(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/core/view/NestedScrollingChildHelper;->q(II)Z

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public q(II)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroidx/core/view/NestedScrollingChildHelper;->l(I)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->m()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 23
    .line 24
    :goto_0
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2, v3, p1, p2}, Landroidx/core/view/ViewParentCompat;->f(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    .line 30
    move-result v3

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p2, v0}, Landroidx/core/view/NestedScrollingChildHelper;->o(ILandroid/view/ViewParent;)V

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v2, v3, p1, p2}, Landroidx/core/view/ViewParentCompat;->e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 41
    return v1

    .line 42
    .line 43
    :cond_1
    instance-of v3, v0, Landroid/view/View;

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    move-object v2, v0

    .line 47
    .line 48
    check-cast v2, Landroid/view/View;

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 52
    move-result-object v0

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 p1, 0x0

    .line 55
    return p1
.end method

.method public r()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->s(I)V

    .line 5
    return-void
.end method

.method public s(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->i(I)Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Landroidx/core/view/ViewParentCompat;->g(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, v0}, Landroidx/core/view/NestedScrollingChildHelper;->o(ILandroid/view/ViewParent;)V

    .line 16
    :cond_0
    return-void
.end method
