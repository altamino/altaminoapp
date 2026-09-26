.class public final Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/ui/semantics/AccessibilityAction<",
        "Lw7/g<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;",
        "Landroidx/compose/ui/semantics/AccessibilityAction<",
        "Lw7/g<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;",
        "Landroidx/compose/ui/semantics/AccessibilityAction<",
        "Lw7/g<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemanticsProperties.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SemanticsProperties.kt\nandroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1\n*L\n1#1,1087:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/semantics/AccessibilityAction;Landroidx/compose/ui/semantics/AccessibilityAction;)Landroidx/compose/ui/semantics/AccessibilityAction;
    .locals 2
    .param p1    # Landroidx/compose/ui/semantics/AccessibilityAction;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/semantics/AccessibilityAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/AccessibilityAction<",
            "Lw7/g<",
            "+",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroidx/compose/ui/semantics/AccessibilityAction<",
            "Lw7/g<",
            "+",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Landroidx/compose/ui/semantics/AccessibilityAction<",
            "Lw7/g<",
            "+",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "childValue"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->b()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/AccessibilityAction;->b()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    :cond_1
    if-eqz p1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    :cond_3
    invoke-direct {v0, v1, p1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lw7/g;)V

    .line 35
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;->a(Landroidx/compose/ui/semantics/AccessibilityAction;Landroidx/compose/ui/semantics/AccessibilityAction;)Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
