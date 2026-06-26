.class public final Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;
.super Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
.source "BaseBottomSheetBehaviorService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;->invoke()Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private oldOffset:F

.field final synthetic this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;


# direct methods
.method constructor <init>(Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 26
    iput p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->oldOffset:F

    return-void
.end method


# virtual methods
.method public final getOldOffset()F
    .locals 1

    .line 26
    iget v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->oldOffset:F

    return v0
.end method

.method public onSlide(Landroid/view/View;F)V
    .locals 5

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->oldOffset:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_0

    .line 30
    iput p2, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->oldOffset:F

    .line 32
    :cond_0
    iget p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->oldOffset:F

    sub-float p1, p2, p1

    const/4 v0, 0x0

    int-to-float v1, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    float-to-double v1, p2

    const-wide v3, 0x3fa999999999999aL    # 0.05

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;

    iget-object p1, p1, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;->this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;

    invoke-virtual {p1, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateRootView(Z)V

    .line 35
    :cond_1
    iput p2, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->oldOffset:F

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;

    iget-object p1, p1, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;->this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->setBottomState(Ljava/lang/Integer;)V

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;

    iget-object p1, p1, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;->this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateRootView(Z)V

    .line 43
    iget-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;

    iget-object p1, p1, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;->this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;

    invoke-virtual {p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->onCollapsed()V

    :goto_0
    return-void
.end method

.method public final setOldOffset(F)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->oldOffset:F

    return-void
.end method
