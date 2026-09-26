.class final Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/IndicationInstance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/DefaultDebugIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultDebugIndicationInstance"
.end annotation


# instance fields
.field private final isFocused:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isHovered:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isPressed:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "isPressed"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "isHovered"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "isFocused"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isPressed:Landroidx/compose/runtime/State;

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isHovered:Landroidx/compose/runtime/State;

    .line 23
    .line 24
    iput-object p3, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isFocused:Landroidx/compose/runtime/State;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 15
    .param p1    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    .line 8
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->Z()V

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isPressed:Landroidx/compose/runtime/State;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->a()J

    .line 31
    move-result-wide v3

    .line 32
    .line 33
    .line 34
    const v5, 0x3e99999a    # 0.3f

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    .line 39
    const/16 v9, 0xe

    .line 40
    const/4 v10, 0x0

    .line 41
    .line 42
    .line 43
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 44
    move-result-wide v3

    .line 45
    .line 46
    const-wide/16 v5, 0x0

    .line 47
    .line 48
    .line 49
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 50
    move-result-wide v7

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v11, 0x0

    .line 53
    const/4 v12, 0x0

    .line 54
    .line 55
    const/16 v13, 0x7a

    .line 56
    const/4 v14, 0x0

    .line 57
    .line 58
    move-object/from16 v2, p1

    .line 59
    .line 60
    .line 61
    invoke-static/range {v2 .. v14}, Landroidx/compose/ui/graphics/drawscope/a;->n(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_0
    iget-object v1, v0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isHovered:Landroidx/compose/runtime/State;

    .line 65
    .line 66
    .line 67
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    check-cast v1, Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    iget-object v1, v0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isFocused:Landroidx/compose/runtime/State;

    .line 79
    .line 80
    .line 81
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    check-cast v1, Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    move-result v1

    .line 89
    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    :cond_1
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->a()J

    .line 96
    move-result-wide v3

    .line 97
    .line 98
    .line 99
    const v5, 0x3dcccccd    # 0.1f

    .line 100
    const/4 v6, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    .line 104
    const/16 v9, 0xe

    .line 105
    const/4 v10, 0x0

    .line 106
    .line 107
    .line 108
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 109
    move-result-wide v3

    .line 110
    .line 111
    const-wide/16 v5, 0x0

    .line 112
    .line 113
    .line 114
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 115
    move-result-wide v7

    .line 116
    const/4 v9, 0x0

    .line 117
    const/4 v11, 0x0

    .line 118
    const/4 v12, 0x0

    .line 119
    .line 120
    const/16 v13, 0x7a

    .line 121
    const/4 v14, 0x0

    .line 122
    .line 123
    move-object/from16 v2, p1

    .line 124
    .line 125
    .line 126
    invoke-static/range {v2 .. v14}, Landroidx/compose/ui/graphics/drawscope/a;->n(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 127
    :cond_2
    :goto_0
    return-void
.end method
