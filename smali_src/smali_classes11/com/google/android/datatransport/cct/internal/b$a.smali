.class final Lcom/google/android/datatransport/cct/internal/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj4/d<",
        "Lcom/google/android/datatransport/cct/internal/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPLICATIONBUILD_DESCRIPTOR:Lj4/c;

.field private static final COUNTRY_DESCRIPTOR:Lj4/c;

.field private static final DEVICE_DESCRIPTOR:Lj4/c;

.field private static final FINGERPRINT_DESCRIPTOR:Lj4/c;

.field private static final HARDWARE_DESCRIPTOR:Lj4/c;

.field static final INSTANCE:Lcom/google/android/datatransport/cct/internal/b$a;

.field private static final LOCALE_DESCRIPTOR:Lj4/c;

.field private static final MANUFACTURER_DESCRIPTOR:Lj4/c;

.field private static final MCCMNC_DESCRIPTOR:Lj4/c;

.field private static final MODEL_DESCRIPTOR:Lj4/c;

.field private static final OSBUILD_DESCRIPTOR:Lj4/c;

.field private static final PRODUCT_DESCRIPTOR:Lj4/c;

.field private static final SDKVERSION_DESCRIPTOR:Lj4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/cct/internal/b$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/b$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->INSTANCE:Lcom/google/android/datatransport/cct/internal/b$a;

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
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->SDKVERSION_DESCRIPTOR:Lj4/c;

    .line 16
    .line 17
    const-string v0, "model"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->MODEL_DESCRIPTOR:Lj4/c;

    .line 24
    .line 25
    const-string v0, "hardware"

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->HARDWARE_DESCRIPTOR:Lj4/c;

    .line 32
    .line 33
    const-string v0, "device"

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->DEVICE_DESCRIPTOR:Lj4/c;

    .line 40
    .line 41
    const-string v0, "product"

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->PRODUCT_DESCRIPTOR:Lj4/c;

    .line 48
    .line 49
    const-string v0, "osBuild"

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->OSBUILD_DESCRIPTOR:Lj4/c;

    .line 56
    .line 57
    const-string v0, "manufacturer"

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->MANUFACTURER_DESCRIPTOR:Lj4/c;

    .line 64
    .line 65
    const-string v0, "fingerprint"

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->FINGERPRINT_DESCRIPTOR:Lj4/c;

    .line 72
    .line 73
    const-string v0, "locale"

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->LOCALE_DESCRIPTOR:Lj4/c;

    .line 80
    .line 81
    const-string v0, "country"

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->COUNTRY_DESCRIPTOR:Lj4/c;

    .line 88
    .line 89
    const-string v0, "mccMnc"

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->MCCMNC_DESCRIPTOR:Lj4/c;

    .line 96
    .line 97
    const-string v0, "applicationBuild"

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->APPLICATIONBUILD_DESCRIPTOR:Lj4/c;

    .line 104
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
    check-cast p1, Lcom/google/android/datatransport/cct/internal/a;

    .line 3
    .line 4
    check-cast p2, Lj4/e;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/b$a;->b(Lcom/google/android/datatransport/cct/internal/a;Lj4/e;)V

    .line 8
    return-void
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/a;Lj4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->SDKVERSION_DESCRIPTOR:Lj4/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->m()Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 10
    .line 11
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->MODEL_DESCRIPTOR:Lj4/c;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->j()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 19
    .line 20
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->HARDWARE_DESCRIPTOR:Lj4/c;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->f()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 28
    .line 29
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->DEVICE_DESCRIPTOR:Lj4/c;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->d()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 37
    .line 38
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->PRODUCT_DESCRIPTOR:Lj4/c;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->l()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 46
    .line 47
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->OSBUILD_DESCRIPTOR:Lj4/c;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->k()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 55
    .line 56
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->MANUFACTURER_DESCRIPTOR:Lj4/c;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->h()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 64
    .line 65
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->FINGERPRINT_DESCRIPTOR:Lj4/c;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->e()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 73
    .line 74
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->LOCALE_DESCRIPTOR:Lj4/c;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->g()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 82
    .line 83
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->COUNTRY_DESCRIPTOR:Lj4/c;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->c()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 91
    .line 92
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->MCCMNC_DESCRIPTOR:Lj4/c;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->i()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 100
    .line 101
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->APPLICATIONBUILD_DESCRIPTOR:Lj4/c;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->b()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-interface {p2, v0, p1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 109
    return-void
.end method
