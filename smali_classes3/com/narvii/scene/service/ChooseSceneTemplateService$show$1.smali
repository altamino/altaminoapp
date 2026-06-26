.class final Lcom/narvii/scene/service/ChooseSceneTemplateService$show$1;
.super Ljava/lang/Object;
.source "ChooseSceneTemplateService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/service/ChooseSceneTemplateService;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/service/ChooseSceneTemplateService;


# direct methods
.method constructor <init>(Lcom/narvii/scene/service/ChooseSceneTemplateService;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService$show$1;->this$0:Lcom/narvii/scene/service/ChooseSceneTemplateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService$show$1;->this$0:Lcom/narvii/scene/service/ChooseSceneTemplateService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateBottomSheet(I)V

    return-void
.end method
