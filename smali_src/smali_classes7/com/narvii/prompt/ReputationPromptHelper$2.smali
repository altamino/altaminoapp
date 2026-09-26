.class Lcom/narvii/prompt/ReputationPromptHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$animFadeOut:Landroid/view/animation/Animation;

.field final synthetic val$decor:Landroid/view/ViewGroup;

.field final synthetic val$reputationGainedLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/ReputationPromptHelper;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->val$reputationGainedLayout:Landroid/view/View;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->val$animFadeOut:Landroid/view/animation/Animation;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->val$decor:Landroid/view/ViewGroup;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->val$reputationGainedLayout:Landroid/view/View;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->val$animFadeOut:Landroid/view/animation/Animation;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->val$decor:Landroid/view/ViewGroup;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->val$reputationGainedLayout:Landroid/view/View;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 20
    return-void
.end method
