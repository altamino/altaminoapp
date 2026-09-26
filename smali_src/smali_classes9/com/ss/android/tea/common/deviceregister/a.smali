.class public Lcom/ss/android/tea/common/deviceregister/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/tea/common/deviceregister/a$a;,
        Lcom/ss/android/tea/common/deviceregister/a$b;
    }
.end annotation


# static fields
.field private static a:Lcom/ss/android/tea/common/deviceregister/a;

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Landroid/content/Context;


# instance fields
.field private final f:Lcom/ss/android/tea/common/deviceregister/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/ss/android/tea/common/deviceregister/d;

    .line 6
    .line 7
    sget-object v1, Lcom/ss/android/tea/common/deviceregister/a;->e:Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/ss/android/tea/common/deviceregister/d;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/android/tea/common/deviceregister/a;->f:Lcom/ss/android/tea/common/deviceregister/d;

    .line 13
    .line 14
    sget-boolean v1, Lcom/ss/android/tea/common/deviceregister/a;->c:Z

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/b;->c(Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/ss/android/tea/common/deviceregister/e;->c(Lcom/ss/android/tea/common/deviceregister/d;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->L()V

    .line 24
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/ss/android/tea/common/deviceregister/a;->f:Lcom/ss/android/tea/common/deviceregister/d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->J()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v2, "getInstallId() called,return value : "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "DeviceRegisterManager"

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v1}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    const-string v0, ""

    .line 42
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    sput-boolean v0, Lcom/ss/android/tea/common/deviceregister/a;->b:Z

    .line 6
    .line 7
    instance-of v1, p0, Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sput-boolean v0, Lcom/ss/android/tea/common/deviceregister/a;->c:Z

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    sput-object p0, Lcom/ss/android/tea/common/deviceregister/a;->e:Landroid/content/Context;

    .line 18
    .line 19
    sget-object p0, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 20
    .line 21
    if-nez p0, :cond_2

    .line 22
    .line 23
    const-class p0, Lcom/ss/android/tea/common/deviceregister/a;

    .line 24
    monitor-enter p0

    .line 25
    .line 26
    :try_start_0
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Lcom/ss/android/tea/common/deviceregister/a;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Lcom/ss/android/tea/common/deviceregister/a;-><init>()V

    .line 34
    .line 35
    sput-object v0, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    monitor-exit p0

    .line 40
    goto :goto_2

    .line 41
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v0

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_2
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 46
    move-result p0

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    const-string p0, "DeviceRegisterManager"

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    const-string v1, "DeviceRegister init, DeviceRegister : "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    sget-object v1, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, ", process : "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 78
    move-result v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-static {p0, v0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_3
    return-void

    .line 90
    .line 91
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    const-string v0, "context = null"

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0
.end method

.method public static c(Lcom/ss/android/tea/common/deviceregister/a$a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/ss/android/tea/common/deviceregister/d;->j(Lcom/ss/android/tea/common/deviceregister/a$a;)V

    .line 4
    return-void
.end method

.method public static d(Lcom/ss/android/tea/common/deviceregister/a$b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/ss/android/tea/common/deviceregister/b;->a(Lcom/ss/android/tea/common/deviceregister/a$b;)V

    .line 4
    return-void
.end method

.method public static e(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 3
    .line 4
    if-eqz p0, :cond_4

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/a;->k()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v1, "openudid"

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/a;->l()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const-string v1, "clientudid"

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/a;->a()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const-string v1, "install_id"

    .line 38
    .line 39
    .line 40
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/a;->i()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    const-string v1, "device_id"

    .line 49
    .line 50
    .line 51
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_4
    :goto_0
    return-void
.end method

.method public static f(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ss/android/tea/common/deviceregister/a;->c:Z

    return-void
.end method

.method public static g([Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    aget-object p0, p0, v0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/ss/android/tea/common/deviceregister/b;->b(Ljava/lang/String;)V

    .line 12
    :cond_0
    return-void
.end method

.method public static h()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/ss/android/tea/common/deviceregister/a;->f:Lcom/ss/android/tea/common/deviceregister/d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->S()V

    .line 10
    :cond_0
    return-void
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/ss/android/tea/common/deviceregister/a;->f:Lcom/ss/android/tea/common/deviceregister/d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->F()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/ss/android/tea/common/deviceregister/a;->f:Lcom/ss/android/tea/common/deviceregister/d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->H()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/ss/android/tea/common/deviceregister/a;->f:Lcom/ss/android/tea/common/deviceregister/d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->u()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/ss/android/tea/common/deviceregister/a;->f:Lcom/ss/android/tea/common/deviceregister/d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->B()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public static m()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/ss/android/tea/common/deviceregister/a;->f:Lcom/ss/android/tea/common/deviceregister/d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->R()V

    .line 10
    :cond_0
    return-void
.end method

.method public static n()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/ss/android/tea/common/deviceregister/a;->f:Lcom/ss/android/tea/common/deviceregister/d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->P()V

    .line 10
    :cond_0
    return-void
.end method

.method public static o()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/ss/android/tea/common/deviceregister/a;->f:Lcom/ss/android/tea/common/deviceregister/d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->P()V

    .line 10
    :cond_0
    return-void
.end method

.method public static p()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/a;->a:Lcom/ss/android/tea/common/deviceregister/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/ss/android/tea/common/deviceregister/a;->f:Lcom/ss/android/tea/common/deviceregister/d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->N()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "DeviceRegisterManager"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "updateDeviceInfo call  device_register"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public static q()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/android/tea/common/deviceregister/a;->d:Z

    return v0
.end method
