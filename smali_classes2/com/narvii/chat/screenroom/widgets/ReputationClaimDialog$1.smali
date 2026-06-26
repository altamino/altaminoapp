.class Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog$1;
.super Ljava/lang/Object;
.source "ReputationClaimDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog$1;->this$0:Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog$1;->this$0:Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
