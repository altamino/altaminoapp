.class public final Li7/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Li7/c;)Lkotlin/coroutines/g;
    .locals 0
    .param p0    # Li7/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Li7/c;->y0()Lio/ktor/client/call/b;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lio/ktor/client/call/b;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
