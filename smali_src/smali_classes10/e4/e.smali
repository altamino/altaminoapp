.class public Le4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EVENT_COUNTER_FORMAT:Ljava/lang/String; = "%010d"

.field private static final EVENT_COUNTER_WIDTH:I = 0xa

.field private static final EVENT_FILE_FILTER:Ljava/io/FilenameFilter;

.field private static final EVENT_FILE_NAME_PREFIX:Ljava/lang/String; = "event"

.field private static final EVENT_NAME_LENGTH:I

.field private static final LATEST_SESSION_ID_FIRST_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_OPEN_SESSIONS:I = 0x8

.field private static final NORMAL_EVENT_SUFFIX:Ljava/lang/String; = ""

.field private static final PRIORITY_EVENT_SUFFIX:Ljava/lang/String; = "_"

.field private static final REPORT_FILE_NAME:Ljava/lang/String; = "report"

.field private static final SESSION_START_TIMESTAMP_FILE_NAME:Ljava/lang/String; = "start-time"

.field private static final TRANSFORM:Lc4/j;

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final fileStore:Le4/f;

.field private final sessionsSubscriber:Lcom/google/firebase/crashlytics/internal/common/m;

.field private final settingsProvider:Lcom/google/firebase/crashlytics/internal/settings/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "UTF-8"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Le4/e;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    const/16 v0, 0xf

    .line 11
    .line 12
    sput v0, Le4/e;->EVENT_NAME_LENGTH:I

    .line 13
    .line 14
    new-instance v0, Lc4/j;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Lc4/j;-><init>()V

    .line 18
    .line 19
    sput-object v0, Le4/e;->TRANSFORM:Lc4/j;

    .line 20
    .line 21
    new-instance v0, Le4/c;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Le4/c;-><init>()V

    .line 25
    .line 26
    sput-object v0, Le4/e;->LATEST_SESSION_ID_FIRST_COMPARATOR:Ljava/util/Comparator;

    .line 27
    .line 28
    new-instance v0, Le4/d;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Le4/d;-><init>()V

    .line 32
    .line 33
    sput-object v0, Le4/e;->EVENT_FILE_FILTER:Ljava/io/FilenameFilter;

    .line 34
    return-void
.end method

.method public constructor <init>(Le4/f;Lcom/google/firebase/crashlytics/internal/settings/i;Lcom/google/firebase/crashlytics/internal/common/m;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    .line 11
    iput-object v0, p0, Le4/e;->eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    iput-object p1, p0, Le4/e;->fileStore:Le4/f;

    .line 14
    .line 15
    iput-object p2, p0, Le4/e;->settingsProvider:Lcom/google/firebase/crashlytics/internal/settings/i;

    .line 16
    .line 17
    iput-object p3, p0, Le4/e;->sessionsSubscriber:Lcom/google/firebase/crashlytics/internal/common/m;

    .line 18
    return-void
.end method

.method private static A(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/io/File;
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
    const/16 v0, 0x2000

    .line 3
    .line 4
    new-array v0, v0, [B

    .line 5
    .line 6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    .line 11
    new-instance v2, Ljava/io/FileInputStream;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 18
    move-result p0

    .line 19
    .line 20
    if-lez p0, :cond_0

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0, v3, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 33
    move-result-object v0

    .line 34
    .line 35
    sget-object v1, Le4/e;->UTF_8:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 42
    return-object p0

    .line 43
    .line 44
    .line 45
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    goto :goto_2

    .line 47
    :catchall_1
    move-exception v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 51
    :goto_2
    throw p0
.end method

.method private B(Ljava/io/File;Lcom/google/firebase/crashlytics/internal/model/f0$d;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/f0$a;)V
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/crashlytics/internal/model/f0$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Le4/e;->sessionsSubscriber:Lcom/google/firebase/crashlytics/internal/common/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p3}, Lcom/google/firebase/crashlytics/internal/common/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    :try_start_0
    sget-object v1, Le4/e;->TRANSFORM:Lc4/j;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Le4/e;->A(Ljava/io/File;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lc4/j;->L(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p2}, Lcom/google/firebase/crashlytics/internal/model/f0;->s(Lcom/google/firebase/crashlytics/internal/model/f0$d;)Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p4}, Lcom/google/firebase/crashlytics/internal/model/f0;->p(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Lcom/google/firebase/crashlytics/internal/model/f0;->o(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    iget-object p4, p0, Le4/e;->fileStore:Le4/f;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p4, p3}, Le4/f;->g(Ljava/lang/String;)Ljava/io/File;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2}, Lc4/j;->M(Lcom/google/firebase/crashlytics/internal/model/f0;)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-static {p3, p2}, Le4/e;->F(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p2

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    new-instance p4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v0, "Could not synthesize final native report file for "

    .line 55
    .line 56
    .line 57
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p1, p2}, Lcom/google/firebase/crashlytics/internal/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :goto_0
    return-void
.end method

.method private C(Ljava/lang/String;J)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Le4/e;->fileStore:Le4/f;

    .line 3
    .line 4
    sget-object v1, Le4/e;->EVENT_FILE_FILTER:Ljava/io/FilenameFilter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Le4/f;->p(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    new-instance p3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v0, "Session "

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p1, " has no events."

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/g;->i(Ljava/lang/String;)V

    .line 44
    return-void

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 48
    .line 49
    new-instance v2, Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x0

    .line 58
    :cond_1
    move v5, v1

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v3

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    check-cast v3, Ljava/io/File;

    .line 71
    .line 72
    :try_start_0
    sget-object v4, Le4/e;->TRANSFORM:Lc4/j;

    .line 73
    .line 74
    .line 75
    invoke-static {v3}, Le4/e;->A(Ljava/io/File;)Ljava/lang/String;

    .line 76
    move-result-object v6

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v6}, Lc4/j;->j(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 80
    move-result-object v4

    .line 81
    .line 82
    .line 83
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    if-nez v5, :cond_2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    .line 92
    invoke-static {v4}, Le4/e;->s(Ljava/lang/String;)Z

    .line 93
    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    if-eqz v3, :cond_1

    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception v4

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 100
    move v5, v3

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :goto_2
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 105
    move-result-object v6

    .line 106
    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    const-string v8, "Could not add event to report for "

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v3

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v3, v4}, Lcom/google/firebase/crashlytics/internal/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    goto :goto_0

    .line 127
    .line 128
    .line 129
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 130
    move-result v0

    .line 131
    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 136
    move-result-object p2

    .line 137
    .line 138
    new-instance p3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    const-string v0, "Could not parse event files for session "

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/g;->k(Ljava/lang/String;)V

    .line 157
    return-void

    .line 158
    .line 159
    :cond_4
    iget-object v0, p0, Le4/e;->fileStore:Le4/f;

    .line 160
    .line 161
    .line 162
    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/internal/metadata/n;->m(Ljava/lang/String;Le4/f;)Ljava/lang/String;

    .line 163
    move-result-object v6

    .line 164
    .line 165
    iget-object v0, p0, Le4/e;->sessionsSubscriber:Lcom/google/firebase/crashlytics/internal/common/m;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object v7

    .line 170
    .line 171
    iget-object v0, p0, Le4/e;->fileStore:Le4/f;

    .line 172
    .line 173
    const-string v1, "report"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1, v1}, Le4/f;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 177
    move-result-object v1

    .line 178
    move-object v0, p0

    .line 179
    move-wide v3, p2

    .line 180
    .line 181
    .line 182
    invoke-direct/range {v0 .. v7}, Le4/e;->D(Ljava/io/File;Ljava/util/List;JZLjava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private D(Ljava/io/File;Ljava/util/List;JZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d;",
            ">;JZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Le4/e;->TRANSFORM:Lc4/j;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Le4/e;->A(Ljava/io/File;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lc4/j;->L(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/google/firebase/crashlytics/internal/model/f0;->t(JZLjava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 14
    move-result-object p3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p7}, Lcom/google/firebase/crashlytics/internal/model/f0;->o(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p2}, Lcom/google/firebase/crashlytics/internal/model/f0;->q(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/f0;->m()Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    if-nez p3, :cond_0

    .line 29
    return-void

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 33
    move-result-object p4

    .line 34
    .line 35
    new-instance p6, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v1, "appQualitySessionId: "

    .line 41
    .line 42
    .line 43
    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p6

    .line 51
    .line 52
    .line 53
    invoke-virtual {p4, p6}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 54
    .line 55
    if-eqz p5, :cond_1

    .line 56
    .line 57
    iget-object p4, p0, Le4/e;->fileStore:Le4/f;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/internal/model/f0$e;->i()Ljava/lang/String;

    .line 61
    move-result-object p3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p4, p3}, Le4/f;->j(Ljava/lang/String;)Ljava/io/File;

    .line 65
    move-result-object p3

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p2

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_1
    iget-object p4, p0, Le4/e;->fileStore:Le4/f;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/internal/model/f0$e;->i()Ljava/lang/String;

    .line 74
    move-result-object p3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p4, p3}, Le4/f;->l(Ljava/lang/String;)Ljava/io/File;

    .line 78
    move-result-object p3

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {v0, p2}, Lc4/j;->M(Lcom/google/firebase/crashlytics/internal/model/f0;)Ljava/lang/String;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    .line 85
    invoke-static {p3, p2}, Le4/e;->F(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_2

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 90
    move-result-object p3

    .line 91
    .line 92
    new-instance p4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    const-string p5, "Could not synthesize final report file for "

    .line 98
    .line 99
    .line 100
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, p1, p2}, Lcom/google/firebase/crashlytics/internal/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    :goto_2
    return-void
.end method

.method private E(Ljava/lang/String;I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Le4/e;->fileStore:Le4/f;

    .line 3
    .line 4
    new-instance v1, Le4/a;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Le4/a;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Le4/f;->p(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/util/List;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    new-instance v0, Le4/b;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Le4/b;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Le4/e;->f(Ljava/util/List;I)I

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method private static F(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 3
    .line 4
    new-instance v1, Ljava/io/FileOutputStream;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    sget-object p0, Le4/e;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    goto :goto_0

    .line 25
    :catchall_1
    move-exception p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 29
    :goto_0
    throw p0
.end method

.method private static G(Ljava/io/File;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 3
    .line 4
    new-instance v1, Ljava/io/FileOutputStream;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    sget-object v2, Le4/e;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2, p3}, Le4/e;->h(J)J

    .line 19
    move-result-wide p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    .line 29
    .line 30
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 36
    :goto_0
    throw p0
.end method

.method public static synthetic a(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Le4/e;->u(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Le4/e;->t(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Le4/e;->x(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Le4/e;->v(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private e(Ljava/lang/String;)Ljava/util/SortedSet;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Le4/e;->fileStore:Le4/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Le4/f;->b()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Le4/e;->p()Ljava/util/SortedSet;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 18
    move-result p1

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    if-gt p1, v1, :cond_1

    .line 23
    return-object v0

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 27
    move-result p1

    .line 28
    .line 29
    if-le p1, v1, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    const-string v4, "Removing session over cap: "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 60
    .line 61
    iget-object v2, p0, Le4/e;->fileStore:Le4/f;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Le4/f;->c(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-object v0
.end method

.method private static f(Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Ljava/io/File;

    .line 21
    .line 22
    if-gt v0, p1, :cond_0

    .line 23
    return v0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {v1}, Le4/f;->s(Ljava/io/File;)Z

    .line 27
    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v0
.end method

.method private g()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Le4/e;->settingsProvider:Lcom/google/firebase/crashlytics/internal/settings/i;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/settings/i;->a()Lcom/google/firebase/crashlytics/internal/settings/d;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/settings/d;->sessionData:Lcom/google/firebase/crashlytics/internal/settings/d$b;

    .line 9
    .line 10
    iget v0, v0, Lcom/google/firebase/crashlytics/internal/settings/d$b;->maxCompleteSessionsCount:I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Le4/e;->n()Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    move-result v2

    .line 19
    .line 20
    if-gt v2, v0, :cond_0

    .line 21
    return-void

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Ljava/io/File;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method private static h(J)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private j(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Ljava/io/File;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private static m(IZ)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    aput-object p0, v1, v2

    .line 13
    .line 14
    const-string p0, "%010d"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string p1, "_"

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    const-string p1, ""

    .line 26
    .line 27
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v1, "event"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method private n()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
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
    iget-object v1, p0, Le4/e;->fileStore:Le4/f;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Le4/f;->k()Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    iget-object v1, p0, Le4/e;->fileStore:Le4/f;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Le4/f;->h()Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    sget-object v1, Le4/e;->LATEST_SESSION_ID_FIRST_COMPARATOR:Ljava/util/Comparator;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 29
    .line 30
    iget-object v2, p0, Le4/e;->fileStore:Le4/f;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Le4/f;->m()Ljava/util/List;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    return-object v0
.end method

.method private static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    sget v1, Le4/e;->EVENT_NAME_LENGTH:I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private static s(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "event"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "_"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method private static t(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p0, "event"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string p0, "_"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method private static synthetic u(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private static synthetic v(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    const-string p0, "event"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static x(Ljava/io/File;Ljava/io/File;)I
    .locals 0
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Le4/e;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Le4/e;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 20
    move-result p0

    .line 21
    return p0
.end method


# virtual methods
.method public i()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Le4/e;->fileStore:Le4/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Le4/f;->m()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Le4/e;->j(Ljava/util/List;)V

    .line 10
    .line 11
    iget-object v0, p0, Le4/e;->fileStore:Le4/f;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Le4/f;->k()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Le4/e;->j(Ljava/util/List;)V

    .line 19
    .line 20
    iget-object v0, p0, Le4/e;->fileStore:Le4/f;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Le4/f;->h()Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Le4/e;->j(Ljava/util/List;)V

    .line 28
    return-void
.end method

.method public k(Ljava/lang/String;J)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Le4/e;->e(Ljava/lang/String;)Ljava/util/SortedSet;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v3, "Finalizing report for session "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/g;->i(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0, p2, p3}, Le4/e;->C(Ljava/lang/String;J)V

    .line 48
    .line 49
    iget-object v1, p0, Le4/e;->fileStore:Le4/f;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Le4/f;->c(Ljava/lang/String;)Z

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-direct {p0}, Le4/e;->g()V

    .line 57
    return-void
.end method

.method public l(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/f0$d;Lcom/google/firebase/crashlytics/internal/model/f0$a;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Le4/e;->fileStore:Le4/f;

    .line 3
    .line 4
    const-string v1, "report"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Le4/f;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v3, "Writing native session report for "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, " to file: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0, p2, p1, p3}, Le4/e;->B(Ljava/io/File;Lcom/google/firebase/crashlytics/internal/model/f0$d;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/f0$a;)V

    .line 44
    return-void
.end method

.method public p()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/TreeSet;

    .line 3
    .line 4
    iget-object v1, p0, Le4/e;->fileStore:Le4/f;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Le4/f;->d()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public q(Ljava/lang/String;)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Le4/e;->fileStore:Le4/f;

    .line 3
    .line 4
    const-string v1, "start-time"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Le4/f;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public r()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Le4/e;->fileStore:Le4/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Le4/f;->m()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Le4/e;->fileStore:Le4/f;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Le4/f;->k()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Le4/e;->fileStore:Le4/f;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Le4/f;->h()Ljava/util/List;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 41
    :goto_1
    return v0
.end method

.method public w()Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/common/u;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Le4/e;->n()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Ljava/io/File;

    .line 26
    .line 27
    :try_start_0
    sget-object v3, Le4/e;->TRANSFORM:Lc4/j;

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Le4/e;->A(Ljava/io/File;)Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Lc4/j;->L(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4, v2}, Lcom/google/firebase/crashlytics/internal/common/u;->a(Lcom/google/firebase/crashlytics/internal/model/f0;Ljava/lang/String;Ljava/io/File;)Lcom/google/firebase/crashlytics/internal/common/u;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v3

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 52
    move-result-object v4

    .line 53
    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v6, "Could not load report file "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v6, "; deleting"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v5, v3}, Lcom/google/firebase/crashlytics/internal/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    return-object v1
.end method

.method public y(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Lcom/google/firebase/crashlytics/internal/model/f0$e$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Le4/e;->settingsProvider:Lcom/google/firebase/crashlytics/internal/settings/i;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/settings/i;->a()Lcom/google/firebase/crashlytics/internal/settings/d;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/settings/d;->sessionData:Lcom/google/firebase/crashlytics/internal/settings/d$b;

    .line 9
    .line 10
    iget v0, v0, Lcom/google/firebase/crashlytics/internal/settings/d$b;->maxCustomExceptionEvents:I

    .line 11
    .line 12
    sget-object v1, Le4/e;->TRANSFORM:Lc4/j;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lc4/j;->k(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object v1, p0, Le4/e;->eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-static {v1, p3}, Le4/e;->m(IZ)Ljava/lang/String;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    :try_start_0
    iget-object v1, p0, Le4/e;->fileStore:Le4/f;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2, p3}, Le4/f;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    .line 35
    invoke-static {p3, p1}, Le4/e;->F(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v2, "Could not persist event for session "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, v1, p1}, Lcom/google/firebase/crashlytics/internal/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-direct {p0, p2, v0}, Le4/e;->E(Ljava/lang/String;I)I

    .line 65
    return-void
.end method

.method public z(Lcom/google/firebase/crashlytics/internal/model/f0;)V
    .locals 5
    .param p1    # Lcom/google/firebase/crashlytics/internal/model/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0;->m()Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "Could not get session for report"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e;->i()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    :try_start_0
    sget-object v2, Le4/e;->TRANSFORM:Lc4/j;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Lc4/j;->M(Lcom/google/firebase/crashlytics/internal/model/f0;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object v2, p0, Le4/e;->fileStore:Le4/f;

    .line 29
    .line 30
    const-string v3, "report"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1, v3}, Le4/f;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-static {v2, p1}, Le4/e;->F(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    iget-object p1, p0, Le4/e;->fileStore:Le4/f;

    .line 40
    .line 41
    const-string v2, "start-time"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1, v2}, Le4/f;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    const-string v2, ""

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e;->l()J

    .line 51
    move-result-wide v3

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v2, v3, v4}, Le4/e;->G(Ljava/io/File;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    const-string v3, "Could not persist report for session "

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/g;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :goto_0
    return-void
.end method
