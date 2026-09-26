.class public final Lj8/h;
.super Lkotlin/collections/m0;
.source "SourceFile"


# instance fields
.field private final finalElement:I

.field private hasNext:Z

.field private next:I

.field private final step:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/collections/m0;-><init>()V

    .line 4
    .line 5
    iput p3, p0, Lj8/h;->step:I

    .line 6
    .line 7
    iput p2, p0, Lj8/h;->finalElement:I

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-lez p3, :cond_1

    .line 12
    .line 13
    if-gt p1, p2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    if-lt p1, p2, :cond_0

    .line 19
    .line 20
    :goto_0
    iput-boolean v0, p0, Lj8/h;->hasNext:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move p1, p2

    .line 25
    .line 26
    :goto_1
    iput p1, p0, Lj8/h;->next:I

    .line 27
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj8/h;->hasNext:Z

    return v0
.end method

.method public nextInt()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lj8/h;->next:I

    .line 3
    .line 4
    iget v1, p0, Lj8/h;->finalElement:I

    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-boolean v1, p0, Lj8/h;->hasNext:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    iput-boolean v1, p0, Lj8/h;->hasNext:Z

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 20
    throw v0

    .line 21
    .line 22
    :cond_1
    iget v1, p0, Lj8/h;->step:I

    .line 23
    add-int/2addr v1, v0

    .line 24
    .line 25
    iput v1, p0, Lj8/h;->next:I

    .line 26
    :goto_0
    return v0
.end method
