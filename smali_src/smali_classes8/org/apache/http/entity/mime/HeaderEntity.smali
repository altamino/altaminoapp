.class public Lorg/apache/http/entity/mime/HeaderEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    :try_start_0
    const-class v0, Lcom/narvii/app/NVApplication;

    .line 8
    .line 9
    const-string v1, "serviceManager"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/services/ServiceManager;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Lokhttp3/internal/WhManager;->init(Lcom/narvii/app/NVApplication;Lcom/narvii/services/ServiceManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 36
    .line 37
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 41
    throw v0
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
