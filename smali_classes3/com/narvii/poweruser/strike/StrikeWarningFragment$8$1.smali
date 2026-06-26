.class Lcom/narvii/poweruser/strike/StrikeWarningFragment$8$1;
.super Ljava/lang/Object;
.source "StrikeWarningFragment.java"

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

    .line 495
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8$1;->this$1:Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 498
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8$1;->this$1:Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;

    iget-object v0, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    iget-object p1, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->val$template:Lcom/narvii/chat/template/MessageTemplate;

    invoke-static {v0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->access$500(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Lcom/narvii/chat/template/MessageTemplate;)V

    return-void
.end method
