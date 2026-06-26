.class final Lcom/narvii/pre_editing/MediaPreEditingActivity$showError$1;
.super Ljava/lang/Object;
.source "MediaPreEditingActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/MediaPreEditingActivity;->showError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$showError$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 225
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$showError$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 226
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$showError$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-virtual {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->finish()V

    return-void
.end method
