.class Lcom/narvii/prompt/OnBoardingPromptHelper$3;
.super Ljava/lang/Object;
.source "OnBoardingPromptHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/OnBoardingPromptHelper;->doTryShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/OnBoardingPromptHelper;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/narvii/prompt/OnBoardingPromptHelper$3;->this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper$3;->this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;

    invoke-static {v0}, Lcom/narvii/prompt/OnBoardingPromptHelper;->access$100(Lcom/narvii/prompt/OnBoardingPromptHelper;)V

    return-void
.end method
