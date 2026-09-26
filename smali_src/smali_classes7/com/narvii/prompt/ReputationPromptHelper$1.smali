.class Lcom/narvii/prompt/ReputationPromptHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prompt/ReputationPromptHelper$1;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/prompt/ReputationPromptHelper$1;->val$rp:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$1;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/prompt/ReputationPromptHelper$1;->val$rp:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/prompt/ReputationPromptHelper;->a(Lcom/narvii/prompt/ReputationPromptHelper;I)V

    .line 8
    return-void
.end method
