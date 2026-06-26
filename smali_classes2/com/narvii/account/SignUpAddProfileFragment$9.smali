.class Lcom/narvii/account/SignUpAddProfileFragment$9;
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

    .line 523
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$9;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 526
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$9;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/account/SignUpAddProfileFragment;->finishWithResult(ZILjava/lang/String;)V

    return-void
.end method
