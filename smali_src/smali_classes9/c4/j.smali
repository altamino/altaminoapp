.class public Lc4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/j$a;
    }
.end annotation


# static fields
.field private static final CRASHLYTICS_REPORT_JSON_ENCODER:Lj4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/encoders/json/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/encoders/json/d;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/a;->CONFIG:Lk4/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/json/d;->j(Lk4/a;)Lcom/google/firebase/encoders/json/d;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/json/d;->k(Z)Lcom/google/firebase/encoders/json/d;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/firebase/encoders/json/d;->i()Lj4/a;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sput-object v0, Lc4/j;->CRASHLYTICS_REPORT_JSON_ENCODER:Lj4/a;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static A(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;
    .locals 3
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    const-string v2, "assignments"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    new-instance v1, Lc4/c;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1}, Lc4/c;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v1}, Lc4/j;->n(Landroid/util/JsonReader;Lc4/j$a;)Ljava/util/List;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f$a;->b(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f$a;

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method private static B(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v2, "name"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x2

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "code"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v3, 0x1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string v2, "address"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v3, 0x0

    .line 62
    .line 63
    .line 64
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;->d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;

    .line 76
    goto :goto_0

    .line 77
    .line 78
    .line 79
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 88
    move-result-wide v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;->b(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;

    .line 92
    goto :goto_0

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;

    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    :sswitch_data_0
    .sparse-switch
        -0x4468640c -> :sswitch_2
        0x2eaded -> :sswitch_1
        0x337a8b -> :sswitch_0
    .end sparse-switch

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static C(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v2, "importance"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x2

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "name"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v3, 0x1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string v2, "frames"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v3, 0x0

    .line 62
    .line 63
    .line 64
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 72
    move-result v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;->c(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;

    .line 76
    goto :goto_0

    .line 77
    .line 78
    .line 79
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;->d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :pswitch_2
    new-instance v1, Lc4/i;

    .line 87
    .line 88
    .line 89
    invoke-direct {v1}, Lc4/i;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v1}, Lc4/j;->n(Landroid/util/JsonReader;Lc4/j$a;)Ljava/util/List;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;->b(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;

    .line 97
    goto :goto_0

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;

    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    nop

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :sswitch_data_0
    .sparse-switch
        -0x4b7d7b5a -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x7eb2da74 -> :sswitch_0
    .end sparse-switch

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static D(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$d$b;
    .locals 3
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$d$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$d$b$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    const-string v2, "filename"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    const-string v2, "contents"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x2

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$d$b$a;->b([B)Lcom/google/firebase/crashlytics/internal/model/f0$d$b$a;

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$d$b$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$d$b$a;

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$d$b$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$d$b;

    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method private static E(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$d;
    .locals 3
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$d;->a()Lcom/google/firebase/crashlytics/internal/model/f0$d$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    const-string v2, "files"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    const-string v2, "orgId"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$d$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$d$a;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    new-instance v1, Lc4/b;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1}, Lc4/b;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v1}, Lc4/j;->n(Landroid/util/JsonReader;Lc4/j$a;)Ljava/util/List;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$d$a;->b(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$d$a;

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$d$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$d;

    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method private static F(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$e;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$e;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v2, "platform"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x3

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "version"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v3, 0x2

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string v2, "jailbroken"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v3, 0x1

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :sswitch_3
    const-string v2, "buildVersion"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v3, 0x0

    .line 73
    .line 74
    .line 75
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 83
    move-result v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;->d(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;

    .line 87
    goto :goto_0

    .line 88
    .line 89
    .line 90
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 99
    move-result v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;->c(Z)Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;

    .line 103
    goto :goto_0

    .line 104
    .line 105
    .line 106
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;

    .line 111
    goto :goto_0

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$e;

    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    nop

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    :sswitch_data_0
    .sparse-switch
        -0x36578976 -> :sswitch_3
        -0x11773b11 -> :sswitch_2
        0x14f51cd8 -> :sswitch_1
        0x6fbd6873 -> :sswitch_0
    .end sparse-switch

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static G(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v2, "importance"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x3

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "defaultProcess"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v3, 0x2

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string v2, "processName"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v3, 0x1

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :sswitch_3
    const-string v2, "pid"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v3, 0x0

    .line 73
    .line 74
    .line 75
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 83
    move-result v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c$a;->c(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c$a;

    .line 87
    goto :goto_0

    .line 88
    .line 89
    .line 90
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 91
    move-result v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c$a;->b(Z)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c$a;

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c$a;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c$a;

    .line 103
    goto :goto_0

    .line 104
    .line 105
    .line 106
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 107
    move-result v1

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c$a;->d(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c$a;

    .line 111
    goto :goto_0

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    nop

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    :sswitch_data_0
    .sparse-switch
        0x1b18b -> :sswitch_3
        0xc0f3d9a -> :sswitch_2
        0x650184ee -> :sswitch_1
        0x7eb2da74 -> :sswitch_0
    .end sparse-switch

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static H(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0;->b()Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_b

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :sswitch_0
    const-string v2, "session"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_0
    const/16 v3, 0xa

    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :sswitch_1
    const-string v2, "displayVersion"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_1
    const/16 v3, 0x9

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :sswitch_2
    const-string v2, "platform"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v1

    .line 65
    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_2
    const/16 v3, 0x8

    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :sswitch_3
    const-string v2, "firebaseInstallationId"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v1

    .line 79
    .line 80
    if-nez v1, :cond_3

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const/4 v3, 0x7

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :sswitch_4
    const-string v2, "installationUuid"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v1

    .line 90
    .line 91
    if-nez v1, :cond_4

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    const/4 v3, 0x6

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :sswitch_5
    const-string v2, "gmpAppId"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v1

    .line 101
    .line 102
    if-nez v1, :cond_5

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    const/4 v3, 0x5

    .line 105
    goto :goto_1

    .line 106
    .line 107
    :sswitch_6
    const-string v2, "buildVersion"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v1

    .line 112
    .line 113
    if-nez v1, :cond_6

    .line 114
    goto :goto_1

    .line 115
    :cond_6
    const/4 v3, 0x4

    .line 116
    goto :goto_1

    .line 117
    .line 118
    :sswitch_7
    const-string v2, "appExitInfo"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v1

    .line 123
    .line 124
    if-nez v1, :cond_7

    .line 125
    goto :goto_1

    .line 126
    :cond_7
    const/4 v3, 0x3

    .line 127
    goto :goto_1

    .line 128
    .line 129
    :sswitch_8
    const-string v2, "appQualitySessionId"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v1

    .line 134
    .line 135
    if-nez v1, :cond_8

    .line 136
    goto :goto_1

    .line 137
    :cond_8
    const/4 v3, 0x2

    .line 138
    goto :goto_1

    .line 139
    .line 140
    :sswitch_9
    const-string v2, "sdkVersion"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v1

    .line 145
    .line 146
    if-nez v1, :cond_9

    .line 147
    goto :goto_1

    .line 148
    :cond_9
    const/4 v3, 0x1

    .line 149
    goto :goto_1

    .line 150
    .line 151
    :sswitch_a
    const-string v2, "ndkPayload"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    move-result v1

    .line 156
    .line 157
    if-nez v1, :cond_a

    .line 158
    goto :goto_1

    .line 159
    :cond_a
    const/4 v3, 0x0

    .line 160
    .line 161
    .line 162
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    .line 170
    :pswitch_0
    invoke-static {p0}, Lc4/j;->J(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->l(Lcom/google/firebase/crashlytics/internal/model/f0$e;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    .line 179
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 180
    move-result-object v1

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    .line 188
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 189
    move-result v1

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->j(I)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    .line 197
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 198
    move-result-object v1

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    .line 206
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 207
    move-result-object v1

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->h(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    .line 215
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 216
    move-result-object v1

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->g(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    .line 224
    :pswitch_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 225
    move-result-object v1

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    .line 233
    :pswitch_7
    invoke-static {p0}, Lc4/j;->m(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$a;

    .line 234
    move-result-object v1

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->b(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    .line 242
    :pswitch_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 243
    move-result-object v1

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    .line 251
    :pswitch_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 252
    move-result-object v1

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->k(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    .line 260
    :pswitch_a
    invoke-static {p0}, Lc4/j;->E(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$d;

    .line 261
    move-result-object v1

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->i(Lcom/google/firebase/crashlytics/internal/model/f0$d;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    .line 269
    :cond_b
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 273
    move-result-object p0

    .line 274
    return-object p0

    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    :sswitch_data_0
    .sparse-switch
        -0x7e43cda7 -> :sswitch_a
        -0x74fb5cc2 -> :sswitch_9
        -0x71ad57ad -> :sswitch_8
        -0x51f6ffd3 -> :sswitch_7
        -0x36578976 -> :sswitch_6
        0x14879cf2 -> :sswitch_5
        0x2ae81915 -> :sswitch_4
        0x3e71e6dc -> :sswitch_3
        0x6fbd6873 -> :sswitch_2
        0x75c19db6 -> :sswitch_1
        0x76508296 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static I(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$b;
    .locals 3
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$b$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    const-string v2, "variantId"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    const-string v2, "rolloutId"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$b$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$b$a;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$b$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$b$a;

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$b$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$b;

    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

.method private static J(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e;
    .locals 5
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_c

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v4, -0x1

    .line 27
    .line 28
    .line 29
    sparse-switch v2, :sswitch_data_0

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :sswitch_0
    const-string v2, "generatorType"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_0
    const/16 v4, 0xb

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :sswitch_1
    const-string v2, "crashed"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_1
    const/16 v4, 0xa

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :sswitch_2
    const-string v2, "generator"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_2
    const/16 v4, 0x9

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :sswitch_3
    const-string v2, "user"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 80
    .line 81
    if-nez v1, :cond_3

    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :cond_3
    const/16 v4, 0x8

    .line 86
    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :sswitch_4
    const-string v2, "app"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v1

    .line 94
    .line 95
    if-nez v1, :cond_4

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    const/4 v4, 0x7

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :sswitch_5
    const-string v2, "os"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v1

    .line 105
    .line 106
    if-nez v1, :cond_5

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    const/4 v4, 0x6

    .line 109
    goto :goto_1

    .line 110
    .line 111
    :sswitch_6
    const-string v2, "events"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v1

    .line 116
    .line 117
    if-nez v1, :cond_6

    .line 118
    goto :goto_1

    .line 119
    :cond_6
    const/4 v4, 0x5

    .line 120
    goto :goto_1

    .line 121
    .line 122
    :sswitch_7
    const-string v2, "device"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v1

    .line 127
    .line 128
    if-nez v1, :cond_7

    .line 129
    goto :goto_1

    .line 130
    :cond_7
    const/4 v4, 0x4

    .line 131
    goto :goto_1

    .line 132
    .line 133
    :sswitch_8
    const-string v2, "endedAt"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result v1

    .line 138
    .line 139
    if-nez v1, :cond_8

    .line 140
    goto :goto_1

    .line 141
    :cond_8
    const/4 v4, 0x3

    .line 142
    goto :goto_1

    .line 143
    .line 144
    :sswitch_9
    const-string v2, "identifier"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v1

    .line 149
    .line 150
    if-nez v1, :cond_9

    .line 151
    goto :goto_1

    .line 152
    :cond_9
    move v4, v3

    .line 153
    goto :goto_1

    .line 154
    .line 155
    :sswitch_a
    const-string v2, "appQualitySessionId"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v1

    .line 160
    .line 161
    if-nez v1, :cond_a

    .line 162
    goto :goto_1

    .line 163
    :cond_a
    const/4 v4, 0x1

    .line 164
    goto :goto_1

    .line 165
    .line 166
    :sswitch_b
    const-string v2, "startedAt"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result v1

    .line 171
    .line 172
    if-nez v1, :cond_b

    .line 173
    goto :goto_1

    .line 174
    :cond_b
    const/4 v4, 0x0

    .line 175
    .line 176
    .line 177
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    .line 185
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 186
    move-result v1

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->i(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    .line 194
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 195
    move-result v1

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->d(Z)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    .line 203
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 204
    move-result-object v1

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->h(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    .line 212
    :pswitch_3
    invoke-static {p0}, Lc4/j;->K(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$f;

    .line 213
    move-result-object v1

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->n(Lcom/google/firebase/crashlytics/internal/model/f0$e$f;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    .line 221
    :pswitch_4
    invoke-static {p0}, Lc4/j;->l(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$a;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->b(Lcom/google/firebase/crashlytics/internal/model/f0$e$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    .line 230
    :pswitch_5
    invoke-static {p0}, Lc4/j;->F(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$e;

    .line 231
    move-result-object v1

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->l(Lcom/google/firebase/crashlytics/internal/model/f0$e$e;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :pswitch_6
    new-instance v1, Lc4/a;

    .line 239
    .line 240
    .line 241
    invoke-direct {v1}, Lc4/a;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-static {p0, v1}, Lc4/j;->n(Landroid/util/JsonReader;Lc4/j$a;)Ljava/util/List;

    .line 245
    move-result-object v1

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->g(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    .line 253
    :pswitch_7
    invoke-static {p0}, Lc4/j;->q(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$c;

    .line 254
    move-result-object v1

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->e(Lcom/google/firebase/crashlytics/internal/model/f0$e$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    .line 262
    :pswitch_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 263
    move-result-wide v1

    .line 264
    .line 265
    .line 266
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 267
    move-result-object v1

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->f(Ljava/lang/Long;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    .line 275
    :pswitch_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 276
    move-result-object v1

    .line 277
    .line 278
    .line 279
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 280
    move-result-object v1

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->k([B)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    .line 288
    :pswitch_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 289
    move-result-object v1

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    .line 297
    :pswitch_b
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 298
    move-result-wide v1

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->m(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    .line 306
    :cond_c
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 310
    move-result-object p0

    .line 311
    return-object p0

    .line 312
    nop

    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    :sswitch_data_0
    .sparse-switch
        -0x7ee2d36c -> :sswitch_b
        -0x71ad57ad -> :sswitch_a
        -0x60775357 -> :sswitch_9
        -0x5fc4f373 -> :sswitch_8
        -0x4f94e1aa -> :sswitch_7
        -0x4cf81ee7 -> :sswitch_6
        0xde4 -> :sswitch_5
        0x17a21 -> :sswitch_4
        0x36ebcb -> :sswitch_3
        0x111a9ad3 -> :sswitch_2
        0x3d1e2286 -> :sswitch_1
        0x7a02fcad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static K(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$f;
    .locals 3
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$f;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$f$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const-string v2, "identifier"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$f$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$f$a;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$f$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$f;

    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static synthetic a(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;
    .locals 0

    .line 1
    invoke-static {p0}, Lc4/j;->r(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e;
    .locals 0

    .line 1
    invoke-static {p0}, Lc4/j;->z(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$a$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lc4/j;->o(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$a$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b;
    .locals 0

    .line 1
    invoke-static {p0}, Lc4/j;->x(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;
    .locals 0

    .line 1
    invoke-static {p0}, Lc4/j;->G(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;
    .locals 0

    .line 1
    invoke-static {p0}, Lc4/j;->C(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$d$b;
    .locals 0

    .line 1
    invoke-static {p0}, Lc4/j;->D(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$d$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lc4/j;->t(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$c;
    .locals 0

    .line 1
    invoke-static {p0}, Lc4/j;->p(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$c;

    move-result-object p0

    return-object p0
.end method

.method private static l(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$a;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_6

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v2, "displayVersion"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x5

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "installationUuid"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v3, 0x4

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string v2, "version"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v3, 0x3

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :sswitch_3
    const-string v2, "developmentPlatformVersion"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v3, 0x2

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :sswitch_4
    const-string v2, "developmentPlatform"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 80
    .line 81
    if-nez v1, :cond_4

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const/4 v3, 0x1

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :sswitch_5
    const-string v2, "identifier"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v1

    .line 91
    .line 92
    if-nez v1, :cond_5

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    const/4 v3, 0x0

    .line 95
    .line 96
    .line 97
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;->d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;

    .line 109
    goto :goto_0

    .line 110
    .line 111
    .line 112
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;->f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;

    .line 117
    goto :goto_0

    .line 118
    .line 119
    .line 120
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;->g(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;

    .line 125
    goto :goto_0

    .line 126
    .line 127
    .line 128
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;

    .line 133
    goto :goto_0

    .line 134
    .line 135
    .line 136
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    .line 145
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    .line 154
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$a;

    .line 158
    move-result-object p0

    .line 159
    return-object p0

    .line 160
    nop

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    :sswitch_data_0
    .sparse-switch
        -0x60775357 -> :sswitch_5
        -0x1ef60132 -> :sswitch_4
        0xcbc122a -> :sswitch_3
        0x14f51cd8 -> :sswitch_2
        0x2ae81915 -> :sswitch_1
        0x75c19db6 -> :sswitch_0
    .end sparse-switch

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static m(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$a;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_9

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :sswitch_0
    const-string v2, "importance"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_0
    const/16 v3, 0x8

    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :sswitch_1
    const-string v2, "traceFile"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v3, 0x7

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :sswitch_2
    const-string v2, "reasonCode"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-nez v1, :cond_2

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v3, 0x6

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :sswitch_3
    const-string v2, "processName"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v1

    .line 73
    .line 74
    if-nez v1, :cond_3

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    const/4 v3, 0x5

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :sswitch_4
    const-string v2, "timestamp"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v1

    .line 84
    .line 85
    if-nez v1, :cond_4

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const/4 v3, 0x4

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :sswitch_5
    const-string v2, "rss"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v1

    .line 95
    .line 96
    if-nez v1, :cond_5

    .line 97
    goto :goto_1

    .line 98
    :cond_5
    const/4 v3, 0x3

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :sswitch_6
    const-string v2, "pss"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v1

    .line 106
    .line 107
    if-nez v1, :cond_6

    .line 108
    goto :goto_1

    .line 109
    :cond_6
    const/4 v3, 0x2

    .line 110
    goto :goto_1

    .line 111
    .line 112
    :sswitch_7
    const-string v2, "pid"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v1

    .line 117
    .line 118
    if-nez v1, :cond_7

    .line 119
    goto :goto_1

    .line 120
    :cond_7
    const/4 v3, 0x1

    .line 121
    goto :goto_1

    .line 122
    .line 123
    :sswitch_8
    const-string v2, "buildIdMappingForArch"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v1

    .line 128
    .line 129
    if-nez v1, :cond_8

    .line 130
    goto :goto_1

    .line 131
    :cond_8
    const/4 v3, 0x0

    .line 132
    .line 133
    .line 134
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    .line 142
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 143
    move-result v1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->c(I)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    .line 151
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->j(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    .line 160
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 161
    move-result v1

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->g(I)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    .line 169
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    .line 178
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 179
    move-result-wide v1

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->i(J)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    .line 187
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 188
    move-result-wide v1

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->h(J)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    .line 196
    :pswitch_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 197
    move-result-wide v1

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->f(J)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    .line 205
    :pswitch_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 206
    move-result v1

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->d(I)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :pswitch_8
    new-instance v1, Lc4/f;

    .line 214
    .line 215
    .line 216
    invoke-direct {v1}, Lc4/f;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-static {p0, v1}, Lc4/j;->n(Landroid/util/JsonReader;Lc4/j$a;)Ljava/util/List;

    .line 220
    move-result-object v1

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->b(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    .line 228
    :cond_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$a;

    .line 232
    move-result-object p0

    .line 233
    return-object p0

    .line 234
    nop

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    :sswitch_data_0
    .sparse-switch
        -0x5a5f6366 -> :sswitch_8
        0x1b18b -> :sswitch_7
        0x1b2d0 -> :sswitch_6
        0x1ba52 -> :sswitch_5
        0x3492916 -> :sswitch_4
        0xc0f3d9a -> :sswitch_3
        0x2b0af251 -> :sswitch_2
        0x2b253061 -> :sswitch_1
        0x7eb2da74 -> :sswitch_0
    .end sparse-switch

    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static n(Landroid/util/JsonReader;Lc4/j$a;)Ljava/util/List;
    .locals 2
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lc4/j$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lc4/j$a<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0}, Lc4/j$a;->a(Landroid/util/JsonReader;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method private static o(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$a$a;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$a$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v2, "buildId"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x2

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "arch"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v3, 0x1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string v2, "libraryName"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v3, 0x0

    .line 62
    .line 63
    .line 64
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;

    .line 76
    goto :goto_0

    .line 77
    .line 78
    .line 79
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;->d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;

    .line 92
    goto :goto_0

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$a$a;

    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    :sswitch_data_0
    .sparse-switch
        -0x2459c21a -> :sswitch_2
        0x2dd056 -> :sswitch_1
        0xdc3ec29 -> :sswitch_0
    .end sparse-switch

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static p(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$c;
    .locals 3
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$c;->a()Lcom/google/firebase/crashlytics/internal/model/f0$c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    const-string v2, "key"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    const-string v2, "value"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$c$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$c$a;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$c$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$c$a;

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$c$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$c;

    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

.method private static q(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$c;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_9

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :sswitch_0
    const-string v2, "modelClass"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_0
    const/16 v3, 0x8

    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :sswitch_1
    const-string v2, "state"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v3, 0x7

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :sswitch_2
    const-string v2, "model"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-nez v1, :cond_2

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v3, 0x6

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :sswitch_3
    const-string v2, "cores"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v1

    .line 73
    .line 74
    if-nez v1, :cond_3

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    const/4 v3, 0x5

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :sswitch_4
    const-string v2, "diskSpace"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v1

    .line 84
    .line 85
    if-nez v1, :cond_4

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const/4 v3, 0x4

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :sswitch_5
    const-string v2, "arch"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v1

    .line 95
    .line 96
    if-nez v1, :cond_5

    .line 97
    goto :goto_1

    .line 98
    :cond_5
    const/4 v3, 0x3

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :sswitch_6
    const-string v2, "ram"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v1

    .line 106
    .line 107
    if-nez v1, :cond_6

    .line 108
    goto :goto_1

    .line 109
    :cond_6
    const/4 v3, 0x2

    .line 110
    goto :goto_1

    .line 111
    .line 112
    :sswitch_7
    const-string v2, "manufacturer"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v1

    .line 117
    .line 118
    if-nez v1, :cond_7

    .line 119
    goto :goto_1

    .line 120
    :cond_7
    const/4 v3, 0x1

    .line 121
    goto :goto_1

    .line 122
    .line 123
    :sswitch_8
    const-string v2, "simulator"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v1

    .line 128
    .line 129
    if-nez v1, :cond_8

    .line 130
    goto :goto_1

    .line 131
    :cond_8
    const/4 v3, 0x0

    .line 132
    .line 133
    .line 134
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    .line 142
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->g(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    .line 151
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 152
    move-result v1

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->j(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    .line 160
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 161
    move-result-object v1

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    .line 169
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 170
    move-result v1

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->c(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    .line 178
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 179
    move-result-wide v1

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->d(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    .line 187
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 188
    move-result v1

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->b(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    .line 196
    :pswitch_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 197
    move-result-wide v1

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->h(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    .line 205
    :pswitch_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    .line 214
    :pswitch_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 215
    move-result v1

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->i(Z)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    .line 223
    :cond_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$c;

    .line 227
    move-result-object p0

    .line 228
    return-object p0

    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    :sswitch_data_0
    .sparse-switch
        -0x7618bbfc -> :sswitch_8
        -0x7561dc2f -> :sswitch_7
        0x1b81e -> :sswitch_6
        0x2dd056 -> :sswitch_5
        0x4dfed69 -> :sswitch_4
        0x5a744b4 -> :sswitch_3
        0x633fb29 -> :sswitch_2
        0x68ac491 -> :sswitch_1
        0x7bea4fcf -> :sswitch_0
    .end sparse-switch

    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static r(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_6

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v2, "timestamp"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x5

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "type"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v3, 0x4

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string v2, "log"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v3, 0x3

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :sswitch_3
    const-string v2, "app"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v3, 0x2

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :sswitch_4
    const-string v2, "rollouts"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 80
    .line 81
    if-nez v1, :cond_4

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const/4 v3, 0x1

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :sswitch_5
    const-string v2, "device"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v1

    .line 91
    .line 92
    if-nez v1, :cond_5

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    const/4 v3, 0x0

    .line 95
    .line 96
    .line 97
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 105
    move-result-wide v1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->f(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 109
    goto :goto_0

    .line 110
    .line 111
    .line 112
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->g(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 117
    goto :goto_0

    .line 118
    .line 119
    .line 120
    :pswitch_2
    invoke-static {p0}, Lc4/j;->y(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->d(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 125
    goto :goto_0

    .line 126
    .line 127
    .line 128
    :pswitch_3
    invoke-static {p0}, Lc4/j;->s(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->b(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 133
    goto :goto_0

    .line 134
    .line 135
    .line 136
    :pswitch_4
    invoke-static {p0}, Lc4/j;->A(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->e(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    .line 145
    :pswitch_5
    invoke-static {p0}, Lc4/j;->u(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->c(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    .line 154
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 158
    move-result-object p0

    .line 159
    return-object p0

    .line 160
    nop

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    :sswitch_data_0
    .sparse-switch
        -0x4f94e1aa -> :sswitch_5
        -0xf74cb1e -> :sswitch_4
        0x17a21 -> :sswitch_3
        0x1a344 -> :sswitch_2
        0x368f3a -> :sswitch_1
        0x3492916 -> :sswitch_0
    .end sparse-switch

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static s(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_7

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v2, "currentProcessDetails"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x6

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "uiOrientation"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v3, 0x5

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string v2, "customAttributes"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v3, 0x4

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :sswitch_3
    const-string v2, "internalKeys"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v3, 0x3

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :sswitch_4
    const-string v2, "execution"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 80
    .line 81
    if-nez v1, :cond_4

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const/4 v3, 0x2

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :sswitch_5
    const-string v2, "background"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v1

    .line 91
    .line 92
    if-nez v1, :cond_5

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    const/4 v3, 0x1

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :sswitch_6
    const-string v2, "appProcessDetails"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v1

    .line 102
    .line 103
    if-nez v1, :cond_6

    .line 104
    goto :goto_1

    .line 105
    :cond_6
    const/4 v3, 0x0

    .line 106
    .line 107
    .line 108
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 112
    goto :goto_0

    .line 113
    .line 114
    .line 115
    :pswitch_0
    invoke-static {p0}, Lc4/j;->G(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->d(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 120
    goto :goto_0

    .line 121
    .line 122
    .line 123
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 124
    move-result v1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->h(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 128
    goto :goto_0

    .line 129
    .line 130
    :pswitch_2
    new-instance v1, Lc4/d;

    .line 131
    .line 132
    .line 133
    invoke-direct {v1}, Lc4/d;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-static {p0, v1}, Lc4/j;->n(Landroid/util/JsonReader;Lc4/j$a;)Ljava/util/List;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->e(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :pswitch_3
    new-instance v1, Lc4/d;

    .line 145
    .line 146
    .line 147
    invoke-direct {v1}, Lc4/d;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-static {p0, v1}, Lc4/j;->n(Landroid/util/JsonReader;Lc4/j$a;)Ljava/util/List;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->g(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    .line 159
    :pswitch_4
    invoke-static {p0}, Lc4/j;->v(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    .line 160
    move-result-object v1

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->f(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    .line 168
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 169
    move-result v1

    .line 170
    .line 171
    .line 172
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 173
    move-result-object v1

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->c(Ljava/lang/Boolean;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :pswitch_6
    new-instance v1, Lc4/e;

    .line 181
    .line 182
    .line 183
    invoke-direct {v1}, Lc4/e;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-static {p0, v1}, Lc4/j;->n(Landroid/util/JsonReader;Lc4/j$a;)Ljava/util/List;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->b(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    .line 195
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    :sswitch_data_0
    .sparse-switch
        -0x53c366ac -> :sswitch_6
        -0x4f67aad2 -> :sswitch_5
        -0x4106f4e8 -> :sswitch_4
        -0x4c83daf -> :sswitch_3
        0x211737a8 -> :sswitch_2
        0x375b6a9c -> :sswitch_1
        0x6e2222ac -> :sswitch_0
    .end sparse-switch

    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static t(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;
    .locals 5
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v4, -0x1

    .line 27
    .line 28
    .line 29
    sparse-switch v2, :sswitch_data_0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :sswitch_0
    const-string v2, "baseAddress"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v4, 0x3

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :sswitch_1
    const-string v2, "uuid"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v4, v3

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :sswitch_2
    const-string v2, "size"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 v4, 0x1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :sswitch_3
    const-string v2, "name"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-nez v1, :cond_3

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const/4 v4, 0x0

    .line 74
    .line 75
    .line 76
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    .line 83
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 84
    move-result-wide v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;->b(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;

    .line 88
    goto :goto_0

    .line 89
    .line 90
    .line 91
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;->f([B)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;

    .line 100
    goto :goto_0

    .line 101
    .line 102
    .line 103
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 104
    move-result-wide v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;->d(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;

    .line 108
    goto :goto_0

    .line 109
    .line 110
    .line 111
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;

    .line 116
    goto :goto_0

    .line 117
    .line 118
    .line 119
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;

    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    :sswitch_data_0
    .sparse-switch
        0x337a8b -> :sswitch_3
        0x35e001 -> :sswitch_2
        0x36f3bb -> :sswitch_1
        0x44c50fe3 -> :sswitch_0
    .end sparse-switch

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static u(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_6

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v2, "proximityOn"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x5

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "ramUsed"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v3, 0x4

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string v2, "diskUsed"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v3, 0x3

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :sswitch_3
    const-string v2, "orientation"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v3, 0x2

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :sswitch_4
    const-string v2, "batteryVelocity"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 80
    .line 81
    if-nez v1, :cond_4

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const/4 v3, 0x1

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :sswitch_5
    const-string v2, "batteryLevel"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v1

    .line 91
    .line 92
    if-nez v1, :cond_5

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    const/4 v3, 0x0

    .line 95
    .line 96
    .line 97
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 105
    move-result v1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;->f(Z)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;

    .line 109
    goto :goto_0

    .line 110
    .line 111
    .line 112
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 113
    move-result-wide v1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;->g(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;

    .line 117
    goto :goto_0

    .line 118
    .line 119
    .line 120
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 121
    move-result-wide v1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;->d(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;

    .line 125
    goto :goto_0

    .line 126
    .line 127
    .line 128
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 129
    move-result v1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;->e(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;

    .line 133
    goto :goto_0

    .line 134
    .line 135
    .line 136
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 137
    move-result v1

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;->c(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    .line 145
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    .line 146
    move-result-wide v1

    .line 147
    .line 148
    .line 149
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;->b(Ljava/lang/Double;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    .line 158
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    .line 162
    move-result-object p0

    .line 163
    return-object p0

    .line 164
    nop

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    :sswitch_data_0
    .sparse-switch
        -0x65d74289 -> :sswitch_5
        -0x56c20df6 -> :sswitch_4
        -0x55cd0a30 -> :sswitch_3
        0x10ad56fa -> :sswitch_2
        0x3a34d8fb -> :sswitch_1
        0x5a6876be -> :sswitch_0
    .end sparse-switch

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static v(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v2, "exception"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x4

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "binaries"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v3, 0x3

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string v2, "signal"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v3, 0x2

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :sswitch_3
    const-string v2, "threads"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v3, 0x1

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :sswitch_4
    const-string v2, "appExitInfo"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 80
    .line 81
    if-nez v1, :cond_4

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const/4 v3, 0x0

    .line 84
    .line 85
    .line 86
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :pswitch_0
    invoke-static {p0}, Lc4/j;->w(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->d(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 98
    goto :goto_0

    .line 99
    .line 100
    :pswitch_1
    new-instance v1, Lc4/h;

    .line 101
    .line 102
    .line 103
    invoke-direct {v1}, Lc4/h;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-static {p0, v1}, Lc4/j;->n(Landroid/util/JsonReader;Lc4/j$a;)Ljava/util/List;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->c(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 111
    goto :goto_0

    .line 112
    .line 113
    .line 114
    :pswitch_2
    invoke-static {p0}, Lc4/j;->B(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->e(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 119
    goto :goto_0

    .line 120
    .line 121
    :pswitch_3
    new-instance v1, Lc4/g;

    .line 122
    .line 123
    .line 124
    invoke-direct {v1}, Lc4/g;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-static {p0, v1}, Lc4/j;->n(Landroid/util/JsonReader;Lc4/j$a;)Ljava/util/List;

    .line 128
    move-result-object v1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->f(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 132
    goto :goto_0

    .line 133
    .line 134
    .line 135
    :pswitch_4
    invoke-static {p0}, Lc4/j;->m(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$a;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->b(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    .line 144
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    .line 148
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    nop

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    :sswitch_data_0
    .sparse-switch
        -0x51f6ffd3 -> :sswitch_4
        -0x4fbf4c57 -> :sswitch_3
        -0x35ca9158 -> :sswitch_2
        0x37e2e05f -> :sswitch_1
        0x584fd04f -> :sswitch_0
    .end sparse-switch

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static w(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v2, "overflowCount"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x4

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "causedBy"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v3, 0x3

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string v2, "type"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v3, 0x2

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :sswitch_3
    const-string v2, "reason"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v3, 0x1

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :sswitch_4
    const-string v2, "frames"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 80
    .line 81
    if-nez v1, :cond_4

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const/4 v3, 0x0

    .line 84
    .line 85
    .line 86
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 94
    move-result v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;->d(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;

    .line 98
    goto :goto_0

    .line 99
    .line 100
    .line 101
    :pswitch_1
    invoke-static {p0}, Lc4/j;->w(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;->b(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;->f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;

    .line 114
    goto :goto_0

    .line 115
    .line 116
    .line 117
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;

    .line 122
    goto :goto_0

    .line 123
    .line 124
    :pswitch_4
    new-instance v1, Lc4/i;

    .line 125
    .line 126
    .line 127
    invoke-direct {v1}, Lc4/i;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-static {p0, v1}, Lc4/j;->n(Landroid/util/JsonReader;Lc4/j$a;)Ljava/util/List;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;->c(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;

    .line 135
    goto :goto_0

    .line 136
    .line 137
    .line 138
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;

    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    nop

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    :sswitch_data_0
    .sparse-switch
        -0x4b7d7b5a -> :sswitch_4
        -0x37ba6dbc -> :sswitch_3
        0x368f3a -> :sswitch_2
        0x57bc6d2 -> :sswitch_1
        0x22acde2d -> :sswitch_0
    .end sparse-switch

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static x(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v2, "importance"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x4

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "file"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v3, 0x3

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string v2, "pc"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v3, 0x2

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :sswitch_3
    const-string v2, "symbol"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v3, 0x1

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :sswitch_4
    const-string v2, "offset"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 80
    .line 81
    if-nez v1, :cond_4

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const/4 v3, 0x0

    .line 84
    .line 85
    .line 86
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 94
    move-result v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;->c(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;

    .line 98
    goto :goto_0

    .line 99
    .line 100
    .line 101
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 110
    move-result-wide v1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;->e(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;

    .line 114
    goto :goto_0

    .line 115
    .line 116
    .line 117
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;->f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;

    .line 122
    goto :goto_0

    .line 123
    .line 124
    .line 125
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 126
    move-result-wide v1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;->d(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;

    .line 130
    goto :goto_0

    .line 131
    .line 132
    .line 133
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b;

    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    :sswitch_data_0
    .sparse-switch
        -0x3cc89b6d -> :sswitch_4
        -0x34e68a68 -> :sswitch_3
        0xdf3 -> :sswitch_2
        0x2ff57c -> :sswitch_1
        0x7eb2da74 -> :sswitch_0
    .end sparse-switch

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static y(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;
    .locals 3
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const-string v2, "content"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d$a;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method private static z(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e;
    .locals 4
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v2, "parameterValue"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x3

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "rolloutVariant"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v3, 0x2

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string v2, "templateVersion"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v3, 0x1

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :sswitch_3
    const-string v2, "parameterKey"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v3, 0x0

    .line 73
    .line 74
    .line 75
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$a;

    .line 87
    goto :goto_0

    .line 88
    .line 89
    .line 90
    :pswitch_1
    invoke-static {p0}, Lc4/j;->I(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$b;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$a;->d(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$b;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$a;

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 99
    move-result-wide v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$a;->e(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$a;

    .line 103
    goto :goto_0

    .line 104
    .line 105
    .line 106
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$a;

    .line 111
    goto :goto_0

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e;

    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    nop

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    :sswitch_data_0
    .sparse-switch
        -0x5b919a0a -> :sswitch_3
        -0x3d3b3502 -> :sswitch_2
        0x417d8d94 -> :sswitch_1
        0x4305cf48 -> :sswitch_0
    .end sparse-switch

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public L(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    .line 3
    .line 4
    new-instance v1, Ljava/io/StringReader;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-static {v0}, Lc4/j;->H(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 14
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    return-object p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    .line 23
    .line 24
    :try_start_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    goto :goto_0

    .line 26
    :catchall_1
    move-exception v0

    .line 27
    .line 28
    .line 29
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 30
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 31
    .line 32
    :goto_1
    new-instance v0, Ljava/io/IOException;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    throw v0
.end method

.method public M(Lcom/google/firebase/crashlytics/internal/model/f0;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/google/firebase/crashlytics/internal/model/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lc4/j;->CRASHLYTICS_REPORT_JSON_ENCODER:Lj4/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lj4/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public j(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    .line 3
    .line 4
    new-instance v1, Ljava/io/StringReader;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-static {v0}, Lc4/j;->r(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 14
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    return-object p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    .line 23
    .line 24
    :try_start_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    goto :goto_0

    .line 26
    :catchall_1
    move-exception v0

    .line 27
    .line 28
    .line 29
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 30
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 31
    .line 32
    :goto_1
    new-instance v0, Ljava/io/IOException;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    throw v0
.end method

.method public k(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/google/firebase/crashlytics/internal/model/f0$e$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lc4/j;->CRASHLYTICS_REPORT_JSON_ENCODER:Lj4/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lj4/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
