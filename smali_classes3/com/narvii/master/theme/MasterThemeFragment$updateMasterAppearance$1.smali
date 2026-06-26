.class final Lcom/narvii/master/theme/MasterThemeFragment$updateMasterAppearance$1;
.super Ljava/lang/Object;
.source "MasterThemeFragment.kt"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/theme/MasterThemeFragment;->updateMasterAppearance(Ljava/util/List;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $c:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/narvii/master/theme/MasterThemeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/theme/MasterThemeFragment;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment$updateMasterAppearance$1;->this$0:Lcom/narvii/master/theme/MasterThemeFragment;

    iput-object p2, p0, Lcom/narvii/master/theme/MasterThemeFragment$updateMasterAppearance$1;->$c:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 1

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    const-string p2, "iv"

    .line 80
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/narvii/master/theme/MasterThemeFragment$updateMasterAppearance$1;->this$0:Lcom/narvii/master/theme/MasterThemeFragment;

    invoke-virtual {p2}, Lcom/narvii/master/theme/MasterThemeFragment;->getOnBackgroundChangedCallback()Lkotlin/jvm/functions/Function3;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/narvii/master/theme/MasterThemeFragment$updateMasterAppearance$1;->this$0:Lcom/narvii/master/theme/MasterThemeFragment;

    invoke-static {p3}, Lcom/narvii/master/theme/MasterThemeFragment;->access$getOverlay$p(Lcom/narvii/master/theme/MasterThemeFragment;)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment$updateMasterAppearance$1;->$c:Ljava/lang/Integer;

    invoke-interface {p2, p1, p3, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method
