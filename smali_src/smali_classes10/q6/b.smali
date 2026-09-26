.class public Lq6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lq6/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lq6/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lq6/b;->a:Lq6/c;

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    const-class v0, Lq6/b;

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    sget-object v1, Lq6/b;->a:Lq6/c;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Lq6/a;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0}, Lq6/a;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    sput-object v1, Lq6/b;->a:Lq6/c;

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v1, "context == null"

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    monitor-exit v0

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    .line 39
    :cond_2
    :goto_2
    sget-object p0, Lq6/b;->a:Lq6/c;

    .line 40
    return-object p0
.end method
