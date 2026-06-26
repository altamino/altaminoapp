.class Lcom/narvii/account/AccountSignUpIndicatorView$2;
.super Ljava/lang/Object;
.source "AccountSignUpIndicatorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AccountSignUpIndicatorView;->updateStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountSignUpIndicatorView;I)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView$2;->this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

    iput p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView$2;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 185
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView$2;->this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

    invoke-static {p1}, Lcom/narvii/account/AccountSignUpIndicatorView;->access$200(Lcom/narvii/account/AccountSignUpIndicatorView;)Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView$2;->this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

    invoke-static {p1}, Lcom/narvii/account/AccountSignUpIndicatorView;->access$200(Lcom/narvii/account/AccountSignUpIndicatorView;)Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;

    move-result-object p1

    iget v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView$2;->val$status:I

    invoke-interface {p1, v0}, Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;->onIndicatorClicked(I)V

    :cond_0
    return-void
.end method
