.class public final Landroidx/compose/ui/focus/FocusOrderModifierToProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le8/l<",
        "Landroidx/compose/ui/focus/FocusProperties;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field private final modifier:Landroidx/compose/ui/focus/FocusOrderModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/focus/FocusOrderModifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusOrderModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "modifier"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOrderModifierToProperties;->modifier:Landroidx/compose/ui/focus/FocusOrderModifier;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/focus/FocusOrderModifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrderModifierToProperties;->modifier:Landroidx/compose/ui/focus/FocusOrderModifier;

    return-object v0
.end method

.method public b(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/focus/FocusProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "focusProperties"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrderModifierToProperties;->modifier:Landroidx/compose/ui/focus/FocusOrderModifier;

    .line 8
    .line 9
    new-instance v1, Landroidx/compose/ui/focus/FocusOrder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p1}, Landroidx/compose/ui/focus/FocusOrder;-><init>(Landroidx/compose/ui/focus/FocusProperties;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroidx/compose/ui/focus/FocusOrderModifier;->O(Landroidx/compose/ui/focus/FocusOrder;)V

    .line 16
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/focus/FocusProperties;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusOrderModifierToProperties;->b(Landroidx/compose/ui/focus/FocusProperties;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
