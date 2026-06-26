.class Lcom/narvii/account/SignUpAddProfileFragment$8;
.super Ljava/lang/Object;
.source "SignUpAddProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/SignUpAddProfileFragment;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/SignUpAddProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/SignUpAddProfileFragment;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$8;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 513
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$8;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    iget v0, p1, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 515
    iput v0, p1, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    .line 516
    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountBaseFragment;->updateIndicatorViewStatus(I)V

    .line 517
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$8;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->access$100(Lcom/narvii/account/SignUpAddProfileFragment;)V

    :cond_0
    return-void
.end method
