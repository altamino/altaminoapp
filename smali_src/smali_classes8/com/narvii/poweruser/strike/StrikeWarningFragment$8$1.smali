.class Lcom/narvii/poweruser/strike/StrikeWarningFragment$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8$1;->this$1:Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8$1;->this$1:Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->val$template:Lcom/narvii/chat/template/MessageTemplate;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->r(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Lcom/narvii/chat/template/MessageTemplate;)V

    .line 10
    return-void
.end method
