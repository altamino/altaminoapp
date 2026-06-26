.class final Lcom/narvii/scene/TemplateListFragment$scaleDecrease$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TemplateListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/TemplateListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/View;",
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/TemplateListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/TemplateListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$scaleDecrease$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/TemplateListFragment$scaleDecrease$1;->invoke(Landroid/view/View;F)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;F)V
    .locals 6

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    int-to-double v0, v0

    .line 143
    iget-object v2, p0, Lcom/narvii/scene/TemplateListFragment$scaleDecrease$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {v2}, Lcom/narvii/scene/TemplateListFragment;->getAnimRate()D

    move-result-wide v2

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v2, v0, v2

    double-to-float p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 144
    iget-object p2, p0, Lcom/narvii/scene/TemplateListFragment$scaleDecrease$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p2}, Lcom/narvii/scene/TemplateListFragment;->getAnimRate()D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    double-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
