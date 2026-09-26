.class public final Landroidx/compose/ui/focus/DefaultFocusProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/focus/FocusProperties;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/focus/DefaultFocusProperties;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/focus/DefaultFocusProperties;

    invoke-direct {v0}, Landroidx/compose/ui/focus/DefaultFocusProperties;-><init>()V

    sput-object v0, Landroidx/compose/ui/focus/DefaultFocusProperties;->INSTANCE:Landroidx/compose/ui/focus/DefaultFocusProperties;

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

.method private final b()Ljava/lang/Void;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    .line 4
    const-string v1, "Attempting to change DefaultFocusProperties"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    throw v0
.end method


# virtual methods
.method public a()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<anonymous parameter 0>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/focus/DefaultFocusProperties;->b()Ljava/lang/Void;

    .line 9
    .line 10
    new-instance p1, Lw7/i;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 14
    throw p1
.end method

.method public f()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public g(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/focus/DefaultFocusProperties;->b()Ljava/lang/Void;

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

.method public getEnd()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStart()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<anonymous parameter 0>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/focus/DefaultFocusProperties;->b()Ljava/lang/Void;

    .line 9
    .line 10
    new-instance p1, Lw7/i;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 14
    throw p1
.end method

.method public i(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<anonymous parameter 0>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/focus/DefaultFocusProperties;->b()Ljava/lang/Void;

    .line 9
    .line 10
    new-instance p1, Lw7/i;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 14
    throw p1
.end method

.method public j()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public k()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public l(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<anonymous parameter 0>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/focus/DefaultFocusProperties;->b()Ljava/lang/Void;

    .line 9
    .line 10
    new-instance p1, Lw7/i;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 14
    throw p1
.end method

.method public m(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<anonymous parameter 0>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/focus/DefaultFocusProperties;->b()Ljava/lang/Void;

    .line 9
    .line 10
    new-instance p1, Lw7/i;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 14
    throw p1
.end method

.method public n(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<anonymous parameter 0>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/focus/DefaultFocusProperties;->b()Ljava/lang/Void;

    .line 9
    .line 10
    new-instance p1, Lw7/i;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 14
    throw p1
.end method

.method public o(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<anonymous parameter 0>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/focus/DefaultFocusProperties;->b()Ljava/lang/Void;

    .line 9
    .line 10
    new-instance p1, Lw7/i;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 14
    throw p1
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public q(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<anonymous parameter 0>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/focus/DefaultFocusProperties;->b()Ljava/lang/Void;

    .line 9
    .line 10
    new-instance p1, Lw7/i;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 14
    throw p1
.end method
