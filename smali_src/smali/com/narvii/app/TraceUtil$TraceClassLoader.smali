.class Lcom/narvii/app/TraceUtil$TraceClassLoader;
.super Ljava/lang/ClassLoader;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->names:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashSet;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->loaded:Ljava/util/HashSet;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 20
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

    iget-object v0, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->names:Ljava/util/ArrayList;

    const/4 v1, 0x0

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

    .line 1
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

    iget-object v0, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->names:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->loaded:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/narvii/app/TraceUtil;->startMs:J

    sub-long v6, v0, v2

    iget-wide v2, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->prevTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move-wide v8, v4

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->prevTime:J

    sub-long v2, v0, v2

    move-wide v8, v2

    :goto_0
    iget-object v2, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->names:Ljava/util/ArrayList;

    .line 6
    new-instance v3, Lcom/narvii/app/TraceUtil$TraceStub;

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/narvii/app/TraceUtil$TraceStub;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->loaded:Ljava/util/HashSet;

    .line 7
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-wide v0, p0, Lcom/narvii/app/TraceUtil$TraceClassLoader;->prevTime:J

    .line 8
    throw p2

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/ClassNotFoundException;

    invoke-direct {p1}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw p1
.end method
