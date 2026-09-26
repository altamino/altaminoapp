.class final Landroidx/compose/material/SliderKt$sliderSemantics$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$sliderSemantics$1;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt$sliderSemantics$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1163:1\n1547#2:1164\n1618#2,3:1165\n2190#2,14:1168\n*S KotlinDebug\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt$sliderSemantics$1$1\n*L\n850#1:1164\n850#1:1165,3\n851#1:1168,14\n*E\n"
.end annotation


# instance fields
.field final synthetic $coerced:F

.field final synthetic $onValueChange:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $steps:I

.field final synthetic $tickFractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $valueRange:Lj8/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj8/e;ILjava/util/List;FLe8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;F",
            "Le8/l<",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$valueRange:Lj8/e;

    iput p2, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$steps:I

    iput-object p3, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$tickFractions:Ljava/util/List;

    iput p4, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$coerced:F

    iput-object p5, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$onValueChange:Le8/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(F)Ljava/lang/Boolean;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$valueRange:Lj8/e;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$valueRange:Lj8/e;

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Ljava/lang/Number;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0, v1}, Lj8/m;->m(FFF)F

    .line 28
    move-result p1

    .line 29
    .line 30
    iget v0, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$steps:I

    .line 31
    .line 32
    if-lez v0, :cond_5

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$tickFractions:Ljava/util/List;

    .line 35
    .line 36
    check-cast v0, Ljava/lang/Iterable;

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$valueRange:Lj8/e;

    .line 39
    .line 40
    new-instance v2, Ljava/util/ArrayList;

    .line 41
    .line 42
    const/16 v3, 0xa

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v3}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 46
    move-result v3

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v3

    .line 58
    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    check-cast v3, Ljava/lang/Number;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 69
    move-result v3

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    check-cast v4, Ljava/lang/Number;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 79
    move-result v4

    .line 80
    .line 81
    .line 82
    invoke-interface {v1}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 83
    move-result-object v5

    .line 84
    .line 85
    check-cast v5, Ljava/lang/Number;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 89
    move-result v5

    .line 90
    .line 91
    .line 92
    invoke-static {v4, v5, v3}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 93
    move-result v3

    .line 94
    .line 95
    .line 96
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    .line 100
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v1

    .line 110
    .line 111
    if-nez v1, :cond_1

    .line 112
    const/4 v0, 0x0

    .line 113
    goto :goto_2

    .line 114
    .line 115
    .line 116
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result v2

    .line 122
    .line 123
    if-nez v2, :cond_2

    .line 124
    :goto_1
    move-object v0, v1

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    move-object v2, v1

    .line 127
    .line 128
    check-cast v2, Ljava/lang/Number;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 132
    move-result v2

    .line 133
    sub-float/2addr v2, p1

    .line 134
    .line 135
    .line 136
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 137
    move-result v2

    .line 138
    .line 139
    .line 140
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    move-result-object v3

    .line 142
    move-object v4, v3

    .line 143
    .line 144
    check-cast v4, Ljava/lang/Number;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 148
    move-result v4

    .line 149
    sub-float/2addr v4, p1

    .line 150
    .line 151
    .line 152
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 153
    move-result v4

    .line 154
    .line 155
    .line 156
    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    .line 157
    move-result v5

    .line 158
    .line 159
    if-lez v5, :cond_4

    .line 160
    move-object v1, v3

    .line 161
    move v2, v4

    .line 162
    .line 163
    .line 164
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    move-result v3

    .line 166
    .line 167
    if-nez v3, :cond_3

    .line 168
    goto :goto_1

    .line 169
    .line 170
    :goto_2
    check-cast v0, Ljava/lang/Float;

    .line 171
    .line 172
    if-eqz v0, :cond_5

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 176
    move-result p1

    .line 177
    .line 178
    :cond_5
    iget v0, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$coerced:F

    .line 179
    .line 180
    cmpg-float v0, p1, v0

    .line 181
    .line 182
    if-nez v0, :cond_6

    .line 183
    const/4 p1, 0x0

    .line 184
    goto :goto_3

    .line 185
    .line 186
    :cond_6
    iget-object v0, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$onValueChange:Le8/l;

    .line 187
    .line 188
    .line 189
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 190
    move-result-object p1

    .line 191
    .line 192
    .line 193
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/4 p1, 0x1

    .line 195
    .line 196
    .line 197
    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 198
    move-result-object p1

    .line 199
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->a(F)Ljava/lang/Boolean;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
