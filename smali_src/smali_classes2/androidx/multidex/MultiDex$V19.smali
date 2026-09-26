.class final Landroidx/multidex/MultiDex$V19;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/multidex/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V19"
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

.method static install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "pathList"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/multidex/MultiDex;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v1, p2, v0}, Landroidx/multidex/MultiDex$V19;->makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string p2, "dexElements"

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p2, p1}, Landroidx/multidex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result p1

    .line 35
    .line 36
    if-lez p1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result p2

    .line 45
    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    check-cast p2, Ljava/io/IOException;

    .line 53
    .line 54
    const-string v1, "MultiDex"

    .line 55
    .line 56
    const-string v2, "Exception in makeDexElement"

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_0
    const-string p1, "dexElementsSuppressedExceptions"

    .line 63
    .line 64
    .line 65
    invoke-static {p0, p1}, Landroidx/multidex/MultiDex;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    check-cast p2, [Ljava/io/IOException;

    .line 73
    const/4 v1, 0x0

    .line 74
    .line 75
    if-nez p2, :cond_1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result p2

    .line 80
    .line 81
    new-array p2, p2, [Ljava/io/IOException;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    check-cast p2, [Ljava/io/IOException;

    .line 88
    goto :goto_1

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 92
    move-result v2

    .line 93
    array-length v3, p2

    .line 94
    add-int/2addr v2, v3

    .line 95
    .line 96
    new-array v2, v2, [Ljava/io/IOException;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 103
    move-result v3

    .line 104
    array-length v4, p2

    .line 105
    .line 106
    .line 107
    invoke-static {p2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    move-object p2, v2

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    new-instance p0, Ljava/io/IOException;

    .line 114
    .line 115
    const-string p1, "I/O exception during makeDexElement"

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    check-cast p1, Ljava/lang/Throwable;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 128
    throw p0

    .line 129
    :cond_2
    return-void
.end method

.method private static makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    const-class v3, Ljava/util/ArrayList;

    .line 7
    .line 8
    aput-object v3, v1, v2

    .line 9
    .line 10
    const-class v4, Ljava/io/File;

    .line 11
    const/4 v5, 0x1

    .line 12
    .line 13
    aput-object v4, v1, v5

    .line 14
    const/4 v4, 0x2

    .line 15
    .line 16
    aput-object v3, v1, v4

    .line 17
    .line 18
    const-string v3, "makeDexElements"

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v3, v1}, Landroidx/multidex/MultiDex;->access$200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    .line 26
    aput-object p1, v0, v2

    .line 27
    .line 28
    aput-object p2, v0, v5

    .line 29
    .line 30
    aput-object p3, v0, v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    check-cast p0, [Ljava/lang/Object;

    .line 37
    return-object p0
.end method
