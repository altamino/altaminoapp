.class public final Lio/ktor/client/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HttpRequestCreated:Lj7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj7/a<",
            "Li7/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HttpRequestIsReadyForSending:Lj7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj7/a<",
            "Li7/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HttpResponseCancelled:Lj7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj7/a<",
            "Lio/ktor/client/statement/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HttpResponseReceiveFailed:Lj7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj7/a<",
            "Lio/ktor/client/utils/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HttpResponseReceived:Lj7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj7/a<",
            "Lio/ktor/client/statement/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lj7/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lj7/a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lio/ktor/client/utils/b;->HttpRequestCreated:Lj7/a;

    .line 8
    .line 9
    new-instance v0, Lj7/a;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lj7/a;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lio/ktor/client/utils/b;->HttpRequestIsReadyForSending:Lj7/a;

    .line 15
    .line 16
    new-instance v0, Lj7/a;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lj7/a;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lio/ktor/client/utils/b;->HttpResponseReceived:Lj7/a;

    .line 22
    .line 23
    new-instance v0, Lj7/a;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Lj7/a;-><init>()V

    .line 27
    .line 28
    sput-object v0, Lio/ktor/client/utils/b;->HttpResponseReceiveFailed:Lj7/a;

    .line 29
    .line 30
    new-instance v0, Lj7/a;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Lj7/a;-><init>()V

    .line 34
    .line 35
    sput-object v0, Lio/ktor/client/utils/b;->HttpResponseCancelled:Lj7/a;

    .line 36
    return-void
.end method

.method public static final a()Lj7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj7/a<",
            "Li7/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/client/utils/b;->HttpRequestCreated:Lj7/a;

    return-object v0
.end method

.method public static final b()Lj7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj7/a<",
            "Li7/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/client/utils/b;->HttpRequestIsReadyForSending:Lj7/a;

    return-object v0
.end method

.method public static final c()Lj7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj7/a<",
            "Lio/ktor/client/statement/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/client/utils/b;->HttpResponseCancelled:Lj7/a;

    return-object v0
.end method

.method public static final d()Lj7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj7/a<",
            "Lio/ktor/client/utils/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/client/utils/b;->HttpResponseReceiveFailed:Lj7/a;

    return-object v0
.end method

.method public static final e()Lj7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj7/a<",
            "Lio/ktor/client/statement/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/client/utils/b;->HttpResponseReceived:Lj7/a;

    return-object v0
.end method
