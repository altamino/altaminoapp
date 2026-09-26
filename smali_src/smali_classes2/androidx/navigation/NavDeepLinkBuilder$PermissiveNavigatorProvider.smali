.class final Landroidx/navigation/NavDeepLinkBuilder$PermissiveNavigatorProvider;
.super Landroidx/navigation/NavigatorProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavDeepLinkBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissiveNavigatorProvider"
.end annotation


# instance fields
.field private final mDestNavigator:Landroidx/navigation/Navigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/Navigator<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/navigation/NavigatorProvider;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/navigation/NavDeepLinkBuilder$PermissiveNavigatorProvider$mDestNavigator$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/navigation/NavDeepLinkBuilder$PermissiveNavigatorProvider$mDestNavigator$1;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/navigation/NavDeepLinkBuilder$PermissiveNavigatorProvider;->mDestNavigator:Landroidx/navigation/Navigator;

    .line 11
    .line 12
    new-instance v0, Landroidx/navigation/NavGraphNavigator;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/navigation/NavigatorProvider;->b(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 19
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)Landroidx/navigation/Navigator;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;>(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "name"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-super {p0, p1}, Landroidx/navigation/NavigatorProvider;->e(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :catch_0
    iget-object p1, p0, Landroidx/navigation/NavDeepLinkBuilder$PermissiveNavigatorProvider;->mDestNavigator:Landroidx/navigation/Navigator;

    .line 13
    :goto_0
    return-object p1
.end method
