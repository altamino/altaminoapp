.class public final Landroidx/navigation/NavGraph$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/navigation/NavGraph$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;
    .locals 1
    .param p1    # Landroidx/navigation/NavGraph;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/navigation/NavGraph;->I()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/navigation/NavGraph;->C(I)Landroidx/navigation/NavDestination;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    sget-object v0, Landroidx/navigation/NavGraph$Companion$findStartDestination$1;->INSTANCE:Landroidx/navigation/NavGraph$Companion$findStartDestination$1;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/sequences/j;->f(Ljava/lang/Object;Le8/l;)Lkotlin/sequences/g;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/sequences/j;->t(Lkotlin/sequences/g;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 26
    return-object p1
.end method
