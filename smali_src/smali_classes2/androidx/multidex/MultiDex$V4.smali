.class final Landroidx/multidex/MultiDex$V4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/multidex/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V4"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static install(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "path"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v1}, Landroidx/multidex/MultiDex;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    check-cast v3, Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    new-array v3, v0, [Ljava/lang/String;

    .line 25
    .line 26
    new-array v4, v0, [Ljava/io/File;

    .line 27
    .line 28
    new-array v5, v0, [Ljava/util/zip/ZipFile;

    .line 29
    .line 30
    new-array v0, v0, [Ldalvik/system/DexFile;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    .line 38
    move-result v6

    .line 39
    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v6

    .line 45
    .line 46
    check-cast v6, Ljava/io/File;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 50
    move-result-object v7

    .line 51
    .line 52
    const/16 v8, 0x3a

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/ListIterator;->previousIndex()I

    .line 62
    move-result v8

    .line 63
    .line 64
    aput-object v7, v3, v8

    .line 65
    .line 66
    aput-object v6, v4, v8

    .line 67
    .line 68
    new-instance v9, Ljava/util/zip/ZipFile;

    .line 69
    .line 70
    .line 71
    invoke-direct {v9, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 72
    .line 73
    aput-object v9, v5, v8

    .line 74
    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v9, ".dex"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v6

    .line 91
    const/4 v9, 0x0

    .line 92
    .line 93
    .line 94
    invoke-static {v7, v6, v9}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    .line 95
    move-result-object v6

    .line 96
    .line 97
    aput-object v6, v0, v8

    .line 98
    goto :goto_0

    .line 99
    .line 100
    .line 101
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    const-string p1, "mPaths"

    .line 108
    .line 109
    .line 110
    invoke-static {p0, p1, v3}, Landroidx/multidex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    const-string p1, "mFiles"

    .line 113
    .line 114
    .line 115
    invoke-static {p0, p1, v4}, Landroidx/multidex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .line 117
    const-string p1, "mZips"

    .line 118
    .line 119
    .line 120
    invoke-static {p0, p1, v5}, Landroidx/multidex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .line 122
    const-string p1, "mDexs"

    .line 123
    .line 124
    .line 125
    invoke-static {p0, p1, v0}, Landroidx/multidex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    return-void
.end method
