.class final Lcom/narvii/topic/widgets/StorySectionItemView$loadingAnimator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StorySectionItemView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/StorySectionItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/widgets/StorySectionItemView;


# direct methods
.method constructor <init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$loadingAnimator$2;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/animation/ObjectAnimator;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView$loadingAnimator$2;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-static {v0}, Lcom/narvii/topic/widgets/StorySectionItemView;->access$lazyInitLoadingAnimator(Lcom/narvii/topic/widgets/StorySectionItemView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/StorySectionItemView$loadingAnimator$2;->invoke()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method
