.class Landroidx/recyclerview/widget/ViewBoundsCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;,
        Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;,
        Landroidx/recyclerview/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# static fields
.field static final CVE_PVE_POS:I = 0xc

.field static final CVE_PVS_POS:I = 0x8

.field static final CVS_PVE_POS:I = 0x4

.field static final CVS_PVS_POS:I = 0x0

.field static final EQ:I = 0x2

.field static final FLAG_CVE_EQ_PVE:I = 0x2000

.field static final FLAG_CVE_EQ_PVS:I = 0x200

.field static final FLAG_CVE_GT_PVE:I = 0x1000

.field static final FLAG_CVE_GT_PVS:I = 0x100

.field static final FLAG_CVE_LT_PVE:I = 0x4000

.field static final FLAG_CVE_LT_PVS:I = 0x400

.field static final FLAG_CVS_EQ_PVE:I = 0x20

.field static final FLAG_CVS_EQ_PVS:I = 0x2

.field static final FLAG_CVS_GT_PVE:I = 0x10

.field static final FLAG_CVS_GT_PVS:I = 0x1

.field static final FLAG_CVS_LT_PVE:I = 0x40

.field static final FLAG_CVS_LT_PVS:I = 0x4

.field static final GT:I = 0x1

.field static final LT:I = 0x4

.field static final MASK:I = 0x7


# instance fields
.field mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

.field final mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 6
    .line 7
    new-instance p1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 13
    return-void
.end method


# virtual methods
.method a(IIII)Landroid/view/View;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->a()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->b()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-le p2, p1, :cond_0

    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, -0x1

    .line 18
    :goto_0
    const/4 v3, 0x0

    .line 19
    .line 20
    :goto_1
    if-eq p1, p2, :cond_3

    .line 21
    .line 22
    iget-object v4, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 23
    .line 24
    .line 25
    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 29
    .line 30
    .line 31
    invoke-interface {v5, v4}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->c(Landroid/view/View;)I

    .line 32
    move-result v5

    .line 33
    .line 34
    iget-object v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 35
    .line 36
    .line 37
    invoke-interface {v6, v4}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->d(Landroid/view/View;)I

    .line 38
    move-result v6

    .line 39
    .line 40
    iget-object v7, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7, v0, v1, v5, v6}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->e(IIII)V

    .line 44
    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->d()V

    .line 51
    .line 52
    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, p3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->a(I)V

    .line 56
    .line 57
    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->b()Z

    .line 61
    move-result v5

    .line 62
    .line 63
    if-eqz v5, :cond_1

    .line 64
    return-object v4

    .line 65
    .line 66
    :cond_1
    if-eqz p4, :cond_2

    .line 67
    .line 68
    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->d()V

    .line 72
    .line 73
    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, p4}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->a(I)V

    .line 77
    .line 78
    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->b()Z

    .line 82
    move-result v5

    .line 83
    .line 84
    if-eqz v5, :cond_2

    .line 85
    move-object v3, v4

    .line 86
    :cond_2
    add-int/2addr p1, v2

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    return-object v3
.end method

.method b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->a()I

    .line 8
    move-result v1

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 11
    .line 12
    .line 13
    invoke-interface {v2}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->b()I

    .line 14
    move-result v2

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 17
    .line 18
    .line 19
    invoke-interface {v3, p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->c(Landroid/view/View;)I

    .line 20
    move-result v3

    .line 21
    .line 22
    iget-object v4, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 23
    .line 24
    .line 25
    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->d(Landroid/view/View;)I

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->e(IIII)V

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->d()V

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->a(I)V

    .line 42
    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->b()Z

    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    return p1
.end method
