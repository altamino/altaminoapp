.class Lorg/threeten/bp/zone/h$b;
.super Lorg/threeten/bp/zone/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/zone/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/zone/h;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lorg/threeten/bp/zone/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lorg/threeten/bp/zone/i;

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-static {v1}, Lorg/threeten/bp/zone/i;->e(Lorg/threeten/bp/zone/i;)V
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    instance-of v2, v2, Ljava/lang/SecurityException;

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    throw v1

    .line 42
    :cond_1
    return-void
.end method
