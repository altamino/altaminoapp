.class public final Lu5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lu5/a;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "org/threeten/bp/TZDB.dat"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lu5/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lu5/a;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lu5/b;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lu5/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lorg/threeten/bp/zone/h;->c(Lorg/threeten/bp/zone/h;)V

    .line 18
    :cond_0
    return-void
.end method
