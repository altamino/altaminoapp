.class public final Lr7/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AddSuppressedMethod$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lr7/k$a;->INSTANCE:Lr7/k$a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lr7/k;->AddSuppressedMethod$delegate:Lw7/m;

    .line 9
    return-void
.end method

.method public static final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 3
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "other"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lr7/k;->b()Ljava/lang/reflect/Method;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    aput-object p1, v1, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_0
    return-void
.end method

.method private static final b()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lr7/k;->AddSuppressedMethod$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/reflect/Method;

    .line 9
    return-object v0
.end method
