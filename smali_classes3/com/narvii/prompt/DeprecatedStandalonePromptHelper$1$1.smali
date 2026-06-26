.class Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1$1;
.super Ljava/lang/Object;
.source "DeprecatedStandalonePromptHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1$1;->this$1:Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1$1;->this$1:Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1;

    iget-object p1, p1, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1;->this$0:Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;

    invoke-virtual {p1}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void
.end method
