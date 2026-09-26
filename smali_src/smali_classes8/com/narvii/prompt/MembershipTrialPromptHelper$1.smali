.class Lcom/narvii/prompt/MembershipTrialPromptHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/MembershipTrialPromptHelper;->doTryShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/MembershipTrialPromptHelper;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/MembershipTrialPromptHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prompt/MembershipTrialPromptHelper$1;->this$0:Lcom/narvii/prompt/MembershipTrialPromptHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/prompt/MembershipTrialPromptHelper$1;->this$0:Lcom/narvii/prompt/MembershipTrialPromptHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 6
    return-void
.end method
