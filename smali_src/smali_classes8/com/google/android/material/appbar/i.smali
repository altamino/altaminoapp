.class Lcom/google/android/material/appbar/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private horizontalOffsetEnabled:Z

.field private layoutLeft:I

.field private layoutTop:I

.field private offsetLeft:I

.field private offsetTop:I

.field private verticalOffsetEnabled:Z

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/appbar/i;->verticalOffsetEnabled:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/google/android/material/appbar/i;->horizontalOffsetEnabled:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/material/appbar/i;->view:Landroid/view/View;

    .line 11
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/i;->view:Landroid/view/View;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/material/appbar/i;->offsetTop:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 8
    move-result v2

    .line 9
    .line 10
    iget v3, p0, Lcom/google/android/material/appbar/i;->layoutTop:I

    .line 11
    sub-int/2addr v2, v3

    .line 12
    sub-int/2addr v1, v2

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->e0(Landroid/view/View;I)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/appbar/i;->view:Landroid/view/View;

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/material/appbar/i;->offsetLeft:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 23
    move-result v2

    .line 24
    .line 25
    iget v3, p0, Lcom/google/android/material/appbar/i;->layoutLeft:I

    .line 26
    sub-int/2addr v2, v3

    .line 27
    sub-int/2addr v1, v2

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->d0(Landroid/view/View;I)V

    .line 31
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/i;->layoutTop:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/i;->offsetTop:I

    return v0
.end method

.method d()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/i;->view:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/material/appbar/i;->layoutTop:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/appbar/i;->view:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 14
    move-result v0

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/material/appbar/i;->layoutLeft:I

    .line 17
    return-void
.end method

.method public e(I)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/i;->horizontalOffsetEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/material/appbar/i;->offsetLeft:I

    .line 7
    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/material/appbar/i;->offsetLeft:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/appbar/i;->a()V

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public f(I)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/i;->verticalOffsetEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/material/appbar/i;->offsetTop:I

    .line 7
    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/material/appbar/i;->offsetTop:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/appbar/i;->a()V

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method
