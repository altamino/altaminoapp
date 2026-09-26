.class public La2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLASS_2008:I = 0x7d8

.field public static final CLASS_2009:I = 0x7d9

.field public static final CLASS_2010:I = 0x7da

.field public static final CLASS_2011:I = 0x7db

.field public static final CLASS_2012:I = 0x7dc

.field public static final CLASS_2013:I = 0x7dd

.field public static final CLASS_2014:I = 0x7de

.field public static final CLASS_2015:I = 0x7df

.field public static final CLASS_UNKNOWN:I = -0x1

.field private static final MB:J = 0x100000L

.field private static final MHZ_IN_KHZ:I = 0x3e8

.field private static volatile mYearCategory:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, La2/b;->f()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, La2/b;->c(Ljava/util/ArrayList;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, La2/b;->e()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, La2/b;->c(Ljava/util/ArrayList;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, La2/b;->g(Landroid/content/Context;)I

    .line 23
    move-result p0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0}, La2/b;->c(Ljava/util/ArrayList;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    move-result p0

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    const/4 p0, -0x1

    .line 34
    return p0

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result p0

    .line 42
    const/4 v1, 0x1

    .line 43
    and-int/2addr p0, v1

    .line 44
    .line 45
    if-ne p0, v1, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result p0

    .line 50
    .line 51
    div-int/lit8 p0, p0, 0x2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    check-cast p0, Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result p0

    .line 67
    .line 68
    div-int/lit8 p0, p0, 0x2

    .line 69
    .line 70
    add-int/lit8 v1, p0, -0x1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    check-cast v2, Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 80
    move-result v2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object p0

    .line 85
    .line 86
    check-cast p0, Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 90
    move-result p0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    check-cast v0, Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 100
    move-result v0

    .line 101
    sub-int/2addr p0, v0

    .line 102
    .line 103
    div-int/lit8 p0, p0, 0x2

    .line 104
    add-int/2addr v2, p0

    .line 105
    return v2
.end method

.method private static b(Landroid/content/Context;)I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, La2/a;->g(Landroid/content/Context;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, -0x1

    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, La2/b;->a(Landroid/content/Context;)I

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    .line 17
    .line 18
    :cond_0
    const-wide/32 v2, 0x30000000

    .line 19
    .line 20
    cmp-long p0, v0, v2

    .line 21
    .line 22
    if-gtz p0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-static {}, La2/a;->f()I

    .line 26
    move-result p0

    .line 27
    const/4 v0, 0x1

    .line 28
    .line 29
    if-gt p0, v0, :cond_1

    .line 30
    .line 31
    const/16 p0, 0x7d9

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    const/16 p0, 0x7da

    .line 35
    :goto_0
    return p0

    .line 36
    .line 37
    .line 38
    :cond_2
    const-wide/32 v2, 0x40000000

    .line 39
    .line 40
    cmp-long p0, v0, v2

    .line 41
    .line 42
    const/16 v2, 0x7dc

    .line 43
    .line 44
    if-gtz p0, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-static {}, La2/a;->b()I

    .line 48
    move-result p0

    .line 49
    .line 50
    .line 51
    const v0, 0x13d620

    .line 52
    .line 53
    if-ge p0, v0, :cond_3

    .line 54
    .line 55
    const/16 v2, 0x7db

    .line 56
    :cond_3
    return v2

    .line 57
    .line 58
    .line 59
    :cond_4
    const-wide/32 v3, 0x60000000

    .line 60
    .line 61
    cmp-long p0, v0, v3

    .line 62
    .line 63
    const/16 v3, 0x7dd

    .line 64
    .line 65
    if-gtz p0, :cond_6

    .line 66
    .line 67
    .line 68
    invoke-static {}, La2/a;->b()I

    .line 69
    move-result p0

    .line 70
    .line 71
    .line 72
    const v0, 0x1b7740

    .line 73
    .line 74
    if-ge p0, v0, :cond_5

    .line 75
    goto :goto_1

    .line 76
    :cond_5
    move v2, v3

    .line 77
    :goto_1
    return v2

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    :cond_6
    const-wide v4, 0x80000000L

    .line 83
    .line 84
    cmp-long p0, v0, v4

    .line 85
    .line 86
    if-gtz p0, :cond_7

    .line 87
    return v3

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    :cond_7
    const-wide v2, 0xc0000000L

    .line 93
    .line 94
    cmp-long p0, v0, v2

    .line 95
    .line 96
    if-gtz p0, :cond_8

    .line 97
    .line 98
    const/16 p0, 0x7de

    .line 99
    goto :goto_2

    .line 100
    .line 101
    :cond_8
    const/16 p0, 0x7df

    .line 102
    :goto_2
    return p0
.end method

.method private static c(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    .line 1
    .line 2
    sget-object v0, La2/b;->mYearCategory:Ljava/lang/Integer;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const-class v0, La2/b;

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    sget-object v1, La2/b;->mYearCategory:Ljava/lang/Integer;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, La2/b;->b(Landroid/content/Context;)I

    .line 15
    move-result p0

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    sput-object p0, La2/b;->mYearCategory:Ljava/lang/Integer;

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    goto :goto_2

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    .line 30
    :cond_1
    :goto_2
    sget-object p0, La2/b;->mYearCategory:Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method private static e()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, La2/a;->b()I

    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    const/4 v0, -0x1

    .line 13
    return v0

    .line 14
    .line 15
    .line 16
    :cond_0
    const-wide/32 v2, 0x80e80

    .line 17
    .line 18
    cmp-long v2, v0, v2

    .line 19
    .line 20
    if-gtz v2, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x7d8

    .line 23
    return v0

    .line 24
    .line 25
    .line 26
    :cond_1
    const-wide/32 v2, 0x975e0

    .line 27
    .line 28
    cmp-long v2, v0, v2

    .line 29
    .line 30
    if-gtz v2, :cond_2

    .line 31
    .line 32
    const/16 v0, 0x7d9

    .line 33
    return v0

    .line 34
    .line 35
    .line 36
    :cond_2
    const-wide/32 v2, 0xf9060

    .line 37
    .line 38
    cmp-long v2, v0, v2

    .line 39
    .line 40
    if-gtz v2, :cond_3

    .line 41
    .line 42
    const/16 v0, 0x7da

    .line 43
    return v0

    .line 44
    .line 45
    .line 46
    :cond_3
    const-wide/32 v2, 0x129da0

    .line 47
    .line 48
    cmp-long v2, v0, v2

    .line 49
    .line 50
    if-gtz v2, :cond_4

    .line 51
    .line 52
    const/16 v0, 0x7db

    .line 53
    return v0

    .line 54
    .line 55
    .line 56
    :cond_4
    const-wide/32 v2, 0x173180

    .line 57
    .line 58
    cmp-long v2, v0, v2

    .line 59
    .line 60
    if-gtz v2, :cond_5

    .line 61
    .line 62
    const/16 v0, 0x7dc

    .line 63
    return v0

    .line 64
    .line 65
    .line 66
    :cond_5
    const-wide/32 v2, 0x1ed2a0

    .line 67
    .line 68
    cmp-long v0, v0, v2

    .line 69
    .line 70
    if-gtz v0, :cond_6

    .line 71
    .line 72
    const/16 v0, 0x7dd

    .line 73
    return v0

    .line 74
    .line 75
    :cond_6
    const/16 v0, 0x7de

    .line 76
    return v0
.end method

.method private static f()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, La2/a;->f()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    const/4 v0, -0x1

    .line 9
    return v0

    .line 10
    .line 11
    :cond_0
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x7d8

    .line 14
    return v0

    .line 15
    :cond_1
    const/4 v1, 0x3

    .line 16
    .line 17
    if-gt v0, v1, :cond_2

    .line 18
    .line 19
    const/16 v0, 0x7db

    .line 20
    return v0

    .line 21
    .line 22
    :cond_2
    const/16 v0, 0x7dc

    .line 23
    return v0
.end method

.method private static g(Landroid/content/Context;)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, La2/a;->g(Landroid/content/Context;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long p0, v0, v2

    .line 9
    .line 10
    if-gtz p0, :cond_0

    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    .line 14
    .line 15
    :cond_0
    const-wide/32 v2, 0xc000000

    .line 16
    .line 17
    cmp-long p0, v0, v2

    .line 18
    .line 19
    if-gtz p0, :cond_1

    .line 20
    .line 21
    const/16 p0, 0x7d8

    .line 22
    return p0

    .line 23
    .line 24
    .line 25
    :cond_1
    const-wide/32 v2, 0x12200000

    .line 26
    .line 27
    cmp-long p0, v0, v2

    .line 28
    .line 29
    if-gtz p0, :cond_2

    .line 30
    .line 31
    const/16 p0, 0x7d9

    .line 32
    return p0

    .line 33
    .line 34
    .line 35
    :cond_2
    const-wide/32 v2, 0x20000000

    .line 36
    .line 37
    cmp-long p0, v0, v2

    .line 38
    .line 39
    if-gtz p0, :cond_3

    .line 40
    .line 41
    const/16 p0, 0x7da

    .line 42
    return p0

    .line 43
    .line 44
    .line 45
    :cond_3
    const-wide/32 v2, 0x40000000

    .line 46
    .line 47
    cmp-long p0, v0, v2

    .line 48
    .line 49
    if-gtz p0, :cond_4

    .line 50
    .line 51
    const/16 p0, 0x7db

    .line 52
    return p0

    .line 53
    .line 54
    .line 55
    :cond_4
    const-wide/32 v2, 0x60000000

    .line 56
    .line 57
    cmp-long p0, v0, v2

    .line 58
    .line 59
    if-gtz p0, :cond_5

    .line 60
    .line 61
    const/16 p0, 0x7dc

    .line 62
    return p0

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :cond_5
    const-wide v2, 0x80000000L

    .line 68
    .line 69
    cmp-long p0, v0, v2

    .line 70
    .line 71
    if-gtz p0, :cond_6

    .line 72
    .line 73
    const/16 p0, 0x7dd

    .line 74
    return p0

    .line 75
    .line 76
    :cond_6
    const/16 p0, 0x7de

    .line 77
    return p0
.end method
