.class Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog$1;->this$0:Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog$1;->this$0:Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 6
    return-void
.end method
