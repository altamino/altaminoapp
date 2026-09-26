.class Lcom/ss/android/tea/common/applog/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/tea/common/utility/collection/b$a;


# static fields
.field private static l:Lcom/ss/android/tea/common/applog/i;


# instance fields
.field private a:Lcom/ss/android/tea/common/applog/w;

.field private b:Landroid/os/Handler;

.field private volatile c:Z

.field private d:Z

.field private final e:Ljava/lang/Object;

.field private f:I

.field private volatile g:I

.field private h:J

.field private i:J

.field private j:J

.field private k:J


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/tea/common/applog/i;->c:Z

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/i;->i:J

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 7

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 3
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v2, :cond_0

    .line 4
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/ss/android/tea/common/applog/i;->g:I

    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/i;->h:J

    :cond_0
    iget-wide v3, p0, Lcom/ss/android/tea/common/applog/i;->k:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    sub-long/2addr v0, v3

    const-wide/32 v3, 0xea60

    cmp-long p1, v0, v3

    if-lez p1, :cond_2

    .line 5
    :cond_1
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->D0()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ss/android/tea/common/applog/i;->c:Z

    iput-boolean v2, p0, Lcom/ss/android/tea/common/applog/i;->d:Z

    :cond_2
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/ss/android/tea/common/applog/i;->c:Z

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/ss/android/tea/common/applog/i;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/ss/android/tea/common/applog/i;->d:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/i;->e:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 14
    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/i;->e:Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 19
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    .line 25
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/ss/android/tea/common/applog/i;->k:J

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-gtz v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    move-result-wide v0

    .line 36
    .line 37
    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/i;->k:J

    .line 38
    :cond_1
    return-void
.end method
