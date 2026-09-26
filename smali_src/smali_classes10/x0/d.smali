.class public final Lx0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final GLIDE_MODULE_VALUE:Ljava/lang/String; = "GlideModule"

.field private static final TAG:Ljava/lang/String; = "ManifestParser"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lx0/d;->context:Landroid/content/Context;

    .line 6
    return-void
.end method

.method private static b(Ljava/lang/String;)Lx0/b;
    .locals 3

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    goto :goto_5

    .line 19
    :catch_0
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :catch_1
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :catch_2
    move-exception v0

    .line 24
    goto :goto_2

    .line 25
    :catch_3
    move-exception v0

    .line 26
    goto :goto_3

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-static {p0, v0}, Lx0/d;->c(Ljava/lang/Class;Ljava/lang/Exception;)V

    .line 30
    goto :goto_4

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-static {p0, v0}, Lx0/d;->c(Ljava/lang/Class;Ljava/lang/Exception;)V

    .line 34
    goto :goto_4

    .line 35
    .line 36
    .line 37
    :goto_2
    invoke-static {p0, v0}, Lx0/d;->c(Ljava/lang/Class;Ljava/lang/Exception;)V

    .line 38
    goto :goto_4

    .line 39
    .line 40
    .line 41
    :goto_3
    invoke-static {p0, v0}, Lx0/d;->c(Ljava/lang/Class;Ljava/lang/Exception;)V

    .line 42
    :goto_4
    const/4 p0, 0x0

    .line 43
    .line 44
    :goto_5
    instance-of v0, p0, Lx0/b;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    check-cast p0, Lx0/b;

    .line 49
    return-object p0

    .line 50
    .line 51
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v2, "Expected instanceof GlideModule, but found: "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 72
    throw v0

    .line 73
    :catch_4
    move-exception p0

    .line 74
    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string v1, "Unable to find GlideModule implementation"

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    throw v0
.end method

.method private static c(Ljava/lang/Class;Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "Unable to instantiate GlideModule implementation for "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    throw v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx0/b;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ManifestParser"

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v2

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "Loading Glide modules"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    :try_start_0
    iget-object v3, p0, Lx0/d;->context:Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    iget-object v4, p0, Lx0/d;->context:Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    const/16 v5, 0x80

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 40
    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    const-string v1, "Got null app info metadata"

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    :goto_0
    return-object v2

    .line 57
    :cond_2
    const/4 v4, 0x2

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 61
    move-result v4

    .line 62
    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    const-string v5, "Got app info metadata: "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    :cond_3
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 91
    move-result-object v4

    .line 92
    .line 93
    .line 94
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 95
    move-result-object v4

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    move-result v5

    .line 100
    .line 101
    if-eqz v5, :cond_5

    .line 102
    .line 103
    .line 104
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    move-result-object v5

    .line 106
    .line 107
    check-cast v5, Ljava/lang/String;

    .line 108
    .line 109
    const-string v6, "GlideModule"

    .line 110
    .line 111
    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    move-result-object v7

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v6

    .line 120
    .line 121
    if-eqz v6, :cond_4

    .line 122
    .line 123
    .line 124
    invoke-static {v5}, Lx0/d;->b(Ljava/lang/String;)Lx0/b;

    .line 125
    move-result-object v6

    .line 126
    .line 127
    .line 128
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 132
    move-result v6

    .line 133
    .line 134
    if-eqz v6, :cond_4

    .line 135
    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    const-string v7, "Loaded Glide module: "

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v5

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_1

    .line 156
    .line 157
    .line 158
    :cond_5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 159
    move-result v1

    .line 160
    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    const-string v1, "Finished loading Glide modules"

    .line 164
    .line 165
    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_6
    return-object v2

    .line 168
    .line 169
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 170
    .line 171
    const-string v2, "Unable to find metadata to parse GlideModules"

    .line 172
    .line 173
    .line 174
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    throw v1
.end method
