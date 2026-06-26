.class public final Lcom/narvii/scene/service/ChooseSceneTemplateService$onBottomLayoutCreated$1;
.super Lcom/narvii/util/OnPreventRepeatedClickListener;
.source "ChooseSceneTemplateService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/service/ChooseSceneTemplateService;->onBottomLayoutCreated(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/service/ChooseSceneTemplateService;


# direct methods
.method constructor <init>(Lcom/narvii/scene/service/ChooseSceneTemplateService;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService$onBottomLayoutCreated$1;->this$0:Lcom/narvii/scene/service/ChooseSceneTemplateService;

    invoke-direct {p0, p2}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    return-void
.end method
