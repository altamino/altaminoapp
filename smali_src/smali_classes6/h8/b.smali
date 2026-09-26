.class public final Lh8/b;
.super Lh8/a;
.source "SourceFile"


# instance fields
.field private final implStorage:Lh8/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lh8/a;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lh8/b$a;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lh8/b$a;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lh8/b;->implStorage:Lh8/b$a;

    .line 11
    return-void
.end method


# virtual methods
.method public j()Ljava/util/Random;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lh8/b;->implStorage:Lh8/b$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "get(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Ljava/util/Random;

    .line 14
    return-object v0
.end method
