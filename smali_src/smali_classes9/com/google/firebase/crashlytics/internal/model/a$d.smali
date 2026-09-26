.class final Lcom/google/firebase/crashlytics/internal/model/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj4/d<",
        "Lcom/google/firebase/crashlytics/internal/model/f0;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPEXITINFO_DESCRIPTOR:Lj4/c;

.field private static final APPQUALITYSESSIONID_DESCRIPTOR:Lj4/c;

.field private static final BUILDVERSION_DESCRIPTOR:Lj4/c;

.field private static final DISPLAYVERSION_DESCRIPTOR:Lj4/c;

.field private static final FIREBASEINSTALLATIONID_DESCRIPTOR:Lj4/c;

.field private static final GMPAPPID_DESCRIPTOR:Lj4/c;

.field private static final INSTALLATIONUUID_DESCRIPTOR:Lj4/c;

.field static final INSTANCE:Lcom/google/firebase/crashlytics/internal/model/a$d;

.field private static final NDKPAYLOAD_DESCRIPTOR:Lj4/c;

.field private static final PLATFORM_DESCRIPTOR:Lj4/c;

.field private static final SDKVERSION_DESCRIPTOR:Lj4/c;

.field private static final SESSION_DESCRIPTOR:Lj4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/a$d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/a$d;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/a$d;

    .line 8
    .line 9
    const-string v0, "sdkVersion"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->SDKVERSION_DESCRIPTOR:Lj4/c;

    .line 16
    .line 17
    const-string v0, "gmpAppId"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->GMPAPPID_DESCRIPTOR:Lj4/c;

    .line 24
    .line 25
    const-string v0, "platform"

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->PLATFORM_DESCRIPTOR:Lj4/c;

    .line 32
    .line 33
    const-string v0, "installationUuid"

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->INSTALLATIONUUID_DESCRIPTOR:Lj4/c;

    .line 40
    .line 41
    const-string v0, "firebaseInstallationId"

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->FIREBASEINSTALLATIONID_DESCRIPTOR:Lj4/c;

    .line 48
    .line 49
    const-string v0, "appQualitySessionId"

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->APPQUALITYSESSIONID_DESCRIPTOR:Lj4/c;

    .line 56
    .line 57
    const-string v0, "buildVersion"

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->BUILDVERSION_DESCRIPTOR:Lj4/c;

    .line 64
    .line 65
    const-string v0, "displayVersion"

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->DISPLAYVERSION_DESCRIPTOR:Lj4/c;

    .line 72
    .line 73
    const-string v0, "session"

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->SESSION_DESCRIPTOR:Lj4/c;

    .line 80
    .line 81
    const-string v0, "ndkPayload"

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->NDKPAYLOAD_DESCRIPTOR:Lj4/c;

    .line 88
    .line 89
    const-string v0, "appExitInfo"

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->APPEXITINFO_DESCRIPTOR:Lj4/c;

    .line 96
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
    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 3
    .line 4
    check-cast p2, Lj4/e;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/model/a$d;->b(Lcom/google/firebase/crashlytics/internal/model/f0;Lj4/e;)V

    .line 8
    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/model/f0;Lj4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->SDKVERSION_DESCRIPTOR:Lj4/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0;->l()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 10
    .line 11
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->GMPAPPID_DESCRIPTOR:Lj4/c;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0;->h()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 19
    .line 20
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->PLATFORM_DESCRIPTOR:Lj4/c;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0;->k()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v0, v1}, Lj4/e;->f(Lj4/c;I)Lj4/e;

    .line 28
    .line 29
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->INSTALLATIONUUID_DESCRIPTOR:Lj4/c;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0;->i()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 37
    .line 38
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->FIREBASEINSTALLATIONID_DESCRIPTOR:Lj4/c;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0;->g()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 46
    .line 47
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->APPQUALITYSESSIONID_DESCRIPTOR:Lj4/c;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0;->d()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 55
    .line 56
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->BUILDVERSION_DESCRIPTOR:Lj4/c;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0;->e()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 64
    .line 65
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->DISPLAYVERSION_DESCRIPTOR:Lj4/c;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0;->f()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 73
    .line 74
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->SESSION_DESCRIPTOR:Lj4/c;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0;->m()Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 82
    .line 83
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->NDKPAYLOAD_DESCRIPTOR:Lj4/c;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0;->j()Lcom/google/firebase/crashlytics/internal/model/f0$d;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 91
    .line 92
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$d;->APPEXITINFO_DESCRIPTOR:Lj4/c;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0;->c()Lcom/google/firebase/crashlytics/internal/model/f0$a;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-interface {p2, v0, p1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 100
    return-void
.end method
