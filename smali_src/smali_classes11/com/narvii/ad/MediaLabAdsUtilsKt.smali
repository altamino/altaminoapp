.class public final Lcom/narvii/ad/MediaLabAdsUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaLabAdsUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaLabAdsUtils.kt\ncom/narvii/ad/MediaLabAdsUtilsKt\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,28:1\n260#2:29\n*S KotlinDebug\n*F\n+ 1 MediaLabAdsUtils.kt\ncom/narvii/ad/MediaLabAdsUtilsKt\n*L\n17#1:29\n*E\n"
.end annotation


# direct methods
.method public static final findFullObstructions(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 7
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    .line 18
    :goto_0
    if-ge v3, v1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    move-object v5, v4

    .line 28
    .line 29
    check-cast v5, Landroid/view/ViewGroup;

    .line 30
    .line 31
    .line 32
    invoke-static {v5}, Lcom/narvii/ad/MediaLabAdsUtilsKt;->findFullObstructions(Landroid/view/ViewGroup;)Ljava/util/List;

    .line 33
    move-result-object v5

    .line 34
    .line 35
    check-cast v5, Ljava/lang/Iterable;

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v5}, Lkotlin/collections/t;->D(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 42
    move-result v5

    .line 43
    const/4 v6, -0x1

    .line 44
    .line 45
    if-ne v5, v6, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 49
    move-result v5

    .line 50
    .line 51
    if-lez v5, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 55
    move-result v5

    .line 56
    .line 57
    if-lez v5, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 64
    move-result v5

    .line 65
    .line 66
    if-nez v5, :cond_1

    .line 67
    const/4 v5, 0x2

    .line 68
    .line 69
    new-array v5, v5, [I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 73
    .line 74
    aget v6, v5, v2

    .line 75
    .line 76
    if-nez v6, :cond_1

    .line 77
    const/4 v6, 0x1

    .line 78
    .line 79
    aget v5, v5, v6

    .line 80
    .line 81
    if-nez v5, :cond_1

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    return-object v0
.end method
