.class final Lio/ktor/client/plugins/u$a$f;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/u$a;->s(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Lio/ktor/client/plugins/u$f;",
        "Li7/c;",
        "Lio/ktor/client/statement/c;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpRequestRetry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequestRetry.kt\nio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnServerErrors$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,407:1\n1#2:408\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/client/plugins/u$a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/client/plugins/u$a$f;

    invoke-direct {v0}, Lio/ktor/client/plugins/u$a$f;-><init>()V

    sput-object v0, Lio/ktor/client/plugins/u$a$f;->INSTANCE:Lio/ktor/client/plugins/u$a$f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/ktor/client/plugins/u$f;Li7/c;Lio/ktor/client/statement/c;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lio/ktor/client/plugins/u$f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Li7/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/ktor/client/statement/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$retryIf"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "<anonymous parameter 0>"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p1, "response"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Lio/ktor/client/statement/c;->e()Lio/ktor/http/v;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lio/ktor/http/v;->f0()I

    .line 23
    move-result p1

    .line 24
    .line 25
    const/16 p2, 0x1f4

    .line 26
    const/4 p3, 0x0

    .line 27
    .line 28
    if-gt p2, p1, :cond_0

    .line 29
    .line 30
    const/16 p2, 0x258

    .line 31
    .line 32
    if-ge p1, p2, :cond_0

    .line 33
    const/4 p3, 0x1

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lio/ktor/client/plugins/u$f;

    .line 3
    .line 4
    check-cast p2, Li7/c;

    .line 5
    .line 6
    check-cast p3, Lio/ktor/client/statement/c;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/u$a$f;->a(Lio/ktor/client/plugins/u$f;Li7/c;Lio/ktor/client/statement/c;)Ljava/lang/Boolean;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
