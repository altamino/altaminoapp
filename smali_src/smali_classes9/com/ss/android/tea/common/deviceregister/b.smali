.class public Lcom/ss/android/tea/common/deviceregister/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:Lcom/ss/android/tea/common/deviceregister/a$b; = null

.field private static c:Z = true

.field private static d:Ljava/lang/String; = "http://toblog.snssdk.com/service/2/device_register/"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/ss/android/tea/common/deviceregister/a$b;)V
    .locals 0

    sput-object p0, Lcom/ss/android/tea/common/deviceregister/b;->b:Lcom/ss/android/tea/common/deviceregister/a$b;

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    sput-object p0, Lcom/ss/android/tea/common/deviceregister/b;->d:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ss/android/tea/common/deviceregister/b;->a:Z

    return-void
.end method

.method public static d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/android/tea/common/deviceregister/b;->a:Z

    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/android/tea/common/deviceregister/b;->c:Z

    return v0
.end method

.method public static g()Lcom/ss/android/tea/common/deviceregister/a$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/b;->b:Lcom/ss/android/tea/common/deviceregister/a$b;

    return-object v0
.end method
