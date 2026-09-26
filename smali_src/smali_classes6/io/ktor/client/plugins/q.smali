.class public final Lio/ktor/client/plugins/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/q$a;,
        Lio/ktor/client/plugins/q$b;
    }
.end annotation


# static fields
.field private static final HttpResponseRedirect:Lj7/a;
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

.field public static final Plugin:Lio/ktor/client/plugins/q$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final key:Lio/ktor/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/a<",
            "Lio/ktor/client/plugins/q;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final allowHttpsDowngrade:Z

.field private final checkHttpMethod:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lio/ktor/client/plugins/q$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/q$b;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lio/ktor/client/plugins/q;->Plugin:Lio/ktor/client/plugins/q$b;

    .line 9
    .line 10
    new-instance v0, Lio/ktor/util/a;

    .line 11
    .line 12
    const-string v1, "HttpRedirect"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lio/ktor/util/a;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    sput-object v0, Lio/ktor/client/plugins/q;->key:Lio/ktor/util/a;

    .line 18
    .line 19
    new-instance v0, Lj7/a;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lj7/a;-><init>()V

    .line 23
    .line 24
    sput-object v0, Lio/ktor/client/plugins/q;->HttpResponseRedirect:Lj7/a;

    .line 25
    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/ktor/client/plugins/q;->checkHttpMethod:Z

    iput-boolean p2, p0, Lio/ktor/client/plugins/q;->allowHttpsDowngrade:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/q;-><init>(ZZ)V

    return-void
.end method

.method public static final synthetic a(Lio/ktor/client/plugins/q;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/ktor/client/plugins/q;->allowHttpsDowngrade:Z

    .line 3
    return p0
.end method

.method public static final synthetic b(Lio/ktor/client/plugins/q;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/ktor/client/plugins/q;->checkHttpMethod:Z

    .line 3
    return p0
.end method

.method public static final synthetic c()Lj7/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/q;->HttpResponseRedirect:Lj7/a;

    return-object v0
.end method

.method public static final synthetic d()Lio/ktor/util/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/q;->key:Lio/ktor/util/a;

    return-object v0
.end method
