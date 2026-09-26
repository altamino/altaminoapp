.class final Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->d(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $direction:I

.field final synthetic $focusedItem:Landroidx/compose/ui/focus/FocusModifier;

.field final synthetic $onFound:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_generateAndSearchChildren:Landroidx/compose/ui/focus/FocusModifier;


# direct methods
.method constructor <init>(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "I",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;->$this_generateAndSearchChildren:Landroidx/compose/ui/focus/FocusModifier;

    iput-object p2, p0, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;->$focusedItem:Landroidx/compose/ui/focus/FocusModifier;

    iput p3, p0, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;->$direction:I

    iput-object p4, p0, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;->$onFound:Le8/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;)Ljava/lang/Boolean;
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$searchBeyondBounds"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;->$this_generateAndSearchChildren:Landroidx/compose/ui/focus/FocusModifier;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;->$focusedItem:Landroidx/compose/ui/focus/FocusModifier;

    .line 10
    .line 11
    iget v2, p0, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;->$direction:I

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;->$onFound:Le8/l;

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->a(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;->a()Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;->a(Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;)Ljava/lang/Boolean;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
