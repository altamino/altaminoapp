.class public Landroidx/navigation/NavGraphBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestinationBuilder<",
        "Landroidx/navigation/NavGraph;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavGraphBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraphBuilder.kt\nandroidx/navigation/NavGraphBuilder\n+ 2 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n*L\n1#1,193:1\n161#2:194\n161#2:195\n*S KotlinDebug\n*F\n+ 1 NavGraphBuilder.kt\nandroidx/navigation/NavGraphBuilder\n*L\n131#1:194\n149#1:195\n*E\n"
.end annotation


# instance fields
.field private final destinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final provider:Landroidx/navigation/NavigatorProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private startDestinationId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private startDestinationRoute:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/navigation/NavigatorProvider;II)V
    .locals 1
    .param p1    # Landroidx/navigation/NavigatorProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    const-string/jumbo v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroidx/navigation/NavGraphNavigator;

    .line 1
    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->d(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;I)V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/List;

    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    iput p3, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationId:I

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/navigation/NavigatorProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "startDestination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroidx/navigation/NavGraphNavigator;

    .line 4
    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->d(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p3}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Ljava/lang/String;)V

    .line 6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/List;

    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    iput-object p2, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationRoute:Ljava/lang/String;

    return-void
.end method
