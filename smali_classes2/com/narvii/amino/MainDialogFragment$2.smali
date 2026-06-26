.class Lcom/narvii/amino/MainDialogFragment$2;
.super Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;
.source "MainDialogFragment.java"


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

    .line 143
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment$2;->this$0:Lcom/narvii/amino/MainDialogFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;-><init>(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/amino/MainDialogFragment$1;)V

    return-void
.end method


# virtual methods
.method public whenNotBlocking()V
    .locals 2

    .line 146
    invoke-super {p0}, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->whenNotBlocking()V

    .line 147
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$2;->this$0:Lcom/narvii/amino/MainDialogFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/amino/MainDialogFragment;->onBoardingCheckDone:Z

    .line 148
    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->onBoardingDoneListener:Lcom/narvii/amino/MainDialogFragment$OnBoardingDoneListener;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Lcom/narvii/amino/MainDialogFragment$OnBoardingDoneListener;->onBoardingDone()V

    :cond_0
    return-void
.end method
