.class public final Lio/ktor/client/plugins/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BODY_FAILED_DECODING:Ljava/lang/String; = "<body failed decoding>"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEPRECATED_EXCEPTION_CTOR:Ljava/lang/String; = "Please, provide response text in constructor"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LOGGER:Lorg/slf4j/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NO_RESPONSE_TEXT:Ljava/lang/String; = "<no response text provided>"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ValidateMark:Lio/ktor/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lio/ktor/util/a;

    .line 3
    .line 4
    const-string v1, "ValidateMark"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lio/ktor/util/a;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lio/ktor/client/plugins/f;->ValidateMark:Lio/ktor/util/a;

    .line 10
    .line 11
    const-string v0, "io.ktor.client.plugins.DefaultResponseValidation"

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ln7/a;->a(Ljava/lang/String;)Lorg/slf4j/a;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Lio/ktor/client/plugins/f;->LOGGER:Lorg/slf4j/a;

    .line 18
    return-void
.end method

.method public static final synthetic a()Lorg/slf4j/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/f;->LOGGER:Lorg/slf4j/a;

    return-object v0
.end method

.method public static final synthetic b()Lio/ktor/util/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/f;->ValidateMark:Lio/ktor/util/a;

    return-object v0
.end method

.method public static final c(Lio/ktor/client/b;)V
    .locals 1
    .param p0    # Lio/ktor/client/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lio/ktor/client/plugins/f$a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lio/ktor/client/plugins/f$a;-><init>(Lio/ktor/client/b;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lio/ktor/client/plugins/l;->b(Lio/ktor/client/b;Le8/l;)V

    .line 14
    return-void
.end method
