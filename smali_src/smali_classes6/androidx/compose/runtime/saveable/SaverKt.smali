.class public final Landroidx/compose/runtime/saveable/SaverKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AutoSaver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;->INSTANCE:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;->INSTANCE:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->a(Le8/p;Le8/l;)Landroidx/compose/runtime/saveable/Saver;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Landroidx/compose/runtime/saveable/SaverKt;->AutoSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 11
    return-void
.end method

.method public static final a(Le8/p;Le8/l;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1
    .param p0    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Original:",
            "Ljava/lang/Object;",
            "Saveable:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/saveable/SaverScope;",
            "-TOriginal;+TSaveable;>;",
            "Le8/l<",
            "-TSaveable;+TOriginal;>;)",
            "Landroidx/compose/runtime/saveable/Saver<",
            "TOriginal;TSaveable;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "save"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "restore"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Le8/p;Le8/l;)V

    .line 16
    return-object v0
.end method

.method public static final b()Landroidx/compose/runtime/saveable/Saver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/compose/runtime/saveable/Saver<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/saveable/SaverKt;->AutoSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method
