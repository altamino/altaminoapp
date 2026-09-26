.class public Lcom/scottyab/rootbeer/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private loggingEnabled:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/scottyab/rootbeer/b;->loggingEnabled:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/scottyab/rootbeer/b;->mContext:Landroid/content/Context;

    .line 9
    return-void
.end method

.method private m(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/scottyab/rootbeer/b;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    .line 14
    .line 15
    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    check-cast v3, Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 28
    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, " ROOT management app detected!"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Lc6/a;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return v2
.end method

.method private o()[Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    const-string v2, "mount"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    new-instance v2, Ljava/util/Scanner;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 24
    .line 25
    const-string v1, "\\A"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "\n"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object v0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    goto :goto_0

    .line 43
    :catch_1
    move-exception v1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {v1}, Lc6/a;->a(Ljava/lang/Exception;)V

    .line 47
    return-object v0
.end method

.method private p()[Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    const-string v2, "getprop"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    new-instance v2, Ljava/util/Scanner;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 24
    .line 25
    const-string v1, "\\A"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "\n"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object v0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    goto :goto_0

    .line 43
    :catch_1
    move-exception v1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {v1}, Lc6/a;->a(Ljava/lang/Exception;)V

    .line 47
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/scottyab/rootbeer/RootBeerNative;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/scottyab/rootbeer/RootBeerNative;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/scottyab/rootbeer/RootBeerNative;->a()Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/scottyab/rootbeer/a;->a()[Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v4, v0, v2

    .line 12
    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v5

    .line 27
    .line 28
    new-instance v6, Ljava/io/File;

    .line 29
    .line 30
    .line 31
    invoke-direct {v6, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 35
    move-result v4

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v4, " binary detected!"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-static {v3}, Lc6/a;->f(Ljava/lang/Object;)V

    .line 58
    const/4 v3, 0x1

    .line 59
    .line 60
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return v3
.end method

.method public c()Z
    .locals 11

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    const-string v1, "ro.debuggable"

    .line 8
    .line 9
    const-string v2, "1"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    const-string v1, "ro.secure"

    .line 15
    .line 16
    const-string v2, "0"

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/scottyab/rootbeer/b;->p()[Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    return v2

    .line 28
    :cond_0
    array-length v3, v1

    .line 29
    move v4, v2

    .line 30
    .line 31
    :goto_0
    if-ge v2, v3, :cond_3

    .line 32
    .line 33
    aget-object v5, v1, v2

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 37
    move-result-object v6

    .line 38
    .line 39
    .line 40
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v6

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v7

    .line 46
    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v7

    .line 52
    .line 53
    check-cast v7, Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v8

    .line 58
    .line 59
    if-eqz v8, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v8

    .line 64
    .line 65
    check-cast v8, Ljava/lang/String;

    .line 66
    .line 67
    new-instance v9, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    const-string v10, "["

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v8, "]"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v8

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    move-result v9

    .line 92
    .line 93
    if-eqz v9, :cond_1

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v7, " = "

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v7, " detected!"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v4

    .line 119
    .line 120
    .line 121
    invoke-static {v4}, Lc6/a;->f(Ljava/lang/Object;)V

    .line 122
    const/4 v4, 0x1

    .line 123
    goto :goto_1

    .line 124
    .line 125
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    return v4
.end method

.method public d()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "magisk"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/scottyab/rootbeer/b;->b(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public e()Z
    .locals 17

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/scottyab/rootbeer/b;->o()[Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    array-length v3, v0

    .line 12
    move v4, v1

    .line 13
    move v5, v4

    .line 14
    .line 15
    :goto_0
    if-ge v4, v3, :cond_9

    .line 16
    .line 17
    aget-object v6, v0, v4

    .line 18
    .line 19
    const-string v7, " "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    move-result-object v7

    .line 24
    .line 25
    const/16 v8, 0x17

    .line 26
    .line 27
    if-gt v2, v8, :cond_1

    .line 28
    array-length v9, v7

    .line 29
    const/4 v10, 0x4

    .line 30
    .line 31
    if-lt v9, v10, :cond_2

    .line 32
    .line 33
    :cond_1
    if-le v2, v8, :cond_4

    .line 34
    array-length v9, v7

    .line 35
    const/4 v10, 0x6

    .line 36
    .line 37
    if-ge v9, v10, :cond_4

    .line 38
    .line 39
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    const-string v8, "Error formatting mount line: "

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v6

    .line 55
    .line 56
    .line 57
    invoke-static {v6}, Lc6/a;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    :cond_3
    move-object/from16 v16, v0

    .line 60
    .line 61
    goto/16 :goto_5

    .line 62
    :cond_4
    const/4 v9, 0x1

    .line 63
    .line 64
    if-le v2, v8, :cond_5

    .line 65
    const/4 v10, 0x2

    .line 66
    .line 67
    aget-object v10, v7, v10

    .line 68
    const/4 v11, 0x5

    .line 69
    .line 70
    aget-object v7, v7, v11

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_5
    aget-object v10, v7, v9

    .line 74
    const/4 v11, 0x3

    .line 75
    .line 76
    aget-object v7, v7, v11

    .line 77
    .line 78
    :goto_1
    sget-object v11, Lcom/scottyab/rootbeer/a;->pathsThatShouldNotBeWritable:[Ljava/lang/String;

    .line 79
    array-length v12, v11

    .line 80
    move v13, v1

    .line 81
    .line 82
    :goto_2
    if-ge v13, v12, :cond_3

    .line 83
    .line 84
    aget-object v14, v11, v13

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 88
    move-result v15

    .line 89
    .line 90
    if-eqz v15, :cond_8

    .line 91
    .line 92
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .line 94
    if-le v15, v8, :cond_6

    .line 95
    .line 96
    const-string v15, "("

    .line 97
    .line 98
    const-string v1, ""

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v15, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 102
    move-result-object v7

    .line 103
    .line 104
    const-string v15, ")"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v15, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 108
    move-result-object v7

    .line 109
    .line 110
    :cond_6
    const-string v1, ","

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    array-length v15, v1

    .line 116
    const/4 v8, 0x0

    .line 117
    .line 118
    :goto_3
    if-ge v8, v15, :cond_8

    .line 119
    .line 120
    aget-object v9, v1, v8

    .line 121
    .line 122
    move-object/from16 v16, v0

    .line 123
    .line 124
    const-string v0, "rw"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 128
    move-result v0

    .line 129
    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v1, " path is mounted with rw permissions! "

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    .line 153
    invoke-static {v0}, Lc6/a;->f(Ljava/lang/Object;)V

    .line 154
    const/4 v5, 0x1

    .line 155
    goto :goto_4

    .line 156
    .line 157
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 158
    .line 159
    move-object/from16 v0, v16

    .line 160
    const/4 v9, 0x1

    .line 161
    goto :goto_3

    .line 162
    .line 163
    :cond_8
    move-object/from16 v16, v0

    .line 164
    .line 165
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 166
    .line 167
    move-object/from16 v0, v16

    .line 168
    const/4 v1, 0x0

    .line 169
    .line 170
    const/16 v8, 0x17

    .line 171
    const/4 v9, 0x1

    .line 172
    goto :goto_2

    .line 173
    .line 174
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 175
    .line 176
    move-object/from16 v0, v16

    .line 177
    const/4 v1, 0x0

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    :cond_9
    return v5
.end method

.method public f()Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/scottyab/rootbeer/b;->a()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "We could not load the native library to test for root"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lc6/a;->b(Ljava/lang/Object;)V

    .line 13
    return v1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/scottyab/rootbeer/a;->a()[Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    array-length v2, v0

    .line 19
    .line 20
    new-array v3, v2, [Ljava/lang/String;

    .line 21
    move v4, v1

    .line 22
    .line 23
    :goto_0
    if-ge v4, v2, :cond_1

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    aget-object v6, v0, v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string/jumbo v6, "su"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    aput-object v5, v3, v4

    .line 46
    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    new-instance v0, Lcom/scottyab/rootbeer/RootBeerNative;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0}, Lcom/scottyab/rootbeer/RootBeerNative;-><init>()V

    .line 54
    .line 55
    :try_start_0
    iget-boolean v2, p0, Lcom/scottyab/rootbeer/b;->loggingEnabled:Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lcom/scottyab/rootbeer/RootBeerNative;->setLogDebugMessages(Z)I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Lcom/scottyab/rootbeer/RootBeerNative;->checkForRoot([Ljava/lang/Object;)I

    .line 62
    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    if-lez v0, :cond_2

    .line 65
    const/4 v1, 0x1

    .line 66
    :catch_0
    :cond_2
    return v1
.end method

.method public g()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x2

    .line 8
    .line 9
    new-array v3, v3, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "which"

    .line 13
    .line 14
    aput-object v4, v3, v0

    .line 15
    .line 16
    .line 17
    const-string/jumbo v4, "su"

    .line 18
    const/4 v5, 0x1

    .line 19
    .line 20
    aput-object v4, v3, v5

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    new-instance v2, Ljava/io/BufferedReader;

    .line 27
    .line 28
    new-instance v3, Ljava/io/InputStreamReader;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 42
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    move v0, v5

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 49
    return v0

    .line 50
    .line 51
    :catchall_0
    if-eqz v1, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 55
    :cond_1
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/scottyab/rootbeer/b;->i([Ljava/lang/String;)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public i([Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lcom/scottyab/rootbeer/a;->knownDangerousAppsPackages:[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    array-length v1, p1

    .line 18
    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-direct {p0, v0}, Lcom/scottyab/rootbeer/b;->m(Ljava/util/List;)Z

    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public j()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/scottyab/rootbeer/b;->k([Ljava/lang/String;)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public k([Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    sget-object v1, Lcom/scottyab/rootbeer/a;->knownRootAppsPackages:[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    array-length v1, p1

    .line 15
    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-direct {p0, v0}, Lcom/scottyab/rootbeer/b;->m(Ljava/util/List;)Z

    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public l()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "test-keys"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/scottyab/rootbeer/b;->j()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/scottyab/rootbeer/b;->h()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    const-string/jumbo v0, "su"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/scottyab/rootbeer/b;->b(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/scottyab/rootbeer/b;->c()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/scottyab/rootbeer/b;->e()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/scottyab/rootbeer/b;->l()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/scottyab/rootbeer/b;->g()Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/scottyab/rootbeer/b;->f()Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/scottyab/rootbeer/b;->d()Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 62
    :goto_1
    return v0
.end method
