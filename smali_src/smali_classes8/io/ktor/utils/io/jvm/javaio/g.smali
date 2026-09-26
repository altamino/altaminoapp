.class final Lio/ktor/utils/io/jvm/javaio/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/utils/io/jvm/javaio/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/utils/io/jvm/javaio/e<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/utils/io/jvm/javaio/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/utils/io/jvm/javaio/g;

    invoke-direct {v0}, Lio/ktor/utils/io/jvm/javaio/g;-><init>()V

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/g;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/g;

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

.method private final c()Ljava/lang/Void;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    const-string v1, "Parking is prohibited on this thread. Most likely you are using blocking operation on the wrong thread/dispatcher that doesn\'t allow blocking. Consider wrapping you blocking code withContext(Dispatchers.IO) {...}."

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/jvm/javaio/g;->c()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance p1, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 9
    throw p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Thread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/jvm/javaio/g;->d(Ljava/lang/Thread;)V

    .line 6
    return-void
.end method

.method public d(Ljava/lang/Thread;)V
    .locals 1
    .param p1    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "token"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/c;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/c;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/jvm/javaio/c;->c(Ljava/lang/Thread;)V

    .line 11
    return-void
.end method
