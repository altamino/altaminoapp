.class Lcom/narvii/account/SignUpAddProfileFragment$6;
.super Ljava/lang/Object;
.source "SignUpAddProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/SignUpAddProfileFragment;->signupClicked()V
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

    .line 361
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$6;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment$6;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    iget-object v0, v0, Lcom/narvii/account/SignUpAddProfileFragment;->scrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    return-void
.end method
