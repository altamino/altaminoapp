.class Lcom/narvii/account/SignUpAddProfileFragment$3;
.super Ljava/lang/Object;
.source "SignUpAddProfileFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/SignUpAddProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 198
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$3;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 202
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$3;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    iget-object p1, p1, Lcom/narvii/account/SignUpAddProfileFragment;->agreeError:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
