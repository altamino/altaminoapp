.class Landroidx/transition/WindowIdApi14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/WindowIdImpl;


# instance fields
.field private final mToken:Landroid/os/IBinder;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/transition/WindowIdApi14;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/transition/WindowIdApi14;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
