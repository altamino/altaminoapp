.class public final Landroidx/navigation/NavArgument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private defaultValue:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private defaultValuePresent:Z

.field private isNullable:Z

.field private type:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


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
.method public final a()Landroidx/navigation/NavArgument;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/navigation/NavArgument$Builder;->type:Landroidx/navigation/NavType;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/navigation/NavType;->Companion:Landroidx/navigation/NavType$Companion;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/navigation/NavArgument$Builder;->defaultValue:Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/navigation/NavType$Companion;->c(Ljava/lang/Object;)Landroidx/navigation/NavType;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    :cond_0
    new-instance v1, Landroidx/navigation/NavArgument;

    .line 15
    .line 16
    iget-boolean v2, p0, Landroidx/navigation/NavArgument$Builder;->isNullable:Z

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/navigation/NavArgument$Builder;->defaultValue:Ljava/lang/Object;

    .line 19
    .line 20
    iget-boolean v4, p0, Landroidx/navigation/NavArgument$Builder;->defaultValuePresent:Z

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/navigation/NavArgument;-><init>(Landroidx/navigation/NavType;ZLjava/lang/Object;Z)V

    .line 24
    return-object v1
.end method

.method public final b(Ljava/lang/Object;)Landroidx/navigation/NavArgument$Builder;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/navigation/NavArgument$Builder;->defaultValue:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/navigation/NavArgument$Builder;->defaultValuePresent:Z

    return-object p0
.end method

.method public final c(Z)Landroidx/navigation/NavArgument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/navigation/NavArgument$Builder;->isNullable:Z

    return-object p0
.end method

.method public final d(Landroidx/navigation/NavType;)Landroidx/navigation/NavArgument$Builder;
    .locals 1
    .param p1    # Landroidx/navigation/NavType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/navigation/NavType<",
            "TT;>;)",
            "Landroidx/navigation/NavArgument$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/navigation/NavArgument$Builder;->type:Landroidx/navigation/NavType;

    return-object p0
.end method
