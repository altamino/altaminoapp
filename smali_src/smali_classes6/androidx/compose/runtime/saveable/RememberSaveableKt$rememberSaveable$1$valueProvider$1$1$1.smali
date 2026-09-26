.class final Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$valueProvider$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/saveable/SaverScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$valueProvider$1;->invoke()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$valueProvider$1$1$1;->$registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$valueProvider$1$1$1;->$registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->a(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method
