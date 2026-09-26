.class public final Lio/ktor/client/engine/android/d;
.super Lio/ktor/client/engine/g;
.source "SourceFile"


# instance fields
.field private connectTimeout:I

.field private requestConfig:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Ljava/net/HttpURLConnection;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private socketTimeout:I

.field private sslManager:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Ljavax/net/ssl/HttpsURLConnection;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/client/engine/g;-><init>()V

    .line 4
    .line 5
    .line 6
    const v0, 0x186a0

    .line 7
    .line 8
    iput v0, p0, Lio/ktor/client/engine/android/d;->connectTimeout:I

    .line 9
    .line 10
    iput v0, p0, Lio/ktor/client/engine/android/d;->socketTimeout:I

    .line 11
    .line 12
    sget-object v0, Lio/ktor/client/engine/android/d$b;->INSTANCE:Lio/ktor/client/engine/android/d$b;

    .line 13
    .line 14
    iput-object v0, p0, Lio/ktor/client/engine/android/d;->sslManager:Le8/l;

    .line 15
    .line 16
    sget-object v0, Lio/ktor/client/engine/android/d$a;->INSTANCE:Lio/ktor/client/engine/android/d$a;

    .line 17
    .line 18
    iput-object v0, p0, Lio/ktor/client/engine/android/d;->requestConfig:Le8/l;

    .line 19
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/client/engine/android/d;->connectTimeout:I

    return v0
.end method

.method public final c()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Ljava/net/HttpURLConnection;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/engine/android/d;->requestConfig:Le8/l;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/client/engine/android/d;->socketTimeout:I

    return v0
.end method

.method public final e()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Ljavax/net/ssl/HttpsURLConnection;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/engine/android/d;->sslManager:Le8/l;

    return-object v0
.end method
