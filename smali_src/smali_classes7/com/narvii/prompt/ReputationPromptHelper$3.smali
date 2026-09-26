.class Lcom/narvii/prompt/ReputationPromptHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->val$title:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->val$rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->val$removeRunnable:Ljava/lang/Runnable;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onAnimEnd()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/prompt/ReputationPromptHelper;->isRankingTitleAnimEnd:Z

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/narvii/prompt/ReputationPromptHelper;->isPopUpHold:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->val$removeRunnable:Ljava/lang/Runnable;

    .line 12
    .line 13
    const-wide/16 v1, 0x514

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 17
    :cond_0
    return-void
.end method

.method public onLevelChanged(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->val$title:Landroid/widget/TextView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/prompt/ReputationPromptHelper$3;->val$rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lcom/narvii/util/ranking/RankingService;->getTitle(I)Ljava/lang/CharSequence;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    return-void
.end method
