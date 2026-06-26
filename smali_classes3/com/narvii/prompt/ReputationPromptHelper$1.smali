.class Lcom/narvii/prompt/ReputationPromptHelper$1;
.super Ljava/lang/Object;
.source "ReputationPromptHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/ReputationPromptHelper;->doTryShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/ReputationPromptHelper;

.field final synthetic val$rp:I


# direct methods
.method constructor <init>(Lcom/narvii/prompt/ReputationPromptHelper;I)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/prompt/ReputationPromptHelper$1;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    iput p2, p0, Lcom/narvii/prompt/ReputationPromptHelper$1;->val$rp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$1;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    iget v1, p0, Lcom/narvii/prompt/ReputationPromptHelper$1;->val$rp:I

    invoke-static {v0, v1}, Lcom/narvii/prompt/ReputationPromptHelper;->access$000(Lcom/narvii/prompt/ReputationPromptHelper;I)V

    return-void
.end method
