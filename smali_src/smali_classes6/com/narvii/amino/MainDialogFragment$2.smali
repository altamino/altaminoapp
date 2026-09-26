.class Lcom/narvii/amino/MainDialogFragment$2;
.super Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/MainDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/MainDialogFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/MainDialogFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment$2;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;-><init>(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/amino/i;)V

    .line 7
    return-void
.end method


# virtual methods
.method public whenNotBlocking()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->whenNotBlocking()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$2;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/narvii/amino/MainDialogFragment;->onBoardingCheckDone:Z

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->onBoardingDoneListener:Lcom/narvii/amino/MainDialogFragment$OnBoardingDoneListener;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/amino/MainDialogFragment$OnBoardingDoneListener;->onBoardingDone()V

    .line 16
    :cond_0
    return-void
.end method
