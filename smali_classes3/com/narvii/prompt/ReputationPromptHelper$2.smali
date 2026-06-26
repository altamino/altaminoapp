.class Lcom/narvii/prompt/ReputationPromptHelper$2;
.super Ljava/lang/Object;
.source "ReputationPromptHelper.java"

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

    .line 88
    iput-object p1, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    iput-object p2, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->val$reputationGainedLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->val$animFadeOut:Landroid/view/animation/Animation;

    iput-object p4, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->val$decor:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->val$reputationGainedLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->val$animFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->val$decor:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->val$reputationGainedLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 93
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$2;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void
.end method
