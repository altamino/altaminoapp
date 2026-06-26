.class Lcom/narvii/prompt/ReputationPromptHelper$3;
.super Ljava/lang/Object;
.source "ReputationPromptHelper.java"

# interfaces
.implements Lcom/narvii/widget/RankingTitleView$OnAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/ReputationPromptHelper;->showReputationGainedView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/ReputationPromptHelper;

.field final synthetic val$rankingService:Lcom/narvii/util/ranking/RankingService;

.field final synthetic val$removeRunnable:Ljava/lang/Runnable;

.field final synthetic val$title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/ReputationPromptHelper;Landroid/widget/TextView;Lcom/narvii/util/ranking/RankingService;Ljava/lang/Runnable;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    iput-object p2, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->val$title:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->val$rankingService:Lcom/narvii/util/ranking/RankingService;

    iput-object p4, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->val$removeRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimEnd()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/prompt/ReputationPromptHelper;->isRankingTitleAnimEnd:Z

    .line 108
    iget-boolean v0, v0, Lcom/narvii/prompt/ReputationPromptHelper;->isPopUpHold:Z

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->val$removeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x514

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public onLevelChanged(I)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->val$title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->val$rankingService:Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {v1, p1}, Lcom/narvii/util/ranking/RankingService;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
