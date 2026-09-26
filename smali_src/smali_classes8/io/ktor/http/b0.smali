.class public final Lio/ktor/http/b0;
.super Lio/ktor/util/v;
.source "SourceFile"

# interfaces
.implements Lio/ktor/http/a0;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/ktor/http/b0;-><init>(IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1}, Lio/ktor/util/v;-><init>(ZI)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x8

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/http/b0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lio/ktor/http/z;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lio/ktor/http/c0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lio/ktor/util/v;->i()Ljava/util/Map;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lio/ktor/http/c0;-><init>(Ljava/util/Map;)V

    .line 10
    return-object v0
.end method
