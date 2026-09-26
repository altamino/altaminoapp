.class public final Ls7/a$b;
.super Lt7/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt7/f<",
        "Ls7/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lt7/f;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic S(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ls7/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ls7/a$b;->e(Ls7/a;)V

    .line 6
    return-void
.end method

.method public d()Ls7/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ls7/a;

    .line 3
    .line 4
    sget-object v1, Lp7/b;->INSTANCE:Lp7/b;

    .line 5
    .line 6
    const/16 v2, 0x1000

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lp7/b;->b(I)Ljava/nio/ByteBuffer;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2, p0, v2}, Ls7/a;-><init>(Ljava/nio/ByteBuffer;Ls7/a;Lt7/g;Lkotlin/jvm/internal/k;)V

    .line 15
    return-object v0
.end method

.method public e(Ls7/a;)V
    .locals 1
    .param p1    # Ls7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "instance"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lp7/b;->INSTANCE:Lp7/b;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lr7/a;->g()Ljava/nio/ByteBuffer;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lp7/b;->a(Ljava/nio/ByteBuffer;)V

    .line 15
    return-void
.end method

.method public bridge synthetic s0()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ls7/a$b;->d()Ls7/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
