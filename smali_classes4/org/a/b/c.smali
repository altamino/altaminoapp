.class public final Lorg/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/a/b/c$a;
    }
.end annotation


# instance fields
.field public final a:Lorg/a/b/d;

.field public final b:Lorg/a/b/b;


# direct methods
.method private constructor <init>(Lorg/a/b/d;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/a/b/c;->a:Lorg/a/b/d;

    .line 31
    new-instance p1, Lorg/a/b/b;

    invoke-direct {p1}, Lorg/a/b/b;-><init>()V

    iput-object p1, p0, Lorg/a/b/c;->b:Lorg/a/b/b;

    return-void
.end method

.method synthetic constructor <init>(Lorg/a/b/d;B)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/a/b/c;-><init>(Lorg/a/b/d;)V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lorg/a/b/a;",
            ">;)V"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/b/a;

    .line 7026
    iget v3, v2, Lorg/a/a/a;->a:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    .line 6204
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8036
    :cond_1
    iget v3, v2, Lorg/a/a/a;->b:I

    add-int/2addr v3, v4

    .line 6205
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v3, v5, :cond_2

    .line 9036
    iget v3, v2, Lorg/a/a/a;->b:I

    add-int/2addr v3, v4

    .line 6206
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_1
    if-eqz v4, :cond_0

    .line 214
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/b/a;

    .line 219
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static b(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lorg/a/b/a;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-long v0, v0

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/a/b/a;

    .line 10026
    iget v5, v4, Lorg/a/a/a;->a:I

    if-eqz v5, :cond_1

    add-int/lit8 v5, v5, -0x1

    .line 228
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11036
    :cond_1
    iget v5, v4, Lorg/a/a/a;->b:I

    add-int/lit8 v6, v5, 0x1

    int-to-long v6, v6

    cmp-long v8, v6, v0

    if-eqz v8, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 229
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 232
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/b/a;

    .line 236
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 252
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 12303
    iget-object v1, p0, Lorg/a/b/c;->b:Lorg/a/b/b;

    .line 13130
    iget-object v2, v1, Lorg/a/b/b;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 256
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/a/b/b;

    .line 14126
    iput-object v1, v3, Lorg/a/b/b;->c:Lorg/a/b/b;

    .line 258
    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 263
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/a/b/b;

    .line 14134
    iget-object v2, v1, Lorg/a/b/b;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 265
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    const/4 v4, 0x0

    .line 15074
    invoke-virtual {v1, v3, v4}, Lorg/a/b/b;->a(Ljava/lang/Character;Z)Lorg/a/b/b;

    move-result-object v5

    .line 267
    invoke-interface {v0, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 15122
    iget-object v6, v1, Lorg/a/b/b;->c:Lorg/a/b/b;

    .line 16074
    :goto_2
    invoke-virtual {v6, v3, v4}, Lorg/a/b/b;->a(Ljava/lang/Character;Z)Lorg/a/b/b;

    move-result-object v7

    if-nez v7, :cond_1

    .line 16122
    iget-object v6, v6, Lorg/a/b/b;->c:Lorg/a/b/b;

    goto :goto_2

    .line 17074
    :cond_1
    invoke-virtual {v6, v3, v4}, Lorg/a/b/b;->a(Ljava/lang/Character;Z)Lorg/a/b/b;

    move-result-object v3

    .line 17126
    iput-object v3, v5, Lorg/a/b/b;->c:Lorg/a/b/b;

    .line 276
    invoke-virtual {v3}, Lorg/a/b/b;->a()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/a/b/b;->a(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Lorg/a/b/a/b;)V
    .locals 9

    .line 1303
    iget-object v0, p0, Lorg/a/b/c;->b:Lorg/a/b/b;

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 140
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 141
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 144
    iget-object v4, p0, Lorg/a/b/c;->a:Lorg/a/b/d;

    .line 2048
    iget-boolean v4, v4, Lorg/a/b/d;->d:Z

    if-eqz v4, :cond_0

    .line 145
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 3074
    :cond_0
    invoke-virtual {v2, v3, v1}, Lorg/a/b/b;->a(Ljava/lang/Character;Z)Lorg/a/b/b;

    move-result-object v4

    move-object v8, v4

    move-object v4, v2

    move-object v2, v8

    :goto_1
    if-nez v2, :cond_1

    .line 3122
    iget-object v4, v4, Lorg/a/b/b;->c:Lorg/a/b/b;

    .line 4074
    invoke-virtual {v4, v3, v1}, Lorg/a/b/b;->a(Ljava/lang/Character;Z)Lorg/a/b/b;

    move-result-object v2

    goto :goto_1

    .line 4283
    :cond_1
    invoke-virtual {v2}, Lorg/a/b/b;->a()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 4286
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 4287
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4288
    new-instance v6, Lorg/a/b/a;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, v0, v7

    add-int/2addr v7, v4

    invoke-direct {v6, v7, v0, v5}, Lorg/a/b/a;-><init>(IILjava/lang/String;)V

    invoke-interface {p2, v6}, Lorg/a/b/a/b;->a(Lorg/a/b/a;)Z

    .line 4289
    iget-object v5, p0, Lorg/a/b/c;->a:Lorg/a/b/d;

    .line 5016
    iget-boolean v5, v5, Lorg/a/b/d;->e:Z

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    .line 149
    iget-object v3, p0, Lorg/a/b/c;->a:Lorg/a/b/d;

    .line 6016
    iget-boolean v3, v3, Lorg/a/b/d;->e:Z

    if-eqz v3, :cond_5

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
