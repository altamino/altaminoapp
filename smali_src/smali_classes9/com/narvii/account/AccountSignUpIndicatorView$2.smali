.class Lcom/narvii/account/AccountSignUpIndicatorView$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView$2;->this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView$2;->val$status:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView$2;->this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/account/AccountSignUpIndicatorView;->a(Lcom/narvii/account/AccountSignUpIndicatorView;)Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView$2;->this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/account/AccountSignUpIndicatorView;->a(Lcom/narvii/account/AccountSignUpIndicatorView;)Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView$2;->val$status:I

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;->onIndicatorClicked(I)V

    .line 20
    :cond_0
    return-void
.end method
