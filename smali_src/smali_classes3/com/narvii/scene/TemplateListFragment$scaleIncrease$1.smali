.class final Lcom/narvii/scene/TemplateListFragment$scaleIncrease$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


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
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroid/view/View;",
        "Ljava/lang/Float;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/TemplateListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/TemplateListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$scaleIncrease$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/TemplateListFragment$scaleIncrease$1;->invoke(Landroid/view/View;F)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;F)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/narvii/scene/TemplateListFragment$scaleIncrease$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 2
    invoke-virtual {v2}, Lcom/narvii/scene/TemplateListFragment;->getAnimRate()D

    move-result-wide v2

    sub-double v2, v0, v2

    iget-object v4, p0, Lcom/narvii/scene/TemplateListFragment$scaleIncrease$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {v4}, Lcom/narvii/scene/TemplateListFragment;->getAnimRate()D

    move-result-wide v4

    float-to-double v6, p2

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lcom/narvii/scene/TemplateListFragment$scaleIncrease$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 3
    invoke-virtual {p2}, Lcom/narvii/scene/TemplateListFragment;->getAnimRate()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget-object p2, p0, Lcom/narvii/scene/TemplateListFragment$scaleIncrease$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p2}, Lcom/narvii/scene/TemplateListFragment;->getAnimRate()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    double-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
