.class Lcom/bumptech/glide/load/engine/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/f;
.implements Lcom/bumptech/glide/load/data/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/f;",
        "Lcom/bumptech/glide/load/data/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private cacheFile:Ljava/io/File;

.field private final cacheKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/g;",
            ">;"
        }
    .end annotation
.end field

.field private final cb:Lcom/bumptech/glide/load/engine/f$a;

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

.field private modelLoaderIndex:I

.field private modelLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private sourceIdIndex:I

.field private sourceKey:Lcom/bumptech/glide/load/g;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V
    .locals 1
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
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/load/engine/c;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/g;",
            ">;",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/f$a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/engine/c;->sourceIdIndex:I

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/c;->cacheKeys:Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/c;->helper:Lcom/bumptech/glide/load/engine/g;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/c;->cb:Lcom/bumptech/glide/load/engine/f$a;

    return-void
.end method

.method private b()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/bumptech/glide/load/engine/c;->modelLoaderIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->modelLoaders:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 7

    .line 1
    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->modelLoaders:Ljava/util/List;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/c;->b()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    goto :goto_2

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/c;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 17
    .line 18
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/c;->b()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->modelLoaders:Ljava/util/List;

    .line 27
    .line 28
    iget v3, p0, Lcom/bumptech/glide/load/engine/c;->modelLoaderIndex:I

    .line 29
    .line 30
    add-int/lit8 v4, v3, 0x1

    .line 31
    .line 32
    iput v4, p0, Lcom/bumptech/glide/load/engine/c;->modelLoaderIndex:I

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lcom/bumptech/glide/load/model/n;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c;->cacheFile:Ljava/io/File;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/c;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->s()I

    .line 46
    move-result v4

    .line 47
    .line 48
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/c;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/g;->f()I

    .line 52
    move-result v5

    .line 53
    .line 54
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/c;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/g;->k()Lcom/bumptech/glide/load/i;

    .line 58
    move-result-object v6

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/bumptech/glide/load/model/n;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/model/n$a;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/c;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 73
    .line 74
    iget-object v3, v3, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 75
    .line 76
    .line 77
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/d;->a()Ljava/lang/Class;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/load/engine/g;->t(Ljava/lang/Class;)Z

    .line 82
    move-result v0

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/g;->l()Lcom/bumptech/glide/f;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, v2, p0}, Lcom/bumptech/glide/load/data/d;->d(Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/data/d$a;)V

    .line 98
    move v2, v1

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    return v2

    .line 101
    .line 102
    :cond_4
    :goto_2
    iget v0, p0, Lcom/bumptech/glide/load/engine/c;->sourceIdIndex:I

    .line 103
    add-int/2addr v0, v1

    .line 104
    .line 105
    iput v0, p0, Lcom/bumptech/glide/load/engine/c;->sourceIdIndex:I

    .line 106
    .line 107
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->cacheKeys:Ljava/util/List;

    .line 108
    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 111
    move-result v1

    .line 112
    .line 113
    if-lt v0, v1, :cond_5

    .line 114
    return v2

    .line 115
    .line 116
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->cacheKeys:Ljava/util/List;

    .line 117
    .line 118
    iget v1, p0, Lcom/bumptech/glide/load/engine/c;->sourceIdIndex:I

    .line 119
    .line 120
    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    check-cast v0, Lcom/bumptech/glide/load/g;

    .line 125
    .line 126
    new-instance v1, Lcom/bumptech/glide/load/engine/d;

    .line 127
    .line 128
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/g;->o()Lcom/bumptech/glide/load/g;

    .line 132
    move-result-object v3

    .line 133
    .line 134
    .line 135
    invoke-direct {v1, v0, v3}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V

    .line 136
    .line 137
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/g;->d()Lcom/bumptech/glide/load/engine/cache/a;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    .line 144
    invoke-interface {v3, v1}, Lcom/bumptech/glide/load/engine/cache/a;->b(Lcom/bumptech/glide/load/g;)Ljava/io/File;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/c;->cacheFile:Ljava/io/File;

    .line 148
    .line 149
    if-eqz v1, :cond_0

    .line 150
    .line 151
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/c;->sourceKey:Lcom/bumptech/glide/load/g;

    .line 152
    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/g;->j(Ljava/io/File;)Ljava/util/List;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/c;->modelLoaders:Ljava/util/List;

    .line 160
    .line 161
    iput v2, p0, Lcom/bumptech/glide/load/engine/c;->modelLoaderIndex:I

    .line 162
    .line 163
    goto/16 :goto_0
.end method

.method public cancel()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->loadData:Lcom/bumptech/glide/load/model/n$a;

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

.method public e(Ljava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->cb:Lcom/bumptech/glide/load/engine/f$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->sourceKey:Lcom/bumptech/glide/load/g;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 7
    .line 8
    iget-object v3, v2, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 9
    .line 10
    sget-object v4, Lcom/bumptech/glide/load/a;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/a;

    .line 11
    .line 12
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/c;->sourceKey:Lcom/bumptech/glide/load/g;

    .line 13
    move-object v2, p1

    .line 14
    .line 15
    .line 16
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/f$a;->d(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    .line 17
    return-void
.end method

.method public f(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->cb:Lcom/bumptech/glide/load/engine/f$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->sourceKey:Lcom/bumptech/glide/load/g;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 9
    .line 10
    sget-object v3, Lcom/bumptech/glide/load/a;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/a;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/engine/f$a;->b(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;)V

    .line 14
    return-void
.end method
