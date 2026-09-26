.class public final Lkotlin/text/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lf8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/e;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lj8/i;",
        ">;",
        "Lf8/a;"
    }
.end annotation


# instance fields
.field private counter:I

.field private currentStartIndex:I

.field private nextItem:Lj8/i;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nextSearchIndex:I

.field private nextState:I

.field final synthetic this$0:Lkotlin/text/e;


# direct methods
.method constructor <init>(Lkotlin/text/e;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lkotlin/text/e$a;->this$0:Lkotlin/text/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    .line 7
    .line 8
    iput v0, p0, Lkotlin/text/e$a;->nextState:I

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/text/e;->f(Lkotlin/text/e;)I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/text/e;->d(Lkotlin/text/e;)Ljava/lang/CharSequence;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 20
    move-result p1

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, p1}, Lj8/m;->n(III)I

    .line 25
    move-result p1

    .line 26
    .line 27
    iput p1, p0, Lkotlin/text/e$a;->currentStartIndex:I

    .line 28
    .line 29
    iput p1, p0, Lkotlin/text/e$a;->nextSearchIndex:I

    .line 30
    return-void
.end method

.method private final a()V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lkotlin/text/e$a;->nextSearchIndex:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    iput v1, p0, Lkotlin/text/e$a;->nextState:I

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lkotlin/text/e$a;->nextItem:Lj8/i;

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lkotlin/text/e$a;->this$0:Lkotlin/text/e;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/text/e;->e(Lkotlin/text/e;)I

    .line 18
    move-result v0

    .line 19
    const/4 v2, -0x1

    .line 20
    const/4 v3, 0x1

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lkotlin/text/e$a;->counter:I

    .line 25
    add-int/2addr v0, v3

    .line 26
    .line 27
    iput v0, p0, Lkotlin/text/e$a;->counter:I

    .line 28
    .line 29
    iget-object v4, p0, Lkotlin/text/e$a;->this$0:Lkotlin/text/e;

    .line 30
    .line 31
    .line 32
    invoke-static {v4}, Lkotlin/text/e;->e(Lkotlin/text/e;)I

    .line 33
    move-result v4

    .line 34
    .line 35
    if-ge v0, v4, :cond_2

    .line 36
    .line 37
    :cond_1
    iget v0, p0, Lkotlin/text/e$a;->nextSearchIndex:I

    .line 38
    .line 39
    iget-object v4, p0, Lkotlin/text/e$a;->this$0:Lkotlin/text/e;

    .line 40
    .line 41
    .line 42
    invoke-static {v4}, Lkotlin/text/e;->d(Lkotlin/text/e;)Ljava/lang/CharSequence;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    .line 46
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 47
    move-result v4

    .line 48
    .line 49
    if-le v0, v4, :cond_3

    .line 50
    .line 51
    :cond_2
    new-instance v0, Lj8/i;

    .line 52
    .line 53
    iget v1, p0, Lkotlin/text/e$a;->currentStartIndex:I

    .line 54
    .line 55
    iget-object v4, p0, Lkotlin/text/e$a;->this$0:Lkotlin/text/e;

    .line 56
    .line 57
    .line 58
    invoke-static {v4}, Lkotlin/text/e;->d(Lkotlin/text/e;)Ljava/lang/CharSequence;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    invoke-static {v4}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 63
    move-result v4

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1, v4}, Lj8/i;-><init>(II)V

    .line 67
    .line 68
    iput-object v0, p0, Lkotlin/text/e$a;->nextItem:Lj8/i;

    .line 69
    .line 70
    iput v2, p0, Lkotlin/text/e$a;->nextSearchIndex:I

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Lkotlin/text/e$a;->this$0:Lkotlin/text/e;

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lkotlin/text/e;->c(Lkotlin/text/e;)Le8/p;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    iget-object v4, p0, Lkotlin/text/e$a;->this$0:Lkotlin/text/e;

    .line 80
    .line 81
    .line 82
    invoke-static {v4}, Lkotlin/text/e;->d(Lkotlin/text/e;)Ljava/lang/CharSequence;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    iget v5, p0, Lkotlin/text/e$a;->nextSearchIndex:I

    .line 86
    .line 87
    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v4, v5}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    check-cast v0, Lw7/u;

    .line 96
    .line 97
    if-nez v0, :cond_4

    .line 98
    .line 99
    new-instance v0, Lj8/i;

    .line 100
    .line 101
    iget v1, p0, Lkotlin/text/e$a;->currentStartIndex:I

    .line 102
    .line 103
    iget-object v4, p0, Lkotlin/text/e$a;->this$0:Lkotlin/text/e;

    .line 104
    .line 105
    .line 106
    invoke-static {v4}, Lkotlin/text/e;->d(Lkotlin/text/e;)Ljava/lang/CharSequence;

    .line 107
    move-result-object v4

    .line 108
    .line 109
    .line 110
    invoke-static {v4}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 111
    move-result v4

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, v1, v4}, Lj8/i;-><init>(II)V

    .line 115
    .line 116
    iput-object v0, p0, Lkotlin/text/e$a;->nextItem:Lj8/i;

    .line 117
    .line 118
    iput v2, p0, Lkotlin/text/e$a;->nextSearchIndex:I

    .line 119
    goto :goto_0

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-virtual {v0}, Lw7/u;->a()Ljava/lang/Object;

    .line 123
    move-result-object v2

    .line 124
    .line 125
    check-cast v2, Ljava/lang/Number;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 129
    move-result v2

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lw7/u;->b()Ljava/lang/Object;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    check-cast v0, Ljava/lang/Number;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 139
    move-result v0

    .line 140
    .line 141
    iget v4, p0, Lkotlin/text/e$a;->currentStartIndex:I

    .line 142
    .line 143
    .line 144
    invoke-static {v4, v2}, Lj8/m;->v(II)Lj8/i;

    .line 145
    move-result-object v4

    .line 146
    .line 147
    iput-object v4, p0, Lkotlin/text/e$a;->nextItem:Lj8/i;

    .line 148
    add-int/2addr v2, v0

    .line 149
    .line 150
    iput v2, p0, Lkotlin/text/e$a;->currentStartIndex:I

    .line 151
    .line 152
    if-nez v0, :cond_5

    .line 153
    move v1, v3

    .line 154
    :cond_5
    add-int/2addr v2, v1

    .line 155
    .line 156
    iput v2, p0, Lkotlin/text/e$a;->nextSearchIndex:I

    .line 157
    .line 158
    :goto_0
    iput v3, p0, Lkotlin/text/e$a;->nextState:I

    .line 159
    :goto_1
    return-void
.end method


# virtual methods
.method public b()Lj8/i;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lkotlin/text/e$a;->nextState:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lkotlin/text/e$a;->a()V

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lkotlin/text/e$a;->nextState:I

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lkotlin/text/e$a;->nextItem:Lj8/i;

    .line 15
    .line 16
    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    iput-object v2, p0, Lkotlin/text/e$a;->nextItem:Lj8/i;

    .line 23
    .line 24
    iput v1, p0, Lkotlin/text/e$a;->nextState:I

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 31
    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lkotlin/text/e$a;->nextState:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lkotlin/text/e$a;->a()V

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lkotlin/text/e$a;->nextState:I

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    :goto_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/text/e$a;->b()Lj8/i;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
