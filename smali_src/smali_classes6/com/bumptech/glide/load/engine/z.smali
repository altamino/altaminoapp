.class Lcom/bumptech/glide/load/engine/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/f;
.implements Lcom/bumptech/glide/load/engine/f$a;


# static fields
.field private static final TAG:Ljava/lang/String; = "SourceGenerator"


# instance fields
.field private final cb:Lcom/bumptech/glide/load/engine/f$a;

.field private dataToCache:Ljava/lang/Object;

.field private final helper:Lcom/bumptech/glide/load/engine/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile loadData:Lcom/bumptech/glide/load/model/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field private loadDataListIndex:I

.field private originalKey:Lcom/bumptech/glide/load/engine/d;

.field private sourceCacheGenerator:Lcom/bumptech/glide/load/engine/c;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/f$a;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/z;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/z;->cb:Lcom/bumptech/glide/load/engine/f$a;

    .line 8
    return-void
.end method

.method private e(Ljava/lang/Object;)V
    .locals 8

    .line 1
    .line 2
    const-string v0, "SourceGenerator"

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/bumptech/glide/util/f;->b()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/z;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, p1}, Lcom/bumptech/glide/load/engine/g;->p(Ljava/lang/Object;)Lcom/bumptech/glide/load/d;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    new-instance v4, Lcom/bumptech/glide/load/engine/e;

    .line 15
    .line 16
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/z;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/g;->k()Lcom/bumptech/glide/load/i;

    .line 20
    move-result-object v5

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v3, p1, v5}, Lcom/bumptech/glide/load/engine/e;-><init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/i;)V

    .line 24
    .line 25
    new-instance v5, Lcom/bumptech/glide/load/engine/d;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 28
    .line 29
    iget-object v6, v6, Lcom/bumptech/glide/load/model/n$a;->sourceKey:Lcom/bumptech/glide/load/g;

    .line 30
    .line 31
    iget-object v7, p0, Lcom/bumptech/glide/load/engine/z;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7}, Lcom/bumptech/glide/load/engine/g;->o()Lcom/bumptech/glide/load/g;

    .line 35
    move-result-object v7

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V

    .line 39
    .line 40
    iput-object v5, p0, Lcom/bumptech/glide/load/engine/z;->originalKey:Lcom/bumptech/glide/load/engine/d;

    .line 41
    .line 42
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/z;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/g;->d()Lcom/bumptech/glide/load/engine/cache/a;

    .line 46
    move-result-object v5

    .line 47
    .line 48
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/z;->originalKey:Lcom/bumptech/glide/load/engine/d;

    .line 49
    .line 50
    .line 51
    invoke-interface {v5, v6, v4}, Lcom/bumptech/glide/load/engine/cache/a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/cache/a$b;)V

    .line 52
    const/4 v4, 0x2

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 56
    move-result v4

    .line 57
    .line 58
    if-eqz v4, :cond_0

    .line 59
    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    const-string v5, "Finished encoding source to cache, key: "

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/z;->originalKey:Lcom/bumptech/glide/load/engine/d;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v5, ", data: "

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string p1, ", encoder: "

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p1, ", duration: "

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/f;->a(J)D

    .line 98
    move-result-wide v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    goto :goto_1

    .line 112
    .line 113
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 114
    .line 115
    iget-object p1, p1, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 116
    .line 117
    .line 118
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/d;->b()V

    .line 119
    .line 120
    new-instance p1, Lcom/bumptech/glide/load/engine/c;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/bumptech/glide/load/model/n$a;->sourceKey:Lcom/bumptech/glide/load/g;

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/z;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 131
    .line 132
    .line 133
    invoke-direct {p1, v0, v1, p0}, Lcom/bumptech/glide/load/engine/c;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V

    .line 134
    .line 135
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/z;->sourceCacheGenerator:Lcom/bumptech/glide/load/engine/c;

    .line 136
    return-void

    .line 137
    .line 138
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 141
    .line 142
    .line 143
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->b()V

    .line 144
    throw p1
.end method

.method private f()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/bumptech/glide/load/engine/z;->loadDataListIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/z;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/g;->g()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ge v0, v1, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method private j(Lcom/bumptech/glide/load/model/n$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/n$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/z;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/g;->l()Lcom/bumptech/glide/f;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    new-instance v2, Lcom/bumptech/glide/load/engine/z$a;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, p0, p1}, Lcom/bumptech/glide/load/engine/z$a;-><init>(Lcom/bumptech/glide/load/engine/z;Lcom/bumptech/glide/load/model/n$a;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/data/d;->d(Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/data/d$a;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->dataToCache:Ljava/lang/Object;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/z;->dataToCache:Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/z;->e(Ljava/lang/Object;)V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->sourceCacheGenerator:Lcom/bumptech/glide/load/engine/c;

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/c;->a()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    return v2

    .line 23
    .line 24
    :cond_1
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/z;->sourceCacheGenerator:Lcom/bumptech/glide/load/engine/c;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/z;->f()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/z;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/g;->g()Ljava/util/List;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    iget v3, p0, Lcom/bumptech/glide/load/engine/z;->loadDataListIndex:I

    .line 44
    .line 45
    add-int/lit8 v4, v3, 0x1

    .line 46
    .line 47
    iput v4, p0, Lcom/bumptech/glide/load/engine/z;->loadDataListIndex:I

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Lcom/bumptech/glide/load/model/n$a;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/z;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/g;->e()Lcom/bumptech/glide/load/engine/j;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 68
    .line 69
    iget-object v3, v3, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 70
    .line 71
    .line 72
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/d;->c()Lcom/bumptech/glide/load/a;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/j;->c(Lcom/bumptech/glide/load/a;)Z

    .line 77
    move-result v1

    .line 78
    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/z;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 84
    .line 85
    iget-object v3, v3, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 86
    .line 87
    .line 88
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/d;->a()Ljava/lang/Class;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/g;->t(Ljava/lang/Class;)Z

    .line 93
    move-result v1

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/z;->j(Lcom/bumptech/glide/load/model/n$a;)V

    .line 101
    move v0, v2

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    return v0
.end method

.method public b(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p4, p0, Lcom/bumptech/glide/load/engine/z;->cb:Lcom/bumptech/glide/load/engine/f$a;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->c()Lcom/bumptech/glide/load/a;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {p4, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/f$a;->b(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;)V

    .line 14
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->cancel()V

    .line 10
    :cond_0
    return-void
.end method

.method public d(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/g;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->cb:Lcom/bumptech/glide/load/engine/f$a;

    .line 3
    .line 4
    iget-object p4, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 5
    .line 6
    iget-object p4, p4, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 7
    .line 8
    .line 9
    invoke-interface {p4}, Lcom/bumptech/glide/load/data/d;->c()Lcom/bumptech/glide/load/a;

    .line 10
    move-result-object v4

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object v5, p1

    .line 15
    .line 16
    .line 17
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/f$a;->d(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    .line 18
    return-void
.end method

.method g(Lcom/bumptech/glide/load/model/n$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/n$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->loadData:Lcom/bumptech/glide/load/model/n$a;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method h(Lcom/bumptech/glide/load/model/n$a;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/n$a<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->e()Lcom/bumptech/glide/load/engine/j;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object v1, p1, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->c()Lcom/bumptech/glide/load/a;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/j;->c(Lcom/bumptech/glide/load/a;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/z;->dataToCache:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/z;->cb:Lcom/bumptech/glide/load/engine/f$a;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/f$a;->c()V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->cb:Lcom/bumptech/glide/load/engine/f$a;

    .line 31
    .line 32
    iget-object v1, p1, Lcom/bumptech/glide/load/model/n$a;->sourceKey:Lcom/bumptech/glide/load/g;

    .line 33
    .line 34
    iget-object v3, p1, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 35
    .line 36
    .line 37
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/d;->c()Lcom/bumptech/glide/load/a;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/z;->originalKey:Lcom/bumptech/glide/load/engine/d;

    .line 41
    move-object v2, p2

    .line 42
    .line 43
    .line 44
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/f$a;->d(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    .line 45
    :goto_0
    return-void
.end method

.method i(Lcom/bumptech/glide/load/model/n$a;Ljava/lang/Exception;)V
    .locals 3
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/n$a<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->cb:Lcom/bumptech/glide/load/engine/f$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/z;->originalKey:Lcom/bumptech/glide/load/engine/d;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/d;->c()Lcom/bumptech/glide/load/a;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1, p2, p1, v2}, Lcom/bumptech/glide/load/engine/f$a;->b(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;)V

    .line 14
    return-void
.end method
