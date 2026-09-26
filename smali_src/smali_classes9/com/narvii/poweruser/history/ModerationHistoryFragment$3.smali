.class Lcom/narvii/poweruser/history/ModerationHistoryFragment$3;
.super Lcom/facebook/rebound/d;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$3;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/e;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/facebook/rebound/e;->c()D

    .line 4
    move-result-wide v0

    .line 5
    double-to-float p1, v0

    .line 6
    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    sub-float/2addr p1, v0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$3;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const/high16 v1, 0x43c80000    # 400.0f

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 20
    move-result v0

    .line 21
    mul-float/2addr p1, v0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$3;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const/high16 v1, 0x41f00000    # 30.0f

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 33
    move-result v0

    .line 34
    sub-float/2addr p1, v0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$3;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 42
    return-void
.end method
