.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# static fields
.field static final ATTEMPT_NUMBER:Ljava/lang/String; = "attemptNumber"

.field static final BACKEND_NAME:Ljava/lang/String; = "backendName"

.field static final EVENT_PRIORITY:Ljava/lang/String; = "priority"

.field static final EXTRAS:Ljava/lang/String; = "extras"

.field private static final LOG_TAG:Ljava/lang/String; = "JobInfoScheduler"


# instance fields
.field private final config:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;

.field private final context:Landroid/content/Context;

.field private final eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/d;->context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/d;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/d;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/d;->config:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;

    .line 10
    return-void
.end method

.method private d(Landroid/app/job/JobScheduler;II)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroid/app/job/JobInfo;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    const-string v3, "attemptNumber"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 31
    move-result v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    .line 35
    move-result v0

    .line 36
    .line 37
    if-ne v0, p2, :cond_0

    .line 38
    .line 39
    if-lt v2, p3, :cond_1

    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_1
    return v1
.end method


# virtual methods
.method public a(Lcom/google/android/datatransport/runtime/p;IZ)V
    .locals 12

    .line 1
    .line 2
    new-instance v0, Landroid/content/ComponentName;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/d;->context:Landroid/content/Context;

    .line 5
    .line 6
    const-class v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/d;->context:Landroid/content/Context;

    .line 12
    .line 13
    const-string v2, "jobscheduler"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Landroid/app/job/JobScheduler;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/d;->c(Lcom/google/android/datatransport/runtime/p;)I

    .line 23
    move-result v2

    .line 24
    .line 25
    const-string v3, "JobInfoScheduler"

    .line 26
    .line 27
    if-nez p3, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v1, v2, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/d;->d(Landroid/app/job/JobScheduler;II)Z

    .line 31
    move-result p3

    .line 32
    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    const-string p2, "Upload for context %s is already scheduled. Returning..."

    .line 36
    .line 37
    .line 38
    invoke-static {v3, p2, p1}, Li2/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    return-void

    .line 40
    .line 41
    :cond_0
    iget-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/d;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/d;

    .line 42
    .line 43
    .line 44
    invoke-interface {p3, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/d;->l0(Lcom/google/android/datatransport/runtime/p;)J

    .line 45
    move-result-wide v10

    .line 46
    .line 47
    iget-object v4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/d;->config:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;

    .line 48
    .line 49
    new-instance v5, Landroid/app/job/JobInfo$Builder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v5, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->d()Lf2/d;

    .line 56
    move-result-object v6

    .line 57
    move-wide v7, v10

    .line 58
    move v9, p2

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;->c(Landroid/app/job/JobInfo$Builder;Lf2/d;JI)Landroid/app/job/JobInfo$Builder;

    .line 62
    move-result-object p3

    .line 63
    .line 64
    new-instance v0, Landroid/os/PersistableBundle;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 68
    .line 69
    const-string v4, "attemptNumber"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v4, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 73
    .line 74
    const-string v4, "backendName"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->b()Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->d()Lf2/d;

    .line 85
    move-result-object v4

    .line 86
    .line 87
    .line 88
    invoke-static {v4}, Ln2/a;->a(Lf2/d;)I

    .line 89
    move-result v4

    .line 90
    .line 91
    const-string v5, "priority"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->c()[B

    .line 98
    move-result-object v4

    .line 99
    const/4 v5, 0x0

    .line 100
    .line 101
    if-eqz v4, :cond_1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->c()[B

    .line 105
    move-result-object v4

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 109
    move-result-object v4

    .line 110
    .line 111
    const-string v6, "extras"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    invoke-virtual {p3, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 118
    const/4 v0, 0x5

    .line 119
    .line 120
    new-array v0, v0, [Ljava/lang/Object;

    .line 121
    .line 122
    aput-object p1, v0, v5

    .line 123
    const/4 v4, 0x1

    .line 124
    .line 125
    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    aput-object v2, v0, v4

    .line 130
    .line 131
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/d;->config:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->d()Lf2/d;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, p1, v10, v11, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;->g(Lf2/d;JI)J

    .line 139
    move-result-wide v4

    .line 140
    .line 141
    .line 142
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    move-result-object p1

    .line 144
    const/4 v2, 0x2

    .line 145
    .line 146
    aput-object p1, v0, v2

    .line 147
    const/4 p1, 0x3

    .line 148
    .line 149
    .line 150
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    aput-object v2, v0, p1

    .line 154
    const/4 p1, 0x4

    .line 155
    .line 156
    .line 157
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    move-result-object p2

    .line 159
    .line 160
    aput-object p2, v0, p1

    .line 161
    .line 162
    const-string p1, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d"

    .line 163
    .line 164
    .line 165
    invoke-static {v3, p1, v0}, Li2/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 173
    return-void
.end method

.method public b(Lcom/google/android/datatransport/runtime/p;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/d;->a(Lcom/google/android/datatransport/runtime/p;IZ)V

    .line 5
    return-void
.end method

.method c(Lcom/google/android/datatransport/runtime/p;)I
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/zip/Adler32;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/d;->context:Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const-string v2, "UTF-8"

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/zip/Adler32;->update([B)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->b()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/zip/Adler32;->update([B)V

    .line 40
    const/4 v1, 0x4

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->d()Lf2/d;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Ln2/a;->a(Lf2/d;)I

    .line 52
    move-result v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/zip/Adler32;->update([B)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->c()[B

    .line 67
    move-result-object v1

    .line 68
    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->c()[B

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    .line 80
    move-result-wide v0

    .line 81
    long-to-int p1, v0

    .line 82
    return p1
.end method
