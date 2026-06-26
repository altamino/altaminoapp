.class Lcom/narvii/user/title/EditUserTitleFragment$4;
.super Ljava/lang/Object;
.source "EditUserTitleFragment.java"

# interfaces
.implements Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/EditUserTitleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/title/EditUserTitleFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$4;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChecked()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$4;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    return-void
.end method
