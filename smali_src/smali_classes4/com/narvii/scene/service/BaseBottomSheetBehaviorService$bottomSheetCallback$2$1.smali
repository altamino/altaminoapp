.class public final Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;
.source "SourceFile"


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

.field final synthetic this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;


# direct methods
.method constructor <init>(Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;-><init>()V

    .line 6
    .line 7
    const/high16 p1, -0x40800000    # -1.0f

    .line 8
    .line 9
    iput p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->oldOffset:F

    .line 10
    return-void
.end method


# virtual methods
.method public final getOldOffset()F
    .locals 1

    iget v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->oldOffset:F

    return v0
.end method

.method public onSlide(Landroid/view/View;F)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "bottomSheet"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->oldOffset:F

    .line 8
    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    .line 11
    cmpg-float p1, p1, v0

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iput p2, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->oldOffset:F

    .line 16
    .line 17
    :cond_0
    iget p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->oldOffset:F

    .line 18
    .line 19
    sub-float p1, p2, p1

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    cmpg-float p1, p1, v0

    .line 23
    .line 24
    if-gez p1, :cond_1

    .line 25
    float-to-double v0, p2

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const-wide v2, 0x3fa999999999999aL    # 0.05

    .line 31
    .line 32
    cmpg-double p1, v0, v2

    .line 33
    .line 34
    if-gez p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;

    .line 37
    const/4 v0, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateRootView(Z)V

    .line 41
    .line 42
    :cond_1
    iput p2, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->oldOffset:F

    .line 43
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "bottomSheet"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->setBottomState(Ljava/lang/Integer;)V

    .line 15
    const/4 p1, 0x4

    .line 16
    .line 17
    if-ne p2, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;

    .line 20
    const/4 p2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateRootView(Z)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->this$0:Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->onCollapsed()V

    .line 29
    :cond_0
    return-void
.end method

.method public final setOldOffset(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2$1;->oldOffset:F

    return-void
.end method
