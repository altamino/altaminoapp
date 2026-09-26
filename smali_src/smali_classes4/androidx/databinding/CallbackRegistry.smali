.class public Landroidx/databinding/CallbackRegistry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/CallbackRegistry$NotifierCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackRegistry"


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation
.end field

.field private mFirst64Removed:J

.field private mNotificationLevel:I

.field private final mNotifier:Landroidx/databinding/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;"
        }
    .end annotation
.end field

.field private mRemainderRemoved:[J


# direct methods
.method public constructor <init>(Landroidx/databinding/CallbackRegistry$NotifierCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/databinding/CallbackRegistry;->mNotifier:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    .line 17
    return-void
.end method

.method private d(I)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    const-wide/16 v2, 0x1

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    .line 8
    const/16 v6, 0x40

    .line 9
    .line 10
    if-ge p1, v6, :cond_1

    .line 11
    shl-long/2addr v2, p1

    .line 12
    .line 13
    iget-wide v6, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    .line 14
    and-long/2addr v2, v6

    .line 15
    .line 16
    cmp-long p1, v2, v0

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v4, v5

    .line 21
    :goto_0
    return v4

    .line 22
    .line 23
    :cond_1
    iget-object v7, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 24
    .line 25
    if-nez v7, :cond_2

    .line 26
    return v5

    .line 27
    .line 28
    :cond_2
    div-int/lit8 v8, p1, 0x40

    .line 29
    sub-int/2addr v8, v4

    .line 30
    array-length v9, v7

    .line 31
    .line 32
    if-lt v8, v9, :cond_3

    .line 33
    return v5

    .line 34
    .line 35
    :cond_3
    aget-wide v8, v7, v8

    .line 36
    rem-int/2addr p1, v6

    .line 37
    shl-long/2addr v2, p1

    .line 38
    and-long/2addr v2, v8

    .line 39
    .line 40
    cmp-long p1, v2, v0

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    goto :goto_1

    .line 44
    :cond_4
    move v4, v5

    .line 45
    :goto_1
    return v4
.end method

.method private f(Ljava/lang/Object;ILjava/lang/Object;IIJ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sender",
            "arg",
            "arg2",
            "startIndex",
            "endIndex",
            "bits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;IIJ)V"
        }
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x1

    .line 3
    .line 4
    :goto_0
    if-ge p4, p5, :cond_1

    .line 5
    .line 6
    and-long v2, p6, v0

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    cmp-long v2, v2, v4

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/databinding/CallbackRegistry;->mNotifier:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3, p1, p2, p3}, Landroidx/databinding/CallbackRegistry$NotifierCallback;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 24
    :cond_0
    const/4 v2, 0x1

    .line 25
    shl-long/2addr v0, v2

    .line 26
    .line 27
    add-int/lit8 p4, p4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method private g(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "arg",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x40

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result v7

    .line 13
    const/4 v6, 0x0

    .line 14
    .line 15
    iget-wide v8, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    .line 16
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move v4, p2

    .line 19
    move-object v5, p3

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v2 .. v9}, Landroidx/databinding/CallbackRegistry;->f(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 23
    return-void
.end method

.method private h(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "arg",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v6

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    array-length v0, v0

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/databinding/CallbackRegistry;->i(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x2

    .line 21
    .line 22
    mul-int/lit8 v5, v0, 0x40

    .line 23
    .line 24
    const-wide/16 v7, 0x0

    .line 25
    move-object v1, p0

    .line 26
    move-object v2, p1

    .line 27
    move v3, p2

    .line 28
    move-object v4, p3

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v1 .. v8}, Landroidx/databinding/CallbackRegistry;->f(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 32
    return-void
.end method

.method private i(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "arg",
            "arg2",
            "remainderIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;I)V"
        }
    .end annotation

    .line 1
    .line 2
    if-gez p4, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/CallbackRegistry;->g(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 9
    .line 10
    aget-wide v7, v0, p4

    .line 11
    .line 12
    add-int/lit8 v0, p4, 0x1

    .line 13
    .line 14
    mul-int/lit8 v5, v0, 0x40

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v0

    .line 21
    .line 22
    add-int/lit8 v1, v5, 0x40

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v6

    .line 27
    .line 28
    add-int/lit8 p4, p4, -0x1

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/databinding/CallbackRegistry;->i(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 32
    move-object v1, p0

    .line 33
    move-object v2, p1

    .line 34
    move v3, p2

    .line 35
    move-object v4, p3

    .line 36
    .line 37
    .line 38
    invoke-direct/range {v1 .. v8}, Landroidx/databinding/CallbackRegistry;->f(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 39
    :goto_0
    return-void
.end method

.method private k(IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIndex",
            "removed"
        }
    .end annotation

    .line 1
    .line 2
    add-int/lit8 v0, p1, 0x3f

    .line 3
    .line 4
    const-wide/high16 v1, -0x8000000000000000L

    .line 5
    .line 6
    :goto_0
    if-lt v0, p1, :cond_1

    .line 7
    .line 8
    and-long v3, p2, v1

    .line 9
    .line 10
    const-wide/16 v5, 0x0

    .line 11
    .line 12
    cmp-long v3, v3, v5

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20
    :cond_0
    const/4 v3, 0x1

    .line 21
    ushr-long/2addr v1, v3

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return-void
.end method

.method private l(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x1

    .line 3
    .line 4
    const/16 v2, 0x40

    .line 5
    .line 6
    if-ge p1, v2, :cond_0

    .line 7
    shl-long/2addr v0, p1

    .line 8
    .line 9
    iget-wide v2, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    .line 10
    or-long/2addr v0, v2

    .line 11
    .line 12
    iput-wide v0, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_0
    div-int/lit8 v3, p1, 0x40

    .line 16
    .line 17
    add-int/lit8 v3, v3, -0x1

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 27
    move-result v4

    .line 28
    div-int/2addr v4, v2

    .line 29
    .line 30
    new-array v4, v4, [J

    .line 31
    .line 32
    iput-object v4, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    array-length v4, v4

    .line 35
    .line 36
    if-gt v4, v3, :cond_2

    .line 37
    .line 38
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 42
    move-result v4

    .line 43
    div-int/2addr v4, v2

    .line 44
    .line 45
    new-array v4, v4, [J

    .line 46
    .line 47
    iget-object v5, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 48
    array-length v6, v5

    .line 49
    const/4 v7, 0x0

    .line 50
    .line 51
    .line 52
    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    iput-object v4, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 55
    :cond_2
    :goto_0
    rem-int/2addr p1, v2

    .line 56
    shl-long/2addr v0, p1

    .line 57
    .line 58
    iget-object p1, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 59
    .line 60
    aget-wide v4, p1, v3

    .line 61
    or-long/2addr v0, v4

    .line 62
    .line 63
    aput-wide v0, p1, v3

    .line 64
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroidx/databinding/CallbackRegistry;->d(I)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    monitor-exit p0

    .line 27
    return-void

    .line 28
    .line 29
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string v0, "callback cannot be null"

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_1
    monitor-exit p0

    .line 37
    throw p1
.end method

.method public declared-synchronized c()Landroidx/databinding/CallbackRegistry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/CallbackRegistry<",
            "TC;TT;TA;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Landroidx/databinding/CallbackRegistry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    :try_start_1
    iput-wide v2, v1, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    .line 13
    .line 14
    iput-object v0, v1, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    iput v0, v1, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iput-object v2, v1, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    move-result v2

    .line 31
    .line 32
    :goto_0
    if-ge v0, v2, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Landroidx/databinding/CallbackRegistry;->d(I)Z

    .line 36
    move-result v3

    .line 37
    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    iget-object v3, v1, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 41
    .line 42
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 43
    .line 44
    .line 45
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    .line 49
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_3

    .line 53
    :catch_0
    move-exception v0

    .line 54
    goto :goto_2

    .line 55
    .line 56
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :catch_1
    move-exception v1

    .line 59
    move-object v5, v1

    .line 60
    move-object v1, v0

    .line 61
    move-object v0, v5

    .line 62
    .line 63
    .line 64
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :cond_1
    monitor-exit p0

    .line 66
    return-object v1

    .line 67
    :goto_3
    monitor-exit p0

    .line 68
    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/databinding/CallbackRegistry;->c()Landroidx/databinding/CallbackRegistry;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public declared-synchronized e(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "arg",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iput v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/CallbackRegistry;->h(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 11
    .line 12
    iget p1, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    .line 13
    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    iput p1, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 21
    .line 22
    const-wide/16 p2, 0x0

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    array-length p1, p1

    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    :goto_0
    if-ltz p1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 32
    .line 33
    aget-wide v1, v0, p1

    .line 34
    .line 35
    cmp-long v0, v1, p2

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    add-int/lit8 v0, p1, 0x1

    .line 40
    .line 41
    mul-int/lit8 v0, v0, 0x40

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0, v1, v2}, Landroidx/databinding/CallbackRegistry;->k(IJ)V

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 47
    .line 48
    aput-wide p2, v0, p1

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    iget-wide v0, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    .line 57
    .line 58
    cmp-long p1, v0, p2

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    const/4 p1, 0x0

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1, v0, v1}, Landroidx/databinding/CallbackRegistry;->k(IJ)V

    .line 65
    .line 66
    iput-wide p2, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_2
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :goto_2
    monitor-exit p0

    .line 70
    throw p1
.end method

.method public declared-synchronized j(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    .line 19
    move-result p1

    .line 20
    .line 21
    if-ltz p1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroidx/databinding/CallbackRegistry;->l(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    :goto_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit p0

    .line 28
    throw p1
.end method
