.class Lcom/narvii/app/TraceUtil$TraceClassLoader;
.super Ljava/lang/ClassLoader;
.source "TraceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/TraceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TraceClassLoader"
.end annotation


# instance fields
.field loaded:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/app/TraceUtil$TraceStub;",
            ">;"
        }
    .end annotation
.end field

.field final parent:Ljava/lang/ClassLoader;

.field prevTime:J


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 117
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->names:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->loaded:Ljava/util/HashSet;

    .line 118
    iput-object p1, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->parent:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method done()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/app/TraceUtil$TraceStub;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->names:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 149
    iput-object v1, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->names:Ljava/util/ArrayList;

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/TraceUtil$TraceClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->names:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 129
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->loaded:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 137
    sget-wide v2, Lcom/narvii/app/TraceUtil;->startMs:J

    sub-long v6, v0, v2

    .line 138
    iget-wide v2, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->prevTime:J

    const-wide/16 v4, 0x0

    cmp-long v8, v2, v4

    if-nez v8, :cond_1

    move-wide v8, v4

    goto :goto_0

    :cond_1
    sub-long v2, v0, v2

    move-wide v8, v2

    .line 139
    :goto_0
    iget-object v2, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->names:Ljava/util/ArrayList;

    new-instance v3, Lcom/narvii/app/TraceUtil$TraceStub;

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/narvii/app/TraceUtil$TraceStub;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v2, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->loaded:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    iput-wide v0, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->prevTime:J

    .line 142
    throw p2

    .line 131
    :cond_2
    new-instance p1, Ljava/lang/ClassNotFoundException;

    invoke-direct {p1}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw p1
.end method
