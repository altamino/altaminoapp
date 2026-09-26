.class final Landroidx/compose/ui/text/android/StaticLayoutFactory23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/android/StaticLayoutFactoryImpl;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


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
.method public a(Landroidx/compose/ui/text/android/StaticLayoutParams;)Landroid/text/StaticLayout;
    .locals 5
    .param p1    # Landroidx/compose/ui/text/android/StaticLayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "params"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->p()Ljava/lang/CharSequence;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->o()I

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->e()I

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->m()Landroid/text/TextPaint;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->s()I

    .line 25
    move-result v4

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->q()Landroid/text/TextDirectionHeuristic;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->a()Landroid/text/Layout$Alignment;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->l()I

    .line 47
    move-result v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->c()Landroid/text/TextUtils$TruncateAt;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->d()I

    .line 61
    move-result v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->j()F

    .line 68
    move-result v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->k()F

    .line 72
    move-result v2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->g()Z

    .line 79
    move-result v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->b()I

    .line 86
    move-result v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->f()I

    .line 93
    move-result v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->i()[I

    .line 100
    move-result-object v1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->n()[I

    .line 104
    move-result-object v2

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    .line 108
    .line 109
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 110
    .line 111
    const/16 v2, 0x1a

    .line 112
    .line 113
    const-string v3, "this"

    .line 114
    .line 115
    if-lt v1, v2, :cond_0

    .line 116
    .line 117
    sget-object v2, Landroidx/compose/ui/text/android/StaticLayoutFactory26;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory26;

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->h()I

    .line 124
    move-result v4

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v0, v4}, Landroidx/compose/ui/text/android/StaticLayoutFactory26;->a(Landroid/text/StaticLayout$Builder;I)V

    .line 128
    .line 129
    :cond_0
    const/16 v2, 0x1c

    .line 130
    .line 131
    if-lt v1, v2, :cond_1

    .line 132
    .line 133
    sget-object v1, Landroidx/compose/ui/text/android/StaticLayoutFactory28;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory28;

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->r()Z

    .line 140
    move-result p1

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0, p1}, Landroidx/compose/ui/text/android/StaticLayoutFactory28;->a(Landroid/text/StaticLayout$Builder;Z)V

    .line 144
    .line 145
    .line 146
    :cond_1
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    const-string v0, "obtain(params.text, para\u2026  }\n            }.build()"

    .line 150
    .line 151
    .line 152
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    return-object p1
.end method
