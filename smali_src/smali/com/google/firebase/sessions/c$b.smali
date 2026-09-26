.class final Lcom/google/firebase/sessions/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj4/d<",
        "Lcom/google/firebase/sessions/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANDROIDAPPINFO_DESCRIPTOR:Lj4/c;

.field private static final APPID_DESCRIPTOR:Lj4/c;

.field private static final DEVICEMODEL_DESCRIPTOR:Lj4/c;

.field static final INSTANCE:Lcom/google/firebase/sessions/c$b;

.field private static final LOGENVIRONMENT_DESCRIPTOR:Lj4/c;

.field private static final OSVERSION_DESCRIPTOR:Lj4/c;

.field private static final SESSIONSDKVERSION_DESCRIPTOR:Lj4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/c$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/sessions/c$b;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/sessions/c$b;->INSTANCE:Lcom/google/firebase/sessions/c$b;

    .line 8
    .line 9
    const-string v0, "appId"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sput-object v0, Lcom/google/firebase/sessions/c$b;->APPID_DESCRIPTOR:Lj4/c;

    .line 16
    .line 17
    const-string v0, "deviceModel"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sput-object v0, Lcom/google/firebase/sessions/c$b;->DEVICEMODEL_DESCRIPTOR:Lj4/c;

    .line 24
    .line 25
    const-string/jumbo v0, "sessionSdkVersion"

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sput-object v0, Lcom/google/firebase/sessions/c$b;->SESSIONSDKVERSION_DESCRIPTOR:Lj4/c;

    .line 32
    .line 33
    const-string v0, "osVersion"

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    sput-object v0, Lcom/google/firebase/sessions/c$b;->OSVERSION_DESCRIPTOR:Lj4/c;

    .line 40
    .line 41
    const-string v0, "logEnvironment"

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    sput-object v0, Lcom/google/firebase/sessions/c$b;->LOGENVIRONMENT_DESCRIPTOR:Lj4/c;

    .line 48
    .line 49
    const-string v0, "androidAppInfo"

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    sput-object v0, Lcom/google/firebase/sessions/c$b;->ANDROIDAPPINFO_DESCRIPTOR:Lj4/c;

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Lcom/google/firebase/sessions/b;

    .line 3
    .line 4
    check-cast p2, Lj4/e;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/c$b;->b(Lcom/google/firebase/sessions/b;Lj4/e;)V

    .line 8
    return-void
.end method

.method public b(Lcom/google/firebase/sessions/b;Lj4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/sessions/c$b;->APPID_DESCRIPTOR:Lj4/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/sessions/b;->b()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 10
    .line 11
    sget-object v0, Lcom/google/firebase/sessions/c$b;->DEVICEMODEL_DESCRIPTOR:Lj4/c;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/sessions/b;->c()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 19
    .line 20
    sget-object v0, Lcom/google/firebase/sessions/c$b;->SESSIONSDKVERSION_DESCRIPTOR:Lj4/c;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/firebase/sessions/b;->f()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 28
    .line 29
    sget-object v0, Lcom/google/firebase/sessions/c$b;->OSVERSION_DESCRIPTOR:Lj4/c;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/firebase/sessions/b;->e()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 37
    .line 38
    sget-object v0, Lcom/google/firebase/sessions/c$b;->LOGENVIRONMENT_DESCRIPTOR:Lj4/c;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/firebase/sessions/b;->d()Lcom/google/firebase/sessions/s;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 46
    .line 47
    sget-object v0, Lcom/google/firebase/sessions/c$b;->ANDROIDAPPINFO_DESCRIPTOR:Lj4/c;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/firebase/sessions/b;->a()Lcom/google/firebase/sessions/a;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, v0, p1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 55
    return-void
.end method
