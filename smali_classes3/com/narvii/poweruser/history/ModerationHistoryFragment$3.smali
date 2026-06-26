.class Lcom/narvii/poweruser/history/ModerationHistoryFragment$3;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "ModerationHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/history/ModerationHistoryFragment;->showTopContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$3;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .line 166
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$3;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    mul-float p1, p1, v0

    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$3;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 167
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    sub-float/2addr p1, v0

    .line 168
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$3;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    iget-object v0, v0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
