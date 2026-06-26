.class public final Lcom/narvii/scene/TemplateListFragmentKt;
.super Ljava/lang/Object;
.source "TemplateListFragment.kt"


# direct methods
.method public static final synthetic access$animation(Landroid/view/View;FLkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/scene/TemplateListFragmentKt;->animation(Landroid/view/View;FLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final animation(Landroid/view/View;FLkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "F",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 473
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
