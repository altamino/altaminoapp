.class Lcom/narvii/account/SignUpAddProfileFragment$2$1;
.super Ljava/lang/Object;
.source "SignUpAddProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/SignUpAddProfileFragment$2;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/account/SignUpAddProfileFragment$2;

.field final synthetic val$beyond:Z

.field final synthetic val$bigTitle:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/account/SignUpAddProfileFragment$2;Landroid/view/View;Z)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$2$1;->this$1:Lcom/narvii/account/SignUpAddProfileFragment$2;

    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment$2$1;->val$bigTitle:Landroid/view/View;

    iput-boolean p3, p0, Lcom/narvii/account/SignUpAddProfileFragment$2$1;->val$beyond:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment$2$1;->val$bigTitle:Landroid/view/View;

    iget-boolean v1, p0, Lcom/narvii/account/SignUpAddProfileFragment$2$1;->val$beyond:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
