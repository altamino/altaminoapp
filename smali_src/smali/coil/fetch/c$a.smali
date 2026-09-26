.class public final Lcoil/fetch/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/fetch/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/fetch/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcoil/fetch/i$a<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcoil/request/m;Lcoil/e;)Lcoil/fetch/i;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcoil/fetch/c$a;->b(Ljava/nio/ByteBuffer;Lcoil/request/m;Lcoil/e;)Lcoil/fetch/i;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public b(Ljava/nio/ByteBuffer;Lcoil/request/m;Lcoil/e;)Lcoil/fetch/i;
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p3, Lcoil/fetch/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {p3, p1, p2}, Lcoil/fetch/c;-><init>(Ljava/nio/ByteBuffer;Lcoil/request/m;)V

    .line 6
    return-object p3
.end method
