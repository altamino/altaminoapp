.class Lcom/narvii/prompt/UpgradePromptHelper$1;
.super Ljava/lang/Object;
.source "UpgradePromptHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/UpgradePromptHelper;->doTryShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/UpgradePromptHelper;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/UpgradePromptHelper;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/prompt/UpgradePromptHelper$1;->this$0:Lcom/narvii/prompt/UpgradePromptHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/narvii/prompt/UpgradePromptHelper$1;->this$0:Lcom/narvii/prompt/UpgradePromptHelper;

    invoke-virtual {p1}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void
.end method
