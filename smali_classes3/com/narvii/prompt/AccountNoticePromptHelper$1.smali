.class Lcom/narvii/prompt/AccountNoticePromptHelper$1;
.super Ljava/lang/Object;
.source "AccountNoticePromptHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/AccountNoticePromptHelper;->doTryShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/AccountNoticePromptHelper;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/AccountNoticePromptHelper;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/prompt/AccountNoticePromptHelper$1;->this$0:Lcom/narvii/prompt/AccountNoticePromptHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/narvii/prompt/AccountNoticePromptHelper$1;->this$0:Lcom/narvii/prompt/AccountNoticePromptHelper;

    invoke-static {v0}, Lcom/narvii/prompt/AccountNoticePromptHelper;->access$000(Lcom/narvii/prompt/AccountNoticePromptHelper;)V

    return-void
.end method
